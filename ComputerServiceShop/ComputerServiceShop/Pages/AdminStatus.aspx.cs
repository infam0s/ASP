﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComputerServiceShop.Pages
{
    public partial class AdminStatus : System.Web.UI.Page
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
            if (Session["Name"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Pages/Account/Login.aspx");
            }
        }
    }
}