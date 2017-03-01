using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class ChangePwdAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] == null)
                Response.Redirect("Adminlogin.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        long sap_admin = Convert.ToInt64(Session["admin"]);
        String newpwd = Pass1.Value;
        changePwd(sap_admin, newpwd);
        Label1.Text = "Password Changed and new password has been mailed to you!";
        Label1.Visible = true;      
        
        //Sending Mail
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select email,sent from admin_info where SAP_num=@sapid", con);
        
        con.Open();
        cmd.Parameters.AddWithValue("@sapid", Session["admin"]);
        int sent = 1;
        string emailid = "";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            sent = Convert.ToInt32(dr["sent"]);
            emailid = dr["email"].ToString();
        }

        con.Close();
        if (sent == 1)
        {
            
            String Subject = "Account Activation for Online Railway Concession and Result Application";
            String body = "Hello Administrator " + Session["admin"].ToString() + ",";
            body += "<br /><br />Password for your ERCS account is " + newpwd + "<br/> <br/>You can change your password afterwards.<br/> ";
            body += "<br />";
            body += "<br /><br />Regards Ankit Shah from ERCS Team";
            email.sendmail(emailid, Subject, body);
              
            /*using (MailMessage mm = new MailMessage("ercsdjs@gmail.com", emailid))
            {
                mm.Subject = "Account Password for Online Railway Concession and Result Application changed.";
                string body = "Hello " +Session["user"]+ ",";
                body += "<br /><br />Password for your account is " + newpwd + "<br/> <br/>You can change your password afterwards.<br/> ";
                
                body += "<br /><br />Thanks";
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
        string hashedPassword = Security.HashSHA1(pwd + sapid.ToString());
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("update admin_info set pswd=@pwd where SAP_num=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", sapid);
        cmd.Parameters.AddWithValue("@pwd", hashedPassword);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        String admin_type=Session["admin_type"].ToString();
        if(admin_type=="railway")
            Response.Redirect("ConcessionAdminMenu.aspx");
        else if(admin_type=="result")
            Response.Redirect("ResultAdminMenu.aspx");

    }
}