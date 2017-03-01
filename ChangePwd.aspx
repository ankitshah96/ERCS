<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />  
    
        


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

     </style>
</head>
<body style="height: 470px">
    <form id="form1" runat="server">
    <div>
    
    </div>
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
       <h3 id="H1"   runat="server" class="masthead-brand">Student Login</h3>
                <ul class="nav masthead-nav" navbar="fixed">
                  <li class="active">
              <a href="menu.aspx" target="_parent">Back</a>
            </li> 
           
          </ul>
         <h2>
             &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2>
        &nbsp;</h2>
<h2 style="color:Black; font-family:Lucida Calligraphy; font-size: x-large; margin-left: 40px;">
       
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: -56px; top: 204px; position: absolute; width: 903px; background-color:#11c420; border:#11c420; color:White; border-radius:20px; height: 30px;" 
            Text="Label" Visible="False"></asp:Label>
    </h2>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Pass3" ErrorMessage="Password cannot be empty!" 
            ForeColor="Red"            
            
              style="z-index: 1; left: 502px; top: 332px; position: absolute; width: 310px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Password cannot be empty</strong> 
</div></asp:RequiredFieldValidator>  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Pass4" ErrorMessage="Re-enter your Password!" 
            ForeColor="Red"            
            
              style="z-index: 1; left: 502px; top: 396px; position: absolute; width: 310px"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Re-enter your Password</strong> 
</div></asp:RequiredFieldValidator>     
          <h3>  
              &nbsp;<asp:RegularExpressionValidator 
              ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="Pass3" 
            ErrorMessage="*Password must contain minimum 8 and maximum 20 characters amd at least 1 Lowercase Alphabet, 1 Number and 1 Special Character" 
            ForeColor="Red" 
            style="z-index: 1; left: 128px; top: 183px; position: absolute; height: 93px; width: 483px" 
            
                  
              
              ValidationExpression="^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,20}"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Password must contain minimum 8 and maximum 20 characters amd at least 1 Lowercase Alphabet, 1 Number and 1 Special Character</strong> 
</div></asp:RegularExpressionValidator></h3>
   &nbsp;
   
             <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="Pass3" ControlToValidate="Pass4" 
            ErrorMessage="* Password do not match" ForeColor="Red" 
            style="z-index: 1; left: 557px; top: 368px; position: absolute"><div class="alert alert-warning" style=" background-color:#d83e17; color:White; border-radius:60px;">
  <strong>Password donot match</strong> 
</div></asp:CompareValidator>
                      
                <input  style="position:absolute; top: 335px; left: 246px; width: 216px; height: 41px;" 
              type="password" runat="server" id="Pass3" name="Pass1" 
              placeholder="Enter new Password" />
                   <input  style="position:absolute; top: 399px; left: 244px; width: 216px; height: 41px;" 
              type="password" runat="server" id="Pass4" name="Pass2" 
              placeholder="Re-Enter new Password" />
                <br /><br />
                <asp:Button ID="Button1" runat="server" BackColor="#4D90FE" Font-Bold="True" 
            ForeColor="White" onclick="Button1_Click" 
            style="z-index: 1; left: 255px; top: 473px; position: absolute; width: 193px; height: 35px; margin-top: 0px" 
            Text="CHANGE PASSWORD" />                  
               <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 240px; top: 293px; position: absolute; width: 228px; margin-top: 0px" 
        Text="Label" Visible="False"></asp:Label>
     </div>
        <div class="mastfoot">
        <div class="inner">                    
        <p style="color:white;">© AVD Team~        </div>
      </div>
    </div>
</div>
</div>  
    
      </form>
 </body>
</html>
