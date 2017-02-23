using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Update_Student_Details : System.Web.UI.Page
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
                    fetch();
                    LblResult.Text = "Updated Details Successfully";
                    LblResult.Visible = false;
                    Lbl3.Visible = false;
                }
            
            
        }
        
    }
    protected void fetch()
    {
        
        LblResult.Visible = false;
        
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from student_info where SAP=@sapid", con);
        con.Open();
        cmd.Parameters.AddWithValue("@sapid",TB.Text);
        
        Int32 count = (Int32)cmd.ExecuteScalar();
        if (count == 0)
        {
            Lbl3.Text = "*Invalid Sap ID";
            Lbl3.Visible = true;
            return;
        }
        else
        {
            Lbl3.Visible = false;
            TxtBoxsap.Text = TB.Text;
            cmd = new SqlCommand("select fname,mname,lname,SAP,dob,gender,pwd,addr,emailid,semester,branch from student_info where SAP=@sapid", con);
            cmd.Parameters.AddWithValue("@sapid", TB.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TxtBoxaddr.Text = dr["addr"].ToString();
                TxtBoxbranch.Text = dr["branch"].ToString();
                DateTime dt = Convert.ToDateTime(dr["dob"].ToString());
                TxtBoxdob.Text = dt.ToShortDateString();
                TxtBoxemail.Text = dr["emailid"].ToString();
                TxtBoxfname.Text = dr["fname"].ToString();
                TxtBoxmname.Text = dr["mname"].ToString();
                TxtBoxlname.Text = dr["lname"].ToString();
                TxtBoxgender.Text = dr["gender"].ToString();
                TxtBoxsemester.Text = dr["semester"].ToString();
            }
            Btnupdate.Text = "Update Student Details";
            con.Close();
            visible_fields();
        }
    }
    protected void inputsap()
    {
        TxtBoxaddr.Visible = false;
        Lbladdress.Visible = false;
        TxtBoxbranch.Visible = false;
        LblBranch.Visible = false;
        TxtBoxdob.Visible = false;
        Lbldob.Visible = false;
        TxtBoxemail.Visible = false;
        Lblemailid.Visible = false;
        TxtBoxfname.Visible = false;
        Lblfname.Visible = false;
        TxtBoxgender.Visible = false;
        Lblgender.Visible = false;
        TxtBoxlname.Visible = false;
        Lbllname.Visible = false;
        TxtBoxmname.Visible = false;
        Lblmname.Visible = false;
        TxtBoxsemester.Visible = false;
        Lblsemester.Visible = false;
        Lblfull.Visible = false;
        TxtBoxsap.Visible = false;
        Lblsap.Visible = false;
        Panel1.Visible = false;
        R1.Visible = false;
        R2.Visible = false;
        R3.Visible = false;
        R4.Visible = false;
        R5.Visible = false;
        R6.Visible = false;
        R7.Visible = false;
        R8.Visible = false;
        R9.Visible = false;
        TB.Visible = true;
        LB.Visible = true;
        Panel2.Visible = true;
        Btnupdate.Text = "Get Student Details";
           
    }
    protected void visible_fields()
    {
        TxtBoxaddr.Visible = true;
        Lbladdress.Visible = true;
        TxtBoxbranch.Visible = true ;
        LblBranch.Visible = true;
        TxtBoxdob.Visible = true;
        Lbldob.Visible = true;
        TxtBoxemail.Visible = true;
        Lblemailid.Visible = true;
        TxtBoxfname.Visible = true;
        Lblfname.Visible = true;
        TxtBoxgender.Visible = true;
        Lblgender.Visible = true;
        TxtBoxlname.Visible = true;
        Lbllname.Visible = true;
        TxtBoxmname.Visible = true;
        Lblmname.Visible = true;
        TxtBoxsemester.Visible = true;
        Lblsemester.Visible = true;
        Lblfull.Visible = true;
        TxtBoxsap.Visible = true;
        Lblsap.Visible = true;
        R1.Visible = true;
        R2.Visible = true;
        R3.Visible = true;
        R4.Visible = true;
        R5.Visible = true;
        R6.Visible = true;
        R7.Visible = true;
        R8.Visible = true;
        R9.Visible = true;
                
        Panel1.Visible = true;
        TB.Visible = false;
        LB.Visible = false;
        Panel2.Visible = false;
        //LblSaperror.Visible = true;
        

    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        if (Btnupdate.Text == "Get Student Details")
        {
            fetch();
            
        }
        else
        {
            update_student_details();
            
        }
    }
    protected void update_student_details()
    {
        String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        // fname,mname,lname,SAP,dob,gender,pwd,addr,emailid,semester,branch
        SqlCommand cmd = new SqlCommand("update student_info set fname=@fname,mname=@mname,lname=@lname,dob=@dob,gender=@gender,addr=@addr,emailid=@emailid,semester=@semester,branch=@branch where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid", TxtBoxsap.Text);
        cmd.Parameters.AddWithValue("@fname", TxtBoxfname.Text);
        cmd.Parameters.AddWithValue("@mname", TxtBoxmname.Text);
        cmd.Parameters.AddWithValue("@lname", TxtBoxlname.Text);
        DateTime date = Convert.ToDateTime(TxtBoxdob.Text);
        String dt=date.ToShortDateString();
        cmd.Parameters.AddWithValue("@dob",Convert.ToDateTime(dt));
        cmd.Parameters.AddWithValue("@gender", TxtBoxgender.Text);
        cmd.Parameters.AddWithValue("@addr", TxtBoxaddr.Text);
        cmd.Parameters.AddWithValue("@emailid", TxtBoxemail.Text);
        cmd.Parameters.AddWithValue("@semester", TxtBoxsemester.Text);
        cmd.Parameters.AddWithValue("@branch", TxtBoxbranch.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        LblResult.Visible = true;
        inputsap();
            
    }
    protected void Btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConcessionAdminMenu.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("Adminlogin.aspx");
    }
    protected void LinkBtn_Logout_Click(object sender, EventArgs e)
    {

        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("Adminlogin.aspx");
    }
}