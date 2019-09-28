using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebApp
{
    public partial class ApproveUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadData();
        }
        public void LoadData()
        {
            List<UserMaster> users = BAL.AdminOperations.GetPendingList();
            gdvApprovalData.DataSource = users;
            gdvApprovalData.DataBind();
        }

        protected void gdvApprovalData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = gdvApprovalData.Rows[int.Parse(e.CommandArgument.ToString())];
            int _Id = int.Parse((row.FindControl("lblId") as Label).Text);
            if (e.CommandName == "approve")
            {
                if(BAL.AdminOperations.ApproveUsers(_Id, true))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "User Approved Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

                }
                else
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "User Rejected Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

                }

            }
            else if (e.CommandName == "reject")
            {
                if (BAL.AdminOperations.ApproveUsers(_Id, false))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "User Approved Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

                }
                else
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "User Rejected Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

                }
            }
            LoadData();

        }
    }
}