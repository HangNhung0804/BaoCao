<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UC/ucSlide.ascx" TagPrefix="uc1" TagName="ucSlide" %>
<%@ Register Src="~/UC/ucHoaMoi1.ascx" TagPrefix="uc1" TagName="ucHoaMoi1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" Runat="Server">
    <uc1:ucSlide runat="server" ID="ucSlide" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucHoaMoi1 runat="server" ID="ucHoaMoi1" />
</asp:Content>

