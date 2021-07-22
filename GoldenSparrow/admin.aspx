<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="GoldenSparrow.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
              <div style ="align-content:center;">
                  <asp:Label ID="Label1" runat="server" Text="Feedbacks Table" BackColor="#FFFF66" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="XX-Large" Width="280px"></asp:Label></div>
             <div>
            <asp:GridView CssClass="table table-hover table-dark" ID="GridView1" AutoGenerateColumns="False" runat="server" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:contactbdConnectionString5 %>" SelectCommand="SELECT * FROM [feed]"></asp:SqlDataSource>
        </div>
        <hr />
              <div>
                  <asp:ListBox ID="ListBox1" runat="server" BackColor="#66FFCC" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" Font-Italic="True" Font-Size="Medium" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="170px"></asp:ListBox></div>
            <div class="form-group col-md-12">  <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-primary pull-right" Font-Bold="True" Font-Size="X-Large" Height="59px" OnClick="Button1_Click" Width="150px" />
            </div>
                          
           
                            <div class="form-group col-md-6">
                     <asp:TextBox ID="name" runat="server" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Name" Width="300px" ForeColor="Red"  >Name</asp:TextBox>
                                 </div>
                            <div class="form-group col-md-6">
                    <asp:TextBox ID="email" runat="server" Text="Email" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Email" Width="300px" ForeColor="Red" TextMode="Email"  ></asp:TextBox>

                                 </div>
                            <div class="form-group col-md-12">
                     <asp:TextBox ID="subject" runat="server" Text="Subject" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="43px"  ToolTip="Subject" Width="300px" ForeColor="Red"  ></asp:TextBox>

                                 </div>
                            <div class="form-group col-md-12">
                  <asp:TextBox ID="message" runat="server" Text="Message" class="form-control" BackColor="#FFFF99" BorderStyle="Double" Height="100px"  ToolTip="Message" Width="500px" ForeColor="Red" TextMode="MultiLine"  ></asp:TextBox>
       
                                 </div>
                            <div class="form-group col-md-12">
                                <asp:Button ID="Button2" runat="server"  Text="update" class="btn btn-primary pull-right" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Height="55px" OnClick="Button2_Click" Width="200px"/>
                                 </div>

    </form>
</body>
</html>
