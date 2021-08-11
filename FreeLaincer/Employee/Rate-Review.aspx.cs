using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class Rate_Rexiew : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from RateView where EmployId=" + Session["EmployId"].ToString());
                Repeater1.DataBind();
                Repeater2.DataSource = h.GetData("select * from EmployeeRateView where EmployId=" + Session["EmployId"].ToString());
                Repeater2.DataBind();
            }
        }

        public static string getStars(string n)
        {
            string star = "";
            for (int i = 1; i <= Convert.ToInt32(n); i++)
            {
                star += "★";
            }
            for (int i = Convert.ToInt32(n)+1; i <= 5; i++)
            {
                star += "☆";
            }
            return star;
        }
    }
}