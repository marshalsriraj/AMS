using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ViewPlanes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                GetDetail();
            }   
        }
        public void GetDetail()
        {
            List<Plane> _plane = BAL.AdminOperations.ManagePlanes();
            gdvPlanes.DataSource = _plane;
            gdvPlanes.DataBind();
        }

        protected void gdvPlanes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="approve")
            {
                GridViewRow row = gdvPlanes.Rows[int.Parse(e.CommandArgument.ToString())];
                int id= int.Parse((row.FindControl("lblPId") as Label).Text);
                string fname= ((row.FindControl("lblfname") as TextBox).Text);
                string lname= ((row.FindControl("lblsname") as TextBox).Text);
                long phno= long.Parse((row.FindControl("lblCon") as TextBox).Text);
                string mail= ((row.FindControl("lblemail") as TextBox).Text);
                BAL.BAL_PilotAccounts.UpdatePlane(id, fname, lname, phno, mail);
                GetDetail();
                string _msg = string.Format("SuccessFunction('{0}')", "Plane details has been updated successfully");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
               
            }
        }
    }
}