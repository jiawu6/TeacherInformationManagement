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

public partial class KeYanD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        string sql = "delete from TB_KeYan where ID=" + ID;
       bool B = DBHelper.ExecSql(sql);
       if (B)
        {
            Response.Write("<script>javascript:alert('Successful operation');window.navigate('KeYanList.aspx');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('operation failed');window.navigate('KeYanList.aspx');</script>");
        }
    }
}
