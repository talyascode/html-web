using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    public string helloMsg = " ";
    public string panel = " ";
    public string userLogin = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCount.Text = Application["NoOfVisitors"].ToString();
        if (Session["username"] == null)
        {
            userLogin = "<tr>";
            userLogin += "<td> User Name:</td>";
            userLogin += "<td><input type = \"text\" name =\"uname2\" id =\"uname2\"/></td>";
            userLogin += "<td> &nbsp </td>";
            userLogin += "<td> &nbsp </td>";
            userLogin += "< td > &nbsp </td>";
            userLogin += "</tr>";
            userLogin += "<tr>";
            userLogin += "<td> Password:</td>";
            userLogin += "<td><input type = \"password\" name = \"psw2\" id =\"psw2\" /></td>";
            userLogin += "<td> &nbsp </td>";
            userLogin += "<td> &nbsp </td>";
            userLogin += "<td> &nbsp </td>";
            userLogin += "</tr>";
            userLogin += "<td><input type = \"submit\" name = \"submit2\" value = \"login\" style=font-family:arial /> </td>";
            userLogin += "<td><input type = \"reset\" name = \"reLog\" value = \"reset\" style=font-family:arial /> </td>";
            userLogin += "</tr>";
            string sql;
            if (Request.Form["submit2"] != null)
            {

                sql = "SELECT * from USERS where username='" + Request.Form["uname2"] + "' and password='" + Request.Form["psw2"] + "'";
                SqlDataReader data = DalBll.SelectQuery(sql);
                if (data.Read())
                {
                    Session["username"] = data["username"];
                    Session["isAdmin"] = data["isAdmin"];
                    Session["FullName"] = data["lastname"] + " " + data["firstname"];
                }
                Response.Redirect("HomePage.aspx");
            }
        }
        else
        {
            helloMsg = "Hello" + " " + Session["username"];
            panel = "<a href=logout.aspx>Disconnect</a>";
            panel += "| <a href=Update.aspx>Update Password</a>";
            panel += "<a href=UpdatePage.aspx> update info<width=\"100\" height=\"40\"></a>";
            if ((bool)Session["isAdmin"])
            {
                panel += "|<a href=admin.aspx>משתמשים</a>";

            }
        }


    }
}