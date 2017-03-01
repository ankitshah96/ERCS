using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Mail;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Drawing;

public partial class Adminlogin : System.Web.UI.Page
{
    long sap;
    protected void Page_Load(object sender, EventArgs e)
    {
        Admin.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sap= Convert.ToInt64(Admin.Value);
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from admin_info where SAP_num=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", Admin.Value);
        con.Open();
        Int32 count = (Int32)cmd.ExecuteScalar();
        if (count == 0)
        {
            Lbl3.Text = "*Invalid Sap ID";
            Lbl3.ForeColor = Color.Red;
            Lbl3.Visible = true;
        }
        else
        {
            cmd = new SqlCommand("select * from admin_info where SAP_num=@sapid", con);
            cmd.Parameters.AddWithValue("@sapid", Admin.Value);

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
                Response.Redirect("AdminPwd.aspx?sap="+sap);
            }
            else
            {

                //Response.Write("Hello");
                string activationCode = Guid.NewGuid().ToString();
                String Subject = "Account Activation for Online Railway Concession and Result Application";
                String body = "Hello Administrator " + Admin.Value.Trim() + ",";
                body += "<br /><br />Password for your ERCS account is " + activationCode + "<br/> <br/>You can change your password afterwards.<br/> ";
                body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("StudentSap.aspx", "Studentpwd.aspx?sap=" + sap) + "'>Click here to Login </a>";
                body += "<br /><br />Regards  from ERCS Team";
                email.sendmail(emailid, Subject, body);
                Lbl3.Text = "Email has been sent to your account";
                Lbl3.Visible = true;    
                //send email
                /*using (System.Net.Mail.MailMessage mm = new System.Net.Mail.MailMessage("ercsdjs@gmail.com", emailid))
                {
                    mm.Subject = "Account Activation for Online Railway Concession and Result Application";
                    string body = "Hello Administrator " + Admin.Value.Trim() + ",";
                    body += "<br /><br />Password for your account is " + activationCode + "<br/> <br/>You can change your password afterwards.<br/> ";
                    body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("StudentSap.aspx", "Studentpwd.aspx?sap=" + sap) + "'>Click here to Login </a>";
                    body += "<br /><br />Thanks";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("ercsdjs@gmail.com", "ercsdjs@123");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    Lbl3.Text = "Email has been sent to your account";
                    Lbl3.Visible = true;
                }*/
                using (con = new SqlConnection(constr))
                {
                    string hashedPassword = Security.HashSHA1(activationCode+sap.ToString());
                    using (cmd = new SqlCommand("update admin_info set pswd=@ActivationCode where SAP_num=@sap"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@ActivationCode", hashedPassword);
                            cmd.Parameters.AddWithValue("@sap", sap.ToString());
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }

                
                
                DropDownList1.Visible = true;
                Label1.Visible = true;

                Admin.Visible = false;
                Button1.Visible = false;
               
             }



    }
  }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;// label for "enter admin type"
        Lbl3.Visible = false;
        sap = Convert.ToInt64(Admin.Value);
       
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Visible = true;
        }
        else
        {
            String val=DropDownList1.SelectedItem.Value.ToString();
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con;
            SqlCommand cmd;
            using ( con = new SqlConnection(constr))
            {
                using (cmd = new SqlCommand("update admin_info set type= @val where SAP_num=@sap"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@sap", Convert.ToInt64(sap));
                        cmd.Parameters.AddWithValue("@val", val);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con = new SqlConnection(constr);
                        int sent = 1;
                        cmd = new SqlCommand("update admin_info set sent=@sent where SAP_num=@sap", con);
                        cmd.Parameters.Add("@sent", sent);
                        cmd.Parameters.Add("@sap", Convert.ToInt64(sap));
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                       
                    }
                }
            }
            
        }
        Response.Redirect("AdminPwd.aspx?sap=" + sap);

    }
}   