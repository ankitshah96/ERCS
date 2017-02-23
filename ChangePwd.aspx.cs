using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class ChangePwd : System.Web.UI.Page 
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["user"] == null)
            Server.Transfer("StudentSap.aspx");
        Label1.Visible = false;
        
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        long sap = Convert.ToInt64(Session["user"]);        
        String newpwd=Pass3.Value;
        changePwd(sap,newpwd);
        Label1.Text = "Your password has been changed and mailed to you!";
        Label1.Visible = true;
        //send email

        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd =new SqlCommand("select emailid,sent from student_info where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
        con.Open();
        int sent = 1;
        string emailid = "";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            sent = Convert.ToInt32(dr["sent"]);
            emailid = dr["emailid"].ToString();
        }

        con.Close();
        if (sent == 1)
        {
            string body = "Hello " + Session["user"].ToString().Trim() + ",";
            body += "<br /><br />Password for your account is " + newpwd + "<br/> <br/>You can change your password afterwards.<br/> ";
            body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("StudentSap.aspx", "Studentpwd.aspx?sap=" + sap) + "'>Click here to Login </a>";
            body += "<br /><br />Regards Ankit Shah from ERCS Team";
            String Subject = "Account Activation for Online Railway Concession and Result Application";

            email.sendmail(emailid, Subject, body);
           
            /*using (MailMessage mm = new MailMessage("ercsdjs@gmail.com", emailid))
            {
                mm.Subject = "Account Password for Online Railway Concession and Result Application changed.";
                string body = "Hello " + Session["user"] + ",";
                body += "<br /><br />New Password for your account is " + newpwd + "<br/> <br/>You can change your password afterwards.<br/> ";
                body += "<br />";
                body += "<br /><br />regards ERCS Team";
                mm.Body = body;
                mm.IsBodyHtml = true;
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential("ercsdjs@gmail.com", "ercsdjs@123");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
              
            }*/
        }
    }
    public void changePwd(long sapid, String pwd)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string hashedPassword = Security.HashSHA1(pwd + Session["user"].ToString());
        SqlCommand cmd = new SqlCommand("update student_info set pwd=@pwd where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", sapid);
        cmd.Parameters.AddWithValue("@pwd", hashedPassword);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        con.Close();
        //update ercs portal
        DateTime curdate = new DateTime();
        curdate = DateTime.Now;
        con = new SqlConnection(constr);
        cmd = new SqlCommand("update ercs_portal set last_login_date_time=@datetym ", con);
        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
        cmd.Parameters.AddWithValue("@datetym", curdate);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
            
    }

  
}