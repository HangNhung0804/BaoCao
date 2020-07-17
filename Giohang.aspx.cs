using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Giohang : System.Web.UI.Page
{
    XuLyDuLieu x = new XuLyDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Ms"] != null)
            {
                    int MaHoa = int.Parse(Request.QueryString["Ms"]);
                    DataTable dt = x.GetData("SELECT TenHoa,DonGia From HOA WHERE MaHoa=" + MaHoa);
                    String TenHoa = dt.Rows[0][0].ToString();
                    float DonGia = float.Parse(dt.Rows[0][1].ToString());
                    int SoLuong = 1;
                    ThemVaoGioHang(MaHoa, TenHoa, DonGia, SoLuong);
             }

             if (Session["Giohang"] != null)
             {
                    DataTable dt = (DataTable)Session["Giohang"];
                    System.Decimal TongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                        TongThanhTien += Convert.ToDecimal(r["Thanhtien"]);
                        lbTongThanhTien.Text = TongThanhTien.ToString();
                    }
                    gvGioHang.DataSource = dt;
                    gvGioHang.DataBind();
             }
        }

    }

    private void ThemVaoGioHang(string MaHoa, string TenHoa, float DonGia, int SoLuong)
    {
        throw new NotImplementedException();
    }

    //Hàm thêm sản phẩm vào giỏ hàng
    public void ThemVaoGioHang(int MaHoa, string TenHoa, float DonGia, int SoLuong)
    {
        DataTable dt;
        if (Session["Giohang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaHoa");
            dt.Columns.Add("TenHoa");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");
        }
        else
            dt = (DataTable)Session["Giohang"];
        int dong = SPDaCoTrongGioHang(MaHoa, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaHoa"] = MaHoa;
            dr["TenHoa"] = TenHoa;
            dr["DonGia"] = DonGia;
            dr["SoLuong"] = SoLuong;
            dr["ThanhTien"] = DonGia * SoLuong;
            dt.Rows.Add(dr);
        }
        Session["Giohang"] = dt;
    }

    //Hàm kiểm tra sản phẩm đã có trong giỏ hàng chưa
    public static int SPDaCoTrongGioHang(int MaHoa, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MaHoa"].ToString()) == MaHoa)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }


    //Thanh toán
    protected void btDatHang_Click(object sender, EventArgs e)
    {
        
         if (Session["TenDN"] == null)
         {
                lbThongBaoLoi.Text = "Bạn chưa đăng nhập.";

                Response.Redirect("~/Dangnhap.aspx");  //Phải đăng nhập trước khi thanh toán
         }
         else
         {        
            Response.Redirect("~/Thanhtoan.aspx");
        }

    }

    //Xóa giỏ hàng
    protected void btXoaGioHang_Click(object sender, EventArgs e)
    {
        Session["Giohang"] = null;
        Response.Redirect("~/Default.aspx");

    }


    protected void btTiepTucMua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }


    protected void btCapNhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow r in gvGioHang.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(gvGioHang.DataKeys[r.DataItemIndex].Value) == dr["MaHoa"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[3].FindControl("txtSoLuong");
                    if (Convert.ToInt32(t.Text) <= 0)
                        dt.Rows.Remove(dr);
                    else
                        dr["SoLuong"] = t.Text;
                    break;
                }
            }
        }
        Session["Giohang"] = dt;
        Response.Redirect("~/Giohang.aspx");
    }


    protected void gvGiohang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Session["Giohang"] = dt;
                Response.Redirect("~/Giohang.aspx");
            }
            catch
            {
                Response.Redirect("~/Giohang.aspx");
            }
        }

    }

    public string MaHoa { get; set; }
}