<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewHangers.aspx.cs" Inherits="WebApp.ViewHangers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView runat="server" ID="gdvViewHangers" AutoGenerateColumns="false" OnRowCommand="gdvViewHangers_RowCommand" CssClass="table table-responsive-lg">
            <Columns>      
                <asp:TemplateField HeaderText="Hanger ID">
                    <ItemTemplate>
                        <asp:Label ID="lblhid" runat="server" Text='<%# Eval("Hanger_ID").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>       
                <asp:TemplateField HeaderText="Manager ID">
                    <ItemTemplate>
                        <asp:Label ID="lblMID" runat="server" Text='<%# Eval("Manager_ID").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Manager Address Line 1">
                    <ItemTemplate>
                        <asp:Label ID="lbladd" runat="server" Text='<%# Eval("Manager_Address_Line_1").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Manager Address Line 2">
                    <ItemTemplate>
                        <asp:Label ID="lbladdl" runat="server" Text='<%# Eval("Manager_Address_Line_2").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label ID="lblcity" runat="server" Text='<%#Eval("City").ToString()%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <ItemTemplate>
                        <asp:Label ID="lblstate" runat="server" Text='<%#(Eval("State").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip Code">
                    <ItemTemplate>
                        <asp:Label ID="lblzipcode" runat="server" Text='<%#Int64.Parse((Eval("Zip_Code").ToString()))%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
           
                
            </Columns>
        </asp:GridView>
</asp:Content>
