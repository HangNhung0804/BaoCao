using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doimatkhau : System.Web.UI.Page
{
    XuLyDuLieu x = new XuLyDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDN"] != null)
        {
            txtTenDN.Text = Session["TenDN"].ToString();
            txtMatKhauCu.Focus();
        }
        else
        {
            txtTenDN.Text = "";
            txtTenDN.Focus();

        }
    }
    protected void btDongY_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("Select TenDN From KHACHHANG where TenDN='" + txtTenDN.Text + "' and MatKhau='" + txtMatKhauCu.Text + "'");
            if (dt.Rows.Count > 0)
            {
                /*
                SqlConnection con = new SqlConnection(x.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"UPDATE KhachHang Set MatKhau=@MatKhau WHERE TenDN = @TenDN";
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@MatKhau"].Value = txtMatKhauMoi.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                */
                x.Execute("UPDATE KhachHang Set MatKhau = '" + txtMatKhauMoi.Text + "' WHERE TenDN = '" + txtTenDN.Text + "'");
                lbThongBaoLoi.Text = "Đổi mật khẩu thành công";
            
            }
            else
                lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu cũ không hợp lệ!";
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
        
    }
    
}