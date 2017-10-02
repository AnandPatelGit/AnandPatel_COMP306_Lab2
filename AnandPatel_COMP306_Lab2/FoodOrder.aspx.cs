using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnandPatel_COMP306_Lab2
{
    public partial class FoodOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ButtonRememberMe_Click(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {

                    String firstName = textBoxFirstName.Text;
                    String lastName = textBoxLastName.Text;

                    if (firstName != null && lastName != null)
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "select count(firstName) from userEntries where firstName='" + firstName + "'and lastName='" + lastName + "'";
                        cmd.Connection = conn;
                        conn.Open();
                        int LoginResult = (int)cmd.ExecuteScalar();
                        if (LoginResult == 1)
                        {
                            cmd.CommandText = "select city,postalCode,phoneNumber,province from userEntries where firstName='" + firstName + "'and lastName='" + lastName + "'";
                            SqlDataReader reader = cmd.ExecuteReader();
                            while (reader.Read())
                            {
                                String city = reader.GetString(0);
                                textBoxCity.Text = city;
                                String postalCode = reader.GetString(1);
                                textBoxPostalCode.Text = postalCode;
                                long phoneNumber = Convert.ToInt64( reader["phoneNumber"]);
                                textBoxPhoneNumber.Text = phoneNumber.ToString();
                                String province = reader.GetString(3);
                                textBoxProvince.Text = province;
                            }
                        }
                        conn.Close();
                    }
                    else
                    {
                        Response.Write("Provide input in the first two fields");
                    }
                }
            }
            catch (Exception ex) {
                Response.Write(ex.StackTrace);
            }
        }

        protected void ButtonOrder_Click(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    if (textBoxFirstName.Text != null && textBoxLastName.Text != null)
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "insert into dbo.userEntries values ('" + textBoxFirstName.Text + "','" + textBoxLastName.Text + "','" + textBoxCity.Text + "','" + textBoxPostalCode.Text + "','" + textBoxPhoneNumber.Text + "','" + textBoxProvince.Text + "')";
                        cmd.Connection = conn;
                        conn.Open();

                        int TotalRowsAffected = (int)cmd.ExecuteNonQuery();
                        Response.Write("Total Rows Inserted is: " + TotalRowsAffected.ToString());

                        if (TotalRowsAffected < 1)
                            Response.Write("Successfully Registered");
                        conn.Close();
                    }
                }
            }
            catch (Exception ex) {
                Response.Write(ex.StackTrace);

            }
        }
    }
}