using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Administrator.AdminWebForms
{
    public partial class SendMessages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSend_Click(object sender, EventArgs e)
        {
            //add user side validations
            string message = TextBoxMessage.Text;
            string nic = TextBoxUserNIC.Text;
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "insert into Messsages values('" + nic + "','" + message + "','" + DateTime.Now.ToString() + "')";
                    cmd.Connection = con;
                    con.Open();
                    int count = cmd.ExecuteNonQuery();
                    if (count == 0)
                    {
                        LabelComment.ForeColor = System.Drawing.Color.Red;
                        LabelComment.Text = "Message Sent Faild !";
                        LabelComment.Visible = true;
                    }
                    else
                    {
                        LabelComment.ForeColor = System.Drawing.Color.Green;
                        LabelComment.Text = "Notification Sent Successfully !";
                        TextBoxMessage.Text = "";
                        LabelComment.Visible = true;
                    }
                }
                catch (SqlException)
                {
                    LabelComment.ForeColor = System.Drawing.Color.Red;
                    LabelComment.Text = "Notification Sent Faild !";
                    LabelComment.Visible = true;
                }
            }
        }
    }
}