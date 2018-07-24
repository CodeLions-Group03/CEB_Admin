<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessages.aspx.cs" Inherits="Administrator.AdminWebForms.SendMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelNIC" runat="server" Text="NIC"></asp:Label>
            <asp:TextBox ID="TextBoxUserNIC" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            
            <asp:Button ID="ButtonSend" runat="server" Text="Button" OnClick="ButtonSend_Click" />
            <br />
            <asp:Label ID="LabelComment" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
