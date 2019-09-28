using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebApp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserMaster adminDetails = new UserMaster
            {
                UserName=txtusername.Text,
                FirstName = txtFirstName.Text,
                LastName=txtLastName.Text,
                Age=int.Parse(txtAge.Text),
                Gender=txtGender.Text,
                ContactNumber=txtCN.Text,
                AltContactNumber=txtALTcn.Text,
                EMail=txtEmail.Text,
                Password=txtPwd.Text,
                CreatedOn = DateTime.Now.Date,
                CreatedBy = txtFirstName.Text + " " + txtLastName.Text,
                RoleId = int.Parse(ddlList.Text)
            };
            if (BAL.BAL_AdminAccounts.RegisterAdmin(adminDetails))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Your Account is Registered Successfully !");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Not Registered!");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
          
        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            UserMaster managerDetails = new UserMaster
            {
                UserName = txtusernam.Text,
                FirstName = txtMFname.Text,
                LastName = txtMLname.Text,
                Age = int.Parse(txtMage.Text),
                Gender = ddlMGender.Text,
                ContactNumber = txtMCN.Text,
                AltContactNumber = txtACN.Text,
                EMail = txtMEmail.Text,
                Password = txtMPwd.Text,
                CreatedOn = DateTime.Now.Date,
                CreatedBy = txtMFname.Text + " " + txtMLname.Text,
                RoleId = int.Parse(ddlList.Text)

            };
            if (BAL.BAL_ManagerAccounts.RegisterManager(managerDetails))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Your Account is Registered Successfully !");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Not Registered!");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }


        }

        protected void btnlogi_Click(object sender, EventArgs e)
        {
            UserMaster pilotDetails = new UserMaster
            {
                UserName=txtusernamee.Text,
                LicenseNumber = txtPLno.Text,
                AddressLine1=txtAddressLine.Text,
                AddressLine2=txtAddress.Text,
                City=txtCity.Text,
                State=txtState.Text,
                ZipCode=txtZip.Text,
                SSN=txtSSN.Text,
                Password=txtPPwd.Text,
                CreatedOn = DateTime.Now.Date,
                CreatedBy = txtPLno.Text + " " + txtCity.Text,
                RoleId = int.Parse(ddlList.Text)

            };
            if (BAL.BAL_PilotAccounts.RegisterPilot(pilotDetails))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Your Account is Registered Successfully !");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Not Registered!");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
        }
    }

}