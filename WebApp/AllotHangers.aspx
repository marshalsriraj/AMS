<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllotHangers.aspx.cs" Inherits="WebApp.AllotHangers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div id="rows">--%>
           <%-- <div  id="left">--%>
               <label>Hanger-ID:<asp:DropDownList runat="server" ID="ddlhanger" Visible="true" CssClass="form-control" >
                    <asp:ListItem Text="select" Value="1"></asp:ListItem>
                </asp:DropDownList>    
                   </label>        
        <%--   </div>--%>



          <%--  <div id="right">--%>
    
               <label>Plane-ID:<asp:DropDownList runat="server" ID="ddlplane" Visible="true" CssClass="form-control"  >
                    <asp:ListItem Text="select" Value="1"></asp:ListItem>
                </asp:DropDownList> 
                   </label>  <br />  
         <%-- </div>--%>
       <%-- </div>--%>
    <div class="button">
    <asp:Button runat="server" ID="btnallot"  Text="ALLOT" OnClick="btnallot_Click"  />
        </div>
</asp:Content>
