<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Administrator.AdminWebForms.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        type="text/css" />
    <style>
        body {
            background-color: lightblue;
        }
    </style>
</head>
<body>

    <!-- Navigation bar-->
    <form id="form1" runat="server" class="form-horizontal">
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
        <div class="container-fluid">
            <div class="col-xs-9 col-xs-offset-1">

                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3>Customer Search Form</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="inputFirstname" class="control-label col-xs-2">
                                Firstname
                            </label>
                            <div class="col-xs-10">
                                <input type="text" runat="server" class="form-control"
                                    id="inputFirstname" placeholder="Firstname" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputLastname" class="control-label col-xs-2">
                                Lastname
                            </label>
                            <div class="col-xs-10">
                                <input type="text" runat="server" class="form-control"
                                    id="inputLastname" placeholder="Lastname" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputID" class="control-label col-xs-2">
                                ID
                            </label>
                            <div class="col-xs-10">
                                <input type="text" runat="server" class="form-control"
                                    id="inputId" placeholder="Id" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputAccno" class="control-label col-xs-2">
                                Acccount No
                            </label>
                            <div class="col-xs-10">
                                <input type="number" runat="server" class="form-control"
                                    id="inputAccNo" placeholder="Account" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-10 col-xs-offset-2">
                                <asp:Button ID="btnSearch" runat="server" Text="Search"
                                    CssClass="btn btn-primary" OnClick="btnSearch_Click" OnClientClick="return checkConnection();" />

                            </div>
                        </div>
                    </div>
                </div>
                <asp:Label ID="Label1" runat="server" Enabled="False" Text="Label" Visible="False" Font-Bold="True" Font-Overline="False"></asp:Label>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3>Search Results</h3>
                    </div>

                    <div class="panel-body">
                        <div class="col-xs-10">
                            <asp:GridView CssClass="table table-bordered"
                                ID="gvSearchResults" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>



                    </div>
                </div>



            </div>
        </div>
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
