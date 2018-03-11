using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComputerServiceShop
{
    public partial class Appointment_Overview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["Name"] == "Admin")
            {
               
            }
            else
            {
                Response.Redirect("~/Pages/Account/Login.aspx");
            }
        }
    }
}