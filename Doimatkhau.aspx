<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doimatkhau.aspx.cs" Inherits="Doimatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Scripts/CSS/DoiMatKhau.css" rel="stylesheet" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbdangnhap">
        <tr>
            <td colspan="2" class="header">ĐỔI MẬT KHẨU</td>
        </tr>
        <tr>
            <td class="tieude">Tên đăng nhập:</td>
            <td class="the">
                <asp:TextBox CssClass="txtdangnhap" ID="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTendn" ErrorMessage="Vui lòng nhập tên đăng nhập." 
                    ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude">Mật khẩu cũ:</td>
            <td class="the">
                <asp:TextBox CssClass="txtdangnhap" ID="txtMatKhauCu" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtMatKhauCu" ErrorMessage="Vui lòng nhập mật khẩu cũ." 
                    ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude">Mật khẩu mới:</td>
            <td class="the">
                <asp:TextBox CssClass="txtdangnhap" ID="txtMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtMatKhauMoi" ErrorMessage="Vui lòng nhập mật khẩu mới." 
                    ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude">Nhập lại mật khẩu mới:</td>
            <td class="the">
                <asp:TextBox CssClass="txtdangnhap" ID="txtNhapLaiMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtNhapLaiMatKhauMoi" ErrorMessage="Vui lòng nhập mật khẩu nhập lại." 
                    ForeColor="Red">(*)</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMatKhauMoi" ErrorMessage="Mật khẩu nhập lại không khớp với Mật khẩu mới." ForeColor="Red">(*)</asp:CompareValidator>
                
            </td>
        </tr>
        <tr>
            <td class="nutdangnhap" colspan="2">
                <asp:Button CssClass="btdangnhap" ID="btDongY" runat="server" Font-Bold="True" 
                    onclick="btDongY_Click" Text="Đồng Ý" />
            </td>
        </tr>
        
        <tr>
            <td colspan="2" class="tbloi">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="tbloi1" ForeColor="Red"/>
                 <asp:Label ID="lbThongBaoLoi" runat="server" CssClass="thongbaoloi" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        
    </table>
</asp:Content>

