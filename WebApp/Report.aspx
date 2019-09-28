<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WebApp.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="border-bottom-info" style="padding-bottom: 2%;">
        <h4>Summery Report </h4>
    </div>
    <hr />
    <div class="form-group">
    <label for="exampleInputEmail1">Report Type</label>
     <asp:DropDownList runat="server" ID="ddlType" CssClass="form-control">
          <asp:ListItem Value="" Text="--select--"></asp:ListItem>
          <asp:ListItem Value="Plane" Text="Plane"></asp:ListItem>
          <asp:ListItem Value="Hanger" Text="Hanger"></asp:ListItem>
          <asp:ListItem Value="Pilot" Text="Pilot"></asp:ListItem>
      </asp:DropDownList>       
   </div>
     <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
   
    <div class="row" style="height:250px; overflow-y:scroll;margin-top:3% !important;">
        <asp:GridView runat="server" ID="gdvData" CssClass="table table-responsive"></asp:GridView>        
    </div>
    <asp:Button runat="server" ID="btnExcel" Text="Export to Excel" CssClass="btn btn-primary" OnClick="btnExcel_Click" />
</asp:Content>
