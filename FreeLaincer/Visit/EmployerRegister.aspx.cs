using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Visit
{
    public partial class EmployerRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employar a = new Employar();
            EmployarHelper h = new EmployarHelper();
            String text1 = (TextBox1.Text);
            String text2 = (TextBox2.Text);
            String text3 = (TextBox3.Text);
            String text4 = (TextBox4.Text);
            String text5 = (TextBox5.Text);
            String text6 = (TextBox6.Text);
            a.Fname = text1;
            a.Lname = text2;
            a.Email = text3;
            a.Companyname = text4;
            a.Address = text5;
            a.Password = text6;
            h.Save(a);
        }
    }
}