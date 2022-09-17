using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Update : System.Web.UI.Page
{
    public string updatePasswordmsg = " ";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Form["submit3"] != null)
        {

            string username = Session["username"].ToString();
            string password = Request.Form["upassword"].ToString();
            string sql = "update USERS set password='" + password + "' where username='" + username + "'";
            DalBll.DoQuery(sql);
            updatePasswordmsg = "Your password is updated";
        }
    }
}
