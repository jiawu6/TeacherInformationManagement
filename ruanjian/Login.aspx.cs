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
using System.Data.SqlClient;

public partial class SysManage_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        
        }
    }
    protected void imbtnSubmit_Click(object sender, EventArgs e)
    {
         


        
    }

    //The account and password prompted cannot be empty
    protected void imbtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('Please enter complete');history.back();</script>");
            Response.End();
        }
        string sql;

        //User account and password login
        if (this.rblType1.Checked)
        {
            sql = "select * from TB_Teacher where TeacherID='" + TextBox1.Text.ToString().Trim() + "' and PassWord='" + TextBox2.Text.ToString().Trim() + "'";
            DataSet result = DBHelper.GetDataSet(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = TextBox1.Text.ToString().Trim();

                    Session["cx"] = "教师"; Session["XingMing"] = result.Tables[0].Rows[0]["TeacherName"].ToString();
                    Response.Redirect("manage.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('Sorry, the username or password is wrong!');history.back();</script>");
                }
            }
            else
            {
                Response.Write("<script>javascript:alert('Sorry, the system is wrong!');</script>");
            }
        }
        else if (this.rblType1.Checked)
        {
            //Administrator account and password login
            sql = "select * from TB_Admin where UserName='" + TextBox1.Text.ToString().Trim() + "' and PassWord='" + TextBox2.Text.ToString().Trim() + "'";
            DataSet result = DBHelper.GetDataSet(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = TextBox1.Text.ToString().Trim();
                    Session["cx"] = "管理员";
                    Response.Redirect("manage.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('Sorry, the username or password is wrong!');history.back();</script>");
                }
            }
            else
            {
                Response.Write("<script>javascript:alert('Sorry, the system is wrong!');</script>");
            }
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('Please enter complete');history.back();</script>");
            Response.End();
        }
        string sql;

        //User account and password login
        if (this.rblType1.Checked)
        {
            sql = "select * from TB_Teacher where TeacherID='" + TextBox1.Text.ToString().Trim() + "' and PassWord='" + TextBox2.Text.ToString().Trim() + "'";
            DataSet result = DBHelper.GetDataSet(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = TextBox1.Text.ToString().Trim();

                    Session["cx"] = "教师"; Session["XingMing"] = result.Tables[0].Rows[0]["TeacherName"].ToString();
                    Response.Redirect("manage.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('Sorry, the username or password is wrong!');history.back();</script>");
                }
            }
            else
            {
                Response.Write("<script>javascript:alert('Sorry, the system is wrong!');</script>");
            }
        }
        else if (this.rblType2.Checked)
        {
            //Administrator account and password login
            sql = "select * from TB_Admin where UserName='" + TextBox1.Text.ToString().Trim() + "' and PassWord='" + TextBox2.Text.ToString().Trim() + "'";
            DataSet result = DBHelper.GetDataSet(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = TextBox1.Text.ToString().Trim();
                    Session["cx"] = "管理员";
                    Response.Redirect("manage.aspx");
                }
                else
                {
                    Response.Write("<script>javascript:alert('Sorry, the username or password is wrong!');history.back();</script>");
                }
            }
            else
            {
                Response.Write("<script>javascript:alert('Sorry, the system is wrong!');</script>");
            }
        }

    }
}
