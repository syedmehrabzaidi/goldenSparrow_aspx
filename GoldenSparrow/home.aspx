<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="GoldenSparrow.home" Culture="en-US" UICulture="auto:en-US" %>

<!DOCTYPE html>
<
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Home | GoldenSparrow</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
  
    <link href="css/main.css" rel="stylesheet">
  
   
        <img src="icon/gamepubg.jpg" />
        <img src="icon/games2.png" />
        <img src="icon/m1.jpg" />
       
    
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
        </div><!--/header_top-->
        <div class="header-bottom">
            <!--header-bottom-->
            <div class="container" >
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
                        <div class="search_box pull-right">
                            </header>
                              <ul>  <input type="text" placeholder="Search" name="term" /></ul>
        <asp:Label ID="Label1" runat="server" Text="<%$ Resources:Resource, txt %>"></asp:Label>

                          <div style="float:right; background-color:yellow;">  <ul> <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="en-US">English</asp:ListItem>
                        <asp:ListItem Value="ur">Urdu</asp:ListItem>
                    </asp:DropDownList></ul>
                        </div></div>
                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->
           
                   
                
               


            </div>
        </form>
        <section id="slider">
            <!--slider-->
            <div class="container" style="background-color:lightskyblue">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                          

                            
                                <div class="item active" >
                                    <div class="col-sm-6" style="background-color:white">
                                        <h1><span>GOLDEN</span>SPARROW</h1>
                                        <h2>A New<asp:Label ID="Label2" runat="server" Text="A New Game Every Day!"></asp:Label> Game Every Day!</h2>
                                        <p>Providing Free Games for Over a Decade</p>
                                        <button type="button" class="btn btn-default get">Download</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="icon/gamepubg.jpg  " class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                            </div>

                    </div>
                </div>
            </div>
        </section><!--/slider-->


    </form>
</body>
</html>
