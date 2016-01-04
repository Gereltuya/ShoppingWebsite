using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


namespace ResponsiveWebSite
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        /// retreiving data from WebConfig
        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            if (tbUname.Text != ""& tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
            {

                if (tbPass.Text==tbCPass.Text)
                {

            



                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                // creating sql connection object with a help of using so we dont have to close connection string so we can avoid connection error

                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                    //open the connection 

                    con.Open();
                    //insert data to database 
                    cmd.ExecuteNonQuery();
                        lbMsg.ForeColor = Color.Green;
                        lbMsg.Text = "Registration Successful";

                        Response.Redirect("SignIn.aspx");


                }
            }
            else
            {
                    lbMsg.ForeColor = Color.Red;
                    lbMsg.Text = "Passwords do not match";

            }
            }
            else
            {
                lbMsg.ForeColor = Color.Red;
                lbMsg.Text = "All Fields Are Mandatory";
            }

        }
    }
}