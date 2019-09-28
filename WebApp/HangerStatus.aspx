<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HangerStatus.aspx.cs" Inherits="WebApp.HangerStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="gdvData" OnRowCommand="gdvData_RowCommand" AutoGenerateColumns="false" CssClass="table table-responsive-lg">
        <Columns>
       <asp:TemplateField HeaderText="HangerId">
           <ItemTemplate>
                <asp:Label ID="lblhng" runat="server" Text='<%# Eval("Hanger_ID").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
         <asp:TemplateField HeaderText="Manager_Id">
           <ItemTemplate>
                <asp:Label ID="lblmid" runat="server" Text='<%# Eval("Manager_ID").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
             <asp:TemplateField HeaderText="City">
           <ItemTemplate>
                <asp:Label ID="lblcity" runat="server" Text='<%# Eval("City").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
             <asp:TemplateField HeaderText="State"> 
           <ItemTemplate>
                <asp:Label ID="lblstate" runat="server" Text='<%# Eval("State").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
             <asp:TemplateField HeaderText="ZipCode">
           <ItemTemplate>
                <asp:Label ID="lblzip" runat="server" Text='<%# Eval("Zip_Code").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
              <asp:TemplateField HeaderText="Status">
           <ItemTemplate>
                <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("status").ToString() %>'></asp:Label>
           </ItemTemplate>
       </asp:TemplateField>
             <asp:ButtonField HeaderText="Plane Allotment" ButtonType="Button" CommandName="approve" Text="View"/>
            </Columns>
    </asp:GridView>
</asp:Content>

