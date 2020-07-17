<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .soluong, .mahoa, .thanhtien, .dongia, .cmdxoa{
            text-align:center;
            border:1px solid #DEBA84;
        }
        .txtsoluong{
            text-align:center;
        }
        .tbgiohang{
            width:750px;
            margin:5px auto;
            border:1px solid #0094ff;
            text-align:center;
        }
        .tieude{
            height:60px;
            color:#FF0066;
            font-size:20pt;
            font-weight:bold;
            text-shadow:3px 3px 2px #c6effa;
        }
        .gvgiohang{
            margin:5px auto;
            width:750px;
        }
        .tongtien{
            text-align:right;
            font-weight:bold;
            height:30px;
        }
        .rownutlenh{
            height:50px;
        }
        .nutlenh{
            background-color:#FF0066;
            width:150px;
            height:30px;
            border-radius:5px;
            cursor:pointer;
            border:1px solid #C8CED4;
            font-weight:bold;
            color:white;
            font-size:14pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbgiohang">
        <tr>
            <td class="tieude" colspan="4">THÔNG TIN VỀ GIỎ HÀNG CỦA BẠN</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" DataKeyNames="MaHoa" 
                    onrowcommand="gvGiohang_RowCommand" CssClass="gvgiohang">
                    <Columns>
                        <asp:BoundField DataField="MaHoa" HeaderText="Mã hoa" ItemStyle-CssClass="mahoa" />
                        <asp:BoundField DataField="TenHoa" HeaderText="Tên hoa" />
                        <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" ItemStyle-CssClass="dongia" />
                        <asp:TemplateField HeaderText="Số lượng" ItemStyle-CssClass="soluong">
                            <ItemTemplate>
                                <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>' CssClass="txtsoluong"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền" ItemStyle-CssClass="thanhtien" />
                        <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" 
                            ImageUrl="~/Images/Delete.jpg" ItemStyle-CssClass="cmdxoa" />
                    </Columns>
                    <FooterStyle BackColor="#993333" ForeColor="#993333" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="35px" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="1px" CssClass="rowgiohang" Height="30px" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                  
                </asp:GridView>
            </td>
        </tr>
       
        <tr>
            <td colspan="3" class="tongtien"> Tổng cộng:</td>
            <td>
                <asp:Label ID="lbTongThanhTien" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr class="rownutlenh">
            <td>
                <asp:Button ID="btTiepTucMua" runat="server" onclick="btTiepTucMua_Click" 
                    Text="Tiếp tục mua" CssClass="nutlenh" />
            </td>
            <td>
                <asp:Button ID="btXoaGioHang" runat="server" onclick="btXoaGioHang_Click" 
                    Text="Xóa giỏ hàng" CssClass="nutlenh" />
            </td>
            <td>
                <asp:Button ID="btCapNhat" runat="server" onclick="btCapNhat_Click" 
                    Text="Cập nhật" CssClass="nutlenh" />
            </td>
            <td>
                <asp:Button ID="btDatHang" runat="server" onclick="btDatHang_Click" 
                    Text="Đặt hàng" CssClass="nutlenh" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lbThongBaoLoi" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

