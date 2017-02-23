<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMINSTRATOR</title>
     <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />  
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <!-- <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() { windozw.history.forward(); }
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
    background: url(images/aa.png) no-repeat center center fixed; 
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

          .style1
          {
              font-size: 50px;
          }

     </style>
   
</head>
<body  style="height: 430px; width: 1300px; position: relative;">
    <form id="form1" runat="server">
        
    
  <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <h1 style="color:white; font-family:Lucida Calligraphy; font-size: xx-large;" class="style1">
                    &nbsp;&nbsp;&nbsp; <span class="style1">&nbsp;Administrator Login</span>
                </h1>
         <h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2 style="color:Black; font-family:Lucida Calligraphy; font-size: xx-large;">
       <div class="alert alert-info" 
              style="position:absolute; background-color: green; color:White; border:Green; top: 258px; left: 121px; width: 568px;">
    <strong>Enter your Admin Login</strong></div></h2>
    <input  style="position:absolute; top: 383px; left: 221px; width: 377px; height: 41px;" 
              type="text" runat="server" id="Admin" name="Admin" 
              placeholder="Enter your Admin ID" />
    
        
        <asp:Button ID="Button1" runat="server" BackColor="#4D90FE" Font-Size="Large" 
            ForeColor="White" onclick="Button1_Click" 
            style="z-index: 1; left: 266px; top: 451px; position: absolute; width: 269px; height: 38px" 
            Text="Next" />
        &nbsp;&nbsp;&nbsp;&nbsp;
    
        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="Admin" ErrorMessage="* Please Enter your Sap Id" 
        ForeColor="Red" 
        
              style="z-index: 1; left: 654px; top: 376px; position: absolute; width: 235px; height: 72px;"><div class="alert alert-danger" style=" background-color:#f98568; color:White; border-radius: 60px; ">
  <strong>Please enter your SAP ID</strong> 
</div></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Admin" ErrorMessage="* Sap Id shoul be of 11 digits only." 
        ForeColor="Red" 
        style="z-index: 1; left: 656px; top: 377px; position: absolute; width: 226px" 
        ValidationExpression="^[0-9]{11}$"><div class="alert alert-danger" style=" background-color:#f98568; color:White; border-radius: 60px; ">
  <strong> SAP ID is of 11 digits only</strong> 
</div></asp:RegularExpressionValidator>
    <p>
     <asp:Label ID="Lbl3" runat="server" 
            style="z-index: 1; left: 195px; top: 523px; position: absolute; height: 24px; width: 420px; color:White; background-color:#58BF08; border-radius:30px;" 
            Text="Label" Visible="False"></asp:Label>      
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="z-index: 1; left: 224px; top: 366px; position: absolute; height: 52px; width: 374px" 
        Visible="False">
        <asp:ListItem>-Choose Admin Type-</asp:ListItem>
        <asp:ListItem Value="railway">Railway Concession Admin</asp:ListItem>
        <asp:ListItem Value="result">Exam Results Admin</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" ForeColor="White" 
        style="z-index: 1; left: 122px; top: 267px; position: absolute; width: 569px; font-size: xx-large;background-color:Green; height: 50px; font-family:Lucida Calligraphy; " 
        Text="Select Admin Type" Visible="False"></asp:Label>
    <asp:Button ID="Button2" runat="server" BackColor="#4D90FE" BorderColor="White" 
        ForeColor="White" onclick="Button2_Click" 
        style="z-index: 1; left: 263px; top: 450px; position: absolute; width: 269px; height: 38px" 
        Text="Login" Visible="False" Font-Size="Large" />
   
        </div>
        <div class="mastfoot">
        <div class="inner">                    
        <p style="color:white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © AVD Team ~ </p>
        </div>
      </div>
    </div>
</div>
</div>  

    </form>
</body>
</html>
