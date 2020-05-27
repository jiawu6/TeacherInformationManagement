﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class KeBiao_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetDate();

        }
    }
    //Display table contents
    private void GetDate()
    {
        DataSet ds = DBHelper.GetDataSet("select * from TB_KeBiao");
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string SQL = "select * from TB_KeBiao where 1=1";
        if (!string.IsNullOrEmpty(this.TextBox1.Text))
        {
            SQL = SQL + " and JiaoShi='" + this.TextBox1.Text + "'";
        }
        DataSet ds = DBHelper.GetDataSet(SQL);
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
    }
}
