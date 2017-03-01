<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPwd.aspx.cs" Inherits="StudentSetPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>STUDENT</title>
   <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />  
    
   <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
        onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload=""
</SCRIPT> 


 <style>
 <meta charset="utf-8">
    <meta name="robots" content="noindex">

    
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
    background: url(images/stud2.jpg) no-repeat center center fixed; 
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

    </style>  

</head>
<body >
    <form id="form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
              
            </div>
            
            <div class="clear hideSkiplink">
                
            </div>
        </div>
        
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
  <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <h1 style="color:white;" class="style1">
                    Student Login
                </h1>
         <h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
        <div class="jumbotron" style=" background-color:#bfbfbf; opacity:0.5; border-radius:10px">
    </div>
    <h2 style="color:Black; font-family:Lucida Calligraphy; font-size: xx-large;">
       <asp:Label ID="Lbl1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#FF6600" 
            style="z-index: 1; color: White; left: 42px; top: 270px; position: absolute; height: 48px; width: 625px; margin-top: 0px;" 
            Visible="False"></asp:Label>
    </h2>
 
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
                    
          
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Pass" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"            
            
              
              style="z-index: 1; left: 195px; top: 445px; position: absolute; width: 310px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Password cannot be empty</strong> 
</div></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" 
        style="position: absolute; z-index: 1; left: 561px; top: 421px"></asp:Label>
   &nbsp;
  
             <asp:Label ID="Lbl3" runat="server" ForeColor="Red" 
            style="position: absolute; z-index: 1; left: 493px; top: 384px; width: 304px; background-color:#d83e17; color:White; border-radius:60px; height: 39px; margin-top: 0px;" 
            Text="Incorrect Password!" Visible="False"></asp:Label>
                    
                <input  style="position:absolute; top: 383px; left: 213px; width: 270px; height: 41px;" 
              type="password" runat="server" id="Pass" name="Pass" 
              placeholder="Enter your Password" />
                <br /><br />
                   <asp:Button ID="Button2" runat="server" BackColor="#4D90FE" Font-Size="Large" 
            ForeColor="White" 
            style="z-index: 1; left: 214px; top: 509px; position: absolute; width: 269px; height: 38px" 
            Text="Enter" onclick="Button2_Click" />              
          
     </div>
        <div class="mastfoot">
        <div class="inner">                    
        <p style="color:white;">© AVD Team~ </p>
        </div>
      </div>
    </div>
</div>
</div>  
    
    
    <div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 150px; width: 847px">
    
        
        
        
    
    </div>
    <p style="margin-left: 480px">
        &nbsp;</p>
    <p style="margin-left: 480px">
        &nbsp;</p>
    <p style="margin-left: 480px">
        &nbsp;</p>
    <p style="margin-left: 480px">
        &nbsp;</p>
    <div style="margin-left: 920px">
        
       
    </div>
    </form>
</body>
</html>
