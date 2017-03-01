using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Drawing;
using System.Collections.Specialized;
using System.Collections;
using System.Drawing.Printing;
using System.Net;
public class conc_details
{
    public String form_no, name, Class, period, src_stn,age_year, age_month,sap,dob;
    public int index;
}

public partial class Print_Concession : System.Web.UI.Page
{
    
    private System.Drawing.Font printFont;
    private StreamReader streamToPrint;
    private string form_no; 
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        if (!IsPostBack)
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
           
            /* SqlConnection con = new SqlConnection(constr);
             SqlCommand cmd = new SqlCommand("select SAP,last_appln_date_time from student_info,railway_concession where SAP_n=SAP and status= 'Pending'",con);
       
             con.Open();
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();

             GridView1.DataSource = dt;
             //Response.Write("Binding data");
       
       
             //Response.Write("Done!");
             */
            Bind();
         }
    }
    protected void Bind()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select SAP,last_appln_date_time from student_info,railway_concession where SAP_n=SAP and status= 'Pending'", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        
                    }

                }
            }
        }

        GridView1.DataBind();
    }


   
    public void reload()
    {
        GridView1.Visible =false;
        Label1.Visible = true;
        TxtFormNo.Visible = true;
        Btn1.Visible = true;
        ChkBox1.Visible = false;
    }
    public void undo_reload()
    {
        GridView1.Visible = true;
        Label1.Visible = false;
        TxtFormNo.Visible = false;
        Btn1.Visible = false;
        ChkBox1.Visible = true;
    }
    public void AddTextToPdf(String form_no,String name,String Class,String period,String src_stn,String age_year,String age_month,String dob,int index )
    {
        //variables
        System.IO.FileStream fs = new FileStream(Server.MapPath("") + "\\" + "test"+index+".pdf", FileMode.Create);
        Document document = new Document(iTextSharp.text.PageSize.A4.Rotate(), 10, 10, 10, 10);
        PdfWriter writer = PdfWriter.GetInstance(document, fs);
        document.Open();
        PdfContentByte cb = writer.DirectContent;
        cb.BeginText();
        BaseFont f_cn = BaseFont.CreateFont("c:\\windows\\fonts\\calibri.ttf", BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
        cb.SetFontAndSize(f_cn, 12);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, name,200, 455, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, Class, 40, 340, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, period, 100, 360, 30);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, src_stn, 150, 360, 30);
          cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, "Vileparle", 225, 370, 30);
        cb.ShowTextAligned(PdfContentByte.ALIGN_LEFT, form_no, 660,520, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, Class, 288, 315, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, period, 388, 315, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, src_stn, 475, 315, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, "Vileparle", 585, 315, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, name, 452, 430, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, age_year, 475, 410, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, age_month, 575, 410, 0);
        cb.ShowTextAligned(PdfContentByte.ALIGN_RIGHT, dob.ToString(), 500, 397, 0);
        cb.EndText();
        document.Close();
        writer.Close();
        fs.Close();
        //writer.SaveToHttpResponse(path, HttpContext.Current.Response, HttpReadType.Open);
        string FilePath = Server.MapPath("test" + index + ".pdf");
        WebClient User = new WebClient();
        Byte[] FileBuffer = User.DownloadData(FilePath);
        if (FileBuffer != null)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-length", FileBuffer.Length.ToString());
            Response.BinaryWrite(FileBuffer);
            
        }
       /* Response.Write("<script>");
        Response.Write("window.open('test' + index + '.pdf', '_newtab');");
        Response.Write("</script>");*/
        
    }
   
    protected void Btn1_Click(object sender, EventArgs e)
    {
        form_no = TxtFormNo.Text.ToString();
        undo_reload();
    }
    protected void ChkBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (ChkBox1.Checked == true)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                ((CheckBox)gvrow.FindControl("chkRow")).Checked = true;

            }
        }
        else
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                ((CheckBox)gvrow.FindControl("chkRow")).Checked = false;
            }
        }
      
            
    }
    protected void BtnPrintSelected_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrWhiteSpace(TxtFormNo.Text) || String.IsNullOrEmpty(TxtFormNo.Text))
        {
            Label2.Visible = true;
            return;
        }
        else
        {
            Label2.Visible = false;
        }
        int i = 0;
        int c = 0;
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkRow");
            if (chk.Checked)
            {
                i++;          
            }
            c++;
        }
        Response.Write("i= " + i);
        
        conc_details[] c1=new conc_details[i+1];
        bool[] valid=new bool[c];
        i = 0;
        
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        foreach (GridViewRow gvrow2 in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)gvrow2.FindControl("chkRow");
            if (chk.Checked)
            {
                
                GridViewRow row = GridView1.Rows[i];
                var m_values = this.GetValues(row);
                string sapid = m_values["SAP"].ToString();
                string appln_date = m_values["last_appln_date_time"].ToString();
                valid[i]=true;
                //Response.Write(sapid+"\n"+i);
                
                
                    SqlConnection con = new SqlConnection(constr);

                    SqlCommand cmd = new SqlCommand("select SAP,fname,mname,lname,sr_no,class,period,src_stn,age_years,age_months,dob from student_info,railway_concession where SAP_n=@sapid and SAP=@sapid", con);
                    cmd.Parameters.AddWithValue("@sapid", sapid);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    c1[i] = new conc_details();
                    while (dr.Read())
                    {
                        // Response.Write(dr["fname"] + " " + dr["mname"] + " " + dr["lname"] + " " + dr["class"] + " " + dr["period"] + " " + dr["period"] + " " + dr["src_stn"] + " " + dr["age_years"] + " " + dr["age_months"]+" "+ dr["dob"]);
                        c1[i].name = (dr["fname"] + " " + dr["mname"] + " " + dr["lname"]);
                        c1[i].Class = dr["class"].ToString();
                        c1[i].period = dr["period"].ToString();
                        c1[i].src_stn = dr["src_stn"].ToString();
                        c1[i].age_year = dr["age_years"].ToString();
                        c1[i].age_month = dr["age_months"].ToString();
                        c1[i].dob = (dr["dob"].ToString());
                        c1[i].index = Convert.ToInt32(dr["sr_no"]);
                        c1[i].sap = dr["SAP"].ToString();
                    }
                    con.Close();
                      
                
            }
            i++;
        }
        /*for (int k = 0; k < i; k++)
        {
            Response.Write(c1[k].name + " " + c1[k].Class + " " + c1[k].period + " " + c1[k].src_stn + " " + c1[k].age_year + " " + c1[k].age_month + " " + c1[k].dob +"\n");
        }*/
        int k = i;
        //Response.Write("i= " + i);
        String form_no = TxtFormNo.Text;
        String ch=form_no.Substring(0, 1);
        long fno = Convert.ToInt32(form_no.Substring(1, (form_no.Length)-1));
       // Response.Write("Char= "+ch+"fno= "+fno);
        DateTime curdate = new DateTime();
        curdate = DateTime.Now;
        for (i = 0; i < k; i++)
        {
            if (valid[i] == true)
            {
                c1[i].form_no = ch + fno.ToString();
                // String period,String src_stn,String age_year,String age_month,DateTime dob,int index )
                AddTextToPdf(c1[i].form_no, c1[i].name, c1[i].Class, c1[i].period, c1[i].src_stn, c1[i].age_year, c1[i].age_month, c1[i].dob, c1[i].index);
                // update status and last_appln_print_date_time        
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("update railway_concession set status=@printed,form_no=@form_no where SAP_n=@sapid", con);
                cmd.Parameters.AddWithValue("@sapid", c1[i].sap);
                cmd.Parameters.AddWithValue("@printed", "Printed");
                cmd.Parameters.AddWithValue("@form_no", c1[i].form_no);
                con.Open();
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("update student_info set last_pass_grant_date_time=@datetym where SAP=@sapid", con);
                cmd.Parameters.AddWithValue("@sapid", c1[i].sap);
                cmd.Parameters.AddWithValue("@datetym", curdate);
                fno++;
                cmd.ExecuteNonQuery();
                con.Close();
                Bind();
            }
        } 
    }

    // method to retrieve data of particular row in gridview
    public IDictionary<string, object> GetValues(GridViewRow row)
    {
        IOrderedDictionary dictionary = new OrderedDictionary();

        foreach (Control control in row.Controls)
        {
            DataControlFieldCell cell = control as DataControlFieldCell;

            if ((cell != null) && cell.Visible)
            {
                cell.ContainingField.ExtractValuesFromCell
                (dictionary, cell, row.RowState, true);
            }
        }

        IDictionary<string, object> values = new Dictionary<string, object>();

        foreach (DictionaryEntry de in dictionary)
        {
            values[de.Key.ToString()] = de.Value;
        }

        return values;
    }

    protected void Btn_refresh_Click(object sender, EventArgs e)
    {
        Bind();
    }
    protected void LinkBtn_Logout_Click(object sender, EventArgs e)
    {

        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("Adminlogin.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConcessionAdminMenu.aspx");
    }
    
}