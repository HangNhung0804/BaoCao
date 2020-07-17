using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Hoatheochude : System.Web.UI.Page
{
    XuLyDuLieu x = new XuLyDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {

        //string mcd = Request.QueryString["mcd"];
        
        ViewState["maCD"] = Request.QueryString["maCD"];
        if (!IsPostBack)
        {
            HoaTheoChuDe(ViewState["maCD"]);
            LayTenCD(ViewState["maCD"]);
        }

    }
    
    //Hàm lấy sách theo một chủ đề
    private void HoaTheoChuDe(object maCD)
    {
        DataTable dt = x.GetData("Select MaHoa,TenHoa,DonGia,HinhMinhHoa from HOA Where MaCD=" + int.Parse(maCD.ToString()));

        if (dt.Rows.Count > 0)
        {
            dlHoaTheoChuDe.DataSource = dt;
            dlHoaTheoChuDe.DataBind();
        }

    }
     private void LayTenCD(object maCD)
    {
        DataTable dt = x.GetData("Select TenChuDe from CHUDE Where MaCD=" + int.Parse(maCD.ToString()));

        if (dt.Rows.Count > 0)
        {
            lbTenChuDe.Text = "Hoa theo chủ đề: " + dt.Rows[0]["TenChuDe"].ToString().ToUpper();
        }

    }
     
}