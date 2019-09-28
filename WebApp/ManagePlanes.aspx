<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePlanes.aspx.cs" Inherits="WebApp.ViewPlanes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:GridView runat="server" ID="gdvPlanes" AutoGenerateColumns="false" OnRowCommand="gdvPlanes_RowCommand" CssClass="table table-responsive-lg">
            <Columns>
                <asp:TemplateField HeaderText="#">
                    <ItemTemplate>
                        <asp:Label ID="lblPId" runat="server" Text='<%#Int32.Parse(Eval("Plane_ID").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Owner ID">
                    <ItemTemplate>
                        <asp:Label ID="lblOId" runat="server" Text='<%#Int32.Parse(Eval("Owner_ID").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Owner First Name">
                    <ItemTemplate>
                        <asp:TextBox ID="lblfname" runat="server" Text='<%# Eval("Owner_first_Name").ToString() %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Owner Last Name">
                    <ItemTemplate>
                        <asp:TextBox ID="lblsname" runat="server" Text='<%# Eval("Owner_Last_name").ToString() %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Owner Contact Number">
                    <ItemTemplate>
                        <asp:TextBox ID="lblCon" runat="server" Text='<%#Int64.Parse(Eval("Owner_Contact_number").ToString())%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Owner Email">
                    <ItemTemplate>
                        <asp:TextBox ID="lblemail" runat="server" Text='<%#Eval("Owner_Email").ToString()%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Plane Type">
                    <ItemTemplate>
                        <asp:Label ID="lblpltype" runat="server" Text='<%#(Eval("Plane_Type").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Plane Capacity">
                    <ItemTemplate>
                        <asp:Label ID="lblplcap" runat="server" Text='<%#Int16.Parse(Eval("Plane_capacity").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
                 <asp:ButtonField HeaderText="Update" ButtonType="Button" CommandName="approve" Text="Update"  />
            </Columns>
        </asp:GridView>
</asp:Content>
