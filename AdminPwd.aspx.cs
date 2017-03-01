using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminPwd : System.Web.UI.Page
{
    long sap;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Keys.Count<=0 )
        {
            Response.Redirect("Adminlogin.aspx");
        }        
        sap = Convert.ToInt64(Request.QueryString["sap"]);
        Lbl1.Text = "Welcome " + sap;
        Lbl1.Visible = true;
        PassA.Focus();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String password = PassA.Value;
        String type=Login.adminlogin(sap, password);
        if ( type!= null )
        {
            Session["admin"] = sap;
            Session["admin_type"] = type;
            if (type == "railway")
                Response.Redirect("ConcessionAdminMenu.aspx");
            else if (type == "result")
                Response.Redirect("ResultAdminMenu.aspx");
        }
        else
        {
            Lbl3.Visible = true;
            PassA.Focus();
        }
        


    }
    /*public String login(long sapid, String pwd)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select pswd,type from admin_info where SAP_num=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", sapid);
        con.Open();
        String dbpwd = "";
        String type = null;
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            dbpwd = dr["pswd"].ToString();
            type = dr["type"].ToString();
        }
        con.Close();

        if (dbpwd == pwd)
            return type;
        else
            return null;
            
    }*/

    
}