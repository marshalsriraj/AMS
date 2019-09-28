using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session.Clear();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            List<UserMaster> users = BAL.Accounts.ValidateUser(txtUsername.Text, txtPassword.Text);
            if(users.Count>0)
            {
                if(users[0].IsActive!=true)
                {
                    string _msg = string.Format("ErrFunction('{0}')", "Your Account is Pending For Admin Approval!");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                else
                {
                    Session["UserId"] = users[0].UserName;
                    Session["Name"] = users[0].FirstName + " " + users[0].LastName;
                    Session["RoleID"] = users[0].RoleId.ToString();
                    Session["Email"] = users[0].EMail;
                    Session["Status"] = users[0].IsActive;
                    Response.Redirect("Dashboard.aspx");
                }

            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Incorrect UserId/Password");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);             
            }

        }
       
    }
}