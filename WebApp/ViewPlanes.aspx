<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPlanes.aspx.cs" Inherits="WebApp.ViewPlanes1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="gdvView" AutoGenerateColumns="false" OnRowCommand="gdvView_RowCommand" CssClass="table table-responsive-lg">
            <Columns>
                <asp:TemplateField HeaderText="Plane ID">
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
                        <asp:Label ID="lblfname" runat="server" Text='<%# Eval("Owner_first_Name").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Owner Last Name">
                    <ItemTemplate>
                        <asp:Label ID="lblsname" runat="server" Text='<%# Eval("Owner_Last_name").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Owner Contact Number">
                    <ItemTemplate>
                        <asp:Label ID="lblCon" runat="server" Text='<%#Int64.Parse(Eval("Owner_Contact_number").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Owner Email">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Owner_Email").ToString()%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Plane Type">
                    <ItemTemplate>
                        <asp:Label ID="lblpltype" runat="server" Text='<%#(Eval("Plane_Type").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Plane capacity">
                    <ItemTemplate>
                        <asp:Label ID="lblplcap" runat="server" Text='<%#Int16.Parse(Eval("Plane_capacity").ToString())%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
             
            </Columns>
        </asp:GridView>
</asp:Content>
