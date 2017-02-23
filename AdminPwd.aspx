<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPwd.aspx.cs" Inherits="AdminPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   <head id="Head1" runat="server">
    <title>ADMIN</title>
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
    <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <h1 style="color:white;" class="style1">
                    Admin Login
                </h1>
         <h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
        
        <div class="jumbotron" style=" background-color:#bfbfbf; opacity:0.5; border-radius:10px">
    </div>
    
        <asp:Button ID="Button2" runat="server" BackColor="#4D90FE" Font-Size="Large" 
            ForeColor="White" 
            style="z-index: 1; left: 208px; top: 463px; position: absolute; width: 269px; height: 38px" 
            Text="Sign In" onclick="Button2_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="PassA" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red" 
            
              
              style="z-index: 1; left: 541px; top: 372px; position: absolute; width: 304px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Password cannot be empty</strong> 
</div></asp:RequiredFieldValidator>
    
                    
           <asp:Label ID="Lbl1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" 
            style="z-index: 1; left: 76px; top: 264px; position: absolute; height: 48px; width: 555px; margin-top: 0px; font-family:Lucida Calligraphy; font-size:35px;" 
            Visible="False"></asp:Label>
     <input  style="position:absolute; top: 383px; left: 213px; width: 270px; height: 41px;" 
              type="password" runat="server" id="PassA" name="Pass" 
              placeholder="Enter your Password" />
               
    
    <p>
        &nbsp;</p>
    <asp:Label ID="Lbl3" runat="server" ForeColor="Red" 
        style="z-index: 1; left: 543px; top: 433px; position: absolute; width: 301px; margin-top: 0px; height:46px; background-color:#d83e17; color:White; border-radius:60px;" 
        Text="Invalid Password." Visible="False"></asp:Label>
        </div>
        <div class="mastfoot">
        <div class="inner">                    
        <p style="color:white;">© AVD Team~ </p>
        </div>
      </div>
    </div>
</div>
</div>  
    
    
    

  
    </form>
</body>
</html>
