using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserAccounts
    {
        public static List<UserMaster> ValidateUser(string username, string password)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.UserName == username && x.Password == password).ToList();
            }
        }
        public static bool RegisterAdmin(UserMaster admindetails)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    db.UserMasters.InsertOnSubmit(admindetails);
                    db.SubmitChanges();
                    if (admindetails.UID > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }

            }
        }
    }
}
