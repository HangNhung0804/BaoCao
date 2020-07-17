<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hoatheochude.aspx.cs" Inherits="Hoatheochude" %>

<%@ Register Src="~/UC/ucSlide.ascx" TagPrefix="uc1" TagName="ucSlide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="Scripts/CSS/HoaMoi1.css" rel="stylesheet" />
</asp:Content

>
<asp:Content ID="Content3" ContentPlaceHolderID="slider" Runat="Server">
    <uc1:ucSlide runat="server" ID="ucSlide" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="hoamoi">
    <p><asp:Label ID="lbTenChuDe" runat="server" Text="Label"></asp:Label></p>
     <asp:DataList ID="dlHoaTheoChuDe" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table class="tbhoamoi">
                <tr>
                    <td id="tenhoa">
                        <asp:HyperLink ID="hplTenHoa" runat="Server" NavigateUrl='<%# "~\\Chitiethoa.aspx?ms="+Eval("MaHoa") %>' Text='<%# Eval("TenHoa") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td id="hinh">
                        <asp:Image ID="imgHinh" CssClass="hinhhoa" runat="server" ImageUrl='<%# "~\\Images\\Hoa\\"+Eval("HinhMinhHoa") %>' />
                    </td>
                </tr>
                <tr>
                    <td id="dongia">
                        Đơn giá: <asp:Label CssClass="gia" ID="lblGia" runat="server" Text='<%# Eval("DonGia","{0:0,0 VNĐ}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td id="chonmua">
                        <asp:HyperLink ID="hplChonMua" runat="server" CssClass="nutchonmua" ImageUrl="~/images/chonmua.png" NavigateUrl='<%# "~\\Giohang.aspx?ms="+Eval("MaHoa") %>'>HyperLink</asp:HyperLink>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>

</div>
</asp:Content>

