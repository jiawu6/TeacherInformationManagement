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

public partial class KeBiao : System.Web.UI.Page
{
    //Display the information of the timetable
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
        protected void InitData()
        {

            string id = Request["ID"].ToString();

            try
            {

                string SQL = "select * from TB_KeBiao where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {

                    this.TextBox1.Text = dt.Rows[0]["One"].ToString();
                    this.TextBox2.Text = dt.Rows[0]["Two"].ToString();
                    this.TextBox3.Text = dt.Rows[0]["Three"].ToString();
                    this.TextBox4.Text = dt.Rows[0]["Four"].ToString();
                    this.TextBox5.Text = dt.Rows[0]["five"].ToString();


                    this.DropDownList1.SelectedItem.Text = dt.Rows[0]["JiaoShi"].ToString();
                    this.DropDownList2.SelectedItem.Text = dt.Rows[0]["ShangXiaWu"].ToString();
 
                  
                }
            }
            catch
            {
            }

        }


    //Revising the Information of Course Schedule
    protected void Button1_Click(object sender, EventArgs e)
        {
            
            string SQL = "";
           bool iRet=false;
           if (Request["ID"] != null)
           {
               string id = Request["ID"].ToString();
               SQL = "update TB_KeBiao set One='" + this.TextBox1.Text + "',Two='" + this.TextBox2.Text + "',Three='" + this.TextBox3.Text + "',Four='" + this.TextBox4.Text + "',five='" + this.TextBox5.Text + "',JiaoShi='" + this.DropDownList1.SelectedItem.Text + "',ShangXiaWu='" + this.DropDownList2.SelectedItem.Text + "' where ID='" + id + "'";
               iRet = DBHelper.ExecSql(SQL);

           }
           else
           {
               SQL = "insert into TB_KeBiao(One,Two,Three,Four,five,JiaoShi,ShangXiaWu ) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.DropDownList1.SelectedItem.Text + "','" + this.DropDownList2.SelectedItem.Text + "')";
               iRet = DBHelper.ExecSql(SQL);
           }
          

            if (iRet)
            {
                 
                Response.Write("<script>alert('Congratulations on your successful operation!');document.location=document.location;</script>");
            }
            else
            {
                Response.Write("<script>alert('Sorry, the operation failed!');document.location=document.location;</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
        
         
            

        }

    }
 
