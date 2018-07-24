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

namespace Administrator.AdminWebForms
{
    public partial class SearchAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand = new StringBuilder("Select Users.userId,userType,firstName,lastName,address,nic,phone,email from Users where userType='administrator' ");

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

                cmd.CommandText = sbCommand.ToString();
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                gvSearchResults.DataSource = rdr;
                gvSearchResults.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}