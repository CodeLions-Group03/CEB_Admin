using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Administrator.AdminWebForms
{
    public partial class adminIndex : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            //going to pages on same webserver with form values of previous pages
            Server.Transfer("~/AdminWebForms/Search.aspx");
            //Response.Redirect("Search.aspx");
        }

        protected void ButtonAddUser_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/AdminWebForms/AddAccount.aspx");
            //Response.Redirect("AddUsers.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/AdminWebForms/SearchAdmin.aspx");
        }

        protected void ButtonNotice_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/AdminWebForms/SendNotifications.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonAdminAddition_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAdmins.aspx");
        }
    }
}