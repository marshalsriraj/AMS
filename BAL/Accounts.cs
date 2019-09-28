using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;


namespace BAL
{
    public class Accounts
    {
        public static List<UserMaster> ValidateUser(string Username, string password)
        {
            return DAL.UserAccounts.ValidateUser(Username, password);
        }
        public static bool RegisterAdmin(UserMaster admindetails)
        {
            if (admindetails.UID > 0 && admindetails.FirstName.Length > 0 && admindetails.LastName.Length > 0 && admindetails.Gender.Length > 0 && admindetails.EMail.Length > 0 && admindetails.Age > 0 && admindetails.ContactNumber.Length>0)
            {
                return DAL.UserAccounts.RegisterAdmin(admindetails);
            }
            else
            {
                return false;
            }

        }
    }
}
