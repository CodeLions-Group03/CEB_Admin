<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendNotifications.aspx.cs" Inherits="notification.notificationHandling.SendNotifications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        type="text/css" />

    <style type="text/css">
        body {
            background-color: lightblue;
        }

        .auto-style3 {
            width: 168px;
            height: 10px;
        }

        .auto-style4 {
            height: 10px;
        }

        .auto-style5 {
            width: 168px;
            height: 96px;
        }

        .auto-style6 {
            height: 96px;
        }

        .auto-style7 {
            margin-top: 0px;
        }

        .auto-style8 {
            margin-left: 295px;
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

        <!--EndNavigation bar -->


        <div>
            <h1>Send Nofitications to Users</h1>

        </div>

        <table class="auto-style5" style="background-color: #FFFFCC">
            <tr>
                <td class="auto-style5">Type Here</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Height="85px" Width="395px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" OnClick="Button1_Click" Text="Send" Width="47px" OnClientClick="return checkConnection();" />
                    <asp:Button ID="BtnClear" runat="server" CssClass="auto-style8" OnClick="BtnClear_Click" Text="Clear" />
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
    <script>
        function checkConnection() {
            if (navigator.onLine) {
                return true;
            } else {
                alert("Offline: Please check your internet conection !");

                return false;

            }
    </script>
</body>
</html>
