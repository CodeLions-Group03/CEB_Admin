<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmins.aspx.cs" Inherits="Administrator.AdminWebForms.AddAdmins" %>
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
                        <asp:LinkButton ID="LinkButtonLogOut" runat="server" OnClick="LinkButtonLogOut_Click" ToolTip="Click here to log out">LogOut</asp:LinkButton></li>
                </ul>
            </div>

        </nav>
        <!--EndNavigation bar -->
         <!--Start Content  -->
        <div>
            <h1>Administrators' Profiles Addition</h1>
        </div>
        <div id="div-regForm" class="col-md-4 col-md-offset-4">




<table class="table table-hover" style="width:auto">
    <thead>
    <tr>
      <th scope="col">Registration Form</th>
       <th scope="col">
           <asp:Label ID="LabelSuccess" runat="server" Text="Registration Success !"></asp:Label></th> 
     
    </tr>
  </thead>

<tbody>
     <tr class="bg-primary">

    <td>
        <asp:Label ID="LabelStatus" runat="server" Text="Title :"></asp:Label></td>
    <td><div class="input-container">
        <asp:DropDownList ID="DropDownListStatus" runat="server" ForeColor="Black">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem>Mrs</asp:ListItem>
            <asp:ListItem>Miss</asp:ListItem>
        </asp:DropDownList>
        
    </div></td>
</tr>
<tr class="bg-primary">

    <td>
        <asp:Label ID="LabelFname" runat="server" Text="First Name :"></asp:Label></td>
    <td><div class="input-container">
        <asp:TextBox ID="TextBoxFirstName" runat="server" ForeColor="Black"></asp:TextBox>
    </div></td>

</tr>
<tr class="bg-primary">

    <td>
        <asp:Label ID="LabelLastName" runat="server" Text="Last Name"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxLastName" runat="server" ForeColor="Black"></asp:TextBox>
    </div></td>

</tr>
<tr class="bg-primary">

    <td>
        <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxEmail" runat="server" ForeColor="Black" TextMode="Email"></asp:TextBox>
    </div></td>

</tr>
<tr class="bg-primary">
    <!--should be set a default unique passwords-->
    <td>
        <asp:Label ID="LabelPassword1" runat="server" Text="Password :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxPassword1" runat="server" ForeColor="Black"></asp:TextBox>
    </div></td>
    

</tr>
    <tr class="bg-primary">
        <td>
        <asp:Label ID="LabelPassword2" runat="server" Text="Verify Password :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxPassword2" runat="server" ForeColor="Black"></asp:TextBox>
    </div></td>
    </tr>
<tr class="bg-primary">

    <td>
        <asp:Label ID="Address" runat="server" Text="Address :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
    </div></td>
</tr>
    <tr class="bg-primary">

    <td>
        <asp:Label ID="LabelCity" runat="server" Text="City :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxCity" runat="server" ForeColor="Black" ></asp:TextBox>
    </div></td>
</tr>
   
    <tr class="bg-primary">

    <td>
        <asp:Label ID="LabelNIC" runat="server" Text="NIC :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxNIC" runat="server" ForeColor="Black" ></asp:TextBox>
    </div></td>
</tr>
     <tr class="bg-primary">

    <td>
        <asp:Label ID="LabelPhone" runat="server" Text="Phone :"></asp:Label></td>
    <td><div class="input-container">
         <asp:TextBox ID="TextBoxPhone" runat="server" ForeColor="Black" MaxLength="10" TextMode="Number" ></asp:TextBox>
    </div></td>
</tr>
   

<tr class="bg-success" >

    <td>&nbsp;</td>
    <td>
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
    
    </td>

</tr>

</tbody>
</table>
            </div>
        
    <!--End Content  -->
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