using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HOME_policy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mymail.HRef = "mailto:tclilibrary@gmail.com";
        mymail1.HRef = "mailto:tclilibrary@gmail.com";

        Label1.Text = "<h6 style = 'font - weight: 400; text-transform: none'><p>General. When you visit the Site, you can browse without submitting any personal information about yourself. In order to participate in certain functionalities, you may be asked to provide personally identifiable information. Personally, identifiable information is information that can identify you, including, for example, your name or email address.</p>";
        Label1.Text = Label1.Text + "We store user data for user personalization and do not distribute any user data for marketing or any purpose. <br /><br />Registered user will be able to borrow 3 books per month<br/><br />Registered member data:<br />";
        Label1.Text = Label1.Text + "<ul class='menu_main_nav'><li>First Name, Last Name</li><li>Username</li><li>Phone Number</li><li>Email</li><li>Country</li><li>Books Borrowed</li><li>Books Read</li></ul><br />";
        Label1.Text = Label1.Text + "<br/><p>Communications; Email Address Collection.In order to receive certain communications from us, such as responses to user inquiries, you will be required to submit your email address to us.You may also provide your email address to us in order to receive account activation link and forgot password link.</p><br />We do not use GPS or gyroscope or microphone data or none such kind of other device information.";

        Label2.Text = "<h6 style = 'font - weight: 400; text-transform: none'>General.We will use your personally identifiable information to operate, manage and administer the Service; to fulfil your purchase of paid membership; to provide you with support or a more personalized experience; to communicate with you; and to provide you information about products and services.</h6>";

        Label3.Text = "<h6 style = 'font - weight: 400; text-transform: none'>Keeping your information secure is of great concern to us. We exercise care in facilitating the transmission of information between your device or computer and our servers (or the third party servers that operate and store information for the Service). Any personally identifiable information collected by the Service is stored in operating environments that are not available to the public. While we have mechanisms in place to safeguard your personal information after we receive it, no transmission of data over the internet can be 100% secure.</h6>";

        Label4.Text = "<h6 style = 'font - weight: 400; text-transform: none'>TCLI may, in its sole discretion, modify or update this Privacy Policy from time to time, and so you should review this page periodically. When we change the policy, we will update the ‘last modified’ date at the top of this page. If there are material changes to this Privacy Policy or in how TCLI will use your personal information, we will notify you either by prominently posting a notice of such changes prior to implementing the change or by directly sending you a notification.</h6>";
        Label5.Text = "<h6 style = 'font - weight: 400; text-transform: none'>If you have any questions about this Privacy Policy or the Service, please contact us at tclilibrary@gmail.com.<br/><br/>Address:<br/>TCLI e-Library,<br/>Lagos, Nigeria<br/><br/>Or<br/><br/>TCLI e-Library,<br/>Edmonton, Alberta, Canada.</h6>";
    }
}