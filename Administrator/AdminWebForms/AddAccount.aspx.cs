using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Administrator.AdminWebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* string Cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
             using (SqlConnection con = new SqlConnection(Cs))
             {
                 SqlCommand cmd = new SqlCommand("select * from Users where Users.status is null", con);
                 con.Open();
                 GridView1.DataSource = cmd.ExecuteReader();
                 GridView1.DataBind();

             }*/
            LabelStatus.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        string nic = "";

        protected void TextBoxNIC_TextChanged(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(strConnection))
            {
                nic = TextBoxNIC.Text;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Users where nic='" + nic + "'";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBoxUserName.Text = ds.Tables[0].Rows[0]["firstName"].ToString() + " " + ds.Tables[0].Rows[0]["lastName"].ToString();
                }
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int id = -1;
            string strConnection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnection))
            {
                nic = TextBoxNIC.Text;
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Users where nic='" + nic + "'";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    id = Convert.ToInt32(ds.Tables[0].Rows[0]["userId"]);
                }
            }

            if (nic == "" || id == -1 || TextBoxAccount.Text == "" || TextBoxAddress.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Faild')", true);
            }
            else
            {
                using (SqlConnection con = new SqlConnection(strConnection))
                {
                    int AccountNo = Convert.ToInt32(TextBoxAccount.Text);
                    string AccountType = DropDownListUserType.SelectedValue;
                    string Address = TextBoxAddress.Text;
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "INSERT INTO dbo.Account VALUES  (" + AccountNo + "," + id + ",'" + AccountType + "','" + Address + "');";
                    cmd.Connection = con;
                    con.Open();
                    int flag = cmd.ExecuteNonQuery();
                    if (flag != 1)
                    {
                        LabelStatus.Text = "Operation Faild !";
                        LabelStatus.ForeColor = Color.Red;
                        LabelStatus.Visible = true;
                    }
                    else
                    {
                        LabelStatus.Text = "Operation success !";
                        LabelStatus.ForeColor = Color.Green;
                        LabelStatus.Visible = true;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
}
