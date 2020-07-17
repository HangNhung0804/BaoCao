<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chitiethoa.aspx.cs" Inherits="Chitiethoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .chitiethoa{
            width:750px;
            margin:5px auto;
            border:1px dashed #79B22F;
            background-color:#c7e5f2;
            
        }
        .chitiethoa table{
            width:100%;
        }
        #tenhoa{
            background: linear-gradient(#a5b4c4, #206AB5, #206AB5); 
            font-size:18px;
            font-weight:bold;
            text-align:center;
            color:white;
            height:25px;
            padding-top:3px;
        }
        #hinhhoa {
            width:150px;
        }
        #hinhhoa img{
            width:250px;
            height:300px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin:10px 10px 10px 40px;
        }
        
        #chude{
            font-family:Arial;
            font-size:16px;

        }
       
         #mota{
            font-family:Arial;
            font-size:13px;
            padding-left:20px;
            padding-right:20px;
            text-indent:20px;
            text-align:justify;
         

            
        }
         #mota p{
             margin-top:5px;
         }
         #gia{
             text-align:right;
             padding-right:50px;
             font-family:Tahoma;
             font-size:16px;
             color:red;
             padding-top:20px;
         }
         #datmua{
             text-align:right;
             padding-right:130px;
             padding-top:10px;
             padding-bottom:10px;
             
         }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dlChiTietHoa" runat="server">
        <ItemTemplate>
                <table>
                    <tr>
                        <td id="tenHoa" colspan="2">
                            <asp:Label ID="lblTenhoa" runat="server" Text='<%# Eval("Tenhoa") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td id="hinhhoa" rowspan="3">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images\\Hoa\\"+Eval("Hinhminhhoa") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td id="chude">Chủ đề:
                            <asp:HyperLink ID="hplChude" runat="server" NavigateUrl='<%# "Hoatheochude.aspx?mcd="+Eval("Macd") %>' Text='<%# Eval("Tenchude") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td id="mota">
                            <asp:Label ID="lblMota" runat="server" CssClass="lbmota" Text='<%# "<p>" + Eval("Mota").ToString().Replace("\n","</p><p>") + "</p>" %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="ytytttt" Visible="False"></asp:Label>
                        </td>
                        <td id="gia">Giá bán:
                            <asp:Label ID="lblgiaban" runat="server" Text='<%# Eval("Dongia","{0:#,##0} VNĐ/") + Eval("DonViTinh") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td id="datmua">
                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/chonmua.png" NavigateUrl='<%# "~/Giohang.aspx?ms="+Eval("Mahoa") %>'>HyperLink</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle Font-Bold="True" ForeColor="Navy" BackColor="#FFCC66" />
    </asp:DataList>
</asp:Content>

