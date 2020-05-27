using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

/// <summary>
/// Summary of DBHelper
/// </summary>
public class  DBHelper
{
     
        public DBHelper()
        {
        //
        // TODO: Add constructor logic here
        //
    }

    public static int ExecuteSQL(string cmdText, CommandType cmdType, string[] names, object[] values)
        {
            SqlConnection myConn = new SqlConnection(GetConnStr());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myConn;
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.Parameters.Clear();
            if (names != null)
            {
                for (int i = 0; i < names.Length; i++)
                {
                    cmd.Parameters.AddWithValue(names[i], values[i]);
                }
            }
            if (myConn.State == ConnectionState.Closed)
            {
                myConn.Open();
            }
            int count = cmd.ExecuteNonQuery();
            myConn.Close();
            return count;
        }
    /// <summary>
    /// Get the database connection string
    /// </summary>
    /// <returns></returns>
    public static string GetConnStr()
        {
            return ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        }



    /// <summary>
    /// Getting DataSet Type Query Record Set from SQL Variables (Select Statement)
    /// </summary>
    /// <param name="sql">select语句，字符串类型</param>
    /// <returns></returns>
    public static DataSet GetDataSet(string sql)
        {
            SqlConnection conn = new SqlConnection(GetConnStr());
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();
            return ds;
        }




    /// <summary>
    /// Execute SQL statements, mainly insert, update, delete statements
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public static Boolean ExecSql(string sql)
        {
            SqlConnection conn = new SqlConnection(GetConnStr());
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            try
            {
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                conn.Close();
                return false;
            }
            return true;
        }



    /// <summary>
    /// Get the SQL DataReader type recordset by querying the select statement (sql) (to facilitate the processing of each row)
    /// </summary>
    /// <param name="sql">select语句</param>
    /// <returns>SQLDataReader</returns>
    public static SqlDataReader GetReader(string sql)
        {
            SqlConnection conn = new SqlConnection(GetConnStr());
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            //try
            //{
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection); //Automatically close the associated conn object when closing the datareader object
                                                                                   //}
                                                                                   //catch (Exception ex)
                                                                                   //{

        //}
        //finally
        //{
        //conn.Close();  //The data reader object cannot execute the read method after closing.

        //}
        return dr;
        }



    /// <summary>
    /// Description: GetDataSet dataset, return dataset of data source
    ///	Return value: DataSet
    ///	Parameters: sQueryString SQL string, TableName table name
    /// Creation date: 2019
    /// Founder: Wujia
    /// </summary>
    public static DataSet GetDataSet(string sQueryString, string TableName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["DB"]);
            con.Open();
            SqlDataAdapter dbAdapter = new SqlDataAdapter(sQueryString, con);
            DataSet dataset = new DataSet();
            dbAdapter.Fill(dataset, TableName);
            con.Close();
            return dataset;
        }



    /// <summary>
    /// Binding database source to dropdownlist control
    /// 
    /// </summary>
    /// <param name="ddlName">控件名称</param>
    /// <param name="sql">sql语句</param>
    public static void BindDDL(DropDownList ddlName, string sql)
        {
            ddlName.Items.Clear();
            DataSet ds = GetDataSet(sql);

            ListItem li = new ListItem("", "");
            ddlName.Items.Add(li);
            if (ds != null && ds.Tables[0].Rows.Count >= 1)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    li = new ListItem(ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][0].ToString());//text,value
                    ddlName.Items.Add(li);
                }
            }

         
        }

    




    }
 
