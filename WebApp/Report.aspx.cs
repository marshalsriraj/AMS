using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gdvData.Visible = false;
                btnExcel.Visible = false;
            };
        }
        public void GetData()
        {
            string inp = ddlType.SelectedItem.Value;
            if (inp != "")
            {
                switch (inp)
                {
                    case "Plane":
                        gdvData.Visible = true;
                        gdvData.DataSource = BAL.BAL_AdminAccounts.GetPlanes().Select(x => new { Id = x.Plane_ID, Owner = x.Owner_ID, EMail = x.Owner_Email }).ToList();
                        gdvData.DataBind();
                        break;
                    case "Hanger":
                        gdvData.Visible = true;
                        gdvData.DataSource = BAL.BAL_AdminAccounts.GetHangers().Select(x => new { Id = x.Hanger_ID, Manager = x.Manager_ID, City = x.City }).ToList();
                        gdvData.DataBind();
                        break;
                    case "Pilot":
                        gdvData.Visible = true;
                        gdvData.DataSource = BAL.BAL_AdminAccounts.GetPilots().Select(x => new { Id = x.UID, Licence = x.LicenseNumber, City = x.City, x.ZipCode }).ToList();
                        gdvData.DataBind();
                        break;
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            GetData();
            btnExcel.Visible = true;
        }

        public void GetStream(XLWorkbook excelWorkbook)
        {
            MemoryStream memoryStream = new MemoryStream();
            excelWorkbook.SaveAs(memoryStream);
            memoryStream.Position = 0;
            byte[] bytesInStream = memoryStream.ToArray();
            memoryStream.Close();
            Response.Clear();
            Response.ContentType = "application/force-download";
            string filename = DateTime.Now.ToString("ddMMyyyyhhmmss") + "_" + ddlType.SelectedItem.Value + ".xlsx";
            Response.AddHeader("content-disposition", "attachment;    filename="+filename);
            Response.BinaryWrite(bytesInStream);
            Response.End();
        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            string inp = ddlType.SelectedItem.Value;
            XLWorkbook wb = new XLWorkbook();
            if (inp != "")
            {
                switch (inp)
                {
                    case "Plane":
                        DataTable dt1 = Common.LINQResultToDataTable(BAL.BAL_AdminAccounts.GetPlanes().Select(x => new { Id = x.Plane_ID, Owner = x.Owner_ID, EMail = x.Owner_Email }).ToList());
                        wb.Worksheets.Add(dt1, "Planes");                        
                        break;
                    case "Hanger":
                        DataTable dt2 = Common.LINQResultToDataTable(BAL.BAL_AdminAccounts.GetHangers().Select(x => new { Id = x.Hanger_ID, Manager = x.Manager_ID, City = x.City }).ToList());
                        wb.Worksheets.Add(dt2, "Hanger");
                        break;
                    case "Pilot":
                        DataTable dt3 = Common.LINQResultToDataTable(BAL.BAL_AdminAccounts.GetPilots().Select(x => new { Id = x.UID, Licence = x.LicenseNumber, City = x.City, x.ZipCode }).ToList());
                        wb.Worksheets.Add(dt3, "Pilot");
                        break;
                }
                GetStream(wb);
            }
        }
    }
}