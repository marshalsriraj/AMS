using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class BAL_ManagerAccounts
    {
        public static List<UserMaster> ValidateManager(string userid, string password)
        {
            return DAL.DAL_ManagerUserAccounts.ValidateManager(userid, password);
        }

        public static List<UserMaster> ManagerProfile(string userid)
        {
            return DAL.DAL_ManagerUserAccounts.ManagerProfile(userid);
        }

        public static bool RegisterManager(UserMaster managerDetails)
        {
            if (managerDetails.FirstName.Length > 0 && managerDetails.LastName.Length > 0 && managerDetails.Age > 0 && managerDetails.Gender.Length > 0 && managerDetails.DoB.HasValue && managerDetails.ContactNumber.Length > 0 && managerDetails.AltContactNumber.Length > 0 && managerDetails.EMail.Length > 0)
            {
                return DAL.DAL_ManagerUserAccounts.RegisterManager(managerDetails);
            }
            else
            {
                return false;
            }
        }
        public static bool UpdateProfile(int UID, UserMaster update)
        {
            return DAL.DAL_ManagerUserAccounts.UpdateProfile(UID, update);
        }
        public static bool Updatemanage(int id, string add1, string add2, string city, string state, long zip_code)
        {
            return DAL.DAL_ManagerUserAccounts.EditManager(id, add1, add2, city, state, zip_code);
        }


    }

}
