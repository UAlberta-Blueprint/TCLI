﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>TCLI Library | Sign Up</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="images\favicon.ico">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <!-- Typography CSS -->
    <link rel="stylesheet" href="css\typography.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="css\ionicons.min.css">
    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css\responsive.css">
    <link rel="stylesheet" href="css\lego.css">
    <link rel='stylesheet' id='lorem-ipsum-books-media-store-font-google-fonts-style-css' href='//fonts.googleapis.com/css?family=Lato:300,300italic,400,400italic,700,700italic,900,900italic|Montserrat:300,300italic,400,400italic,700,700italic&subset=latin,latin-ext' type='text/css' media='all'>
	
    <style>
        
    </style>
</head>
   <body>
       
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
        <!-- Sign in Start -->
        <section class="sign-in-page c-section-pattern c-section-pattern--circular c-section-pattern--circular-right  ">
            <div class="c-section-pattern1 c-section-pattern--circular1 c-section-pattern--circular-right1"></div>
            <div class="container p-0 ">
                <div class="row no-gutters height-self-center">
                    <div class="col-sm-12 align-self-center page-content rounded">
                        <div class="row m-0">
                            <div class="col-sm-12 sign-in-page-data">
                                <div class="sign-in-from bg-primary rounded">
                                    <form id="form1" runat="server">
                                        <p style="text-align: center">
                                            <img src="images/icon.png" height="150" width="150" />
                                        </p>
                                        <div class="form-group">
                                            <button id="facebuk" runat="server" type="submit" class="btn btn-white d-block w-100 mb-2" style="color: dodgerblue"><span class="ion ion-social-facebook" style="font-size: 18px; color: dodgerblue"></span>&nbsp;&nbsp;&nbsp; Sign Up with Facebook</button>
                                        </div>
                                        <div class="form-group">
                                            <button id="google" runat="server" type="submit" class="btn btn-white d-block w-100 mb-2" style="color: red"><span class="ion ion-social-google" style="font-size: 18px; color: red"></span>&nbsp;&nbsp;&nbsp; Sign Up with Google</button>
                                        </div>
                                        <div class="form-group">
                                               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-white d-block w-100 mb-2" PostBackUrl="~/home/register.aspx">
                                                        <span class="ion ion-email" style="font-size: 18px;"></span>&nbsp;&nbsp;&nbsp; Sign Up with Email
                                               </asp:LinkButton>
                                           
                                        </div>
                                        <div class="sign-info text-center">
                                            <span class="text-dark dark-color d-inline-block line-height-2">I have an account? <a href="signin.aspx" class="text-white">Sign In</a></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Sign in END -->
       <
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
      <!-- Apexcharts JavaScript -->
      <script src="js\apexcharts.js"></script>
      <!-- lottie JavaScript -->
      <script src="js\lottie.js"></script>
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
   </body>
</html>
