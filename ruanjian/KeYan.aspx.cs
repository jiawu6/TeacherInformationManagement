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

public partial class KeYan : System.Web.UI.Page
{
  
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
    //Display scientific research project information
    protected void InitData()
    {
        string id = Request["ID"].ToString();
        try
        {
            string sql = "select * from TB_KeYan where ID=" + id;
            DataTable dt = DBHelper.GetDataSet(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                this.TextBox1.Text = dt.Rows[0]["ShiJian"].ToString();
                this.TextBox2.Text = dt.Rows[0]["XiangMu"].ToString();
                this.TextBox3.Text = dt.Rows[0]["JiangXiang"].ToString();
                this.WebEditor1.Text = dt.Rows[0]["MeMo"].ToString();
                this.DropDownList1.Text = dt.Rows[0]["JiaoSHi"].ToString();
            }
        }
        catch
        {
        }
    }
    //Modification of scientific research project information
    protected void Button1_Click(object sender, EventArgs e)
        {

            string sql;
            if (Request["ID"] != null)
            {

                string id = Request["ID"].ToString();
                sql = "update TB_KeYan set ShiJian='" + TextBox1.Text + "',XiangMu='" + this.TextBox2.Text + "',JiaoSHi='" + this.DropDownList1.SelectedItem.Text + "',JiangXiang='" + this.TextBox3.Text + "',MeMo='" + this.WebEditor1.Text + "' where ID=" + id;
                bool b = DBHelper.ExecSql(sql);



                if (b)
                {
                    Response.Write("<script>javascript:alert('Successful operation');</script>");
                //Successful operation of system prompt
            }
            else
                {
                    Response.Write("<script>javascript:alert('System error, you did not set up the database connection! Or you entered some illegal characters!');</script>");
                //Prompt database connection error
            }
        }
            else
            {


                string SQL = "insert into TB_KeYan(ShiJian,XiangMu,MeMo,JiangXiang,JiaoSHi) values('" + this.TextBox1.Text.Trim() + "','" + TextBox2.Text + "','" + WebEditor1.Text + "','" + TextBox3.Text + "','" + this.DropDownList1.SelectedItem.Text + "')";
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

    //Refilling function
    protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.WebEditor1.Text = "";
         

        }

    }
 
