using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BAL
{
    public class BAL_AdminAccounts
    {
        public static List<UserMaster> ValidateAdmin(string userid, string password)
        {
            return DAL.DAL_AdminUserAccounts.ValidateAdmin(userid, password);
        }

        public static List<UserMaster> AdminProfile(string userid)
        {
            return DAL.DAL_AdminUserAccounts.AdminProfile(userid);
        }

        public static bool RegisterAdmin(UserMaster adminDetails)
        {
            if (adminDetails.FirstName.Length > 0 && adminDetails.LastName.Length > 0 && adminDetails.Age > 0 && adminDetails.Gender.Length > 0 && adminDetails.ContactNumber.Length > 0 && adminDetails.AltContactNumber.Length > 0 && adminDetails.EMail.Length > 0)
            {
                return DAL.DAL_AdminUserAccounts.RegisterAdmin(adminDetails);
            }
            else
            {
                return false;
            }
        }
        public static bool UpdateProfile(int UID, UserMaster update)
        {
            return DAL.DAL_AdminUserAccounts.UpdateProfile(UID, update);
        }

        public static List<Plane> GetPlanes()
        {
            return DAL.DAL_AdminUserAccounts.GetPlanes();
        }
        public static List<Hanger> GetHangers()
        {
            return DAL.DAL_AdminUserAccounts.GetHangers();
        }
        public static List<UserMaster> GetPilots()
        {
            return DAL.DAL_AdminUserAccounts.GetPilots();
        }
    }        
        
   }

