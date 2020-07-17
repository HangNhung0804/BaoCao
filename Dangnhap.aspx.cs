using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dangnhap : System.Web.UI.Page
{
    XuLyDuLieu x = new XuLyDuLieu();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTenDN.Focus();
    }
    protected void btDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            String strLogin= "select TenDN from dbo.KHACHHANG where TenDN='" + txtTenDN.Text + "' and MatKhau='" + txtMatKhau.Text + "'";
           
            DataTable dt = x.GetData(strLogin);
            if (dt.Rows.Count > 0)
            {
            
                Session["TenDN"] = txtTenDN.Text;
                Response.Redirect("~/Default.aspx");
            }
            else
           {
                String strLogin_Admin = "select TenDNAdmin from dbo.ADMIN where TenDNAdmin='" + txtTenDN.Text + "' and MatKhauAdmin='" + txtMatKhau.Text + "'";
                
                DataTable dt1 = x.GetData(strLogin_Admin);
                if (dt1.Rows.Count > 0)
                {
                    Session["TenDNAdmin"] = txtTenDN.Text;
                    Response.Redirect("~/Admin/DangnhapAdmin.aspx");
                }
            }

                lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
        }
        catch(Exception ex)
        {
            lbThongBaoLoi.Text = "Thất bại!"+ex.ToString();
        }
    }
}