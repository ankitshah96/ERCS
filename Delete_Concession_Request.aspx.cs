using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Delete_Concession_Request : System.Web.UI.Page
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

                LblResult.Text = "Record Deleted Successfully";
                LblResult.Visible = false;
            }


        }
       
    }
    protected bool verifysap()
    {
        LblResult.Visible = false ;

        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from railway_concession where SAP_n=@sapid", con);
        con.Open();
        cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);

        Int32 count = (Int32)cmd.ExecuteScalar();
        if (count == 0)
        {
            Lbl3.Text = "Invalid Sap ID or No concession request from this Sap Id";
            Lbl3.Visible = true;
            return false;
        }
        return true;
    }
    protected void Btndelete_Click(object sender, EventArgs e)
    {
        LblResult.Visible = false;
        if (verifysap())
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            
            SqlCommand cmd = new SqlCommand("delete from railway_concession where SAP_n=@sapid and status=@pending", con);
            con.Open();
            cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);
            cmd.Parameters.AddWithValue("@pending","Pending");
            
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("select count(*) from railway_concession where SAP_n=@sapid and status=@pending", con);
            cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);
            cmd.Parameters.AddWithValue("@pending", "Pending");
            Int32 count = (Int32)cmd.ExecuteScalar();
            con.Close();
            if(count==0)
                LblResult.Text = "Pending Request Deleted sucessfully";
            
             LblResult.Visible = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("Adminlogin.aspx");
    }
}