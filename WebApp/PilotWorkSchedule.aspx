<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PilotWorkSchedule.aspx.cs" Inherits="WebApp.PilotWorkSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">       
      <asp:GridView runat="server" ID="gdvData" AutoGenerateColumns="False" GridLines="None" OnRowEditing="gdvData_RowEditing" OnRowUpdating="gdvData_RowUpdating" OnRowCancelingEdit="gdvData_RowCancelingEdit"  >
             <Columns>
                 <asp:TemplateField HeaderText="Plane Id">
                    <ItemTemplate>
                        <asp:Label ID="lblPlaneId" runat="server" Text='<%# Eval("Plane_ID") %>'></asp:Label>
                    </ItemTemplate>
                     
                     <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="License Number">
                    <ItemTemplate>
                        <asp:Label ID="lblLicense" runat="server" Text='<%# Eval("LicenseNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:TextBox runat="server" ID="txtLicense" Text='<%# Eval("LicenseNumber") %>'></asp:TextBox>
                     </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Departure Location">
                    <ItemTemplate>
                        <asp:Label ID="lblDepartloc" runat="server" Text='<%# Eval("DepartureLocation").ToString() %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                         <asp:TextBox runat="server" ID="txtDepartL" Text='<%# Eval("DepartureLocation") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Deaprture Time">
                    <ItemTemplate>
                        <asp:Label ID="lblDeparttime" runat="server" Text='<%#Eval("DepartureTime").ToString() %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                         <asp:TextBox runat="server" ID="txtDepartT" Text='<%# Eval("DepartureTime") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Arrival Location">
                    <ItemTemplate>
                        <asp:Label ID="lblArrivalloc" runat="server" Text='<%#Eval("ArrivalLocation").ToString()  %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:TextBox runat="server" ID="txtArrL" Text='<%# Eval("ArrivalLocation") %>'></asp:TextBox>
                     </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>              
                <asp:TemplateField HeaderText="Arrival Time">
                    <ItemTemplate>
                        <asp:Label ID="lblArrivaltime" runat="server" Text='<%# Eval("ArrivalTime").ToString() %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:TextBox runat="server" ID="txtArrT" Text='<%# Eval("ArrivalTime") %>'></asp:TextBox>
                     </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>    
                 <asp:CommandField ShowEditButton="true" EditText="Modify" />             
                </Columns>        
        </asp:GridView>

    </form>
</asp:Content>
