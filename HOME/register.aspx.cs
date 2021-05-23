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

public partial class register :  System.Web.UI.Page
{

        private string RandomString(int size, bool lowerCase)
        {
            var builder = new StringBuilder();
            var random = new Random();
            char ch;
            int i;
            var loopTo = size - 1;
            for (i = 0; i <= loopTo; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(26d * random.NextDouble() + 65d));
                builder.Append(ch);
            }

            if (lowerCase)
            {
                return builder.ToString().ToLower();
            }

            return builder.ToString();
        } // RandomString 

        private int RandomNumber(int min, int max)
        {
            var random = new Random();
            return random.Next(min, max);
        } // RandomNumber 

        public string trans_pass()
        {
            var builder = new StringBuilder();
            builder.Append("TCLI/NU/");
            builder.Append(RandomNumber(1000, 9999));
            builder.Append(RandomString(2, false));
            return builder.ToString();
        } // trans_pass
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (fname.Value == "")
            fname.Focus();
        else if (DDList1.SelectedValue == "0")
            DDList1.Focus();
        else if (mymobile.Value == "")
            mymobile.Focus();
        else if (DDList2.SelectedValue == "0")
            DDList2.Focus();
        else if (myemail.Text == "")
            myemail.Focus();
        else if (pass1.Value == "")
            pass1.Focus();
        else if (pass2.Value == "")
            pass2.Focus();
        else if (pass1.Value == pass2.Value & CheckBox1.Checked == true)
        {
            //DB Connection
            string strConn_a;
            strConn_a = WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
            SqlConnection Conn_a = new SqlConnection(strConn_a);

            // DB Conn is Open
            Conn_a.Open();

            string cnt = "tcli" + pass1.Value + "2021";
            HashAlgorithm mhash = new SHA1CryptoServiceProvider();
            var bytValue = Encoding.UTF8.GetBytes(cnt);
            byte[] bytHash = mhash.ComputeHash(bytValue);
            mhash.Clear();
            string flame = Convert.ToBase64String(bytHash);

            //SQL Command
            string query1 = "INSERT INTO tbl_tclilibrary_users (fname, email, location, mobi, acct_type, token, code, status, created_on) VALUES ('" + fname.Value + "', '" + myemail.Text + "','" + DDList1.SelectedItem + "', '" + mymobile.Value + "', '" + DDList2.SelectedItem + "', '" + flame + "', '" + trans_pass() + "', '" + "INITIATED" + "', '" + DateTime.Today + "')";
            SqlCommand FC = new System.Data.SqlClient.SqlCommand(query1, Conn_a);
            FC.ExecuteNonQuery();

            if (DDList2.SelectedValue == "1")
            {  //Send Email
                mymsg.Visible = true;
                mymsg.ForeColor = System.Drawing.Color.Red;
                mymsg.Text = "You have successfully opened a free account on our platform. Kindly check you email to complete the registration.";

                //Send Email 

                //"Hi Damilola,<br/> Follow the link below to setup your new account on TCLI e-Library:
                //Link to complete registration
                //Thank You 

                fname.Value = "";
                DDList1.SelectedValue = "0";
                mymobile.Value = "";
                myemail.Text = "0";
                pass1.Value = "";
                pass2.Value = "";
                CheckBox1.Checked = false;
            }
            else if (DDList2.SelectedValue == "2")
            {
                Session["pass_code"] = trans_pass();
                Session["email"] = myemail.Text;

                string url = "~/checkout.aspx?cid=1";
                Response.Redirect(url);
            }
            else if (DDList2.SelectedValue == "3")
            {
                Session["pass_code"] = trans_pass();
                Session["email"] = myemail.Text;

                string url = "~/checkout.aspx?cid=2";
                Response.Redirect(url);
            }
            else
            {

            }


            //Close SQL Command
            Conn_a.Close();
        }
        else
        {

        }
    }
}