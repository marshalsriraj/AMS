using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BAL
{
    public class AdminOperations
    {
        public static List<UserMaster> GetPendingList()
        {
            return DAL.AdminOperations.GetPendingList();
        }
        public static bool ApproveUsers(int UID, bool status)
        {
            return DAL.AdminOperations.ApproveUsers(UID, status);
        }
        public static bool AddPlane(Plane _plane)
        {
            return DAL.AdminOperations.AddPlane(_plane);
        }
        public static List<Plane> ManagePlanes()
        {
            return DAL.AdminOperations.ManagePlanes();
        }
        public static bool AddHangers(Hanger hanger)
        {
            return DAL.AdminOperations.AddHangers(hanger);
        }
        public static List<Hanger> ManageHangers()
        {
            return DAL.AdminOperations.ManageHangers();
        }
        public static List<string> AllotHangers()
        {
            return DAL.AdminOperations.DisplayHangers();
        }
        public static List<string> AllotPlanes()
        {
            return DAL.AdminOperations.DisplayPlaneS();
        }
        public static bool allotment(hangerallot rea)
        {
            return DAL.AdminOperations.allotplanes(rea);
        }
        public static List<GetHangerStatusResult> GetHangerStatus()
        {
            return DAL.AdminOperations.GetHangerStatus();
        }
        public static List<hangerallot> Gethang()
        {
            return DAL.AdminOperations.Gethang();
        }
        public static List<Plane> GetPlanes(int id)
        {
            return DAL.AdminOperations.Getplane(id);
        }
    }
}
