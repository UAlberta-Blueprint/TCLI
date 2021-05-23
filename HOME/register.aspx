<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>TCLI Library - Sign-Up</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="images\favicon.ico">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <!-- Typography CSS -->
    <link rel="stylesheet" href="css\typography.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css\style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css\responsive.css">
    <link rel="stylesheet" href="css\lego.css">
    <link rel='stylesheet' id='lorem-ipsum-books-media-store-font-google-fonts-style-css' href='//fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic,900,900italic|Montserrat:300,300italic,400,400italic,700,700italic&subset=latin,latin-ext' type='text/css' media='all'>
	
    <style>
    </style>
</head>
   <body>
       <form id="form1" runat="server" >
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
        <!-- Sign in Start -->
      <section class="sign-in-page c-section-pattern c-section-pattern--circular c-section-pattern--circular-right">
          <div class="c-section-pattern1 c-section-pattern--circular1 c-section-pattern--circular-right1"></div>
          <div class="container p-0">
              <div class="row no-gutters height-self-center">
                  <div class="col-sm-12 align-self-center page-content rounded">
                      <div class="row m-0">
                          <div class="col-sm-12 sign-in-page-data">
                              <div class="sign-in-from bg-primary rounded">
                                  <p style="text-align: center">
                                      <img src="images/icon.png" height="100" width="100" /><br />
                                      <asp:Label ID="mymsg" runat="server" ></asp:Label>
                                  </p>
                                      <div class="form-group">
                                          <input type="text" class="form-control mb-0" id="fname" runat="server" placeholder="Your Full Name" />
                                      </div>
                                      <div class="form-group">
                                          <asp:DropDownList ID="DDList1" runat="server" CssClass="form-control mb-0">
                                              <asp:ListItem Value="0">Country</asp:ListItem>
                                              <asp:ListItem>Nigeria</asp:ListItem>
                                              <asp:ListItem>Canada</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      <div class="form-group">
                                          <input type="text" class="form-control mb-0" id="mymobile" runat="server" placeholder="Phone No" />
                                      </div>
                                      <div class="form-group">
                                          <asp:DropDownList ID="DDList2" runat="server" CssClass="form-control mb-0">
                                              <asp:ListItem Value="0">Membership</asp:ListItem>
                                              <asp:ListItem Value="1">Free Account</asp:ListItem>
                                              <asp:ListItem Value="2">Basic Account ($2 or ₦500 Annually)</asp:ListItem>
                                              <asp:ListItem Value="3">Premuim Account ($2 or ₦500 Monthly)</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      <div class="form-group">
                                          <asp:TextBox ID="myemail" class="form-control mb-0" runat="server" placeholder="Enter email"></asp:TextBox>
                                      </div>
                                      <div class="form-group">
                                          <input type="password" class="form-control mb-0" id="pass1" runat="server"  placeholder="Password" />
                                      </div>
                                      <div class="form-group">
                                          <input type="password" class="form-control mb-0" id="pass2" runat="server" placeholder="Confirm Password" />
                                      </div>
                                      <div class="d-inline-block w-100">
                                          <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                              <asp:CheckBox ID="CheckBox1" runat="server" CssClass="custom-control-input" />
                                              <label class="custom-control-label" for="customCheck1">I accept <a href="#" class="text-light">Terms and Conditions</a></label>
                                          </div>
                                      </div>
                                      <div class="sign-info text-center">
                                          <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="false" class="btn btn-white d-block w-100 mb-2" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>
                                          <span class="text-dark d-inline-block line-height-2">Already Have Account ? <a href="signin.aspx" class="text-white">Log In</a></span>
                                      </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>
        <!-- Sign in END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="js\jquery.min.js"></script>
      <script src="js\popper.min.js"></script>
      <script src="js\bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="js\jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="js\countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="js\waypoints.min.js"></script>
      <script src="js\jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="js\wow.min.js"></script>
      <!-- lottie JavaScript -->
      <script src="js\lottie.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="js\apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="js\slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="js\select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="js\owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="js\jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="js\smooth-scrollbar.js"></script>
      <!-- Style Customizer -->
      <script src="js\style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="js\chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="js\custom.js"></script>
           
     </form>
   </body>
</html>

