﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ComputerServiceShop.Pages
{
    public partial class TechDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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