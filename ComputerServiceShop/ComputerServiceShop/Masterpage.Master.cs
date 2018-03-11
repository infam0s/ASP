using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComputerServiceShop
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check if a user is logged in
            if (Session["Name"] != null)
            {
                lblLogin.Text = "Welcome " + Session["Name"].ToString();
                lblLogin.Visible = true;
                LinkButton1.Text = "Logout";
            }
            else
            {
                lblLogin.Visible = false;
                LinkButton1.Text = "Login";
            }
            //if ((string)Session["Name"] == "Admin")
            //{

            //    Menu1.Visible = false;
            //    Menu2.Visible = true;
            //}
            //else
            //{
            //    Menu2.Visible = false;
            //}
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //User logs in
            if (LinkButton1.Text == "Login")
            {
                Response.Redirect("~/Pages/Account/Login.aspx");
            }
            else
            {
                //User logs out
                Session.Clear();
                Response.Redirect("~/Pages/Home.aspx");
            }
        }
    }
}