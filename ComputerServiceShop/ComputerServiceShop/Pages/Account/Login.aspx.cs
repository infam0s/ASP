using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ComputerServiceShop.Pages.Account
{
    public partial class Login: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (DropDownListLoginUserType.SelectedIndex == 0)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string sql = ("select * from Admin where Name='" + this.txtLogin.Text + "' and Password ='" + this.txtPassword.Text + "';");
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader read;
                con.Open();
                read = cmd.ExecuteReader();
                int count = 0;
                while (read.Read())
                {
                    count = count + 1;
                }
                if (count == 1)
                {
                    Session["Name"] = txtLogin.Text;
                    Response.Redirect("~/Pages/Home.aspx");
                    // to display welcome text after successful login

                }
                else
                    lblError.Text = "Wrong Username or Password";
                con.Close();
            }
            else if (DropDownListLoginUserType.SelectedIndex == 1)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string sql = ("select * from TechLogIN where Name='" + this.txtLogin.Text + "' and Password ='" + this.txtPassword.Text + "';");
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader read;
                con.Open();
                read = cmd.ExecuteReader();
                int count = 0;
                while (read.Read())
                {
                    count = count + 1;
                }
                if (count == 1)
                {
                    Session["Name"] = txtLogin.Text;
                    Response.Redirect("~/Pages/TechStatus.aspx");
                    // to display welcome text after successful login

                }
                else
                    lblError.Text = "Wrong Username or Password";
                con.Close();
            }
            else if (DropDownListLoginUserType.SelectedIndex == 2)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string sql = ("select * from UserLogIN where Name='" + this.txtLogin.Text + "' and Password ='" + this.txtPassword.Text + "';");
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader read;
                con.Open();
                read = cmd.ExecuteReader();
                int count = 0;
                while (read.Read())
                {
                    count = count + 1;
                }
                if (count == 1)
                {
                    Session["Name"] = txtLogin.Text;
                    Response.Redirect("~/Pages/Home.aspx");
                    // to display welcome text after successful login

                }
                else
                    lblError.Text = "Wrong Username or Password";
                con.Close();
            }
           
            
        }
    }
}