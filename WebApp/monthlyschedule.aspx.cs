using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class monthlyschedule : System.Web.UI.Page
    {
        class myClass
        {
            string _date;
            string _dayOfWeek;

            public string date
            {
                get { return _date; }
                set { _date = value; }
            }

            public string dayOfWeek
            {
                get { return _dayOfWeek; }
                set { _dayOfWeek = value; }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlYear_DataBing(2012);
            ddlMonth_DataBing();
            gvDays_DataBing();
        }
        private void ddlYear_DataBing(int startYear)
        {

            int currentYear = Convert.ToInt32(DateTime.Now.Year.ToString());

            for (int i = startYear; i <= currentYear; i++)
            {
                ListItem item = new ListItem(string.Format("{0}", i));

                ddlYear.Items.Add(item);
            }
        }

        private void ddlMonth_DataBing()
        {
            ListItem monthItem = new ListItem("jan", "1");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("feb", "2");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("mar", "3");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("apr", "4");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("may", "5");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("jun", "6");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("jul", "7");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("aug", "8");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("sep", "9");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("oct", "10");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("nov", "11");
            ddlMonth.Items.Add(monthItem);

            monthItem = new ListItem("dec", "12");
            ddlMonth.Items.Add(monthItem);
        }

        private void gvDays_DataBing()
        {
            int month = Convert.ToInt32(ddlMonth.SelectedValue);

            List<myClass> myList = new List<myClass>();

            if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
            {
                for (int i = 1; i <= 31; i++)
                {
                    myClass item = new myClass();
                    item.date = string.Format("{0}-{1}-{2}", i.ToString(), ddlMonth.SelectedItem.Text, ddlYear.SelectedValue);
                    DateTime dateValue = new DateTime(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue), i);
                    item.dayOfWeek = dateValue.ToString("ddddddddd");

                    myList.Add(item);
                }
            }
            else
                if (month == 4 || month == 6 || month == 9 || month == 11)
            {
                for (int i = 1; i <= 30; i++)
                {
                    myClass item = new myClass();
                    item.date = string.Format("{0}-{1}-{2}", i.ToString(), ddlMonth.SelectedItem.Text, ddlYear.SelectedValue);
                    DateTime dateValue = new DateTime(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue), i);
                    item.dayOfWeek = dateValue.ToString("ddddddddd");

                    myList.Add(item);
                }
            }
            else
            {
                for (int i = 1; i <= 28; i++)
                {
                    myClass item = new myClass();
                    item.date = string.Format("{0}-{1}-{2}", i.ToString(), ddlMonth.SelectedItem.Text, ddlYear.SelectedValue);
                    DateTime dateValue = new DateTime(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue), i);
                    item.dayOfWeek = dateValue.ToString("ddddddddd");

                    myList.Add(item);
                }
            }

            gvDays.DataSource = myList;
            gvDays.DataBind();
        }


    }
}