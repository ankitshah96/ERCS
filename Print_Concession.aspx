<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_Concession.aspx.cs" Inherits="Print_Concession" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Print Concession</title>
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


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#GridView1 [id*=chkHeader]").click(function () {
            if ($(this).is(":checked")) {
                $("#tblCustomers [id*=chkRow]").attr("checked", "checked");
            } else {
                $("#tblCustomers [id*=chkRow]").removeAttr("checked");
            }
        });
        $("#tblCustomers [id*=chkRow]").click(function () {
            if ($("#tblCustomers [id*=chkRow]").length == $("#tblCustomers [id*=chkRow]:checked").length) {
                $("#tblCustomers [id*=chkHeader]").attr("checked", "checked");
            } else {
                $("#tblCustomers [id*=chkHeader]").removeAttr("checked");
            }
        });
    });
</script>

</head>
<body>
 <form id="form1" runat="server">

 <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <div class="inner cover">
      <h3 class="masthead-brand">Print Concession</h3>
       <ul class="nav masthead-nav" navbar="fixed">
             <li class="active">
              <a href="ConcessionAdminMenu.aspx " target="_parent">Back</a>
            </li>
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
        <asp:CheckBox ID="ChkBox1" runat="server" 
            oncheckedchanged="ChkBox1_CheckedChanged" 
            style="z-index: 1; left: 54px; top: 154px; position: absolute" 
            Text="Select All" AutoPostBack="True" />
    
        <asp:Button ID="Btn_refresh" runat="server" onclick="Btn_refresh_Click" 
            style="z-index: 1; left: 694px; top: 152px; position: absolute" 
            Text="Refresh" />
        
    <asp:GridView ID="GridView1" runat="server"     
        
            
            style="position: absolute; top: 246px; left: 38px; height: 191px; width: 672px; margin-left: 0px; overflow-y:scroll;" 
            CellPadding="4" ForeColor="#333333" GridLines="Both" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
        
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                     <asp:CheckBox ID="chkRow" runat="server" AutoPostBack="True" />
                </ItemTemplate>

            </asp:TemplateField >
           
            
           
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Enter Form No." 
        
 style="z-index: 1; left: 179px; top: 155px; position: absolute; "></asp:Label>
    
    <asp:TextBox ID="TxtFormNo" runat="server" 
        
        
        
                
                
                
                
                style="z-index: 1; top: -17px; position:relative; width: 222px; text-decoration: underline; right: -88px;"></asp:TextBox>
    
    <asp:Label ID="Label2" runat="server" ForeColor="Red" 
        style="position: absolute; z-index: 1; left: 182px; top: 449px; background-color:#f98568; color:White; border-radius: 60px;font-size:large; ff; height: 39px; width: 353px;" 
        Text="* Enter the Form number" Visible="False"></asp:Label>
    <p style="margin-left: 600px">
        <asp:Button ID="BtnPrintSelected" runat="server" BackColor="#3399FF" 
            ForeColor="White" onclick="BtnPrintSelected_Click" target="_blank"
            style="position: relative; top: 320px; left: -329px; width: 169px; height: 27px" 
            Text="Print Selected" />
    </p>
    <p>
        <asp:Button ID="Btn1" runat="server" BackColor="#3399FF" onclick="Btn1_Click" 
            style="z-index: 1; left: 470px; top: 356px; position: absolute; width: 212px; height: 26px; margin-top: 0px" 
            Text="Next" ForeColor="White" Visible="False" />
    </p>
   <!--  <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="log1"
        
                style="z-index: 1; left: 361px; top: 557px; position: absolute; background-color: transparent; border:Black;">Logout</asp:LinkButton>-->
        
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