using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Concession : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["user"] == null)
                Response.Redirect("StudentSap.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ConcessionForm.aspx");
    }
    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Server.Transfer("RoleSelect.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        String status=getstatus();
        Label2.Text = "Status = ";
        Label2.Text += status;
        Label2.Visible = true;
        ImageButton2.Visible = false;
        HyperLink2.Visible = false;

    }
    protected string getstatus()
    {

        String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select top 1 status from railway_concession where SAP_n=@sapid order by appln_date desc ", con);
        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        String status = "";
        while (dr.Read())
        {
            status = dr["status"].ToString();
        }

        con.Close();
        return status;
    }
}