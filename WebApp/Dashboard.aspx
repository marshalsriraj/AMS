<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApp.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
         .wrimagecard{	
	margin-top: 0%;
    margin-bottom: 1.5rem;
    text-align: left;
    position: relative;
    background: #fff;
    box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
    border-radius: 4px;
    transition: all 0.3s ease;
}
.wrimagecard .fa{
	position: relative;
    font-size: 70px;
}
.wrimagecard-topimage_header{
padding: 20px;
}
a.wrimagecard:hover, .wrimagecard-topimage:hover {
    box-shadow: 2px 4px 8px 0px rgba(46,61,73,0.2);
}
.wrimagecard-topimage a {
    width: 100%;
    height: 100%;
    display: block;
}
.wrimagecard-topimage_title {
    padding: 20px 24px;
    height: 80px;
    padding-bottom: 0.75rem;
    position: relative;
}
.wrimagecard-topimage a {
    border-bottom: none;
    text-decoration: none;
    color: #525c65;
    transition: color 0.3s ease;
}
    </style>
<div class="container-fluid">
	<div class="row">
	<div class="col-md-3 col-sm-4">
	<div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color:rgba(187, 120, 36, 0.1) ">
            <center><i class="fa fa-plane" style="color:#BB7824"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Planes Available
            <div class="pull-right badge">
                <asp:Label runat="server" ID="lblPlanesCount"></asp:Label>
            </div></h4>
          </div>
        </a>
      </div>
      </div>
    <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color: rgba(22, 160, 133, 0.1)">
            <center><i class = "fa fa-road" style="color:#16A085"></i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Hangers Available
            <div class="pull-right badge" id="WrControls">
                <asp:Label runat="server" ID="lblHangersCount"></asp:Label>
            </div></h4>
          </div>
        </a>
      </div>
</div>
<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
            <div class="wrimagecard-topimage_header" style="background-color: rgba(121, 90, 71, 0.1)">
           <center><i class="fa fa-user" style="color:lightseagreen"> </i></center> 
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Pilots Available
            <div class="pull-right badge" id="WrNavigation">
                <asp:Label runat="server" ID="lblPilotsCount"></asp:Label>
            </div></h4>
          </div>
          
        </a>
      </div>
	</div>
        <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="ApproveUsers">
            <div class="wrimagecard-topimage_header" style="background-color:azure">
           <center><i class="fa fa-users" style="color:cornflowerblue;"> </i></center> 
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Approve Users
            <div class="pull-right badge" id="WrNavigation"></div></h4>
          </div>
          
        </a>
      </div>
	</div>
       <%-- <div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(250, 188, 9, 0.1)">
             <center><i class="fa fa-info-circle" style="color:#fabc09"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Information
            <div class="pull-right badge" id="WrInformation"></div></h4>
          </div>
         
        </a>
      </div>
	</div>
	<div class="col-md-3 col-sm-4">
      <div class="wrimagecard wrimagecard-topimage">
          <a href="#">
          <div class="wrimagecard-topimage_header" style="background-color:  rgba(51, 105, 232, 0.1)">
             <center><i class="fa fa-table" style="color:#3369e8"> </i></center>
          </div>
          <div class="wrimagecard-topimage_title">
            <h4>Help
            <div class="pull-right badge" id="WrGridSystem"></div></h4>
          </div>
          
        </a>
      </div>
	</div>--%>
	
	<div>
        <marquee direction="right" scrollamount="10">            
            <img src="https://png.pngtree.com/svg/20170226/fly_894020.png" height="150" width="150" />
        </marquee>
	</div>
	
</div>
</div>


</asp:Content>
