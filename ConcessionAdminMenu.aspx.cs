using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConcessionAdminMenu : System.Web.UI.Page
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
            }
        }
    }
    protected void   LinkBtn_Logout_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Session["admin_type"] = null;
        Server.Transfer("RoleSelect.aspx");

       
       
    }

    protected void Btn_Print_concession_Click(object sender, EventArgs e)
    {
        Response.Redirect("Print_Concession.aspx");
    }

    protected void Btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update_Concession_Details.aspx");
    }
    protected void Btn5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Update_Student_Details.aspx");
    }
    protected void Btn4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Concession_Request.aspx");
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    }
}