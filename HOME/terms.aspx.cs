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

        Label1.Text = "<h6 style = 'font - weight: 400; text-transform: none'><p>You agree that by clicking “Sign Up” in registering, accessing or using our services, you are agreeing to enter into a legally binding contract with TCLI (even if you are using our Services on behalf of a company). If you do not agree to this agreement, do not access or otherwise use any of our Services.</p>We collect the following types of information about you:";
        Label1.Text = Label1.Text + "<h6><strong>Registration and Profile Information</strong></h6><h6 style = 'font - weight: 400; text-transform: none'>When you create an account, we may collect your personal information such as your username, first and last name, email address, mobile phone number and a photo, if you chose to have a photo associated with your account. We may also collect billing information when you sign up for Premium service.<br/>";
        Label1.Text = Label1.Text + "<h6><strong>This Contract applies to Members and Visitors</strong></h6><h6 style = 'font - weight: 400; text-transform: none'>As a Visitor or Member of our Services, the collection, use and sharing of your personal data is subject to this Privacy Policy (which includes our cookies and other documents referenced in this Privacy Policy) and updates.";
        
        Label2.Text = "<h6 style = 'font - weight: 400; text-transform: none'>Children under the age of 18 or acceptable age in country require the consent guidance of a parent or guardian. This person must provide consent and agree to terms of agreement during registration.<h6><strong>Accuracy of registration</strong></h6>";
        Label2.Text = Label2.Text + "<h6 style = 'font - weight: 400; text-transform: none'>Every member is obliged to input accurate information for the intent of creating, updating and maintaining an account.  Providing incorrect or inaccurate information, and falsifying information may lead to a ban and may be subject to fines and other disciplinary actions. You must input your real name and users are required to provide additional information if required to validate accuracy of information provided. <br/><br/>";
        Label2.Text = Label2.Text + "''Minimum Age'' means 16 years old. However, if law requires that you must be older in order for LinkedIn to lawfully provide the Services to you without parental consent (including using of your personal data) then the Minimum Age is such older age.<br/><br/></h6><h6><strong>Amendment</strong></h6>";
        Label2.Text = Label2.Text + "<h6 style = 'font - weight: 400; text-transform: none'>From time to time, there may be amendment to policy, terms of agreement and code of conduct, which will be updated. Upon updated, amendment is deemed effect immediately for use and compliance by members.  It is responsibility of member to keep to-date current governing policies, code of conduct, and terms of agreement.  Use of library resources after amendment amounts to acceptance of amended version.</h6>";

        Label3.Text = "<h6 style = 'font - weight: 400; text-transform: none'>Membership and membership agreement begins on date account is first created and runs indefinitely until termination by either member or library on terms of agreement.</h6>";

        Label4.Text = "<h6 style = 'font - weight: 400; text-transform: none'>Members are required to have a single account and having multiple account is completely prohibited. Members agree not to use multiple emails, phone numbers, misleading, false, and alternate personal information in order to generate multiple accounts. Creating multiple accounts is subject to bans, bonds, fines and subject to other disciplinary actions.</h6>";
        Label5.Text = "<h6 style = 'font - weight: 400; text-transform: none'>We respect the rights of our authors and resources on our platform, and users have a responsibility to make use of resources ONLY on library. Copying, distributing, downloads, screenshots, and other form of inappropriate strategy to illegally obtain books and other resources on the platform is an infringement of copyright and will not be tolerated. Failure to comply may result to ban, fines, bonds and other forms of appropriate disciplinary action including paying for damages and offender may be charged.</h6>";
        Label6.Text = "<h6 style = 'font - weight: 400; text-transform: none'>TCLI reserves the right to read, preserve, access and disclose information if required by law or if a violation of copyright, fraud, security breech, violation of terms of agreement and policy and to respond to user support requests.</h6>";
        Label7.Text = "<h6 style = 'font - weight: 400; text-transform: none'>Members are required to abide with all regulations, terms of agreement and policies. TCLI reserves right to discontinue service provided to user if found to be in violation. Such violation may require payment for damages and other appropriate disciplinary actions.</h6>";
    }
}