using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace notification.notificationHandling
{
    public partial class SendNotifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "insert into Notification values('" + TextBox1.Text + "','" + DateTime.Now.ToString() + "')";
                    cmd.Connection = con;
                    con.Open();
                    int count = cmd.ExecuteNonQuery();
                    if (count == 0)
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Notification Sent Faild !";
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Green;
                        Label1.Text = "Notification Sent Successfully !";
                        TextBox1.Text = "";
                    }
                }
                catch (SqlException)
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Notification Sent Faild !";
                }
            }
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            Label1.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}