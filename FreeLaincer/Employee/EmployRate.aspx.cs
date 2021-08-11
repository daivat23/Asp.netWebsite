using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employee
{
    public partial class EmployRate : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Repeater1.DataSource = h.GetData("select * from ProjectView where ProjectId="+Request.QueryString["ProjectId"].ToString());
                Repeater1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Rate r = new Rate();
            RateHelper h = new RateHelper();
            DataTable dt = h.GetData("select * from ProjectView where ProjectId=" + Request.QueryString["ProjectId"].ToString());
            if (dt.Rows.Count > 0)
            {
                r.employerid =Convert.ToInt32(dt.Rows[0]["EmployerId"].ToString())  ;
                r.employid = Convert.ToInt32(Session["EmployId"]);
                int rate = int.Parse(Request.Form["star"].ToString());
                r.rate = rate;
                r.ratedate = DateTime.Now.ToString("dd/MM/yyyy");
                r.Type = "Employer";
                h.Save(r);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Review r = new Review();
            ReviewHelper h = new ReviewHelper(); 
            DataTable dt = h.GetData("select * from ProjectView where ProjectId=" + Request.QueryString["ProjectId"].ToString());
            if (dt.Rows.Count > 0)
            {
                r.employerid = Convert.ToInt32(dt.Rows[0]["EmployerId"].ToString());
                r.employid = Convert.ToInt32(Session["EmployId"]);
                String txt = (TextBox1.Text);
                r.reviews = txt;
                r.reviewdate = DateTime.Now.ToString("dd/MM/yyyy");
                r.Type = "Employer";
                h.Save(r);
            }
        }
    }
}