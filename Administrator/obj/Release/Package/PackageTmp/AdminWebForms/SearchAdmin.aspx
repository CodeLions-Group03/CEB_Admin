<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAdmin.aspx.cs" Inherits="Administrator.AdminWebForms.SearchAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Search</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        type="text/css" />

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
    
        <form id="form1" runat="server" class="form-horizontal">
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
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return checkConnection();" ToolTip="Click here to log out">LogOut</asp:LinkButton></li>
                </ul>
            </div>
            </nav>
        <!-- Navigation bar-->
            <div class="col-xs-8 col-xs-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Administrator Search Form</h3>
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
                        <div class="col-xs-10 col-xs-offset-2">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" 
                                CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Search Results</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-10">
                        <asp:GridView CssClass="table table-bordered" 
                            ID="gvSearchResults" runat="server">
                        </asp:GridView>
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
