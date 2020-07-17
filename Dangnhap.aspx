<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Scripts/CSS/DangNhap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style4 {
            text-align: center;
            font-weight: bold;
            font-size: 25pt;
            color: #FF0066;
            padding-top: 25px;
            padding-bottom: 20px;
            text-shadow: 3px 3px 1px #b5dcf3;
            height: 84px;
        }
        .auto-style5 {
            height: inherit;
            width: 148px;
            vertical-align: middle;
            padding-left: 20px;
            font-family: 'Times New Roman';
            color: #FF0066;
            font-size: 16pt;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tbdangnhap">
        <tr>
            <td colspan="2" class="auto-style4" style="background-color: #FFFFFF">ĐĂNG NHẬP</td>
        </tr>
        <tr>
            <td class="auto-style5" style="background-color: #FFFFFF">Tên đăng nhập:</td>
            <td class="auto-style1" style="background-color: #FFFFFF">
                <asp:TextBox CssClass="txtdangnhap" ID="txtTenDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="background-color: #FFFFFF">Mật khẩu:</td>
            <td class="the" style="background-color: #FFFFFF">
                <asp:TextBox CssClass="txtdangnhap" ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtMatKhau" ErrorMessage="Mật khẩu không được rỗng" 
                    ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="nutdangnhap" colspan="2" style="background-color: #FFFFFF">
                <asp:Button CssClass="btdangnhap" ID="btDangNhap" runat="server" Font-Bold="True" 
                    onclick="btDangNhap_Click" Text="Đăng nhập" />
            </td>
        </tr>
        <tr>
            <td class="doimatkhau" colspan="2" style="background-color: #FFFFFF">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="doimk"
                   NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="tbloi" style="background-color: #FFFFFF">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                 <asp:Label ID="lbThongBaoLoi" runat="server" CssClass="thongbaoloi"></asp:Label>
            </td>
        </tr>
       
    </table>
</asp:Content>

