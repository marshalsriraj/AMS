<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="monthlyschedule.aspx.cs" Inherits="WebApp.monthlyschedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gvDays" runat="server"></asp:GridView>
    <asp:DropDownList runat="server" ID="ddlYear"  ></asp:DropDownList>
    <asp:DropDownList runat="server" ID="ddlMonth"  ></asp:DropDownList>
</asp:Content>
