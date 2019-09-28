using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_AdminUserAccounts
    {
        public static List<UserMaster> ValidateAdmin(string userid, string password)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.UserName == userid && x.Password == password).ToList();
            }
        }

        public static List<UserMaster> AdminProfile(string userid)
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
                            row.FirstName = update.FirstName;
                            row.LastName = update.LastName;
                            row.Age = update.Age;
                            row.Gender = update.Gender;
                            row.DoB = update.DoB;
                            row.ContactNumber = update.ContactNumber;
                            row.AltContactNumber = update.AltContactNumber;
                            row.EMail = update.EMail;
                            
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

        public static bool RegisterAdmin(UserMaster adminDetails)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    db.UserMasters.InsertOnSubmit(adminDetails);
                    db.SubmitChanges();
                    if (adminDetails.UID > 0)
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

        public static List<Plane> GetPlanes()
        {
            using (DBContextDataContext db=new DBContextDataContext())
            {
               return db.Planes.ToList();
            }
        }
        public static List<Hanger> GetHangers()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.Hangers.ToList();
            }
        }
        public static List<UserMaster> GetPilots()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.ToList();
            }
        }
    }
}
