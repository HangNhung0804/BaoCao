<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Xacnhandonhang.aspx.cs" Inherits="Xacnhandonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" style="font-family: 'Times New Roman', Times, serif">
        div#xacnhan{
            width:600px;
            margin:50px auto;
            border:1px dotted #0094ff;
            border-radius:10px;
            height:300px;
            padding:50px;
            background-color:#ffffff;
        }
        div#xacnhan p{
            color:#206AB5;
            font-family:'Times New Roman';
            font-size:18px;
            text-indent:10px;
            margin-bottom:10px;
            margin-bottom:10px;
        }
        div#xacnhan p#vetrangchu{
            text-align:right;
        }
        div#xacnhan p#vetrangchu a{
            font-style:italic;
            text-decoration:underline;
            font-size:14pt;
            font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
    <p>
        ,</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="xacnhan">
        <p id="tieude">Kính chào quý khách!</p>
        <p>Thông tin đơn đặt hàng của quý khách đã được chúng tôi ghi nhận.<br />
           Chúng tôi sẽ phản hồi thông tin sớm nhất có thể tới quý khách.
        </p>
        <p>Công ty chúng tôi rất hân hạnh được phục vụ quý khách. <br />
            Khi cần quý khách có thể liên hệ qua 0393.920.902</p>
        <p>Xin cám ơn.</p>
        <p id="vetrangchu"><a href="Default.aspx">Về trang chủ</a></p>
     </div>
</asp:Content>

