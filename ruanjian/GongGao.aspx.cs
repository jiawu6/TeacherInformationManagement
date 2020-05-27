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

public partial class GongGao : System.Web.UI.Page
{
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.TextBox2.Text = Session["username"].ToString();
                if (Request["ID"] != null)
                {
                    InitData();
                }
            }

        }

    //Display regulatory information
    protected void InitData()
    {
        string id = Request["ID"].ToString();
        try
        {
            string sql = "select * from TB_GongGao where ID=" + id;
            DataTable dt = DBHelper.GetDataSet(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                this.TextBox1.Text = dt.Rows[0]["Title"].ToString();
                this.TextBox2.Text = dt.Rows[0]["FaBuRen"].ToString();
                this.WebEditor1.Text = dt.Rows[0]["NeiRong"].ToString();
            }
        }
        catch
        {
        }
    }

    //Amendments to rules and regulations
    protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;
            if (Request["ID"] != null)
            {

                string id = Request["ID"].ToString();
                sql = "update TB_GongGao set Title='" + TextBox1.Text + "',FaBuRen='" + this.TextBox2.Text + "',NeiRong='" + this.WebEditor1.Text + "' where ID=" + id;
                bool b = DBHelper.ExecSql(sql);



                if (b)
                {
                    Response.Write("<script>javascript:alert('Successful operation');</script>");
                }
                else
                {
                    Response.Write("<script>javascript:alert('System error, you did not set up the database connection! Or you entered some illegal characters!');</script>");
                }
            }
            else
            {


                string SQL = "insert into TB_GongGao(Title,FaBuRen,NeiRong) values('" + this.TextBox1.Text.Trim() + "','" + TextBox2.Text + "','" + WebEditor1.Text + "')";
                bool iRet = DBHelper.ExecSql(SQL);


                if (iRet)
                {
                    Response.Write("<script>javascript:alert('Successful operation');</script>");
                //Successful modification prompted
            }
            else
                {
                    Response.Write("<script>javascript:alert('System error, you did not set up the database connection!');</script>");
                //Indicate system error, modification failure
            }



        }
        }

    //Refilling function
    protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.WebEditor1.Text = "";
         

        }

    }
 
