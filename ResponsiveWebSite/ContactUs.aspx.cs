using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ResponsiveWebSite
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage MyMessage = new MailMessage();
            MyMessage.Subject = "Test Message";
            MyMessage.Body = "Hello World, from GiGi";
            MyMessage.From = new MailAddress("bjuju306@gmail.com", "GiGi");
            MyMessage.To.Add(new MailAddress("gbatdemberel@icstars.org", "Gereltuya"));

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void fname_TextChanged(object sender, EventArgs e)
        {

        }

          
        

        protected void phoneHomeValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (!string.IsNullOrEmpty(phoneHome.Text) || !string.IsNullOrEmpty(phoneBusiness.Text))
            {

                args.IsValid = true;
            }

            else
            {
                args.IsValid = false;

            }
        }
    }
}