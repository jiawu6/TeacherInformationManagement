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

public partial class ChengGuo : System.Web.UI.Page
{
    //Query teacher ID
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string SQL = "select * from TB_Teacher";
                DataSet ds = DBHelper.GetDataSet(SQL);
                this.DropDownList1.DataSource = ds;
                this.DropDownList1.DataTextField = "TeacherName";
                this.DropDownList1.DataValueField = "ID";
                this.DropDownList1.DataBind();
                if (Request["ID"] != null)
                {
                    InitData();
                }
            }

        }
    //Display details of teaching results
    protected void InitData()
    {
        string id = Request["ID"].ToString();
        try
        {
            string sql = "select * from TB_ChengGuo where ID=" + id;
            DataTable dt = DBHelper.GetDataSet(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                this.TextBox1.Text = dt.Rows[0]["ShiJian"].ToString();
                this.TextBox2.Text = dt.Rows[0]["ChengGuo"].ToString();
               
                this.WebEditor1.Text = dt.Rows[0]["MeMo"].ToString();
                this.DropDownList1.Text = dt.Rows[0]["JiaoSHi"].ToString();
            }
        }
        catch
        {
        }
    }
    //Modifying the Information Relevant to Teaching Achievements
    protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;
            if (Request["ID"] != null)
            {

                string id = Request["ID"].ToString();
                sql = "update TB_ChengGuo set ShiJian='" + TextBox1.Text + "',ChengGuo='" + this.TextBox2.Text + "',JiaoSHi='" + this.DropDownList1.SelectedItem.Text  + "',MeMo='" + this.WebEditor1.Text + "' where ID=" + id;
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


                string SQL = "insert into TB_ChengGuo(ShiJian,MeMo,ChengGuo,JiaoSHi) values('" + this.TextBox1.Text.Trim() + "','" + TextBox2.Text + "','" + WebEditor1.Text + "','" + this.DropDownList1.SelectedItem.Text + "')";
                bool iRet = DBHelper.ExecSql(SQL);


                if (iRet)
                {
                    Response.Write("<script>javascript:alert('Successful operation');</script>");
                }
                else
                {
                    Response.Write("<script>javascript:alert('System error, you did not set up the database connection!');</script>");
                }


                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.WebEditor1.Text = "";
         

        }

    }
 
