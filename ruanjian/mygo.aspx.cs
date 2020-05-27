using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class  mygo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["cx"] = "管理员";
        if (Session["cx"].ToString().Trim() == "管理员" )
        {
            Response.Redirect("left.aspx");
        }
        else if (Session["cx"].ToString().Trim() == "学生")
        {
            Response.Redirect("left1.aspx");
        }
        else if (Session["cx"].ToString().Trim() == "教师")
        {
            Response.Redirect("left2.aspx");
        }
    }
}
