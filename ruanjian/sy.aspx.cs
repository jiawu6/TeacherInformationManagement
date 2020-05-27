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

public partial class Sy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sea1.Text = Request.ServerVariables["SERVER_NAME"].ToString();
        sea2.Text = Request.ServerVariables["LOCAL_ADDR"].ToString();
        sea3.Text = Request.ServerVariables["SERVER_PORT"].ToString();
        sea4.Text = DateTime.Now.ToString();
        sea5.Text = Request.ServerVariables["SERVER_SOFTWARE"].ToString();
        sea7.Text = Server.ScriptTimeout.ToString();
        sea8.Text = Request.ServerVariables["APPL_PHYSICAL_PATH"].ToString();

    }
}
