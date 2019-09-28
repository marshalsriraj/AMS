using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class HangerStatus : System.Web.UI.Page
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
            List<DAL.GetHangerStatusResult> Hangers = BAL.AdminOperations.GetHangerStatus();
            gdvData.DataSource = Hangers;
            gdvData.DataBind();
            Session["id"] = Hangers[0].Hanger_ID;
           
            List<DAL.hangerallot> hang = BAL.AdminOperations.Gethang();
            Session["ID"] = hang[0].planeid;
            


        }

        protected void gdvData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GetData();
            if(e.CommandName=="approve")
            {
                Response.Redirect("ViewPlaneDetails.aspx");
            }
        }
    }
}