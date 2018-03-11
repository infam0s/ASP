using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DbLayer;
namespace BusninessLayer
{
    public class BL
    {
        DB db = new DB();
        public string insertUser(UserLogIN obj)
        {
            if (db.insertNewUsers(obj) == true)
            {
                return "Created";
            }
            else
            {
                return "Failed To Create";
            }

        }
        public string insertTech(TechLogIN obj)
        {
            if (db.insertNewTech(obj) == true)
            {
                return "Created";
            }
            else
            {
                return "Failed To Create";
            }

        }
        public string insertApp(Appt obj)
        {
            if (db.insertApp(obj) == true)
            {
                return "Booked";
            }
            else
            {
                return "Failed To Book";
            }

        }
    }
}
