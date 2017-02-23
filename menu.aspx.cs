using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class menu : System.Web.UI.Page
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
    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Server.Transfer("RoleSelect.aspx");
        Response.ClearHeaders();
        Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
        Response.AddHeader("Pragma", "no-cache");
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("ResultD.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("Concession.aspx");
    }
}