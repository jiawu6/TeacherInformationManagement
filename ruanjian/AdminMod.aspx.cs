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

public partial class  Admin_AdminMod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox2.Text == "" || this.TextBox3.Text == "")
        {
            Response.Write("<script>alert('Password cannot be empty!');document.location=document.location;</script>");//Determine if the password is blank.
        }
        if (this.TextBox2.Text == this.TextBox3.Text)
        {
            string sql = "update TB_Admin set PassWord='" + this.TextBox2.Text + "' where UserName='" + Session["username"].ToString() + "'";
            bool b = DBHelper.ExecSql(sql);
            if (b)
            {
                Response.Write("<script>alert('Successful operation!');document.location=document.location;</script>");//Successful operation prompted users
            }
            else
            {
                Response.Write("<script>alert('Operation failed!');document.location=document.location;</script>");//Indicate user operation failure
            }
        }
        else
        {
            Response.Write("<script>alert('The password entered twice is different!');document.location=document.location;</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
    }
}
