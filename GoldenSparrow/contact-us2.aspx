<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact-us2.aspx.cs" Inherits="GoldenSparrow.contact_us2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>CONTACT-US</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
   
    
    <header id="header">
        <!--header-->
        <div class="header_top">
            <!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-phone"></i> 03422883720</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> syedmehrabzaidi@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!--/header_top-->
        <div class="header-bottom">
            <!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <!--<span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>-->
                            </button>
            </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li style="float:left;">
                                    <img src="icon/logo2.png" />
                                </li>
                                <li><a href="home.aspx" class="active">Home</a></li>
                                <li class="dropdown">
                                    <a href="#">Downloads<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="Games.html">Games</a></li>
                                        <li><a href="Movies.html">Movies</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#">News<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="News.html">Latest News</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact-us2.aspx">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right" style="float:left;">
                            </header>
                                <input type="text" placeholder="Search" name="term" />
                                <div class="label" style="align-items:center;font-size:medium;font-style:italic;">    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#66FF66" Visible="False"></asp:Label></div>

                           
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->
        <div class="header-middle">
            <!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">



                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li>
                                <div class="logo pull-left">
                                    <a href="index.html"><img src="icon/contact-us.jpg" alt="image" /> </a>
                                </div>
                            </li>
                            <li><a href="login1.aspx"><i class="fa fa-user"></i> Account</a></li>
                            <li><a href="login1.aspx"><i class="fa fa-lock"></i>Login</a> </li>
                            <li></li>
                        </ul>

                        <div class="btn-group" style="float:right;">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                Language
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">Enlish</a></li>
                                <li><a href="">Urdu</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div><!--/header-middle-->
    </header><!--/header-->

    <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="title text-center">Contact <strong>Us</strong></h2>
                    <div id="dvbg" class="bg"  >                                                        
                        
                    </div>
                </div>
            </div>
            <div>
            <div class="row">
                <div class="col-sm-8">
                    <div class="contact-form">
                        <div class="status alert alert-success" style="display: none"></div>
                            <div class="form-group col-md-6">
                                <%--<input id="name1" type="text" name="Name" class="form-control" required="required" placeholder="Name">--%>
                     <asp:TextBox ID="name" runat="server" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Name" Width="300px" ForeColor="Red"  >Name</asp:TextBox>
                                 </div>
                            <div class="form-group col-md-6">
<%--                                <input type="email" name="email" class="form-control" required="required" placeholder="Email">--%>
                    <asp:TextBox ID="email" runat="server" Text="Email" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Email" Width="300px" ForeColor="Red" TextMode="Email"  ></asp:TextBox>

                                 </div>
                            <div class="form-group col-md-12">
<%--                                <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">--%>
                     <asp:TextBox ID="subject" runat="server" Text="Subject" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Subject" Width="300px" ForeColor="Red"  ></asp:TextBox>

                                 </div>
                            <div class="form-group col-md-12">
<%--                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>--%>
                  <asp:TextBox ID="message" runat="server" Text="Message" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="100px"  ToolTip="Message" Width="500px" ForeColor="Red" TextMode="MultiLine"  ></asp:TextBox>
       
                                 </div>
                            <div class="form-group col-md-12">
<%--                                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">--%>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="SBMINT" class="btn btn-primary pull-right"/>
                                 </div>
                           
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">Contact Info</h2>
                        <address>
                            <p><strong>Golden</strong>Sparrow</p>
                            <p>empty</p>
                            <p>Karachi, Pakistan</p>
                            <p>Mobile: 03422883720</p>
                            <p>Email: info@goldensparrow.com</p>
                        </address>
                        <div class="social-networks">
                            <h2 class="title text-center">Social Networking</h2>
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!--/#contact-page-->



    </form>
</body>
</html>
