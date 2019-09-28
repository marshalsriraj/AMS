using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebApp
{
    public partial class AddPlanes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Plane _plane = new Plane
            {
                Owner_ID = int.Parse(txtOwnerID.Text),
                Owner_first_Name=txtFirstName.Text,
                Owner_Last_name=txtLastName.Text,
                Owner_Contact_number=long.Parse(txtContactNumber.Text),
                Owner_Email=txtemail.Text,
                Plane_Type=txtplntype.Text,
                Plane_capacity=Int16.Parse(txtplncap.Text)
            };
            if (BAL.AdminOperations.AddPlane(_plane))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Plane Details Added Successfully");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Plane Details not added");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
        }
    }
}