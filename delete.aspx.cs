using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string q = "delete from USERS where username='" + Request.QueryString["user"] + "'";
        DalBll.DoQuery(q);
        Response.Redirect("admin.aspx");
    }
}
