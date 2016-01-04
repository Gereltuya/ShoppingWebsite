using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



namespace ResponsiveWebSite
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)

                {

                    UserName.Text = Request.Cookies["UNAME"].Value;
                    Password.Attributes["value"] = Request.Cookies["PWD"].Value;

                    CheckBox1.Checked = true;



                }

            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            // create new object connection using using 
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("select * from Users Where Username ='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                // we need to store our data in a data table so we need sql data adapter
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)

                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = UserName.Text;
                        Response.Cookies["PWD"].Value = Password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);



                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);


                    }


                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/UserHome.aspx");
                }

             
                else
                {
                    lblError.Text = "Invalid Username or Password";


                }

            }

        }


    }
}