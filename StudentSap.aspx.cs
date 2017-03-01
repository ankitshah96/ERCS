using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Drawing;
public partial class StudentSap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Txtsap.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        long sap=Convert.ToInt64(Txtsap.Text);
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from student_info where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);
        con.Open();
        Int32 count = (Int32)cmd.ExecuteScalar();
        if (count == 0)
        {
            Lbl3.Text = "*Invalid Sap ID";
            Lbl3.ForeColor = Color.Red;
            Lbl3.Visible = true;
        }
        else{
        cmd = new SqlCommand("select emailid,sent from student_info where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);
      
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
              Response.Redirect("StudentPwd.aspx?sap=" + sap);
        }
        else
        {

            
            string activationCode = Guid.NewGuid().ToString();

            //send email
            using (MailMessage mm = new MailMessage("ercsdjs@gmail.com", emailid))
            {
                mm.Subject = "Account Activation for Online Railway Concession and Result Application";
                string body = "Hello " + Txtsap.Text.Trim() + ",";
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
            }
           using (con = new SqlConnection(constr))
            {
                using (cmd = new SqlCommand("update student_info set pwd=@pwd where SAP=@sap"))
                {using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                       
                       
                     cmd.Parameters.AddWithValue("@pwd", activationCode);
                     cmd.Parameters.AddWithValue("@sap", sap);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
           /* con = new SqlConnection(constr);
            cmd = new SqlCommand("update student_info set pwd=@pwd", con);
            cmd.Parameters.Add("@pwd", activationCode);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            */
            // set sent=1
            /*con = new SqlConnection(constr);
            sent = 1;
            cmd = new SqlCommand("update student_info set sent=@sent", con);
            cmd.Parameters.Add("@sent", sent);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            */
           sent = 1;
           using (con = new SqlConnection(constr))
           {
               using (cmd = new SqlCommand("update student_info set sent=@sent where SAP=@sap"))
               {
                   using (SqlDataAdapter sda = new SqlDataAdapter())
                   {
                       cmd.CommandType = CommandType.Text;

                       cmd.Parameters.AddWithValue("@sap", sap);
                       cmd.Parameters.AddWithValue("@sent", sent);
                       cmd.Connection = con;
                       con.Open();
                       cmd.ExecuteNonQuery();
                       con.Close();
                   }
               }
           }
           

            DateTime curdate = new DateTime();
            curdate = DateTime.Now;
            constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            con = new SqlConnection(constr);
            cmd = new SqlCommand("insert into ercs_portal(SAP_number,last_pwd_change_date_time,last_login_date_time,account_creation_date_time) values (@sapid,@datetym,@datetym,@datetym) ", con);
            cmd.Parameters.AddWithValue("@sapid", sap);
            cmd.Parameters.AddWithValue("@datetym", curdate);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con = new SqlConnection(constr);
            cmd = new SqlCommand("insert into ercs_portal(SAP_number,last_pwd_change_date_time,last_login_date_time,account_creation_date_time) values (@sapid,@datetym,@datetym,@datetym) ", con);
            cmd.Parameters.AddWithValue("@sapid", sap);
            cmd.Parameters.AddWithValue("@datetym", curdate);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();  
            
        }


        }
    }
}