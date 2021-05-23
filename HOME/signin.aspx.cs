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

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (myemail.Text == "")
            myemail.Focus();
        else if (mypass.Value == "0")
            mypass.Focus();
        else
        {
            string cnt = "tcli" + mypass.Value + "2021";
            HashAlgorithm mhash = new SHA1CryptoServiceProvider();
            var bytValue = Encoding.UTF8.GetBytes(cnt);
            byte[] bytHash = mhash.ComputeHash(bytValue);
            mhash.Clear();
            string flame = Convert.ToBase64String(bytHash);

            //DB Connection
            string strConn_a;
            strConn_a = WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
            SqlConnection Conn_a = new SqlConnection(strConn_a);

            // DB Conn is Open
            Conn_a.Open();

            string query1 = "SELECT email FROM tbl_tclilibrary_users WHERE (email = @email)";
            var FA = new System.Data.SqlClient.SqlCommand(query1, Conn_a);
            FA.Parameters.AddWithValue("@email", myemail.Text);

            string query2 = "SELECT token FROM tbl_tclilibrary_users WHERE (token = @token And email = @email)";
            var FB = new System.Data.SqlClient.SqlCommand(query2, Conn_a);
            FB.Parameters.AddWithValue("@token", mypass.Value);
            FB.Parameters.AddWithValue("@email", myemail.Text);

            string have_email = (string)FA.ExecuteScalar();
            string have_pass = (string)FB.ExecuteScalar();


            if(have_email != "" & have_pass != "")
            {
                string url = "~/library/index.aspx";
                Response.Redirect(url);
            }
            else
            {
                myemail.Focus();
                mypass.Focus();
            }



        }

    }

}