<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Student_Details.aspx.cs" Inherits="Update_Student_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Student Details Update</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />  
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <!-- <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
</SCRIPT> 
onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload=""
 -->

 <meta charset="utf-8">
    <meta name="robots" content="noindex">

    
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
    


a,
a:focus,
a:hover {
  color: #fff;
}

/* Custom default button */
.btn-default,
.btn-default:hover,
.btn-default:focus {
  color: #333;
  text-shadow: none; /* Prevent inheritence from `body` */
  background-color: #fff;
  border: 1px solid #fff;
}


/*
 * Base structure
 */

html,
body {
/*css for full size background image*/
    background: url(images/add.png) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
  height: 100%;
  background-color: #060;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 3px rgba(0,0,0,.5);
 
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 100%;
  height: 100%; /* For at least Firefox */
  min-height: 100%;
  -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
          box-shadow: inset 0 0 100px rgba(0,0,0,.5);
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}

/* Padding for spacing */
.inner {
  padding: 30px;
}


/*
 * Header
 */
.masthead-brand {
  margin-top: 10px;
  margin-bottom: 10px;
}

.masthead-nav > li {
  display: inline-block;
}
.masthead-nav > li + li {
  margin-left: 20px;
}
.masthead-nav > li > a {
  padding-right: 0;
  padding-left: 0;
  font-size: 16px;
  font-weight: bold;
  color: #fff; /* IE8 proofing */
  color: rgba(255,255,255,.95);
  border-bottom: 2px solid transparent;
}
.masthead-nav > li > a:hover,
.masthead-nav > li > a:focus {
  background-color: transparent;
  border-bottom-color: #a9a9a9;
  border-bottom-color: rgba(255,255,255,.25);
}
.masthead-nav > .active > a,
.masthead-nav > .active > a:hover,
.masthead-nav > .active > a:focus {
  color: #fff;
  border-bottom-color: #fff;
}

@media (min-width: 768px) {
  .masthead-brand {
    float: left;
  }
  .masthead-nav {
    float: right;
  }
}


/*
 * Cover
 */

.cover {
  padding: 0 20px;
}
.cover .btn-lg {
  padding: 10px 20px;
  font-weight: bold;
}


/*
 * Footer
 */

.mastfoot {
  color: #999; /* IE8 proofing */
  color: rgba(255,255,255,.5);
}


/*
 * Affix and center
 */

@media (min-width: 768px) {
  /* Pull out the header and footer */
  .masthead {
    position: fixed;
    top: 0;
  }
  .mastfoot {
    position: fixed;
    bottom: 0;
  }
  /* Start the vertical centering */
  .site-wrapper-inner {
    vertical-align: middle;
  }
  /* Handle the widths */
  .masthead,
  .mastfoot,
  .cover-container {
    width: 100%; /* Must be percentage or pixels for horizontal alignment */
  }
}

@media (min-width: 992px) {
  .masthead,
  .mastfoot,
  .cover-container {
    width: 700px;
  }
}

     .button1:hover
 {
     background-color:Black;
     opacity:0.5;
     color:White;
 }
 log1:hover
 {
     background-color:Black;
     opacity:0.5;
     color:White;
     }

    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <div class="inner cover">
      <h3 class="masthead-brand">Student Details Update</h3>
       <ul class="nav masthead-nav" navbar="fixed">
               <li class="active">
              <a href="ConcessionAdminMenu.aspx" target="_parent">Back </a>
            </li> 
            <li class="active">
              <a href="ChangePwdAdmin.aspx" target="_parent">Change &nbsp Password </a>
            </li> 
             <li class="active">
              <a href="RoleSelect.aspx" target="_parent" onclick="LinkBtn_Logout_Click">Logout </a>
            </li> 
           
            <!--<li class="active">
              <a href="#" target="_blank">About &nbsp ERCS</a>
            </li>--> 

            
          </ul>
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
              
                  <asp:Panel ID="Panel2" Visible="false" class="jumbotron" runat="server" 
                style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 175px; left: -8px; width:800px; border-radius:10px; height: 200px;">
                </asp:Panel>
                <asp:Panel ID="Panel1" Visible="false" class="jumbotron" runat="server" style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 94px; left: -114px; width: 934px; border-radius:10px; height: 447px;">
                </asp:Panel>
                <asp:Label ID="LB" runat="server" 
        style="z-index: 1; left: 139px; top: 263px; position: absolute; margin-top: 1px; font-family:Lucida Calligraphy; font-size:larger;" 
        Text="Enter the SAP Id"></asp:Label>
               <asp:TextBox ID="TB" runat="server" 
            
                
                
                
                style="z-index: 1; left: 336px; top: 258px; position: absolute; right: 479px; width: 290px; height: 34px; border-radius:05px;"></asp:TextBox>
    <asp:Label ID="Lblmname" runat="server" 
        style="z-index: 1; left: 409px; top: 103px; position: absolute; margin-top: 1px;" 
        Text="Middle"></asp:Label>
    <asp:Label ID="LblBranch" runat="server" 
        style="z-index: 1; left: 46px; top: 241px; position: absolute" 
        Text="Branch"></asp:Label>
    <asp:Label ID="Lblsap" runat="server" 
        style="z-index: 1; left: 46px; top: 177px; position: absolute" 
        Text="SAP ID"></asp:Label>
    <asp:Label ID="Lblfull" runat="server" 
        style="z-index: 1; left: 29px; top: 127px; position: absolute" 
        Text="Full Name"></asp:Label>
    <asp:Label ID="Lbladdress" runat="server" 
        style="z-index: 1; left: 39px; top: 301px; position: absolute; right: 1014px;" 
        Text="Address"></asp:Label>
    <asp:Label ID="Lblemailid" runat="server" 
        
        style="z-index: 1; left: 403px; position: absolute; top: 178px; height: 19px;" 
        Text="Email Id"></asp:Label>
    <asp:Label ID="Lbldob" runat="server" 
        style="z-index: 1; left: 398px; top: 398px; position: absolute" 
        Text="Date of Birth"></asp:Label>
    <asp:Label ID="Lbllname" runat="server" 
        style="z-index: 1; left: 611px; top: 103px; position: absolute; bottom: 262px" 
        Text="Last"></asp:Label>
         <asp:Label ID="Lblfname" runat="server" 
        style="z-index: 1; left: 235px; top: 104px; position: absolute; bottom: 261px" 
        Text="First"></asp:Label>
    <asp:Label ID="Lblsemester" runat="server" 
        style="z-index: 1; left: 400px; top: 241px; position: absolute" 
        Text="Semester"></asp:Label>
    <asp:Label ID="Lblgender" runat="server" 
        style="z-index: 1; left: 52px; top: 400px; position: absolute; right: 1005px;" 
        Text="Gender"></asp:Label>
    <p>
        <asp:Button ID="Btnupdate" runat="server" class="button1"
            style="z-index: 1; left: 299px; top: 478px; position: absolute; height: 35px; width: 170px; margin-top: 0px" 
            Text="Update Student details" onclick="Btnupdate_Click" />
    </p>

    <asp:RequiredFieldValidator ID="R1" runat="server" 
            ControlToValidate="TxtBoxfname" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R2" runat="server" 
            ControlToValidate="TxtBoxlname" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R3" runat="server" 
            ControlToValidate="TxtBoxmname" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R4" runat="server" 
            ControlToValidate="TxtBoxaddr" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R5" runat="server" 
            ControlToValidate="TxtBoxbranch" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R6" runat="server" 
            ControlToValidate="TxtBoxsemester" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>


   <asp:RequiredFieldValidator ID="R7" runat="server" 
            ControlToValidate="TxtBoxgender" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="R8" runat="server" 
            ControlToValidate="TxtBoxdob" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Visible="false"
            ControlToValidate="TxtBoxsap" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="R9" runat="server" 
            ControlToValidate="TxtBoxemail" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"                     
              
                style="z-index: 1; left: 38px; top: 548px; position: absolute; width: 705px; height: 42px;"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Form is incomplete!</strong></div></asp:RequiredFieldValidator>
          <p>  <asp:TextBox ID="TxtBoxfname" runat="server" 
            style="z-index: 1; left: 137px; top: 125px; position: absolute; right: 748px" 
            Width="220px"></asp:TextBox>
            </p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TB" ErrorMessage="Sap ID should be of 11 digits" 
            ForeColor="Red" style="z-index: 1; left: 168px; top: 195px; position: absolute; width: 458px;" 
            ValidationExpression="^[0-9]{11}$"> <div class="alert alert-warning" style=" background-color:#f98568; border:Red; color:White; border-radius: 60px;">
    <strong>SAP ID should be of 11 digits only</strong> </div></asp:RegularExpressionValidator>
   
    <asp:TextBox ID="TxtBoxsemester" runat="server" 
        style="z-index: 1; left: 513px; top: 237px; position: absolute" 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxmname" runat="server" 
        style="z-index: 1; left: 374px; top: 126px; position: absolute; width: 108px;" ></asp:TextBox>
    <asp:TextBox ID="TxtBoxdob" runat="server" 
        style="z-index: 1; left: 533px; top: 396px; position: absolute" 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxsap" runat="server" 
        style="z-index: 1; left: 136px; top: 175px; position: absolute" 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxemail" runat="server" 
        style="z-index: 1; left: 513px; top: 176px; position: absolute; " 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxaddr" runat="server" 
        style="z-index: 1; left: 134px; top: 303px; position: absolute; width: 608px; height: 54px;" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:TextBox ID="TxtBoxgender" runat="server" 
        style="z-index: 1; left: 137px; top: 395px; position: absolute" 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxbranch" runat="server" 
        style="z-index: 1; left: 134px; top: 242px; position: absolute; margin-right: 3px" 
        Width="220px"></asp:TextBox>
    <asp:TextBox ID="TxtBoxlname" runat="server" 
        style="z-index: 1; top: 125px; position: absolute; left: 513px;" 
        Width="220px"></asp:TextBox>
    
    <asp:Label ID="LblResult" runat="server" 
        
                style="z-index: 1; left: 67px; top: 127px; position: absolute; width: 655px; height: 40px;border:white; background-color:Green; color:White; border-radius:60px; font-size:large" 
                Visible="False"></asp:Label>
    <p>
        &nbsp;</p>
    <asp:Label ID="Lbl3" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 394px; top: 315px; position: absolute; background-color:#f98568; color:White; border-radius: 60px; font-size:large; width: 150px;" 
        Text="Invalid Sap Id" Visible="False"></asp:Label>
       <!--  <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="log1"
        
                style="z-index: 1; left: 361px; top: 557px; position: absolute; background-color: transparent; border:Black;">Logout</asp:LinkButton>-->
              
        </div>
     
           
      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
                                     
          <p style="color:White;"></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © AVD Team~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
       
    </form>
</body>
</html>
