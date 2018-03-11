using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using DbLayer;
using BusninessLayer;

namespace ComputerServiceShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                txtName.Text = Session["Name"].ToString();
            }
            else
            {
                Response.Redirect("~/Pages/Account/Login.aspx");
            }
            if ((string)Session["Name"] == "Admin")
            {
                
                Response.Redirect("~/Pages/Account/Admin.aspx");
            }
        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            Appt obj = new Appt();
            obj.CName = txtName.Text;
            obj.DName = txtDeviceName.Text;
            obj.DType = txtDeviceType.Text;
            obj.RType = DropDownListRepairType.Text;
            obj.RName = DropDownListRepairName.Text;
            obj.DDes = txtDeviceDescription.Text;
            obj.ADate = Convert.ToDateTime(CalAppointmentDate.SelectedDate.ToString());
            BL business = new BL();
            lblBookResult.Text = (business.insertApp(obj));


           

        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/CustomerStatus.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/CheckRepairStatus.aspx");
        }
    }
}