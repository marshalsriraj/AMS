using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class AddHangers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Hanger hanger = new Hanger
            {
                Manager_ID = txtManagerID.Text,
                Manager_Address_Line_1 = txtADD.Text,
                Manager_Address_Line_2 = txtaddl.Text,
                City = txtcity.Text,
                State = txtstate.Text,
                Zip_Code = Int32.Parse(txtzipcode.Text)
            };
            if (BAL.AdminOperations.AddHangers(hanger))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Hanger Details Added Successfully");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Hanger Details not added");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
        }
    }
}