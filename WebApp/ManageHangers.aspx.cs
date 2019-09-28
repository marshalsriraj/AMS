using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebApp
{
    public partial class ManageHangers : System.Web.UI.Page
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
            List<Hanger> hanger = BAL.AdminOperations.ManageHangers();
            gdvHangers.DataSource = hanger;
            gdvHangers.DataBind();
        }

        protected void gdvHangers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "approve")
            {
                GridViewRow row = gdvHangers.Rows[int.Parse(e.CommandArgument.ToString())];
                int id = int.Parse((row.FindControl("lblhid") as Label).Text);
                string maddress = ((row.FindControl("lbladd") as TextBox).Text);
                string madd = ((row.FindControl("lbladdl") as TextBox).Text);
                string city = ((row.FindControl("lblcity") as TextBox).Text);
                string state = ((row.FindControl("lblstate") as TextBox).Text);
                long zipcode = long.Parse((row.FindControl("lblzipcode") as TextBox).Text);
                BAL.BAL_ManagerAccounts.Updatemanage(id, maddress, madd, city, state, zipcode);
                GetDetail();
                string _msg = string.Format("SuccessFunction('{0}')", "Manager details has been updated successfully");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }

            //protected void gdvmanageplan_RowCommand(object sender, GridViewCommandEventArgs e)
            //{
            //    if (e.CommandName == "approve")
            //    {
            //        GridViewRow row = gdvHangers.Rows[int.Parse(e.CommandArgument.ToString())];
            //        string id = (row.FindControl("txtManagerID") as Label).Text;
            //        string maddress = ((row.FindControl("txtADD") as TextBox).Text);
            //        string madd = ((row.FindControl("txtaddl") as TextBox).Text);
            //        string city = ((row.FindControl("txtcity") as TextBox).Text);
            //        string state = ((row.FindControl("txtstate") as TextBox).Text);
            //        string zipcode = ((row.FindControl("txtzipcode") as TextBox).Text);
            //        BAL.AdminOperations.ManageHangers();


            //        string _msg = string.Format("SuccessFunction('{0}')", "Plan details has been updated successfully");

            //        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            //    }

            //}

        }
    }
}