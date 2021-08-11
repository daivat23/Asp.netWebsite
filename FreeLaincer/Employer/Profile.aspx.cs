using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Employer
{
    public partial class Profile : System.Web.UI.Page
    {
        DbHelper h = new DbHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employar a = new Employar();
            String txt1 = (TextBox1.Text);
            String txt2 = (TextBox2.Text);
            String txt3 = (TextBox3.Text);
            String txt4 = (TextBox4.Text);
            a.Fname = txt1;
            a.Lname = txt2;
            a.Companyname = txt3;
            a.Address = txt4;
            h.EmployerUpdate(a);
        }
    }
}