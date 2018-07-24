using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Drawing;

namespace Administrator.AdminWebForms
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            gvSearchResults.DataSource = null;
            gvSearchResults.DataBind();
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand = new StringBuilder("Select Users.userId,firstName,lastName,address,nic,phone,email from Users where 1=1");

                if (inputFirstname.Value.Trim() != "")
                {
                    sbCommand.Append(" AND firstName=@FirstName");
                    SqlParameter param = new SqlParameter("@FirstName", inputFirstname.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputLastname.Value.Trim() != "")
                {
                    sbCommand.Append(" AND lastName=@LastName");
                    SqlParameter param = new SqlParameter("@LastName", inputLastname.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputId.Value.Trim() != "")
                {
                    sbCommand.Append(" AND Users.userId=@UserId ");
                    SqlParameter param = new SqlParameter("@UserId", inputId.Value);
                    cmd.Parameters.Add(param);
                }
                if (inputAccNo.Value.Trim() != "")
                {
                    sbCommand.Clear();
                    // sbCommand.Append(" AND Users.userId=(select Account.userId from Account where accountNo=@AccNo)");
                    sbCommand = new
                    StringBuilder("Select Users.userId,firstName,lastName,address,nic,phone,email,Account.accountNo from Users,Account where  Account.accountNo=@AccNo AND Account.userId=Users.userId ");
                    SqlParameter param = new SqlParameter("@AccNo", inputAccNo.Value);
                    cmd.Parameters.Add(param);
                }

                cmd.CommandText = sbCommand.ToString();
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    gvSearchResults.DataSource = rdr;
                    gvSearchResults.DataBind();
                    Label1.ForeColor = Color.Green;
                    Label1.Visible = true;
                    Label1.Text = " Records found !";
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Visible = true;
                    Label1.Text = "Sorry, No Record found !";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("http://cebweb.azurewebsites.net");
        }
    }
}
