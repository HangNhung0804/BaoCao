<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangkythanhvien.aspx.cs" Inherits="Dangkythanhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Scripts/CSS/Dangky.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="dangky">
    <p>ĐĂNG KÝ THÀNH VIÊN</p>
    <fieldset>
		<legend>Thông tin cá nhân</legend>
        <table width="100%">
           <tr>
             <td>Họ và tên:</td>
             <td>
                <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ và tên không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
           </tr>
           <tr>
             <td>Giới tính:</td>
            <td>
                <asp:RadioButtonList ID="rblGioiTinh" runat="server" RepeatColumns="2" CssClass="gioitinh">
                    <asp:ListItem Value="1" Selected="True">&nbsp;&nbsp;Nam</asp:ListItem>
                    <asp:ListItem Value="0">&nbsp;&nbsp;Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" ></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>Điện thoại:</td>
            <td>
                <asp:TextBox  ID="txtDienThoai" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Ngày sinh:</td>
            <td>
                <asp:DropDownList CssClass="ngay" ID="ddlNgaySinh" runat="server">
                </asp:DropDownList>
&nbsp;Tháng
                <asp:DropDownList CssClass="ngay" ID="ddlThangSinh" runat="server">
                </asp:DropDownList>
&nbsp;Năm
                <asp:TextBox CssClass="Namsinh" ID="txtNamSinh" runat="server" Width="58px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNamSinh" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Năm sinh không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvNamSinh" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Bạn phải nhập năm sinh trong từ 1900 tới 2020." ForeColor="Red" MaximumValue="2020" MinimumValue="1900" Type="Integer">(*)</asp:RangeValidator>
            </td>
          </tr>
        </table>
       </fieldset>
       <fieldset>
          <legend>Thông tin đăng nhập</legend>
          <table width="100%">
           <tr>
            <td>Tên đăng nhập:</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Mật khẩu không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Nhập lại mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" 
                    TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvMatKhauNhapLai" runat="server" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="Mật khẩu nhập lại không được rỗng." ForeColor="Red">(*)</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvMatKhauNhapLai" runat="server" ErrorMessage="Mật khẩu và Mật khẩu nhập lại không khớp." ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMatKhau" ForeColor="Red">(*)</asp:CompareValidator>
            </td>
        </tr>
      </table>
     </fieldset>
        <table width="100%">
                  	<tr>
             <td colspan="2" class="btdangky">
                <asp:Button ID="btDangKy" runat="server"
                    Text="Đăng ký" OnClick="btDangKy_Click" />

                 <asp:Button  ID="btHuy" runat="server"
                    Text="Hủy"  PostBackUrl="~/Default.aspx"/>
                
              </td>
        </tr>
        <tr>
            <td colspan="2" class="tbloi">
                <asp:ValidationSummary ID="vsThongBaoLoi" runat="server" Font-Size="Small" ForeColor="Red" />
            </td>
        </tr>
       <tr>
            <td colspan="2">
                <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>   
    </table>
       
    </div>     
 </asp:Content>

