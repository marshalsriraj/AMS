using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdminOperations
    {
        public static List<UserMaster> GetPendingList()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.UserMasters.Where(x => x.IsActive == null).ToList();
            }
        }
        public static bool ApproveUsers(int UID, bool status)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    var user = db.UserMasters.Where(x => x.UID == UID).FirstOrDefault();
                    user.IsActive = status;
                    db.SubmitChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
        }

        public static bool AddPlane(Plane _plane)
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    db.Planes.InsertOnSubmit(_plane);
                    db.SubmitChanges();
                    if (_plane.Plane_ID > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch
            {
                return false;
            }
        }

        public static List<Plane> ManagePlanes()
        {
            //try
            //{
            using (DBContextDataContext db = new DBContextDataContext())
            {
                var man = db.Planes;
                return man.ToList();
            }
            //}
            //catch(Exception ex)
            //{
            //   return 
            //}


        }
        public static bool AddHangers(Hanger hanger)
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    db.Hangers.InsertOnSubmit(hanger);
                    db.SubmitChanges();
                    if (hanger.Hanger_ID > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch
            {
                return false;
            }
        }
        public static List<Hanger> ManageHangers()
        {
            //try
            //{
            using (DBContextDataContext db = new DBContextDataContext())
            {
                var man = db.Hangers;
                return man.ToList();
            }
        }
        public static List<string> DisplayHangers()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                var res = db.Hangers.Select(s => s.Hanger_ID + "-" + s.Manager_ID).ToList();
                return res;
            }
        }
        public static List<string> DisplayPlaneS()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                var res = db.Planes.Select(s => s.Plane_ID + "-" + s.Owner_ID).ToList();
                return res;
            }
        }
        public static bool allotplanes(hangerallot rea)
        {
            if (rea.allotdetails != null)
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    db.hangerallots.InsertOnSubmit(rea);
                    db.SubmitChanges();
                    return true;
                }
            }
            else
            {
                return false;
            }            
        }

        public static List<GetHangerStatusResult> GetHangerStatus()
        {
            using (DBContextDataContext db=new DBContextDataContext())
            {
                return db.GetHangerStatus().ToList();
            }
        }
        public static List<Plane> Getplane(int id)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.Planes.Where(x => x.Plane_ID == id).ToList();
            }
        }
        public static List<hangerallot> Gethang()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.hangerallots.ToList();
            }
        }
    }
}
