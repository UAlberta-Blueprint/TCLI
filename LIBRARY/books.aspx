<%@ Page Language="C#" AutoEventWireup="true" CodeFile="books.aspx.cs" Inherits="LIBRARY_books" %>

<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>TCLI e-LIBRARY | Books</title>
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
   </head>
   <body>
       <form id="form1" runat="server">
      <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
      <!-- Wrapper Start -->
      <div class="wrapper">
         <!-- Sidebar  -->
         <div class="iq-sidebar">
            <div class="iq-sidebar-logo d-flex justify-content-between">
               <a href="index.html" class="header-logo">
                  <img src="images\logo.png" class="img-fluid rounded-normal" alt="">
                  <div class="logo-title">
                     <span class="text-primary text-uppercase">TCLI <span class="text-lowercase">e-</span>LIBRARY</span>
                  </div>
               </a>
               <div class="iq-menu-bt-sidebar">
                  <div class="iq-menu-bt align-self-center">
                     <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="sidebar-scrollbar">
               <nav class="iq-sidebar-menu">
                  <ul id="iq-sidebar-toggle" class="iq-menu">
                     <li class="active active-menu">
                         <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                             <li class="active"><a href="index.html"><i class="las la-house-damage"></i>Home</a></li>
                             <li><a href="#"><i class="ri-function-line"></i>Favourite Books</a></li>
                             <li><a href="#"><i class="ri-checkbox-multiple-blank-line"></i>Subscription</a></li>
                             <li><a href="#"><i class="ri-heart-line"></i>Wishlist</a></li>
                             <li><a href="#"><i class="las la-id-card-alt"></i>Discussion Board</a></li>
                             <li><a href="#"><i class="ri-login-box-line ml-2"></i>Sign Out</a></li>
                         </ul>
                     </li>
                  </ul>
               </nav>
            </div>
         </div>
         <!-- TOP Nav Bar -->
         <div class="iq-top-navbar">
            <div class="iq-navbar-custom">
                <nav class="navbar navbar-expand-lg navbar-light p-0">
                    <div class="iq-menu-bt d-flex align-items-center">
                        <div class="wrapper-menu">
                            <div class="main-circle"><i class="las la-bars"></i></div>
                        </div>
                        <div class="iq-navbar-logo d-flex justify-content-between">
                            <a href="index.html" class="header-logo">
                                <img src="images\logo.png" class="img-fluid rounded-normal" alt="">
                                <div class="logo-title">
                                    <span class="text-primary text-uppercase">TCLI e-LIBRARY</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="navbar-breadcrumb">
                    </div>
                    <div class="iq-search-bar">
                        <div class="searchbox">
                            <input type="text" class="text search-input" placeholder="Search Here...">
                            <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                        </div>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
                        <i class="ri-menu-3-line"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-list">
                            <li class="nav-item nav-icon search-content">
                                <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                                    <i class="ri-search-line"></i>
                                </a>
                                <div class="search-box p-0">
                                    <input type="text" class="text search-input" placeholder="Type here to search...">
                                    <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                                </div>
                            </li>
                            <li class="line-height pt-3">
                                <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                                    <img src="images\user\1.jpg" class="img-fluid rounded-circle mr-3" alt="user">
                                    <div class="caption">
                                        <h6 class="mb-1 line-height" id="fname" runat="server"></h6>
                                    </div>
                                </a>
                                <div class="iq-sub-dropdown iq-user-dropdown">
                                    <div class="iq-card shadow-none m-0">
                                        <div class="iq-card-body p-0 ">
                                            <div class="bg-primary p-3">
                                                <h5 class="mb-0 text-white line-height" id="fname1" runat="server"></h5>
                                            </div>
                                            <a href="profile.html" class="iq-sub-card iq-bg-primary-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-primary">
                                                        <i class="ri-file-user-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">My Profile</h6>
                                                        <p class="mb-0 font-size-12">View personal profile details.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="iq-sub-card iq-bg-primary-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-primary">
                                                        <i class="ri-profile-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Edit Profile</h6>
                                                        <p class="mb-0 font-size-12">Modify your personal details.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="iq-sub-card iq-bg-primary-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-primary">
                                                        <i class="ri-account-box-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Account settings</h6>
                                                        <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="iq-sub-card iq-bg-primary-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-primary">
                                                        <i class="ri-lock-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Privacy Settings</h6>
                                                        <p class="mb-0 font-size-12">Control your privacy parameters.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="d-inline-block w-100 text-center p-3">
                                                <a class="bg-primary iq-sign-btn" href="sign-in.html" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
         </div>
         <!-- TOP Nav Bar END -->
         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center">
                           <h4 class="card-title mb-0">Books Description</h4>
                        </div>
                        <div class="iq-card-body pb-0">
                           <div class="description-contens align-items-top row">
                              <div class="col-md-6">
                                 <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                       <div class="row align-items-center">
                                          <div class="col-9">
                                             <ul id="description-slider" class="list-inline p-0 m-0  d-flex align-items-center">
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img id="bk_img" runat="server" src="images\book-dec\01.jpg" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                       <h3 id="bk_name" runat="server" class="mb-3"></h3>
                                       <div class="price d-flex align-items-center font-weight-500 mb-2">
                                       </div>
                                       <div class="mb-3 d-block">
                                          <span class="font-size-20 text-warning">
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star"></i>
                                          </span>
                                       </div>
                                       <span id="bk_snippet" runat="server"  class="text-dark mb-4 pb-4 iq-border-bottom d-block"></span>
                                       <div class="text-primary mb-4">Author: <span id="bk_author" runat="server"  class="text-body"></span></div>
                                       <div class="mb-4 d-flex align-items-center">                                       
                                          <a id="bk_lend" runat="server" href="" class="btn btn-primary view-more mr-2">Borrow</a>
                                       </div>
                                       <div class="iq-social d-flex align-items-center">
                                          <h5 class="mr-2">Share:</h5>
                                          <ul class="list-inline d-flex p-0 mb-0 align-items-center">
                                             <li>
                                                <a id="fbuk" runat="server" href="#" class="avatar-40 rounded-circle bg-primary mr-2 facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                <a id="twitter" runat="server" href="#" class="avatar-40 rounded-circle bg-primary mr-2 twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                <a id="linkedin" runat="server" href="#" class="avatar-40 rounded-circle bg-primary mr-2 linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Similar Books</h4>
                           </div>
                        </div>
                        <div class="iq-card-body trendy-contens">
                           <ul id="trendy-slider" class="list-inline p-0 mb-0 row">
                      <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"   >
                           <AlternatingItemTemplate>
                              <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();">
                                           <img class="img-fluid rounded w-100" src='images\trendy-books\<%#Eval("ebk_img")%>' alt="">
                                       </a>
                                       <div class="view-book">
                                          <a href="#" class="btn btn-sm btn-white">View Book</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1"><%#Eval("ebk_name")%></h6>
                                          <p class="font-size-13 line-height mb-1"><%#Eval("ebk_author")%></p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="iq-product-action">
                                          <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                          <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                            </AlternatingItemTemplate>
            
                           <EmptyDataTemplate>
                                 <p style="text-align: center" >No Record of any Similar Book(s).</p>
                           </EmptyDataTemplate>
                           <EmptyItemTemplate>
                               <td runat="server" />
                           </EmptyItemTemplate>
                           <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server" class="list-inline p-0 mb-0 row">
                                    <td id="itemPlaceholder" runat="server" class="list-inline p-0 mb-0 row" ></td>
                                </tr>
                           </GroupTemplate>
                           <ItemTemplate>
                                <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();">
                                           <img class="img-fluid rounded w-100" src='images\trendy-books\<%#Eval("ebk_img")%>' alt="">
                                       </a>
                                       <div class="view-book">
                                          <a href="#" class="btn btn-sm btn-white">View Book</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1"><%#Eval("ebk_name")%></h6>
                                          <p class="font-size-13 line-height mb-1"><%#Eval("ebk_author")%></p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="iq-product-action">
                                          <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                          <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <tr id="groupPlaceholderContainer" runat="server" class="list-inline p-0 mb-0 row">
                                     <td id="groupPlaceholder" runat="server" class="list-inline p-0 mb-0 row" ></td>
                                </tr>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();">
                                           <img class="img-fluid rounded w-100" src='images\trendy-books\<%#Eval("ebk_img")%>' alt="">
                                       </a>
                                       <div class="view-book">
                                          <a href="#" class="btn btn-sm btn-white">View Book</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1"><%#Eval("ebk_name")%></h6>
                                          <p class="font-size-13 line-height mb-1"><%#Eval("ebk_author")%></p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="iq-product-action">
                                          <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                          <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                            </SelectedItemTemplate>
                      </asp:ListView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:localdb %>" 
                            SelectCommand="SELECT * FROM [tbl_tclilibrary_ebooks] WHERE ([cat] = @cat)">
	                          <SelectParameters>
                                  <asp:SessionParameter Name="cat" SessionField="cat" Type="String" />
                              </SelectParameters>
                      </asp:SqlDataSource>
                              
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Borrowed Books</h4>
                           </div>
                        </div>                         
                        <div class="iq-card-body favorites-contens">
                           <ul id="favorites-slider" class="list-inline p-0 mb-0 row">
                             <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2"   >
                               <AlternatingItemTemplate>
                                    <li class="col-md-4">
                                           <div class="d-flex align-items-center">
                                               <div class="col-5 p-0 position-relative">
                                                   <a href="javascript:void();">
                                                       <img src='images\favorite\<%#Eval("ebk_img")%>' class="img-fluid rounded w-100" alt="">
                                                   </a>
                                               &nbsp;&nbsp;&nbsp;&nbsp;</div>
                                               <div class="col-7">
                                                   <h5 class="mb-2">'<%#Eval("ebk_name")%>'</h5>
                                                   <p class="mb-2">Author : <%#Eval("ebk_author")%></p>
                                                   <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                       <span>Completed</span>
                                                       <span class="mr-4">28%</span>
                                                   </div>
                                                   <div class="iq-progress-bar-linear d-inline-block w-100">
                                                       <div class="iq-progress-bar iq-bg-primary">
                                                           <span class="bg-primary" data-percent="28"></span>
                                                       </div>
                                                   </div>
                                                   <a href='reader.aspx?eid=<%#Eval("ebk_id")%>' class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                               </div>
                                           </div>
                                       </li>
                               </AlternatingItemTemplate>
            
                           <EmptyDataTemplate>
                                 <p style="text-align: center" >No Record of any Book Borrowed.</p>
                           </EmptyDataTemplate>
                           <EmptyItemTemplate>
                               <td runat="server" />
                           </EmptyItemTemplate>
                           <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server" ></td>
                                </tr>
                           </GroupTemplate>
                           <ItemTemplate>
                                    <li class="col-md-4">
                                           <div class="d-flex align-items-center">
                                               <div class="col-5 p-0 position-relative">
                                                   <a href="javascript:void();">
                                                       <img src='images\favorite\<%#Eval("ebk_img")%>' class="img-fluid rounded w-100" alt="">
                                                   </a>
                                               &nbsp;&nbsp;&nbsp;&nbsp;</div>
                                               <div class="col-7">
                                                   <h5 class="mb-2">'<%#Eval("ebk_name")%>'</h5>
                                                   <p class="mb-2">Author : <%#Eval("ebk_author")%></p>
                                                   <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                       <span>Completed</span>
                                                       <span class="mr-4">38%</span>
                                                   </div>
                                                   <div class="iq-progress-bar-linear d-inline-block w-100">
                                                       <div class="iq-progress-bar iq-bg-primary">
                                                           <span class="bg-primary" data-percent="38"></span>
                                                       </div>
                                                   </div>
                                                   <a href='reader.aspx?eid=<%#Eval("ebk_id")%>' class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                               </div>
                                           </div>
                                       </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <tr id="groupPlaceholderContainer" runat="server" class="list-inline p-0 m-0 d-flex align-items-center">
                                     <td id="groupPlaceholder" runat="server" class="item" ></td>
                                </tr>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                    <li class="col-md-4">
                                           <div class="d-flex align-items-center">
                                               <div class="col-5 p-0 position-relative">
                                                   <a href="javascript:void();">
                                                       <img src='images\favorite\<%#Eval("ebk_img")%>' class="img-fluid rounded w-100" alt="">
                                                   </a>
                                               &nbsp;&nbsp;&nbsp;&nbsp;</div>
                                               <div class="col-7">
                                                   <h5 class="mb-2">'<%#Eval("ebk_name")%>'</h5>
                                                   <p class="mb-2">Author : <%#Eval("ebk_author")%></p>
                                                   <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                                       <span>Completed</span>
                                                       <span class="mr-4">78%</span>
                                                   </div>
                                                   <div class="iq-progress-bar-linear d-inline-block w-100">
                                                       <div class="iq-progress-bar iq-bg-primary">
                                                           <span class="bg-primary" data-percent="28"></span>
                                                       </div>
                                                   </div>
                                                   <a href='reader.aspx?eid=<%#Eval("ebk_id")%>' class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                               </div>
                                           </div>
                                       </li>
                            </SelectedItemTemplate>
                      </asp:ListView>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server"  ConnectionString="<%$ ConnectionStrings:localdb %>" 
                            SelectCommand="SELECT tbl_tclilibrary_lending.ebk_id, tbl_tclilibrary_lending.u_id, tbl_tclilibrary_ebooks.ebk_name, tbl_tclilibrary_ebooks.ebk_author, tbl_tclilibrary_ebooks.ebk_img, tbl_tclilibrary_ebooks.ebk_src, tbl_tclilibrary_ebooks.ebk_name FROM [tbl_tclilibrary_lending] INNER JOIN  [tbl_tclilibrary_ebooks] ON tbl_tclilibrary_lending.ebk_id = tbl_tclilibrary_ebooks.ebk_id Where (tbl_tclilibrary_lending.u_id = @u_id)">
	                          <SelectParameters>
                                  <asp:SessionParameter Name="u_id" SessionField="email" Type="String" />
                              </SelectParameters>
                      </asp:SqlDataSource>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->
      <!-- Footer -->
      <footer class="iq-footer">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-6">
                  <ul class="list-inline mb-0">
                     <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                     <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                  </ul>
               </div>
               <div class="col-lg-6 text-right">
                  Copyright 2021 <a href="#">TCLI e-LIBRARY</a> All Rights Reserved.
               </div>
            </div>
         </div>
      </footer>
      <!-- Footer END -->
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
      <!-- lottie JavaScript -->
      <script src="js\lottie.js"></script>
      <!-- am core JavaScript -->
      <script src="js\core.js"></script>
      <!-- am charts JavaScript -->
      <script src="js\charts.js"></script>
      <!-- am animated JavaScript -->
      <script src="js\animated.js"></script>
      <!-- am kelly JavaScript -->
      <script src="js\kelly.js"></script>
      <!-- am maps JavaScript -->
      <script src="js\maps.js"></script>
      <!-- am worldLow JavaScript -->
      <script src="js\worldLow.js"></script>
      <!-- Raphael-min JavaScript -->
      <script src="js\raphael-min.js"></script>
      <!-- Morris JavaScript -->
      <script src="js\morris.js"></script>
      <!-- Morris min JavaScript -->
      <script src="js\morris.min.js"></script>
      <!-- Flatpicker Js -->
      <script src="js\flatpickr.js"></script>
      <!-- Style Customizer -->
      <script src="js\style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="js\chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="js\custom.js"></script>
       </form>
   </body>
</html>
