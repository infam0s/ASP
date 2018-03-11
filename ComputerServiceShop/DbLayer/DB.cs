//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using System.Configuration;
//using System.Data.SqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
namespace DbLayer
{
    public class DB
    {
        //SqlConnectionString = ConfigurationManager.ConnectionStrings[connectionString_Name].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public bool insertNewUsers(UserLogIN obj)
        {
           
                string sql = ("insert into UserLogIN (Name, Password,RePassword,Email, Address1, Address2, Phone) values ('" + obj.Name + "','" + obj.Password + "','" + obj.RePassword + "','" + obj.Email + "','" + obj.Ad1 + "','" +
                    obj.Ad2 + "','" + obj.Phone + "')");
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                if (cmd.ExecuteNonQuery() > 0)
                    return true;
                else
                    return false;
            
        }
        public bool insertNewTech(TechLogIN obj)
        {
            
                string sql = ("insert into TechLogIN (Name, Password,RePassword,Email, Address1, Address2, Phone) values ('" + obj.Name + "','" + obj.Password + "','" + obj.RePassword + "','" + obj.Email + "','" + obj.Ad1 + "','" +
                    obj.Ad2 + "','" + obj.Phone + "')");
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                if (cmd.ExecuteNonQuery() > 0)
                    return true;
                else
                    return false;               
            
        }
        public bool insertApp(Appt obj)
        {
            string sql = ("INSERT into RepairOrder (CName, DeviceName, DeviceType, RepairType, RepairName, DeviceDescription, AppointmentDate) values ('" + obj.ADate + "','" + obj.DName + "','" + obj.DType+ "','" + obj.RType + "','" + obj.RName + "','" + obj.DDes + "','" + obj.ADate + "')");

            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            if (cmd.ExecuteNonQuery() > 0)
                return true;
            else
                return false;
        }
    }
}
