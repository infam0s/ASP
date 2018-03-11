
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using DbLayer;
using BusninessLayer;
namespace ComputerServiceShop.Pages
{
    public partial class Registration : System.Web.UI.Page
    {
        
        
        BL business = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
           
            if (DropDownListUserType.SelectedIndex == 1)
            {
                UserLogIN obj = new UserLogIN();
                obj.Name = txtName.Text;
                obj.Password = txtPassword.Text;
                obj.RePassword = txtConfirm.Text;
                obj.Email = txtEmail.Text;
                obj.Ad1 = txtAddress1.Text;
                obj.Ad2 = txtAddress2.Text;
                obj.Phone = txtPhone.Text;

                lblResult.Text = (business.insertUser(obj));
                Session["Name"] = txtName.Text;
                Response.Redirect("~/Pages/Home.aspx");                

            }

            else if (DropDownListUserType.SelectedIndex == 0)
            {
                TechLogIN obj = new TechLogIN();
                obj.Name = txtName.Text;
                obj.Password = txtPassword.Text;
                obj.RePassword = txtConfirm.Text;
                obj.Email = txtEmail.Text;
                obj.Ad1 = txtAddress1.Text;
                obj.Ad2 = txtAddress2.Text;
                obj.Phone = txtPhone.Text;

                lblResult.Text = (business.insertTech(obj));                
                Session["Name"] = txtName.Text;
                Response.Redirect("~/Pages/TechStatus.aspx");
            }
                
               
          

            
        }

        protected void lbtnLogin_Click(object sender, EventArgs e)
        {

        }
    }
}