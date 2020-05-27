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

public partial class WenJian : System.Web.UI.Page
{
    public static string fname = "";
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
        protected void InitData()
        {

            string id = Request["ID"].ToString();

            try
            {

                string SQL = "select * from TB_WenJian where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];

                if (dt.Rows.Count > 0)
                {

                    this.TextBox1.Text = dt.Rows[0]["WenJianName"].ToString();
                    
                    
            }
        }
            catch
            {
        }

    }

    private void FileUpLoad()
    {
        if (UploadFile.Value != null)
        {
            string nam = UploadFile.PostedFile.FileName;
            //Get the index of the last "..." in the file name (inclusive path)
            int i = nam.LastIndexOf(".");
            //Get the file extension
            string newext = nam.Substring(i);
            //File names are automatically named according to date and file size to ensure that the file names are not duplicated
            DateTime now = DateTime.Now;
            string newname = now.ToFileTimeUtc() + UploadFile.PostedFile.ContentLength.ToString();
            //Save the file to the directory you want. Here is the uploadfiles directory in the IIS root directory.
           
            UploadFile.PostedFile.SaveAs(Server.MapPath("UpLoad/" + newname + newext));
            //Get the relevant properties of the file: file name, file type, file size
            fname = "UpLoad/" + newname + newext;

        }
    }
 
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;

            if (UploadFile.Value != null && UploadFile.Value != "")
            {
                FileUpLoad();
            } if (Request["ID"] != null)
            {
                string id = Request["ID"].ToString();
                sql = "update TB_WenJian set WenJianName='" + TextBox1.Text + "',WenJianDiZhi='" + fname + "' where ID=" + id;
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
                sql = "insert into TB_WenJian(WenJianName,WenJianDiZhi) values('" + this.TextBox1.Text.Trim()   + "','" + fname  + "')";
                bool b = DBHelper.ExecSql(sql);
                if (b)
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
        }

}
 
