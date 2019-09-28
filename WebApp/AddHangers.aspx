<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddHangers.aspx.cs" Inherits="WebApp.AddHangers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="border-bottom-info" style="padding-bottom: 2%;">
        <h4>Add Hangers </h4>
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
            <label for="inputEmail4">Manager ID</label>
            <asp:TextBox runat="server" ID="txtManagerID" class="form-control" placeholder="Manager ID" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Address Line1</label>
            <asp:TextBox runat="server" ID="txtADD" class="form-control" placeholder="Address Line 1" ClientIDMode="Static"></asp:TextBox>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAddress">Address Line2</label>
             <asp:TextBox runat="server" ID="txtaddl" class="form-control" placeholder="Address Line 2" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">City</label>
            <asp:TextBox runat="server" ID="txtcity" placeholder="City" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputPassword4">state</label>
            <asp:TextBox runat="server" ID="txtstate" placeholder="state" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Zip Code</label>
            <asp:TextBox runat="server" ID="txtzipcode" placeholder="zipcode" class="form-control" ClientIDMode="Static">
                </asp:TextBox>
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
    
        <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click" />
</asp:Content>
