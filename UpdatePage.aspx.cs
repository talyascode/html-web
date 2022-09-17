using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePage : System.Web.UI.Page
{
    public string updateP = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit10"] != null)
        {
            string username = Session["username"].ToString();
            string updatefield = Request.Form["field"];
            string updateTxt = Request.Form["newinfo"];
            string sql = "update users set " + updatefield + "='" + updateTxt + "' where username='" + username + "'";
            DalBll.DoQuery(sql);
            updateP = "your new info has been updated!";
        }
    }
}