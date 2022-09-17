using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class registeration_page : System.Web.UI.Page
{
    public string msg = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string user1 = Request.Form["username"];
            string sql = "select * from USERS where username = '" + user1 + "'";
            if (DalBll.IsExist(sql))
            {
                msg = " this user already exists ";
            }
            else
            {
                user1 = Request.Form["username"];
                string password = Request.Form["password"];
                string confirmPassword = Request.Form["confirmPassword"];
                string firstname = Request.Form["firstname"];
                string lastname = Request.Form["lastname"];
                string gender = Request.Form["gender"];
                string email = Request.Form["email"];
                string bday = Request.Form["bday"];
                string area = Request.Form["area"];
                string isAdmin = "false";
                sql = "insert into USERS (username,firstname,lastname,password,confirmPassword,area,email,bday,gender,isAdmin) values(";

                sql += "N'" + user1 + "',";
                sql += "N'" + firstname + "',";
                sql += "N'" + lastname + "',";
                sql += "N'" + password + "',";
                sql += "N'" + confirmPassword + "',";
                sql += "N'" + area + "',";
                sql += "'" + email + "',";
                sql += "'" + bday + "',";
                sql += "'" + gender + "',";
                sql += "'" + isAdmin + "')";
                DalBll.DoQuery(sql);
                msg = " you have signed up successfully! ";
            }
        }
    }
}