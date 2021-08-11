using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employer
{
    public partial class EmployerRate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Rate r = new Rate();
            RateHelper h = new RateHelper();
            DataTable dt = h.GetData("select * from EmployerBidView where EmployId=" + Request.QueryString["EmployId"].ToString());
            if (dt.Rows.Count > 0)
            {
                r.employid = Convert.ToInt32(dt.Rows[0]["EmployId"].ToString());
                r.employerid = Convert.ToInt32(Session["EmployerId"]);
                int rate = int.Parse(Request.Form["star"].ToString());
                r.rate = rate;
                r.ratedate = DateTime.Now.ToString("dd/MM/yyyy");
                r.Type = "Employee";
                h.Save(r);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Review r = new Review();
            ReviewHelper h = new ReviewHelper();
            DataTable dt = h.GetData("select * from EmployerBidView where EmployId=" + Request.QueryString["EmployId"].ToString());
            if (dt.Rows.Count > 0)
            {
                r.employid = Convert.ToInt32(dt.Rows[0]["EmployId"].ToString());
                r.employerid = Convert.ToInt32(Session["EmployerId"]);
                String txt = (TextBox1.Text);
                r.reviews = txt;
                r.reviewdate = DateTime.Now.ToString("dd/MM/yyyy");
                r.Type = "Employee";
                h.Save(r);
            }
        }
    }
}