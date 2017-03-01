<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConcessionAdminMenu.aspx.cs" Inherits="ConcessionAdminMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Concession</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />  
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript">

    function DisableBackButton() {
        window.history.forward()
    }
    DisableBackButton();
    window.onload = DisableBackButton;
    window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
    window.onunload = function () { void (0) }
</script> 
 
<script language="JavaScript">
this.history.forward(-1);
</script>

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

     .style1
     {
         font-family: "Lucida Calligraphy";
         font-size: 50px;
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
      <h3 class="masthead-brand">ADMINISTRATOR</h3>
       <ul class="nav masthead-nav" navbar="fixed">
            <li class="active">
              <a href="ChangePwdAdmin.aspx" target="_parent">Change &nbsp Password </a>
            </li> 
              <li class="active">
              <a href="RoleSelect.aspx" target="_parent" onclick="LinkBtn_Logout_Click">Logout </a>
            </li> 
            
          </ul>
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
              <div class="jumbotron" 
                style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 119px; left: -5px; width: 799px; border-radius:10px;">
    </div>
          <h2 style=" position: absolute; top: 123px; left: 30px; width: 762px;" 
                class="style1"><strong>Select your option</strong></h2>
        
    <asp:Button ID="Btn_Print_concession" runat="server" class="button1"  
        style="z-index: 1; left: 34px; top: 266px; position: absolute; margin-top: 0px; height: 65px; width: 328px; font-family:Lucida Calligraphy; border:#CDD2CA; border-radius:20px; " 
        Text="Print Concession" onclick="Btn_Print_concession_Click" />
    <asp:Button ID="Btn3" runat="server" class="button1" 
        style="position: absolute; top: 391px; left: 409px; height: 65px; width: 332px; font-family:Lucida Calligraphy; border:#CDD2CA; border-radius:20px;" 
        Text="Update details of concession" 
        onclick="Btn3_Click" />
        <asp:Button ID="Btn5" runat="server" class="button1" 
        style="position: absolute; top: 267px; left: 409px; height: 65px; width: 332px; font-family:Lucida Calligraphy; border:#CDD2CA; border-radius:20px;" 
        Text="Update details of Student" 
        onclick="Btn5_Click" />
       

    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Btn4" runat="server" class="button1"  
            style="z-index: 1; left: 29px; top: 392px; position: absolute; margin-top: 0px; height: 65px; width: 332px; right: 744px; font-family:Lucida Calligraphy; border:#CDD2CA; border-radius:20px;" 
            Text="Delete Concession Request" 
            onclick="Btn4_Click" />
    </p>
    
        
    
         </div>
     
           
      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
                                     
          <p style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © AVD Team~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
     

   
    </form>
</body>
</html>
