using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HOME_policy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mymail.HRef = "mailto:tclilibrary@gmail.com";
        mymail1.HRef = "mailto:tclilibrary@gmail.com";
    }

    protected void support_email1(object sender, EventArgs e)
    {
        if (txt1.Text == "")
        {
            txt1.Focus();
        }
        else if (txt2.Text == "")
        {
            txt2.Focus();
        }
        else if (email_bg.Value == "")
        {
            email_bg.Focus();
        }
        else if (CheckBox1.Checked == false)
        {
            CheckBox1.Focus();
        }
        else
        {
              string support_team = "tclilibrary@gmail.com";
              string email_bd = "Sender: " + txt1.Text + "<br/>";
              email_bd = email_bd + "Email: " + txt2.Text + "<br/><br/>Message:<br/>";
              email_bd = email_bd + email_bg.InnerHtml;

              var SmtpServer = new SmtpClient();
              var mail = new MailMessage();
              SmtpServer.UseDefaultCredentials = false;
              SmtpServer.Credentials = new System.Net.NetworkCredential("noreply@tclilibrary.com", "W0rldpeace_1.");
              SmtpServer.Port = 2525;
              SmtpServer.Host = "mail.tclilibrary.com";
              mail.Priority = MailPriority.High;
              mail = new MailMessage();
              mail.IsBodyHtml = true;
              mail.From = new MailAddress("noreply@tclilibrary.com");
              mail.Subject = "Automated Response - Contact US";
              mail.Body = email_bd;
              mail.To.Add(support_team);
              // SmtpServer.Send(mail)

        }
    }
}