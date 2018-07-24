<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotificationClient.aspx.cs" Inherits="notification.notificationHandling.NotificationClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: #FF0000">Latest Notifications
            </h1>
        </div>
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#0033CC" BorderStyle="Solid" Height="189px" Width="397px" Visible="False">
                        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminWebForms/notificationHandling/AllNotifications.aspx">View All Notifications</asp:HyperLink>
                    </asp:Panel>
                    <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
        </div>
    </form>
</body>
</html>
