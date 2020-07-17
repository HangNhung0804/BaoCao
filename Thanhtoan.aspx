<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thanhtoan.aspx.cs" Inherits="Thanhtoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" style="#FFFFFF">
        .tbthanhtoan{
            width:700px;
            margin:5px auto;
            border:1px solid #0094ff;
            background-color:#FFFFFF;
            margin-bottom:20px;
        }
        .gvgiohang{
            margin:5px auto;
            width:600px;
        }
        .tieude{
            height:60px;
            vertical-align:bottom;
            color:#FF0066;
            font-size:20pt;
            font-weight:bold;
            text-shadow:3px 3px 2px #c6effa;
            text-align:center;
        }
        .tieude1{
            height:50px;
            vertical-align:bottom;
            color:#ff6a00;
            font-size:16pt;
            font-weight:bold;
            padding-left:10px;
        }
        .tieude2{
            height:30px;
            font-size:14pt;
            padding-left:30px;
        }
         .tdtongtien{
            height:30px;
            font-size:14pt;
            text-align:right;
            font-weight:bold;
            padding-right:80px;
        }

        .thongtintaikhoan{
            color:#490a81;
            font-size:15pt;
            font-weight:bold;
         }
        .thongtingiohang{
            border:1px solid #DEBA84;
            text-align:center;
            height:30px; 
        }
        .thongtinnguoinhan{
            border:1px solid #b4b0b0;
            width:200px;
            height:25px;
            border-radius:5px;
            padding-left:5px;
        }
        .tongtien{
            text-align:right;
            font-weight:bold;
            height:30px;
        }

        .colnutlenh{
            height:80px;
            text-align:center;
        }
        .btdongy{
            background-color:#57AFF2;
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
    <table class="tbthanhtoan">
        <tr>
            <td colspan="2" class="tieude">THÔNG TIN ĐƠN ĐẶT HÀNG</td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN TÀI KHOẢN</td>
        </tr>
        <tr>
            <td class="tieude2">Họ tên:</td>
            <td><asp:Label ID="lbHoTen" runat="server" CssClass="thongtintaikhoan"></asp:Label> </td>
        </tr>
        <tr>
            <td class="tieude2">Địa chỉ:</td>
            <td> <asp:Label ID="lbDiaChi" runat="server" CssClass="thongtintaikhoan"></asp:Label>   </td>
        </tr>
        <tr>
            <td class="tieude2">Điện thoại:</td>
            <td><asp:Label ID="lbDienThoai" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td class="tieude2">Email:</td>
            <td><asp:Label ID="lbEmail" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN GIỎ HÀNG</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" CssClass="gvgiohang">
                    <Columns>
                        <asp:BoundField DataField="MaHoa" HeaderText="Mã hoa" ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="TenHoa" HeaderText="Tên hoa" ItemStyle-CssClass="thongtingiohang" >
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="DonGia" HeaderText="Đơn giá"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="30px" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="tdtongtien" colspan="2">Tổng tiền: <asp:Label ID="lbTongTien" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1"> THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td class="tieude2"> Ngày giao:</td>
            <td>
                <asp:Calendar ID="cldNgayGiaoHang" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Người nhận:</td>
            <td>
                <asp:TextBox ID="txtTenNguoiNhan" runat="server" CssClass="thongtinnguoinhan"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTenNguoiNhan" ErrorMessage="Người nhận không được rỗng" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Địa chỉ:</td>
            <td>
                <asp:TextBox ID="txtDiaChiNhan" runat="server" CssClass="thongtinnguoinhan"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDiaChiNhan" ErrorMessage="Địa chỉ không được rỗng" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude2">  Điện thoại:</td>
            <td>
                <asp:TextBox ID="txtDienThoaiNhan" runat="server" CssClass="thongtinnguoinhan"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDienThoaiNhan" ErrorMessage="Điện thoại không được rỗng" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tieude2">Hình thức thanh toán:</td>
            <td>
                <asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server" ForeColor="Black" >
                    <asp:ListItem Value="1" Selected="True">&nbsp;&nbsp;Thanh toán trước khi giao hàng</asp:ListItem>
                    <asp:ListItem Value="0">&nbsp;&nbsp;Thanh toán sau khi giao hàng</asp:ListItem>
                   
                </asp:RadioButtonList>
                 <a href="https://www.nganluong.vn/button_payment.php?receiver=dat.gmail.com&product_name=<%=maDonHang %>&price=<%=tongTriGia %>&return_url=Xacnhandonhang.aspx">Thanh toán bằng NGÂN LƯỢNG</a>
            </td>
        </tr>
        <tr>
            <td class="tieude2">Hình thức giao hàng:</td>
            <td>
                <asp:RadioButtonList ID="rblHinhThucGiaoHang" runat="server" ForeColor="Black" OnSelectedIndexChanged="rblHinhThucGiaoHang_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">&nbsp;&nbsp;Giao trực tiếp</asp:ListItem>
                    <asp:ListItem Value="0">&nbsp;&nbsp;Chuyển giao</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
       <tr>
            <td colspan="2" class="colnutlenh">
                <asp:Button ID="btDongY" runat="server" CssClass="btdongy" 
                    onclick="btDongY_Click" Text="Đồng ý" Width="103px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

