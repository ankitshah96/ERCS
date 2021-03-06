﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Concession_Request.aspx.cs" Inherits="Delete_Concession_Request" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Concession</title>
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
<body style="height: 227px">
    <form id="form1" runat="server">
    
     <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <div class="inner cover">
      <h3 class="masthead-brand">Delete Concession</h3>
       <ul class="nav masthead-nav" navbar="fixed">
        <li class="active">
              <a href="ConcessionAdminMenu.aspx" target="_parent">Back</a>
            </li> 
            <li class="active">
              <a href="ChangePwdAdmin.aspx" target="_parent">Change &nbsp Password </a>
            </li>
            <li class="active">
              <a href="RoleSelect.aspx" target="_parent" onclick="LinkBtn_Logout_Click">Logout </a>
            </li> 
           <!-- <li class="active">
              <a href="#" target="_blank">About &nbsp ERCS</a>
            </li> -->

            
          </ul>
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
              <div class="jumbotron" 
                
                
                
                style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 250px; left: -22px; width: 799px; border-radius:10px; height: 198px;">
    </div>
    <asp:TextBox ID="Txtsap" runat="server" 
        
                style="z-index: 1; left: 251px; top: 293px; position: absolute; height: 33px; width: 337px;"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" 
        
                style="z-index: 1; left: 69px; top: 286px; position: absolute; font-family:Lucida Calligraphy; font-size: 30px; width: 138px;" 
                Text="Sap Id"></asp:Label>
    <div style="margin-left: 40px">
        <asp:Button ID="Btndelete" runat="server" BackColor="Red" ForeColor="White" class="button1"
            onclick="Btndelete_Click" 
            style="z-index: 1; left: 271px; top: 382px; position: absolute; height: 36px; width: 222px" 
            Text="Delete Pending Requests" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="Txtsap" ErrorMessage="* Sap ID should be of 11 digits" 
            ForeColor="Red" style="z-index: 1; left: 595px; top: 271px; position: absolute; width: 179px; height: 38px;" 
            ValidationExpression="^[0-9]{11}$"> <div class="alert alert-warning" style=" background-color:#f98568; border:Red; color:White; border-radius: 60px;">
    <strong>SAP ID should be of 11 digits only</strong>
  </div></asp:RegularExpressionValidator>
     <asp:Label ID="Lbl3" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 84px; top: 151px; position: absolute;background-color:#f98568; color:White; border-radius: 60px; font-size:large; width: 581px;" 
        Text="*Invalid Sap Id" Visible="False"></asp:Label>
          
        <asp:Label ID="LblResult" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 84px; top: 193px; position: absolute;background-color:green; color:White; border-radius: 60px; font-size:large; width: 581px;" 
        Text="Deleted Successfully" Visible="False"></asp:Label>
        
        </div>
   
    
           
      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
                                     
          <p style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © AVD Team~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
</form>
</body>
</html>
