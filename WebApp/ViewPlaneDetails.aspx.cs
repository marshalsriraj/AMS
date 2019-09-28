using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ViewPlaneDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetData();
            }
        }
        public void GetData()
        {
            int id = int.Parse(Session["ID"].ToString());
            //lblPId
            BAL.AdminOperations.GetPlanes(id);       
        }

        protected void gdvView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GetData();
        }
    }
}