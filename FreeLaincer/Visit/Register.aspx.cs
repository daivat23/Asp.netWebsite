using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeLaincer.Visit
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Employ a = new Employ();
            EmployHelper h = new EmployHelper();
            String text1 = (TextBox1.Text);
            String text2 = (TextBox2.Text);
            String text3 = (TextBox3.Text);
            String text4 = (TextBox4.Text);
            String text5 = (TextBox5.Text);
            int text6 = int.Parse(TextBox6.Text);
            int text7 = int.Parse(TextBox7.Text);
            String text8 = (TextBox8.Text);
            a.EmployFname = text1;
            a.EmployLname = text2;
            a.Email = text3;
            a.Address = text4;
            a.Gender = text5;
            a.Age = text6;
            a.Mobile = text7;
            a.Password = text8;
            h.Save(a);
        }
    }
}