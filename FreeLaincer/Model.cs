using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FreeLaincer
{
    public class Skill
    {
        public int skillid;
        public String skillname;
    }

    public class Review
    {
        public int reviewid, employerid, employid;
        public String reviewdate, reviews, Type;
    }

    public class Rate
    {
        public int rateid, employerid, employid, rate;
        public String ratedate, Type;
    }

    public class Projectskill
    {
        public int Psid, skillid, projectid;
    }

    public class Project
    {
        public int Projectid, Projectdate, prise, time, fromdate, todate, EmployerId;
        public String Projectname;
    }

    public class Bid
    {
        public int Bidid, Projectid, EmployId,Time, bid;
         public String Status,Biddate;
    }

    public class Employ
    {
        public int EmployId, Age, Mobile;
        public String EmployFname, EmployLname, Email, Address, Gender, Password;
    }

    public class Employar
    {
        public int EmployerId;
        public String Fname, Lname, Email,Companyname, Address, Password;
    }

}