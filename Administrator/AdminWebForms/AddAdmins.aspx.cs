using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Administrator.AdminWebForms
{
    public partial class AddAdmins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabelSuccess.Visible = false;
            }
        }

        protected void LinkButtonLogOut_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string fName = TextBoxFirstName.Text;
            string lName = TextBoxLastName.Text;
            string address = TextBoxAddress.Text;
            string nic = TextBoxNIC.Text;
            string userType = "Administrator";
            string title = DropDownListStatus.SelectedValue;
            string password = new Administrator.Models.Security().EncryptMd5("1234");

            string city = TextBoxCity.Text;
            int phone = 0;
            try
            {
                phone = Int32.Parse(TextBoxPhone.Text);
            }
            catch (System.FormatException)
            {
                LabelSuccess.Text = "Operation Faild : Please check Inputs !";
                LabelSuccess.ForeColor = Color.Red;
                LabelSuccess.Visible = true;
            }
            string email = TextBoxEmail.Text;

            if (fName != "" && address != "" && nic != "" && email != "" && lName != "" && city != "" && title != "" && phone != 0)
            {
                string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "INSERT INTO dbo.Users(firstName,lastName,address,city,nic,phone,email,userType,password,title) VALUES ('" + fName + "','" + lName + "','" + address + "','" + city + "','" + nic + "'," + phone + ",'" + email + "','" + userType + "','" + password + "','" + title + "');";
                    cmd.Connection = con;
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();
                    if (flag != 1)
                    {
                        LabelSuccess.Text = "Operation Faild !";
                        LabelSuccess.ForeColor = Color.Red;
                        LabelSuccess.Visible = true;
                    }
                    else
                    {
                        LabelSuccess.Text = "Operation success !";
                        LabelSuccess.ForeColor = Color.Green;
                        LabelSuccess.Visible = true;
                        //add here default password and send it to the user email to verify email;
                    }
                }
            }
            else
            {
                LabelSuccess.Text = "Operation Faild : Please check Inputs !";
                LabelSuccess.ForeColor = Color.Red;
                LabelSuccess.Visible = true;
            }

        }
    }
}