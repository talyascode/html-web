using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
    public string list;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("error.aspx");
        }
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select * from USERS", DalBll.GetConnection());
        da.Fill(ds, "USERS");
        DataTable dt = ds.Tables["USERS"];
        list += "<table border=1 cellspacing=5 bgcolor=white>";
        list += "<tr>";
        list += "<td>username </td>";
        list += "<td>password</td>";
        list += "<td>firstname</td>";
        list += "<td>lastname</td>";
        list += "<td>gender</td>";
        list += "<td>area</td>";
        list += "<td>isAdmin</td>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            list += "<tr>";
            list += "<td>" + dt.Rows[i]["username"] + "</td>";
            list += "<td>" + dt.Rows[i]["password"] + "</td>";
            list += "<td>" + dt.Rows[i]["firstname"] + "</td>";
            list += "<td>" + dt.Rows[i]["lastname"] + "</td>";
            list += "<td>" + dt.Rows[i]["gender"] + "</td>";
            list += "<td>" + dt.Rows[i]["area"] + "</td>";
            list += "<td>" + dt.Rows[i]["isAdmin"] + "</td>";
            if ((bool)dt.Rows[i]["isAdmin"])
                list += "<td>&nbsp</td>";
            else
                list += "<td><a href='delete.aspx?user=" + dt.Rows[i]["username"] +
                                                  "'>Delete</td>";




            list += "</tr>";
        }
        list += "</table>";

    }
}
