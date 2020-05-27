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

public partial class  Teacher : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request["ID"] != null)
                {
                    InitData();
                }
            }
        }

    //Display Teacher Details
    protected void InitData()
        {

            string id = Request["ID"].ToString();

            try
            {

                string SQL = "select * from TB_Teacher where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {
                    this.TextBox1.Text = dt.Rows[0]["TeacherID"].ToString();
                    this.TextBox2.Text = dt.Rows[0]["TeacherName"].ToString();
                    this.TextBox3.Text = dt.Rows[0]["Age"].ToString();
                    this.TextBox4.Text = dt.Rows[0]["Phone"].ToString();
                    this.TextBox5.Text = dt.Rows[0]["Memo"].ToString();

                    this.DropDownList1.Text = dt.Rows[0]["Sex"].ToString();
                     

                }
            }
            catch
            {
            }

        }


    //Revising Teacher Details
    protected void Button1_Click(object sender, EventArgs e)
        {

            string SQL = "";
            bool iRet = false;
            if (Request["ID"] != null)
            {
                string id = Request["ID"].ToString();
                SQL = "update TB_Teacher set TeacherID='" + this.TextBox1.Text + "',TeacherName='" + this.TextBox2.Text + "',Age='" + this.TextBox3.Text + "',Sex='" + this.DropDownList1.SelectedItem.Text + "',Phone='" + this.TextBox4.Text + "',Memo='" + this.TextBox5.Text + "' where ID='" + id + "'";
                iRet = DBHelper.ExecSql(SQL);

            }
            else
            {
                SQL = "insert into TB_Teacher(TeacherID,TeacherName,Age,Sex,Phone,Memo,PassWord) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + this.DropDownList1.SelectedItem.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox1.Text + "')";
                iRet = DBHelper.ExecSql(SQL);

            }

            if (iRet)
            {

                Response.Write("<script>alert('Congratulations on your successful operation!');document.location=document.location;</script>");
            //Successful modification prompted
        }
        else
            {
                Response.Write("<script>alert('Sorry, the operation failed!');document.location=document.location;</script>");
            //Suggest that the modification failed
        }
    }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
           

        }
    //Refilling function

}

