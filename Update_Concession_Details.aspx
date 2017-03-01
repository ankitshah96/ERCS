<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Concession_Details.aspx.cs" Inherits="Update_Concession_Details" %>

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
      <h3 class="masthead-brand">Concession Details Update</h3>
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
            </li> -->

            
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
        style="z-index: 1; left: 139px; top: 263px; position: absolute; margin-top: 1px; font-family:Lucida Calligraphy; font-size:larger; height: 25px; width: 164px;" 
        Text="Enter the SAP Id"></asp:Label>
               <asp:TextBox ID="TB" runat="server" 
                 style="z-index: 1; left: 336px; top: 258px; position: absolute; right: 479px; width: 290px; height: 34px; border-radius:05px;"></asp:TextBox>
        
    <asp:Label ID="Lblperiod" runat="server" 
        style="z-index: 1; left: 114px; top: 204px; position: absolute; width: 54px; height: 20px;" 
        Text="Period"></asp:Label>
    <asp:Label ID="Lblstatus" runat="server" 
        style="z-index: 1; left: 126px; top: 351px; position: absolute" Text="Status"></asp:Label>
    <asp:Label ID="LblResult" runat="server" 
        style="z-index: 1; left: 166px; top: 126px; position: absolute; width: 458px; background-color:Green;color:White; font-family:Lucida Calligraphy; font-size:large;border-radius:60px;" Text="Label" 
        Visible="False" ForeColor="#009933"></asp:Label>
    <asp:Label ID="Lblform_no" runat="server" 
        style="z-index: 1; left: 110px; top: 399px; position: absolute" 
        Text="Form No"></asp:Label>
    <asp:Label ID="Lblclass" runat="server" 
        style="z-index: 1; left: 129px; top: 255px; position: absolute; bottom: 323px;" 
        Text="Class"></asp:Label>
    <asp:Label ID="Lblsrc_stn" runat="server" 
        style="z-index: 1; left: 74px; top: 306px; position: absolute" 
        Text="Source Station"></asp:Label>
    <asp:Label ID="Lblsapid" runat="server" 
        style="z-index: 1; left: 113px; top: 158px; position: absolute; height: 19px; width: 56px; right: 936px;" 
        Text="Sap Id"></asp:Label>
    <asp:Button ID="Btnupdate" runat="server" 
        BackColor="#0066FF" ForeColor="White" 
        style="z-index: 1; left: 276px; top: 469px; position: absolute; width: 180px; height: 37px" 
        Text="Update Concession Details" onclick="Btnupdate_Click" />
    <asp:TextBox ID="Txtsap" runat="server" 
        
                style="z-index: 1; left: 276px; top: 155px; position: absolute; height: 21px; width: 369px;"></asp:TextBox>
    <asp:TextBox ID="Txtform_no" runat="server" 
        
        style="z-index: 1; left: 276px; top: 398px; position: absolute; width: 376px;"></asp:TextBox>
    <asp:TextBox ID="Txtsrc_stn" runat="server" 
        style="z-index: 1; left: 276px; top: 306px; position: absolute; width: 370px;"></asp:TextBox>
    <asp:TextBox ID="Txtclass" runat="server" 
        style="z-index: 1; left: 276px; top: 255px; position: absolute; width: 371px;"></asp:TextBox>
    <asp:TextBox ID="Txtperiod" runat="server" 
        style="z-index: 1; left: 276px; top: 202px; position: absolute; width: 372px;"></asp:TextBox>
    <asp:TextBox ID="Txtstatus" runat="server" 
        
                style="z-index: 1; left: 276px; top: 349px; position: absolute; right: 459px; width: 373px;"></asp:TextBox>
    <asp:Label ID="LblSaperror" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 363px; top: 208px; position: absolute; background-color:#f98568; color:White; border-radius: 60px;font-size:large; width: 247px;" 
        Text="* Enter Sap Id"></asp:Label>
  
    <asp:Label ID="Lbl3" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 265px; top: 318px; position: absolute; background-color:#f98568; color:White; border-radius: 60px;font-size:large; width: 442px;" 
        Text="Invalid Sap Id" Visible="False"></asp:Label>
    <asp:RegularExpressionValidator 
              ID="R1" runat="server" 
            ControlToValidate="Txtperiod" 
            ErrorMessage="*Password must contain minimum 8 and maximum 20 characters amd at least 1 Lowercase Alphabet, 1 Number and 1 Special Character" 
            ForeColor="Red" 
            style="z-index: 1; left: 124px; top: 553px; position: absolute; height: 23px; width: 475px" 
           ValidationExpression="(Monthly)"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <!--<strong>Invalid span</strong> </div>--></asp:RegularExpressionValidator>  
          <!--  <asp:TextBox ID="T1" runat="server" Visible="false" Text="Quaterly"></asp:TextBox>
<asp:CompareValidator ID="R2" runat="server" 
            ControlToCompare="Txtperiod" ControlToValidate="T1" 
            ErrorMessage="* Password do not match" ForeColor="Red" 
            style="z-index: 1; left: 557px; top: 368px; position: absolute"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Invalid Span</strong> 
</div></asp:CompareValidator> -->
       
      
        
       
       </div>
     
           
      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->    
          <p><br /><br /></p>
          <p style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;© AVD Team~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
     </form>
</body>
</html>
