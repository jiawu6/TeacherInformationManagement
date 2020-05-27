using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MessageBoard : System.Web.UI.Page
{
    public List<string> Sites = new List<string> { "StackOverflow111", "Super User", "Meta SO" };
    public DataSet mbds =  new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label1.Text = "Test";
        if (Session["username"] != null)
        {
            this.Label1.Text = Session["username"].ToString();
        }
        GetData();
    }
    private void GetData()
    {
        DataSet ds = DBHelper.GetDataSet("select ID, Content, UserID, UserName, PostTime from TB_Message order by PostTime desc;");
        this.mbds = ds;
        foreach (DataRow dr in ds.Tables[0].Rows) 
        {
            Console.WriteLine(dr["Content"]);
        }
        //this.GridView1.DataSource = ds.Tables[0];
        //this.GridView1.DataBind();
    }


    protected void PostButton_Click(object sender, EventArgs e)
    {
        string SQL = "";
        bool iRet = false;
        String username = "Test";
        if (Session["username"] != null) {
            username = Session["username"].ToString();
        }
        String message = TXTMessage.Text;
        SQL = "insert into TB_Message(Content, UserID, UserName, PostTime) values ('{0}', {1}, '{2}', '{3}');";
        iRet = DBHelper.ExecSql(string.Format(SQL, message, 1, username, DateTime.Now));
        Response.Redirect("MessageBoard.aspx");
    }
}