using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class PilotWorkSchedule : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=PC446543;initial catalog=AirportManagementSystem;Integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) GetPlane();
        }
        public void GetPlane()
        {

            SqlCommand cmd = new SqlCommand("select * from AssignWork", con);
            con.Open();
            cmd.ExecuteReader();
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gdvData.DataSource = dt;
            gdvData.DataBind();
        }
        protected void gdvData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gdvData.EditIndex = e.NewEditIndex;
            GetPlane();
        }

        protected void gdvData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int planeid = int.Parse(gdvData.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)gdvData.Rows[e.RowIndex];

            TextBox textLicense = row.FindControl("txtLicense") as TextBox;
            TextBox textDepartloc = row.FindControl("txtDepartL") as TextBox;
            TextBox textDeparttim = row.FindControl("txtDepartT") as TextBox;
            TextBox textArrivalloc = row.FindControl("txtArrL") as TextBox;
            TextBox textArrivaltim = row.FindControl("txtArrT") as TextBox;

            gdvData.EditIndex = -1;
            con.Open();

            SqlCommand cmd = new SqlCommand("update AssignWork set LicenseNumber=@license,DepartureLocation=@departloc,DepartureTime=@departtim,ArrivalLocation=@arrloc,ArrivalTime=@arrtim where Plane_ID =@planeid", con);
            cmd.Parameters.AddWithValue("@planeid", planeid);
            cmd.Parameters.AddWithValue("@license", textLicense.Text);
            cmd.Parameters.AddWithValue("@departloc", textDepartloc.Text);
            cmd.Parameters.AddWithValue("@departtim", textDeparttim.Text);
            cmd.Parameters.AddWithValue("@arrloc", textArrivalloc.Text);
            cmd.Parameters.AddWithValue("@arrtim", textArrivaltim.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GetPlane();

        }

        protected void gdvData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gdvData.EditIndex = -1;
            GetPlane();

        }
    }
}