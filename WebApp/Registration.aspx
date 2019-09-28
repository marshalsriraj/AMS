<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <style>
        .container a
        {
           color:#FF1493 !important;
        }
        .btn-primary
        {
            background-color:#FF1493 !important;
            border-color:#fff !important;
        }
        .btn-primary:hover
        {
            background-color:#fff !important;
            border-color:#FF1493 !important;
            color:#FF1493 !important;
        }
        .navbar-laravel
        {
            border-bottom:1px solid #FF1493;
            border-bottom-color:#FF1493 !important;
        }
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function ErrFunction(message) {
                swal({   
                    title:message,
                    text: "",
                   icon: "error",
                    button: "Ok",
                    html: true
                });
          
        }
        function SuccessFunction(message) {
                swal({   
                    title:message,
                    text: "",
                   icon: "success",
                    button: "Ok",
                html: true 
                });
          
        }
    </script>
    <script src="Scripts/Script.js"></script>
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="#">Airport Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
               
            </ul>

        </div>
    </div>
</nav>
    <form id="form1" runat="server">
                    <div id="divRole">

                <article>

                    <label style="font-size: 18px; margin-left: 7%;"><b>Please select your Role!!</b></label>

                    <asp:Table runat="server" ID="tblLogin" CellSpacing="20">

                        <asp:TableRow>

                            <asp:TableCell>

                                <asp:DropDownList runat="server" ID="ddlList" Width="300px" Height="30px" Style="border-radius: 5px" required="required" autofocus="autofocus"  OnChange="FnValidate()">

                                    <asp:ListItem Value="Select">-----Select-----</asp:ListItem>

                                    <asp:ListItem Value="1">Super Admin</asp:ListItem>

                                    <asp:ListItem Value="2">Admin</asp:ListItem>

                                    <asp:ListItem Value="3">Manager</asp:ListItem>

                                    <asp:ListItem Value="4">Pilot</asp:ListItem>

                                </asp:DropDownList>

                            </asp:TableCell>

                        </asp:TableRow>

                    </asp:Table>



                </article>

            </div>
        <div runat="server" id="RegSuperadmin" style="display: none;">
               
               </div>
            <div runat="server" id="RegAdmin" style="display: none;">
               
                <main class="login-form"  style="margin-top:5% !important;">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    
        <div class="form-group row">
                                    <label for="txtusername" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="User Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

        <div class="form-group row">
                                    <label for="txtFirstName" class="col-md-4 col-form-label text-md-right">First Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtLastName" class="col-md-4 col-form-label text-md-right">Last Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"
                                            placeholder="Last Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtAge" class="col-md-4 col-form-label text-md-right"> Age </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder=" Age " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtGender" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="txtGender" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="" Text="--Select Gender--"></asp:ListItem>
                                            <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                            <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
         <div class="form-group row">
                                    <label for="txtDOB" class="col-md-4 col-form-label text-md-right"> DateofBirth </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" placeholder=" DateofBirth " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
          <div class="form-group row">
                                    <label for="txtCN" class="col-md-4 col-form-label text-md-right"> Contact Number </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtCN" runat="server" CssClass="form-control" placeholder=" Contact Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtALTcn" class="col-md-4 col-form-label text-md-right">Alternate Contact Number </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtALTcn" runat="server" CssClass="form-control" placeholder=" Alternate Contact Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtEmail" class="col-md-4 col-form-label text-md-right"> E-Mail </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-Mail " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
                     <div class="form-group row">
                                    <label for="txtPwd" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" placeholder="Password *" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>


 <div class="col-md-6 offset-md-4">
                                    <asp:Button runat="server" ID="btnLogin" Text="Register" class="btn btn-primary" OnClick="btnLogin_Click"
                                        OnClientClick="return admin_validate()" />
                                    </div>

                </div>

                 </div>

            </div>
        </div>
                    </main>
    </div>
         <div runat="server" id="RegManager" style="display: none;">
               
                <main class="login-form"  style="margin-top:5% !important;">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    
        <div class="form-group row">
                                    <label for="txtusernam" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtusernam" runat="server" CssClass="form-control" placeholder="User Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

        <div class="form-group row">
                                    <label for="txtMFname" class="col-md-4 col-form-label text-md-right">First Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMFname" runat="server" CssClass="form-control" placeholder="First Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtMLname" class="col-md-4 col-form-label text-md-right">Last Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMLname" runat="server" CssClass="form-control"
                                            placeholder="Last Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtMage" class="col-md-4 col-form-label text-md-right"> Age </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMage" runat="server" CssClass="form-control" placeholder=" Age " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="ddlMGender" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="ddlMGender" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="" Text="--Select Gender--"></asp:ListItem>
                                            <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                            <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
         <div class="form-group row">
                                    <label for="txtMDOB" class="col-md-4 col-form-label text-md-right"> DateofBirth </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMDOB" runat="server" CssClass="form-control" placeholder=" DateofBirth " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
          <div class="form-group row">
                                    <label for="txtMCN" class="col-md-4 col-form-label text-md-right"> Contact Number </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMCN" runat="server" CssClass="form-control" placeholder=" Contact Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtACN" class="col-md-4 col-form-label text-md-right">Alternate Contact Number </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtACN" runat="server" CssClass="form-control" placeholder=" Alternate Contact Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtMEmail" class="col-md-4 col-form-label text-md-right"> E-Mail </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMEmail" runat="server" CssClass="form-control" placeholder="E-Mail " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
                     <div class="form-group row">
                                    <label for="txtMPwd" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtMPwd" runat="server" CssClass="form-control" placeholder="Password *" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>


 <div class="col-md-6 offset-md-4">
                                    <asp:Button runat="server" ID="btnlog" Text="Register" class="btn btn-primary" OnClick="btnlog_Click"
                                        OnClientClick="return manager_validate()" />
                                    </div>

                </div>

                 </div>

            </div>
        </div>
                    </main>
    </div>

         <div runat="server" id="RegPilot" style="display: none;">
               
                <main class="login-form"  style="margin-top:5% !important;">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">

                     <div class="form-group row">
                                    <label for="txtusernamee" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtusernamee" runat="server" CssClass="form-control" placeholder="User Name " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
                    
        <div class="form-group row">
                                    <label for="txtPLno" class="col-md-4 col-form-label text-md-right">License Number</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtPLno" runat="server" CssClass="form-control" placeholder="License Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

        <div class="form-group row">
                                    <label for="txtAddressLine" class="col-md-4 col-form-label text-md-right">Address Line 1</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtAddressLine" runat="server" CssClass="form-control" placeholder="Address Line 1 " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtAddress" class="col-md-4 col-form-label text-md-right">Address Line 2</label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"
                                            placeholder="Address Line 2 " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="txtCity" class="col-md-4 col-form-label text-md-right"> City </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder=" City " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
         <div class="form-group row">
                                    <label for="txtState" class="col-md-4 col-form-label text-md-right"> State </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder=" State " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
          <div class="form-group row">
                                    <label for="txtZip" class="col-md-4 col-form-label text-md-right"> Zip Code </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" placeholder=" Zip Code " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtSSN" class="col-md-4 col-form-label text-md-right">SSN Number </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtSSN" runat="server" CssClass="form-control" placeholder=" SSN Number " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
        <div class="form-group row">
                                    <label for="txtPPwd" class="col-md-4 col-form-label text-md-right"> Password </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtPPwd" runat="server" CssClass="form-control" placeholder="Password " ClientIDMode="Static"></asp:TextBox>
                                    </div>
                                </div>
 <div class="col-md-6 offset-md-4">
                                    <asp:Button runat="server" ID="btnlogi" Text="Register" class="btn btn-primary" OnClick="btnlogi_Click"
                                        OnClientClick="return  pilot_validate()" />
                                    </div>

                </div>

                 </div>

            </div>
        </div>
                    </main>
    </div>




        </form>
</body>
</html>
