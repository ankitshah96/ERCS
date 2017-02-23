using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Concession : System.Web.UI.Page
{
    DateTime thisDay = DateTime.Today;
    static string destn_stn = "Vile Parle";
    int gday, gmonth,gyear;
    static int processing_days = 7;
   
    Boolean valid_srcstn = false;
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
        //DropDownList1.SelectedIndex = 0;
        Lbl_timespan_invalid.Visible = false;
        Lbl_invalid_srcstn.Visible = false;
        Lbl_addr.Visible = false;
        valid_srcstn = false;
        Lbl_result.Visible = false;
        lblmsg.Visible = false;
        Lblclass.Visible = false;
        Lblduration.Visible = false;
    }
   
    public void Count(DateTime Bday, DateTime Cday)
    {
        int year,month,day;
       
        if ((Cday.Year - Bday.Year) > 0 ||
            (((Cday.Year - Bday.Year) == 0) && ((Bday.Month < Cday.Month) ||
              ((Bday.Month == Cday.Month) && (Bday.Day <= Cday.Day)))))
        {
            int DaysInBdayMonth = DateTime.DaysInMonth(Bday.Year, Bday.Month);
            int DaysRemain = Cday.Day + (DaysInBdayMonth - Bday.Day);

            if (Cday.Month > Bday.Month)
            {
                year = Cday.Year - Bday.Year;
                month = Cday.Month - (Bday.Month + 1) + Math.Abs(DaysRemain / DaysInBdayMonth);
                day = (DaysRemain % DaysInBdayMonth + DaysInBdayMonth) % DaysInBdayMonth;
            }
            else if (Cday.Month == Bday.Month)
            {
                if (Cday.Day >= Bday.Day)
                {
                    year = Cday.Year - Bday.Year;
                    month = 0;
                    day = Cday.Day - Bday.Day;
                }
                else
                {
                    year = (Cday.Year - 1) - Bday.Year;
                    month = 11;
                    day = DateTime.DaysInMonth(Bday.Year, Bday.Month) - (Bday.Day - Cday.Day);
                }
            }
            else
            {
                year = (Cday.Year - 1) - Bday.Year;
                month = Cday.Month + (11 - Bday.Month) + Math.Abs(DaysRemain / DaysInBdayMonth);
                day = (DaysRemain % DaysInBdayMonth + DaysInBdayMonth) % DaysInBdayMonth;
            }
            Lbl8.Text = year.ToString();
            Lbl9.Text = month.ToString();
            Lbl10.Text = day.ToString();
            gday = day;
            gmonth = month;
            gyear = year;
        }
        else
        {
            throw new ArgumentException("Birthday date must be earlier than current date");
        }
                
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        Boolean firsttime = false;
        String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        if (DropDownList1.SelectedIndex == 0)
        {
            lblmsg.Visible = true;
            return;
        }
        else if (RadioBtnclass.SelectedIndex<0)
        {
            Lblclass.Visible = true;
            return;
        }
        else if(RadioButtonList4.SelectedIndex<0)
        {
            Lblduration.Visible = true;
            return;
        }
            
        // Read dob and addr from db
        if (Session["user"] != null)
        {
            SqlCommand cmd = new SqlCommand("select dob,addr from student_info where SAP=@sap", con);
            cmd.Parameters.AddWithValue("@sap", Session["user"]);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            thisDay = DateTime.Now;
            DateTime Dbdob = DateTime.Today;
            String addr = "";
            while (dr.Read())
            {
                Dbdob = Convert.ToDateTime(dr["dob"]);
                addr = dr["addr"].ToString();
            }
            con.Close();
            // count Age
            Count(Dbdob, thisDay);
            // check valid source stn with addr
            addr = addr.ToUpper();
            if (addr.Contains(DropDownList1.SelectedValue.ToString()))
            {
                valid_srcstn = true;
            }
            // check last_pass_grant_date and see if concession request is valid

            constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            con = new SqlConnection(constr);
            cmd = new SqlCommand("select last_pass_grant_date_time,applied_for_concession,last_appln_date_time from student_info where SAP=@sapid", con);
            cmd.Parameters.AddWithValue("@sapid", Session["user"]);

            con.Open();
            dr = cmd.ExecuteReader();

            DateTime Day = DateTime.Today;
            DateTime? tday;
            while (dr.Read())
            {


                //DateTime? myValue = (Convert.IsDBNull(dr["applied_for_concession"]) ? null : (DateTime?)Convert.ToDateTime(dr["last_appln_date_time"]));

                // check if student is applying for first time on this portal if so set first_appln_flag to true
                //if ((dr["last_pass_grant_date_time"]==DBNull.Value) && valid_srcstn)
                if (object.Equals(dr["last_appln_date_time"], DBNull.Value) && valid_srcstn)
                {
                    Count(Dbdob, thisDay);
                    firsttime = true;
                    insert_into_db_concession_values();
                    constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    con = new SqlConnection(constr);
                    cmd = new SqlCommand("update student_info set first_appln_flag=@firsttime where SAP=@sapid", con);
                    cmd.Parameters.AddWithValue("@sapid", Session["user"]);
                    cmd.Parameters.AddWithValue("@firsttime", true);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Lbl_result.Visible = true;
                    Lbl_result.ForeColor = System.Drawing.Color.Green;
                    Lbl_result.Text = "Successful Applied for concession";

                }

                else
                {

                    int applied_for_concession = Convert.ToInt32(dr["applied_for_concession"]);
                    DateTime last_appln_date_time = Convert.ToDateTime(dr["last_appln_date_time"]);
                    constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    con = new SqlConnection(constr);
                    cmd = new SqlCommand("select first_appln_flag from student_info where SAP=@sapid", con);
                    cmd.Parameters.AddWithValue("@sapid", Session["user"]);
                    con.Open();
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        firsttime = Convert.ToBoolean(dr["first_appln_flag"]);
                        constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                        con = new SqlConnection(constr);
                    }
                    con.Close();
                    if (firsttime == true && applied_for_concession != 1)// reset first_appln_flag
                    {
                        constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                        con = new SqlConnection(constr);
                        cmd = new SqlCommand("update student_info set first_appln_flag=@firsttime where SAP=@sapid", con);
                        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
                        cmd.Parameters.AddWithValue("@firsttime", false);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }


                    DateTime now = DateTime.Today;
                    Count(last_appln_date_time, now);
                    String period = RadioButtonList4.SelectedValue.ToString();
                    if (applied_for_concession != 1 && ((gmonth == 0 && gyear == 0 && gday >= 30 - (processing_days + 3) && period == "Monthly") || (gmonth > 0 && gyear >= 0 && period == "Monthly") || (gmonth >= 2 && gyear >= 0 && gday >= (30 - processing_days + 3) && period == "Quarterly") || (gmonth > 3 && gyear >= 0 && period == "Quarterly")) && valid_srcstn)
                    {
                        Count(Dbdob, thisDay);
                        insert_into_db_concession_values();
                        Lbl_result.Visible = true;
                        Lbl_result.ForeColor = System.Drawing.Color.Green;
                        Lbl_result.Text = "Successful Applied for concession";

                    }
                    else
                    {
                        if (!valid_srcstn)
                        {
                            Lbl_invalid_srcstn.Text = "Entered Source Station doesn't Match with your address.";
                            Lbl_invalid_srcstn.Visible = true;
                            Lbl_addr.Text = addr;
                            Lbl_addr.Visible = false;


                        }
                        else if (applied_for_concession == 1)
                        {
                            Lbl_timespan_invalid.Text = "You have already applied for concession on " + last_appln_date_time;
                            Lbl_timespan_invalid.Visible = true;
                            CheckBox1.Visible = false;
                            Button1.Visible = false;

                        }
                        else
                        {
                            Lbl_invalid_srcstn.Visible = false;
                            Lbl_addr.Visible = false;
                            Lbl_timespan_invalid.Text = "You cannot apply 7 days before your current pass expiry date";
                            Lbl_timespan_invalid.Visible = true;
                        }
                        Lbl_result.Visible = true;
                        Lbl_result.ForeColor = System.Drawing.Color.Red;
                        Lbl_result.Text = "Your concession request is invalid";

                    }

                }


            }
            con.Close();
        }
        Response.Write("User: "+Session["user"]);
    }
    protected bool pass_grant_date_available()
    {
        String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select last_pass_grant_date_time from student_info where SAP=@sapid", con);
        cmd.Parameters.AddWithValue("@sapid",Session["user"]);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
       
        DateTime Day= DateTime.Today;
        DateTime? tday;
        while (dr.Read())
        {


            //DateTime? myValue = (Convert.IsDBNull(dr["last_pass_grant_date_time"]) ? null : (DateTime?)Convert.ToDateTime(dr["last_appln_date_time"]));
            // check if student is applying for first time on this portal if so set first_appln_flag to true
            if (DBNull.Value.Equals(dr["last_pass_grant_date_time"]) && valid_srcstn)
            {
                return false;
            }
        }
        return true;
    
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Button1.Visible = true;
        }
        else
            Button1.Visible = false;
    }
    protected void  insert_into_db_concession_values()
    {
        String constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        DateTime now = DateTime.Now;
        SqlCommand cmd = new SqlCommand("insert into railway_concession (class,period,age_years,age_months,src_stn,destn_stn,SAP_n,status,appln_date) values (@class,@period,@age_years,@age_months,@src_stn,@destn_stn,@sapid,@status,@datetym)", con);
        con.Open();
        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
        cmd.Parameters.AddWithValue("@class",RadioBtnclass.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@period", RadioButtonList4.SelectedItem.Value.ToString());
        cmd.Parameters.AddWithValue("@age_years",gyear );
        cmd.Parameters.AddWithValue("@age_months",gmonth);
        cmd.Parameters.AddWithValue("@src_stn",DropDownList1.SelectedItem.Value.ToString() );
        cmd.Parameters.AddWithValue("@destn_stn", destn_stn);
        cmd.Parameters.AddWithValue("@status", "Pending");
        cmd.Parameters.AddWithValue("@datetym",now);

        
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(constr);
        cmd = new SqlCommand("update student_info set last_appln_date_time=@datetym,applied_for_concession=@applied where SAP=@sapid", con);
        con.Open();
        cmd.Parameters.AddWithValue("@sapid", Session["user"]);
        cmd.Parameters.AddWithValue("@datetym", thisDay);
        cmd.Parameters.AddWithValue("@applied", true);
      
        cmd.ExecuteNonQuery();
        con.Close();

    }


    
    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Server.Transfer("RoleSelect.aspx");
    }
}