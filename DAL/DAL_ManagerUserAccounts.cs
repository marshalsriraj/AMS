using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAL
{
   public class DAL_ManagerUserAccounts
    {
        public static List<UserMaster> ValidateManager(string userid, string password)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.UserName == userid && x.Password == password).ToList();
            }
        }

        public static List<UserMaster> ManagerProfile(string userid)
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

        public static bool RegisterManager(UserMaster managerDetails)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    db.UserMasters.InsertOnSubmit(managerDetails);
                    db.SubmitChanges();
                    if (managerDetails.UID > 0)
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
        public static bool EditManager(int id,string add, string add1, string city, string state,long code)
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    List<Hanger> hanger = db.Hangers.Where(x => x.Hanger_ID == id).ToList();

                    foreach (Hanger hng in hanger)
                    {
                        hng.Manager_Address_Line_1 = add;
                        hng.Manager_Address_Line_2 = add1;
                        hng.City = city;
                        hng.State = state;
                        hng.Zip_Code = code;                       
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
