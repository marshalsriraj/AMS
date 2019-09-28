<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApproveUsers.aspx.cs" Inherits="WebApp.ApproveUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top:5% !important">
        <asp:GridView runat="server" ID="gdvApprovalData" class="table table-responsive" AutoGenerateColumns="false"
            OnRowCommand="gdvApprovalData_RowCommand">
          <Columns>
              <asp:TemplateField HeaderText="#">
                  <ItemTemplate>
                      <asp:Label runat="server" ID="lblId" Text='<%#Eval("UID") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Role">
                  <ItemTemplate>
                      <asp:Label runat="server" ID="lblRoleid" Text='<%# Eval("RoleID").ToString()=="1"?"Super Admin":(Eval("RoleID").ToString()=="2"?"Admin":(Eval("RoleID").ToString()=="3"?"Manager":"Pilot")) %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Name">
                  <ItemTemplate>
                      <asp:Label runat="server" ID="lblName" Text='<%#Eval("FirstName").ToString()+" "+ Eval("LastName").ToString() %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblMobile" Text='<%#Eval("ContactNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="E-Mail">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblEmail" Text='<%#Eval("EMail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
              <asp:ButtonField HeaderText="Approve" ButtonType="Image" ImageUrl="images/ok.png" CommandName="approve" />
              <asp:ButtonField HeaderText="Reject" ButtonType="Image" ImageUrl="images/delete.png" CommandName="reject" />
          </Columns>
        </asp:GridView>
   </div>
</asp:Content>
