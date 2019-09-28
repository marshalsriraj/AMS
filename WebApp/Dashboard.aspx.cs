using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }
        public void GetData()
        {
            try
            {
                lblPlanesCount.Text = BAL.BAL_AdminAccounts.GetPlanes().Count.ToString();
                lblHangersCount.Text = BAL.BAL_AdminAccounts.GetHangers().Count.ToString();
                lblPilotsCount.Text = BAL.BAL_AdminAccounts.GetPilots().Where(x => x.RoleId == 4).Count().ToString();
            }
            catch { }
        }
    }
}