<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Task</title>
    
    <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
   onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="";     
</SCRIPT> 

    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8">
    <meta name="robots" content="noindex">

    
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
 

a,
a:focus,
a:hover {
  color: #fff;
}

.btn-default,
.btn-default:hover,
.btn-default:focus {
  color: #333;
  text-shadow: none; /* Prevent inheritence from `body` */
  background-color: #fff;
  border: 1px solid #fff;
}


html,
body {

  background: url(images/back2.jpg) no-repeat center center fixed; 
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
            font-size: xx-large;
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
      <h3 class="masthead-brand">STUDENT</h3>
       <ul class="nav masthead-nav" navbar="fixed">
            <li class="active">
              <a href="ChangePwd.aspx" target="_parent">Change &nbsp Password </a>
            </li> 
              <li class="active">
              <a href="RoleSelect.aspx" target="_parent" onclick="LogoutBtn_Click">Logout </a>
            </li>
            <!--<li class="active">
              <a href="#" target="_blank">About &nbsp ERCS</a>
            </li> -->

            
          </ul>
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
            
              <div class="jumbotron" 
                
                style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 119px; left: 77px; width: 642px; border-radius:10px;">
    </div>
          <h2 style=" position: absolute; top: 123px; left: 239px;" class="style1"><strong>Choose your Task</strong></h2>
        <p style="position:relative; top: 82px; left: -12px; width: 288px;color:black; font-family: Lucida Calligraphy; font-size:large;"><a href="Concession.aspx" id="pop">
    <img src="images/rail.jpg" class="img-rounded"  alt="Student" 
" style="width: 350px; height: 264px; position:relative; "/>
    Concession
</a></p>

      
<p style="position:absolute; top: 251px; left: 425px; width: 349px; color:black; font-family: Lucida Calligraphy; font-size:large;"><a href="ResultD.aspx" id="A1">
    <img src="images/res.jpg" class="img-rounded"  alt="Admin" 
" style="width: 350px; height: 264px; position:relative;" /><br />
Result
</a></p>
   
   
        </div>
     
           
      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
                                     
          <p style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © AVD Team~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
     
    </form>
</body>
</html>
