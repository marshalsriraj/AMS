using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAL
{
    public class DAL_PilotUserAccounts
    {
        public static List<UserMaster> ValidatePilot(string userid, string password)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.UserName == userid && x.Password == password).ToList();
            }
        }

        public static List<UserMaster> PilotProfile(string userid)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.UserName == userid).ToList();
            }
        }

        public static bool UpdateProfile(int UID, UserMaster update)
        {
            try
            {
                if (UID > 0)
                {
                    using (DBContextDataContext db = new DBContextDataContext())
                    {
                        List<UserMaster> profile = db.UserMasters.Where(x => x.UID == UID).ToList();
                        foreach (UserMaster row in profile)
                        {
                            row.LicenseNumber = update.LicenseNumber;
                            row.AddressLine1 = update.AddressLine1;
                            row.AddressLine2 = update.AddressLine2;
                            row.City = update.City;
                            row.State = update.State;
                            row.ZipCode = update.ZipCode;
                            row.SSN = update.SSN;
                        }
                        db.SubmitChanges();
                        return true;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            { return false; }
        }

        public static bool RegisterPilot(UserMaster pilotDetails)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    db.UserMasters.InsertOnSubmit(pilotDetails);
                    db.SubmitChanges();
                    if (pilotDetails.UID > 0)
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
        public static bool EditPlane(int id, string fname, string lname,long mob,string email)
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    List<Plane> plane = db.Planes.Where(x => x.Plane_ID == id).ToList();

                    foreach (Plane plan in plane)
                    {
                        plan.Owner_first_Name = fname;
                        plan.Owner_Last_name = lname;
                        plan.Owner_Contact_number = mob;
                        plan.Owner_Email = email;
                    }
                    db.SubmitChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
