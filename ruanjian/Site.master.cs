using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label1.Text = "Test";
        if (Session["username"] != null) {
            this.Label1.Text = Session["username"].ToString();
        }
    }
}
