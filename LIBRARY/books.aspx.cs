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

public partial class LIBRARY_books :  System.Web.UI.Page
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

        string query2 = "SELECT ebk_name FROM tbl_tclilibrary_ebooks WHERE (ebk_id = @ebk_id)";
        var FB = new System.Data.SqlClient.SqlCommand(query2, Conn_a);
        FB.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        string query3 = "SELECT ebk_desc FROM tbl_tclilibrary_ebooks WHERE (ebk_id = @ebk_id)";
        var FC = new System.Data.SqlClient.SqlCommand(query3, Conn_a);
        FC.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        string query4 = "SELECT ebk_author FROM tbl_tclilibrary_ebooks WHERE (ebk_id = @ebk_id)";
        var FD = new System.Data.SqlClient.SqlCommand(query4, Conn_a);
        FD.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        string query5 = "SELECT ebk_img FROM tbl_tclilibrary_ebooks WHERE (ebk_id = @ebk_id)";
        var FE = new System.Data.SqlClient.SqlCommand(query5, Conn_a);
        FE.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        string query6 = "SELECT cat FROM tbl_tclilibrary_ebooks WHERE (ebk_id = @ebk_id)";
        var FF = new System.Data.SqlClient.SqlCommand(query6, Conn_a);
        FF.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        fname.InnerHtml = (string)FA.ExecuteScalar();
        fname1.InnerHtml = "Hello " + (string)FA.ExecuteScalar();
        bk_author.InnerHtml = (string)FD.ExecuteScalar();
        bk_name.InnerHtml = (string)FB.ExecuteScalar();
        bk_snippet.InnerHtml = (string)FC.ExecuteScalar();

        Session["cat"] = (string)FF.ExecuteScalar();

        Conn_a.Close();

        fbuk.HRef = "https://www.facebook.com/sharer.php?u=https%3A%2F%2Fwww.tclilibrary.com%2Fappdownload.html";
        twitter.HRef = "";
        linkedin.HRef = "https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fwww.tclilibrary.com%2Fappdownload.html";

    }

    protected void bk_lend_click(object sender, EventArgs e)
    {
        //DB Connection
        string strConn_a;
        strConn_a = WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
        SqlConnection Conn_a = new SqlConnection(strConn_a);

        // DB Conn is Open
        Conn_a.Open();

        string query1 = "SELECT ebk_id FROM tbl_tclilibrary_lending WHERE (u_id = @u_id And ebk_id = @ebk_id)";
        var FA = new System.Data.SqlClient.SqlCommand(query1, Conn_a);
        FA.Parameters.AddWithValue("@u_id", Session["email"]);
        FA.Parameters.AddWithValue("@ebk_id", Request.QueryString["eid"]);

        string mybook = (string)FA.ExecuteScalar();

        
    }
}