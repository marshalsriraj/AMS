<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageHangers.aspx.cs" Inherits="WebApp.ManageHangers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <asp:GridView runat="server" ID="gdvHangers" AutoGenerateColumns="false" OnRowCommand="gdvHangers_RowCommand" CssClass="table table-responsive-lg">
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
                        <asp:TextBox ID="lbladd" runat="server" Text='<%# Eval("Manager_Address_Line_1").ToString() %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Manager Address Line 2">
                    <ItemTemplate>
                        <asp:TextBox ID="lbladdl" runat="server" Text='<%# Eval("Manager_Address_Line_2").ToString() %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:TextBox ID="lblcity" runat="server" Text='<%#Eval("City").ToString()%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <ItemTemplate>
                        <asp:TextBox ID="lblstate" runat="server" Text='<%#(Eval("State").ToString())%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip Code">
                    <ItemTemplate>
                        <asp:TextBox ID="lblzipcode" runat="server" Text='<%#Int64.Parse((Eval("Zip_Code").ToString()))%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:ButtonField HeaderText="Update" ButtonType="Button" CommandName="approve" Text="Update"  />
                
            </Columns>
        </asp:GridView>
</asp:Content>
