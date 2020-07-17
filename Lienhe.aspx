<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lienhe.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-hover table-responsive">
        <tr>
            <td>Họ và Tên:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="25px" placeholder="Họ và tên" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Height="25px" placeholder="Địa chỉ Email" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nội dung</td>
            <td>
                <asp:TextBox ID="txtContent" runat="server" Height="166px" placeholder="Nội dung liên hệ" Width="652px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSend" runat="server" CssClass="btn-lg btn-primary" Height="25px" Text="Send" Width="129px" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250676.5850620551!2d106.53317749890579!3d10.976831501749045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174cb9c98be08a9%3A0xc9693477103d0430!2z4bumeSBCYW4gTmjDom4gRMOibiBUaOG7iyBYw6MgQuG6v24gQ8OhdCBU4buJbmggQsOsbmggRMawxqFuZw!5e0!3m2!1svi!2s!4v1594899864336!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    <br />
</asp:Content>

