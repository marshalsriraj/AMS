using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebApp
{
    public partial class ViewPlanes1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDetail();
            }
        }
        public void GetDetail()
        {
            List<Plane> _plane = BAL.AdminOperations.ManagePlanes();
            gdvView.DataSource = _plane;
            gdvView.DataBind();
        }

        protected void gdvView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GetDetail();
        }
    }
}