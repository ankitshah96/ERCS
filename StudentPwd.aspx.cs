using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentSetPwd : System.Web.UI.Page
{
    long sap;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Keys.Count <= 0)
        {
            Response.Redirect("StudentSap.aspx");
        } 
        sap = Convert.ToInt64(Request.QueryString["sap"]);        
        Lbl1.Text = "Welcome " + sap;
        Lbl1.Visible = true;
        Pass.Focus();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String password= Pass.Value;
       
        if (Login.login(sap, password) == true)
        {
            DateTime curdate = new DateTime();
            curdate=DateTime.Now;
            
            Session["user"] = sap;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("update ercs_portal set last_login_date_time=@datetym where SAP_number=@sapid ", con);
            cmd.Parameters.AddWithValue("@sapid", Session["user"]);
            cmd.Parameters.AddWithValue("@datetym", curdate);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("menu.aspx");
        }
        else
        {
            Lbl3.Visible = true;
            Pass.Focus();
        }
        


    }
  
}