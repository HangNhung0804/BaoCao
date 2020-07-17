using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Xacnhandonhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
            Response.Redirect("~/Dangnhap.aspx");
        if (Convert.ToInt32(Request.QueryString["tt"])!=1)
            Response.Redirect("~/Giohang.aspx");
    }
}