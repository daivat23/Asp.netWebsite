using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employer
{
    public partial class CreateJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Project p = new Project();
            ProjectHelper h = new ProjectHelper();
            String txt1 = (TextBox1.Text);
            int txt2 = int.Parse(TextBox2.Text);
            int txt3 = int.Parse(TextBox3.Text);
            int txt4 = int.Parse(TextBox4.Text);
            int txt5 = int.Parse(TextBox5.Text);
            int txt6 = int.Parse(TextBox6.Text);
            p.Projectname = txt1;
            p.Projectdate = txt2;
            p.prise = txt3;
            p.time = txt4;
            p.fromdate = txt5;
            p.todate = txt6;
            p.EmployerId = Convert.ToInt32(Session["EmployerId"]);
            h.Save(p);

        }
    }
}