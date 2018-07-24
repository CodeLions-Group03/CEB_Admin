<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminIndex.aspx.cs" Inherits="Administrator.AdminWebForms.adminIndex" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator:<% if (Session["UserName"] != null)
                             {
                                 Response.Write(Session["UserName"].ToString());
                             }
    %></title>

    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        type="text/css" />
    <style>
        body {
            background-color: lightblue;
        }

        .row {
            margin: 7px;
        }

      
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <!-- Navigation bar-->

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="adminIndex.aspx">Administrator</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="adminIndex.aspx">Home</a></li>
                    <!--  <li><a href="#">Page 1</a></li>
                    <li><a href="#">Page 2</a></li>-->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ToolTip="Click here to log out">LogOut</asp:LinkButton></li>
                </ul>
            </div>
        </nav>
        <!-- Navigation bar-->

        <div>
            <h1>Administrator Page</h1>
        </div>
        <div class="container">
            <div class="row" >

                <div class="col-xs-4">
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" OnClick="ButtonSearch_Click" Text="Search Customers" Width="181px" />
                </div>


            </div>
            <div class="row">
                <div class="col-xs-4">
                    <asp:Button ID="ButtonAddUser" class="btn btn-primary" runat="server" OnClick="ButtonAddUser_Click" Text="Add Users" Width="181px" />
                </div>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <asp:Button ID="ButtonNotice" class="btn btn-primary" runat="server" Text="Notifications" Width="183px" OnClick="ButtonNotice_Click" />

                </div>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Search Administraters" Width="183px" />
                </div>

            </div>
            <div class="row">
                <div class="col-xs-4">
                    <asp:Button ID="ButtonAdminAddition" class="btn btn-primary" runat="server" OnClick="ButtonAdminAddition_Click" Text="Add Administraters" Width="183px" />
                </div>

            </div>



        </div>


    </form>
  
    
</body>
</html>
