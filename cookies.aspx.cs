using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cookies : System.Web.UI.Page
{
    public string myAdress;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submitt"] != null)
            {
            HttpCookie cookieName = new HttpCookie("myadress");
            cookieName.Value = Request.Form["adress2"] + "," + Request.Form["name2"];
            cookieName.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookieName);
            myAdress = "cookie was added";

            }
        




    }
}