using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Dangkythanhvien : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 12; i++)
        {
            ddlNgaySinh.Items.Add(i.ToString());
            ddlThangSinh.Items.Add(i.ToString());
        }
        for (int i = 13; i <= 31; i++)
            ddlNgaySinh.Items.Add(i.ToString());

    }
    protected void btDangKy_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"Select 1 from Khachhang Where tenDN=N'" + txtTenDN.Text + "'";
            if (XLDL.GetData(str1).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(XLDL.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO KHACHHANG (HoTenKH,DiaChiKH,DienThoaiKH,Email,TenDN,MatKhau,NgaySinh,GioiTinh) VALUES(@Hoten,@Diachi,@Dienthoai,@Email,@TenDN,@Matkhau,@Ngaysinh,@Gioitinh)";
                cmd.Parameters.Add("@Hoten", SqlDbType.NVarChar, 50);
                cmd.Parameters["@Hoten"].Value = txtHoTen.Text;
                cmd.Parameters.Add("@Diachi", SqlDbType.NVarChar, 50);
                cmd.Parameters["@Diachi"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@Dienthoai", SqlDbType.VarChar, 10);
                cmd.Parameters["@Dienthoai"].Value = txtDienThoai.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@Matkhau", SqlDbType.VarChar, 15);
                cmd.Parameters["@Matkhau"].Value = txtMatKhau.Text;
                cmd.Parameters.Add("@Ngaysinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@Ngaysinh"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);
                cmd.Parameters.Add("@Gioitinh", SqlDbType.Int);
                cmd.Parameters["@Gioitinh"].Value = Convert.ToInt16(rblGioiTinh.SelectedItem.Value);
                cmd.ExecuteNonQuery();

                con.Close();

                Response.Redirect("~/Dangnhap.aspx");
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
}