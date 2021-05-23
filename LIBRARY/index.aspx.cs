using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LIBRARY_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["email"] = "akokomail@yahoo.co.uk";
        //DB Connection
        string strConn_a;
        strConn_a = WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
        SqlConnection Conn_a = new SqlConnection(strConn_a);

        // DB Conn is Open
        Conn_a.Open();

        string query1 = "SELECT fname FROM tbl_tclilibrary_users WHERE (email = @email)";
        var FA = new System.Data.SqlClient.SqlCommand(query1, Conn_a);
        FA.Parameters.AddWithValue("@email", "akokomail@yahoo.co.uk");

        string query2 = "SELECT TOP 1 bk_name FROM tbl_tclilibrary_featurebk";
        var FB = new System.Data.SqlClient.SqlCommand(query2, Conn_a);

        string query3 = "SELECT TOP 1 img FROM tbl_tclilibrary_featurebk";
        var FC = new System.Data.SqlClient.SqlCommand(query3, Conn_a);

        string query4 = "SELECT TOP 1 snippet FROM tbl_tclilibrary_featurebk";
        var FD = new System.Data.SqlClient.SqlCommand(query4, Conn_a);

        string query5 = "SELECT TOP 1 author FROM tbl_tclilibrary_featurebk";
        var FE = new System.Data.SqlClient.SqlCommand(query5, Conn_a);

        string query6 = "SELECT TOP 1 ebk_id FROM tbl_tclilibrary_featurebk";
        var FF = new System.Data.SqlClient.SqlCommand(query6, Conn_a);

        fname.InnerHtml = (string)FA.ExecuteScalar();
        fname1.InnerHtml = "Hello " + (string)FA.ExecuteScalar();
        feature_img.Src = (string)FC.ExecuteScalar();
        feature_name.InnerHtml = (string)FB.ExecuteScalar();
        feature_author.InnerHtml = "Author: " + (string)FE.ExecuteScalar();
        feature_snippet.InnerHtml = (string)FD.ExecuteScalar();
        //feature_url.HRef = "books.aspx?eid=" + (string)FF.ExecuteScalar();


        Conn_a.Close();
    }
}