using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Thanhtoan : System.Web.UI.Page
{
    private int MaKH;
    XuLyDuLieu x = new XuLyDuLieu();
   
    public int maDonHang;
    public decimal tongTriGia;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] == null)
            Response.Redirect("~/Dangnhap.aspx");
        if (Session["Giohang"] == null)
            Response.Redirect("~/Giohang.aspx");
        if (Session["TenDN"] != null)
        {
            string s = "Select MaKH,HoTenKH,DiaChiKH,DienThoaiKH,Email from KHACHHANG where TenDN='" + Session["TenDN"].ToString() + "'";
            DataTable dt = x.GetData(s);
            if (dt.Rows.Count > 0)
            {
                MaKH = int.Parse(dt.Rows[0][0].ToString());
                lbHoTen.Text = dt.Rows[0][1].ToString();
                lbDiaChi.Text = dt.Rows[0][2].ToString();
                lbDienThoai.Text = dt.Rows[0][3].ToString();
                lbEmail.Text = dt.Rows[0][4].ToString();
            }
        }
        if (Session["Giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Decimal tongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                tongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                lbTongTien.Text = tongThanhTien.ToString();
            }
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();

             maDonHang = int.Parse(x.GetData("Select max(SoDH) from DONDATHANG").Rows[0][0].ToString())+1;
             tongTriGia = tongThanhTien;
        }
        if (!IsPostBack)
        {
            cldNgayGiaoHang.SelectedDate = DateTime.Today;
        }

    }



    protected void btDongY_Click(object sender, EventArgs e)
    {
        //Luu du lieu vao database
        int httt, htgh;
        string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;
        //Gán giá trị cho các bien
        TenNguoiNhan = txtTenNguoiNhan.Text;
        DiaChiNhan = txtDiaChiNhan.Text;
        DienThoaiNhan = txtDienThoaiNhan.Text;
        //string Ngaydathang = DateTime.Today.ToString();
        //string Ngaygiao = CalendarNgaygiaohang.SelectedDate.ToString();
        float tongThanhTien = float.Parse(lbTongTien.Text);
        httt = Convert.ToInt32(rblHinhThucThanhToan.SelectedItem.Value);
        htgh = Convert.ToInt32(rblHinhThucGiaoHang.SelectedItem.Value);
        try
        {

            //string s = @"INSERT INTO Dondathang(MaKH,NgayDH,Ngaygiaohang,Tennguoinhan,Diachinhan,Dienthoainhan,HTThanhtoan,HTGiaohang,Trigia) VALUES(" + MaKH + ",'" + Ngaydathang + "','" + Ngaygiao + "','" + Tennguoinhan + "','" + Diachinhan + "','" + Dienthoainhan + "'," + httt + "," + htgh + "," + tongThanhTien + ")";
            //x.Execute(s);

            SqlConnection con = new SqlConnection(x.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            cmd.CommandText = @"INSERT INTO DONDATHANG(MaKH,NgayDH,TriGia,NgayGiaoHang,TenNguoiNhan,DiaChiNhan,DienThoaiNhan,HTThanhToan,HTGiaoHang) Values(" + MaKH + ",@ngaydathang," + tongThanhTien + ",@ngaygiaohang,N'" + TenNguoiNhan + "','" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + "," + htgh + ")";
            cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
            cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaygiaohang"].Value = cldNgayGiaoHang.SelectedDate;

            cmd.ExecuteNonQuery();

            con.Close();

            //Lay SoDH vua nhap sau cung 
            string s = "Select max(SoDH) from DONDATHANG Where MaKH=" + MaKH;
            int SoDonHang = int.Parse(x.GetData(s).Rows[0][0].ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Giohang"];

            int MaHoa, SoLuong;
            float DonGia;

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                MaHoa = int.Parse(dt.Rows[i]["MaHoa"].ToString());
                SoLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                DonGia = float.Parse(dt.Rows[i]["DonGia"].ToString());
                s = "INSERT INTO CTDATHANG(SoDH,MaHoa,SoLuong,DonGia) VALUES(" + SoDonHang + "," + MaHoa + "," + SoLuong + "," + DonGia + ")";
                x.Execute(s);
            }

            Session["Giohang"] = null; //Xóa giỏ hàng sau khi đã thực hiện xong đặt hàng
            Response.Redirect("~/Xacnhandonhang.aspx?tt=1");

        }
        catch
        {
            lbThongBaoLoi.Text = "Lỗi trong quá trình cập nhật dữ liệu!";
        }
    }
    protected void rblHinhThucGiaoHang_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}