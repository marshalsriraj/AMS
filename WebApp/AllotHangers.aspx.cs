using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class AllotHangers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }
        public void LoadData()
        {
            List<string> hangerid = BAL.AdminOperations.AllotHangers();
            ddlhanger.DataSource = hangerid;
            ddlhanger.DataBind();
            ddlhanger.Items.Insert(0, new ListItem { Text = "--select--", Value = "" });

            List<string> planeid = BAL.AdminOperations.AllotPlanes();
            ddlplane.DataSource = planeid;
            ddlplane.DataBind();
            ddlplane.Items.Insert(0, new ListItem { Text = "--select--", Value = "" });

        }


        protected void btnallot_Click(object sender, EventArgs e)
        {
            var rea = ddlhanger.Text +"$"+ ddlplane.Text;
            hangerallot newRow = new hangerallot
            {
                allotdetails = rea,
                hangid = int.Parse(ddlhanger.SelectedItem.Text.Split('-')[0]),
                planeid = int.Parse(ddlplane.SelectedItem.Text.Split('-')[0]),
                status = true
            };
            BAL.AdminOperations.allotment(newRow);

        }
    }
}