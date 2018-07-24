<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="Administrator.AdminWebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Adminstration Page</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        type="text/css" />
    <style>
        body {
            background-color: lightblue;
        }
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 7%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>

    <!-- Navigation bar-->
    <form id="form1" runat="server">
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
            <h1>User Requests</h1>
        </div>
       
        






        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [accountNo], [accountType], [meterAddress] FROM [Account]" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="accountNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="accountNo" HeaderText="Account No" SortExpression="accountNo" ReadOnly="True" />
                <asp:BoundField DataField="accountType" HeaderText="Account Type" SortExpression="accountType" />
                <asp:BoundField DataField="meterAddress" HeaderText="Meter Address" SortExpression="meterAddress" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        

    
    <hr/>
        <asp:Label ID="LabelStatus" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
    <div class="container">
  <h2>Account Addition Form</h2>
  
    <div class="form-group">
      <label for="email">User NIC:</label>
        <asp:TextBox class="form-control" placeholder="Enter NIC" ID="TextBoxNIC" runat="server" AutoPostBack="True" OnTextChanged="TextBoxNIC_TextChanged"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">User Name</label>
        <asp:TextBox ID="TextBoxUserName" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
    </div>
     <div class="form-group">
      <label for="pwd">Account No</label>
        <asp:TextBox ID="TextBoxAccount" class="form-control" runat="server" placeholder="Enter Acount Number Here"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">Account Type</label>
        <asp:DropDownList  class="dropdown" ID="DropDownListUserType" runat="server" CausesValidation="True">
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>Religious</asp:ListItem>
            
        </asp:DropDownList>
    </div>
    <div class="form-group">
      <label for="pwd">Account Address</label>
        <asp:TextBox ID="TextBoxAddress" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
    </div>
        <asp:Button class="btn-primary" ID="BtnSubmit" runat="server" Text="Add" OnClick="BtnSubmit_Click" OnClientClick="return checkConnection();" />  
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
