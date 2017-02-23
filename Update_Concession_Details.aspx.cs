using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Update_Concession_Details : System.Web.UI.Page
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

                inputsap();
                //fetch();
                LblResult.Text = "Updated Details Successfully";
                LblResult.Visible = false;
            }


        }

    }
    protected void fetch()
    {
        if (String.IsNullOrEmpty(TB.Text) || String.IsNullOrWhiteSpace(TB.Text))
        {
            LblSaperror.Visible = true;
            return;
        }
        LblResult.Visible = false;
        LblSaperror.Visible = false;
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from railway_concession where SAP_n=@sapid and status=@Pending", con);
        con.Open();
        cmd.Parameters.AddWithValue("@sapid", TB.Text);
        cmd.Parameters.AddWithValue("@pending","pending");
        Int32 count = (Int32)cmd.ExecuteScalar();
        if (count == 0)
        {
            Lbl3.Text = "  *Invalid Sap ID or No pending concessions for entered sap   ";
            Lbl3.Visible = true;
            return;
        }
        else
        {
            Lbl3.Visible = false;
            Txtsap.Text = TB.Text;
            cmd = new SqlCommand("select class,period,src_stn,status,form_no from railway_concession,student_info where SAP_n=@sapid and status=@pending", con);
            cmd.Parameters.AddWithValue("@sapid", TB.Text);
            cmd.Parameters.AddWithValue("@pending","Pending");
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                
                Txtperiod.Text = dr["period"].ToString();
                Txtclass.Text=dr["class"].ToString();
                Txtsrc_stn.Text = dr["src_stn"].ToString();
                Txtstatus.Text = dr["status"].ToString();
                Txtform_no.Text = dr["form_no"].ToString();
                
            }
            Btnupdate.Text = "Update Concession Details";
            con.Close();
            Txtsap.Enabled = false;
            visible_fields();
        }
    }
    protected void inputsap()
    {
        Txtclass.Visible = false;
        Lblclass.Visible = false;
        Lblperiod.Visible = false;
        Txtperiod.Visible = false;
        Lblsrc_stn.Visible = false;
        Txtsrc_stn.Visible = false;
        Lblstatus.Visible = false;
        Txtstatus.Visible = false;
        Lblform_no.Visible = false;
        Txtform_no.Visible = false;
        LblSaperror.Visible = false;
        Panel1.Visible = false;
        Txtsap.Visible = false;
        Lblsapid.Visible = false; ;
      
         R1.Visible = false;
      R2.Visible = false;
        TB.Visible = true;
        LB.Visible = true;
        Panel2.Visible = true;
        Btnupdate.Text = "Get Concession Details";

    }
    protected void visible_fields()
    {
        Lblclass.Visible = true;
        Txtclass.Visible = true;
        Lblperiod.Visible = true;
        Txtperiod.Visible = true;
        Lblsrc_stn.Visible = true;
        Txtsrc_stn.Visible = true;
        Lblstatus.Visible = true;
        Txtstatus.Visible = true;
        if (Txtperiod.Text == "Printed")
        {
            Lblform_no.Visible = true;
            Txtform_no.Visible = true;
        }
        Panel1.Visible = true;
        Txtsap.Visible = true;
        Lblsapid.Visible = true;
        
        R1.Visible = true;
        R2.Visible = true;
        TB.Visible = false;
        LB.Visible = false;
        Panel2.Visible = false;
        //LblSaperror.Visible = true;


    }
    /*protected void cusCustom_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        Txtperiod.Text = sender.ToString;
        if (Txtperiod.Text == "Monthly" || Txtperiod.Text == "Quaterly")
            //c1.ErrorMessage = "Correct span";
            L1.Visible=false;
        else
        {
            // c1.ErrorMessage = (L1.Text="Invalid span");
            L1.Visible = true;
        }

    }*/
    protected void update_concession_details()
    {
        if (Btnupdate.Text == "Get Concession Details")
        {
            fetch();

        }
        else
        {
            update_conc_details();

        }
    }

    protected void update_conc_details()
    {
             String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            // fname,mname,lname,SAP,dob,gender,pwd,addr,emailid,semester,branch
            SqlCommand cmd = new SqlCommand("update railway_concession set class=@class,period=@period,src_stn=@src_stn,status=@status,form_no=@form_no where SAP_n=@sapid and status=@pending", con);
            cmd.Parameters.AddWithValue("@sapid", Txtsap.Text);
            cmd.Parameters.AddWithValue("@class", Txtclass.Text);
            cmd.Parameters.AddWithValue("@status", Txtstatus.Text);
            cmd.Parameters.AddWithValue("@period", Txtperiod.Text);
            cmd.Parameters.AddWithValue("@pending", "Pending");
            cmd.Parameters.AddWithValue("@src_stn", Txtsrc_stn.Text);
            cmd.Parameters.AddWithValue("@form_no", Txtform_no.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            LblResult.Visible = true;
            inputsap();
    }
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        if (Btnupdate.Text == "Get Concession Details")
        {
            fetch();
        }
        else
        {
            update_concession_details();
            
         }
    }
    protected void Btn_Main_Menu_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConcessionAdminMenu.aspx");
    }
    protected void LinkBtn_Logout_Click(object sender, EventArgs e)
    {

        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("RoleSelect.aspx");
    }
}