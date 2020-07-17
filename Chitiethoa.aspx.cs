using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Chitiethoa : System.Web.UI.Page
{
   
    private void LayThongTin(string ms)
    {

        string str = "Select S.*, TenChuDe FROM HOA S INNER JOIN CHUDE C ON S.MaCD=C.MaCD WHERE S.MaHoa=" + int.Parse(ms);
        DataTable dt = XLDL.GetData(str);

        if (dt.Rows.Count > 0)
        {
            dlChiTietHoa.DataSource = dt;
            dlChiTietHoa.DataBind();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string ms = Request.QueryString["ms"];
        if (!IsPostBack)
        {
            LayThongTin(ms);
        }
    }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int maHoa = Convert.ToInt16((((ImageButton)sender).CommandArgument));
        GioHang.AddItem(maHoa);
        Response.Redirect(Request.RawUrl); //Request.RawUrl lấy nguyên URL trên thanh Address
    }
        protected void dlChiTietHoa_SelectedIndexChanged(object sender, EventArgs e)
    {
       
   
        }
}
