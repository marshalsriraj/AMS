<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPlanes.aspx.cs" Inherits="WebApp.AddPlanes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="border-bottom-info" style="padding-bottom: 2%;">
        <h4>Add Planes </h4>
        <%--<span style="float:right;">
            <a href="vehicleCrud" class="btn btn-primary btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-arrow-left"></i>
                    </span>
                    <span class="text">Go Back</span>
            </a>
        </span>--%>
    </div>
    <hr />
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Owner ID</label>
            <asp:TextBox runat="server" ID="txtOwnerID" class="form-control" placeholder="Owner ID" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">First Name</label>
            <asp:TextBox runat="server" ID="txtFirstName" class="form-control" placeholder="First Name" ClientIDMode="Static"></asp:TextBox>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAddress">Last Name</label>
             <asp:TextBox runat="server" ID="txtLastName" class="form-control" placeholder="Last Name" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Contact Number</label>
            <asp:TextBox runat="server" ID="txtContactNumber" placeholder="Contact Number" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputPassword4">E-Mail</label>
            <asp:TextBox runat="server" ID="txtemail" placeholder="E-Mail" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Plane Type</label>
            <asp:DropDownList runat="server" ID="txtplntype"  class="form-control" ClientIDMode="Static">
                <asp:ListItem Value="select" Text="--select--"></asp:ListItem>
                <asp:ListItem Value="Business" Text="Business"></asp:ListItem>
                <asp:ListItem Value="Economy" Text="Economy"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-row">
       <div class="form-group col-md-6">
            <label for="inputEmail4">Plane Capacity</label>
            <asp:TextBox runat="server" ID="txtplncap" class="form-control" placeholder="Plane Capacity" ClientIDMode="Static"></asp:TextBox>
       </div>
        </div>
        <%--<div class="form-group col-md-6">
            <label for="inputPassword4">Service Due Date</label>
            <asp:TextBox runat="server" ID="txtServiceDueDate" class="form-control" placeholder="Due Date" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>   
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                Agree <a href="#">Terms & Conditions</a>
            </label>
        </div>
    </div>--%>
    
        <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click"/>
           
</asp:Content>
