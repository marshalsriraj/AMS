using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class BAL_PilotAccounts
    {
        public static List<UserMaster> ValidatePilot(string userid, string password)
        {
            return DAL.DAL_PilotUserAccounts.ValidatePilot(userid, password);
        }

        public static List<UserMaster> PilotProfile(string userid)
        {
            return DAL.DAL_PilotUserAccounts.PilotProfile(userid);
        }

        public static bool RegisterPilot(UserMaster pilotDetails)
        {
            if (pilotDetails.LicenseNumber.Length > 0 && pilotDetails.AddressLine1.Length > 0 && pilotDetails.AddressLine2.Length > 0 && pilotDetails.City.Length > 0 && pilotDetails.State.Length > 0 && pilotDetails.ZipCode.Length > 0 && pilotDetails.SSN.Length > 0 )
            {
                return DAL.DAL_PilotUserAccounts.RegisterPilot(pilotDetails);
            }
            else
            {
                return false;
            }
        }
        public static bool UpdateProfile(int UID, UserMaster update)
        {
            return DAL.DAL_PilotUserAccounts.UpdateProfile(UID, update);
        }
        public static bool UpdatePlane(int id,string name,string name1,long no,string email)
        {
            return DAL.DAL_PilotUserAccounts.EditPlane(id, name, name1, no, email);
        }
    }

}