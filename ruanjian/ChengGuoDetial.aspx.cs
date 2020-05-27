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

public partial class KeYanDetial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNewsInfo();
        }
    }
    private void GetNewsInfo()
    {
        string ID = Request.QueryString["ID"].ToString();
        string sqlNews = "select  * from TB_ChengGuo where ID=" + ID;
        DataSet result = new DataSet();
        result = DBHelper.GetDataSet(sqlNews);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {

                this.dlTopic.DataSource = result.Tables[0];
                dlTopic.DataBind();

            }
            else
            {
                dlTopic.DataSource = null;
                dlTopic.DataBind();
            }
        }
    }




}
