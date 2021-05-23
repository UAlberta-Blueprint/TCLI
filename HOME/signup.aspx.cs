using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void reg_email1(object sender, EventArgs e)
    {
        string my_url = "~/register.aspx";
        Response.Redirect(my_url);
    }

    protected void facebuk1(object sender, EventArgs e)
    {

    }

    protected void google1(object sender, EventArgs e)
    {

    }
}