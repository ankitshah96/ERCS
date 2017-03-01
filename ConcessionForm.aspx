<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="ConcessionForm.aspx.cs" Inherits="Concession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Student Conession Form</title>
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
<body >
    <form id="form1" runat="server">

     <div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
      <div class="inner cover">
      <h3 id="H2"   runat="server" class="masthead-brand">CONCESSION FORM</h3>
       <ul class="nav masthead-nav" navbar="fixed">
            <li class="active">
              <a href="menu.aspx" target="_parent">Back</a>
            </li> 
              <li class="active">
              <a href="Concession.aspx" target="_parent">Back to concession</a>
            </li>
             <li class="active">
              <a href="RoleSelect.aspx" target="_parent" onclick="LogoutBtn_Click">Logout </a>
            </li>
          <!--  <li class="active">
              <a href="#" target="_blank">About &nbsp ERCS</a>
            </li> -->
          </ul>
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
              <h3> 
         <div class="jumbotron" 
                
              
              style=" background-color:#bfbfbf; opacity:0.5; position: absolute; top: 162px; left: -41px; width: 862px; border-radius:10px; height: 275px;">
    </div>
     <asp:Label ID="lblmsg" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 254px; top: 112px; position: absolute; width: 264px;background-color:#f98568; color:White; border-radius: 60px; width: 309px; height: 30px; font-size:large; ff; right: 542px;" 
            Text="* Select a source station" Visible="False"></asp:Label>
        <asp:Label ID="Lblclass" runat="server" ForeColor="Red" 
            style="position: absolute; z-index: 1; left: 251px; top: 114px; bottom: 251px; background-color:#f98568; color:White; border-radius: 60px; width: 322px; height: 27px; font-size:large; ff" 
            Text="* Select a Class"></asp:Label>
        <asp:Label ID="Lblduration" runat="server" ForeColor="Red" 
            style="z-index: 1; left: 215px; top: 109px; position: absolute; width: 202px;background-color:#f98568; color:White; border-radius: 60px; width: 343px; height: 31px; font-size:large; ff" 
            Text="* Select duration"></asp:Label></h3>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
     <h2><asp:Label ID="Lbl2" runat="server" 
            style="z-index: 1; left: 15px; top: 197px; position: absolute; height: 28px; width: 230px; " 
            Text="Source Station"></asp:Label></h2>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            
            style="z-index: 1; left: 370px; top: 200px; position: absolute; height: 16px; width: 372px; height:25px;" 
            AutoPostBack="True" CausesValidation=true>
            <asp:ListItem Selected="True">--SELECT A STATION--</asp:ListItem>
            
            <asp:ListItem>CHURCHGATE</asp:ListItem>
            <asp:ListItem>MARINE LINES</asp:ListItem>
            <asp:ListItem>CHARNI ROAD</asp:ListItem>
            <asp:ListItem>GRANT ROAD</asp:ListItem>
            <asp:ListItem>MUMBAI CENTRAL</asp:ListItem>
            <asp:ListItem>MAHALAXMI</asp:ListItem>
            <asp:ListItem>LOWER PAREL</asp:ListItem>
            <asp:ListItem>ELPHINSTONE ROAD</asp:ListItem>
            <asp:ListItem>DADAR</asp:ListItem>
            <asp:ListItem>MATUNGA ROAD</asp:ListItem>
            <asp:ListItem>MAHIM JN</asp:ListItem>
            <asp:ListItem>BANDRA</asp:ListItem>
            <asp:ListItem>KHAR ROAD</asp:ListItem>
            <asp:ListItem>SANTACRUZ</asp:ListItem>
            <asp:ListItem Value="ANDHERI">ANDHERI</asp:ListItem>
            <asp:ListItem>JOGESHWARI</asp:ListItem>
            <asp:ListItem>GOREGAON</asp:ListItem>
            <asp:ListItem>MALAD</asp:ListItem>
            <asp:ListItem>KANDIVALI</asp:ListItem>
            <asp:ListItem>BORIVALI</asp:ListItem>
            <asp:ListItem>DAHISAR</asp:ListItem>
            <asp:ListItem>MIRA ROAD</asp:ListItem>
            <asp:ListItem>BHAYANDER</asp:ListItem>
            <asp:ListItem>NAIGAON</asp:ListItem>
            <asp:ListItem>VASAI ROAD</asp:ListItem>
            <asp:ListItem>NALLA SOPARA</asp:ListItem>
            <asp:ListItem>VIRAR</asp:ListItem>
            <asp:ListItem>VAITARNA</asp:ListItem>
            <asp:ListItem>SAPHALE</asp:ListItem>
            <asp:ListItem>KELVA ROAD</asp:ListItem>
            <asp:ListItem>PALGHAR</asp:ListItem>
            <asp:ListItem>UMROLI ROAD</asp:ListItem>
            <asp:ListItem>BOISAR</asp:ListItem>
            <asp:ListItem>VANGAON</asp:ListItem>
             <asp:ListItem>DAHANU ROAD</asp:ListItem>
              <asp:ListItem>CST</asp:ListItem>
               <asp:ListItem>MASJID</asp:ListItem>
                <asp:ListItem>SANDHURST ROAD </asp:ListItem>
                 <asp:ListItem>BYCULLA</asp:ListItem>
                  <asp:ListItem>CHINCHPOKLI</asp:ListItem>
                   <asp:ListItem>CURREY ROAD</asp:ListItem>
                    <asp:ListItem>PAREL</asp:ListItem>
                       <asp:ListItem>SION</asp:ListItem>
                        <asp:ListItem>KURLA</asp:ListItem>
                         <asp:ListItem>VIDYAVIHAR</asp:ListItem>
                          <asp:ListItem>GHATKOPAR</asp:ListItem>
                           <asp:ListItem>VIKHROLI</asp:ListItem>
                            <asp:ListItem>KANJURMARG</asp:ListItem>
                             <asp:ListItem>BHANDUP</asp:ListItem>
                              <asp:ListItem>NAHUR</asp:ListItem>
                               <asp:ListItem>MULUND</asp:ListItem>
                                <asp:ListItem>THANE</asp:ListItem>
                                 <asp:ListItem>KALVA</asp:ListItem>
                                  <asp:ListItem>MUMBRA</asp:ListItem>
                                   <asp:ListItem>DIVA JN</asp:ListItem>
                                    <asp:ListItem>KOPAR</asp:ListItem>
                                     <asp:ListItem>DOMBIVLI</asp:ListItem>
                                      <asp:ListItem>THAKURLI</asp:ListItem>
                                       <asp:ListItem>KALYAN</asp:ListItem>
                                        <asp:ListItem>VITHALWADI</asp:ListItem>
                                         <asp:ListItem>ULHAS NAGAR</asp:ListItem>
                                          <asp:ListItem>AMBERNATH</asp:ListItem>
                                           <asp:ListItem>BADLAPUR</asp:ListItem>
                                            <asp:ListItem>VANGANI</asp:ListItem>
                                             <asp:ListItem>SHELU</asp:ListItem>
                                              <asp:ListItem>NERAL</asp:ListItem>
                                               <asp:ListItem>BHIVPURI ROAD</asp:ListItem>
                                                <asp:ListItem>KARJAT</asp:ListItem>
                                                 <asp:ListItem>PALASDHARI</asp:ListItem>
                                                  <asp:ListItem>KELAVLI</asp:ListItem>
                                                   <asp:ListItem>DOLAVLI</asp:ListItem>
                                                    <asp:ListItem>LOWJEE</asp:ListItem>
                                                     <asp:ListItem>KHOPOLI</asp:ListItem>
                                                      <asp:ListItem>SHAHAD</asp:ListItem>
                                                       <asp:ListItem>AMBIVLI</asp:ListItem>
                                                        <asp:ListItem>TITWALA</asp:ListItem>
                                                         <asp:ListItem>KHADAVLI</asp:ListItem>
                                                          <asp:ListItem>VASIND</asp:ListItem>
                                                           <asp:ListItem>ASANGAON</asp:ListItem>
                                                            <asp:ListItem>ATGAON</asp:ListItem>
                                                             <asp:ListItem>KHARDI</asp:ListItem>
                                                             <asp:ListItem>KASARA</asp:ListItem>
                                                             <asp:ListItem>DOCKYARD ROAD</asp:ListItem>
                                                             <asp:ListItem>REAY ROAD</asp:ListItem>
                                                             <asp:ListItem>COTTON GREEN</asp:ListItem>
                                                             <asp:ListItem>SEWRI</asp:ListItem>
                                                             <asp:ListItem>VADALA ROAD</asp:ListItem>
                                                             <asp:ListItem>KINGS CIRCLE</asp:ListItem>
                                                              <asp:ListItem>GTB NAGAR</asp:ListItem>
                                                               <asp:ListItem>CHUNABHATTI</asp:ListItem>
                                                                <asp:ListItem>KURLA</asp:ListItem>
                                                                 <asp:ListItem>TILAK NAGAR</asp:ListItem>
                                                                  <asp:ListItem>CHEMBUR</asp:ListItem>
                                                                   <asp:ListItem>GOVANDI</asp:ListItem>
                                                                    <asp:ListItem>MANKHURD</asp:ListItem>
                                                                     <asp:ListItem>VASHI</asp:ListItem>
                                                                      <asp:ListItem>SANPADA</asp:ListItem>
                                                                       <asp:ListItem>JUINAGAR</asp:ListItem>
                                                                        <asp:ListItem>NERUL</asp:ListItem>
                                                                         <asp:ListItem>SEAWOOD DARAVE</asp:ListItem>
                                                                          <asp:ListItem>BELAPUR CBD</asp:ListItem>
                                                                           <asp:ListItem>KHARGHAR</asp:ListItem>
                                                                            <asp:ListItem>MANASAROVAR</asp:ListItem>
                                                                             <asp:ListItem>KHANDESHWAR</asp:ListItem>
                                                                              <asp:ListItem>PANVEL</asp:ListItem>
                                                                               <asp:ListItem>AIROLI</asp:ListItem>
                                                                                <asp:ListItem>RABALE</asp:ListItem>
                                                                                 <asp:ListItem>GHANSOLI</asp:ListItem>
                                                                                  <asp:ListItem>KOPARKHAIRANE</asp:ListItem>
                                                                                   <asp:ListItem>TURBHE</asp:ListItem>

        </asp:DropDownList>
        <h2><asp:Label ID="Lbl4" runat="server" 
            style="z-index: 1; left: 31px; top: 264px; position: absolute; width: 185px; height: 30px;" 
            Text="Class"></asp:Label></h2>
        <h4><asp:RadioButtonList ID="RadioBtnclass" runat="server" RepeatColumns="2"
            
              
              
              
              style="z-index: 1; left: 340px; IRtop: 144px; position: absolute; height: 28px; width: 418px; top: 267px;">
            <asp:ListItem Value="1">I st Class</asp:ListItem>  
            <asp:ListItem Value="2">II nd Class</asp:ListItem>
        </asp:RadioButtonList></h4>
       <h2> 
           <asp:Label ID="Lbl7" runat="server" 
            style="z-index: 1; left: 23px; top: 336px; position: absolute; width: 208px" 
            Text="Duration"></asp:Label></h2>
              <h4><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatColumns="2"       
            
              
              
              
              
              style="z-index: 1; left: 334px; top: 338px; position: absolute; width: 419px; height: 38px; bottom: 47px;">
            <asp:ListItem>Monthly</asp:ListItem>
            <asp:ListItem>Quarterly</asp:ListItem>
        </asp:RadioButtonList></h4>
        <asp:Label ID="Lbl8" runat="server" 
            style="z-index: 1; left: 514px; top: 292px; position: absolute" 
            Text="Years" Visible="False"></asp:Label>
        <asp:Label ID="Lbl9" runat="server" 
            style="z-index: 1; left: 610px; top: 293px; position: absolute; height: 17px; width: 73px" 
            Text="Month(s)" Visible="False"></asp:Label>
        <asp:Label ID="Lbl10" runat="server" 
            style="z-index: 1; left: 730px; top: 293px; position: absolute" 
            Text="Day(s)" Visible="False"></asp:Label>
      
            
        
        <asp:Label ID="Lbl_invalid_srcstn" runat="server" 
            style="z-index: 1; left: 6px; top: 116px; position: absolute; width: 749px;background-color:#f98568; color:White; border-radius: 60px;font-size:large; ff;" 
            Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Lbl_addr" runat="server" 
            style="z-index: 1; left: 900px; top: 228px; position: absolute; width: 144px" 
            Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Lbl_timespan_invalid" runat="server"           
            
              
              style="z-index: 1; left: 6px; top: 100px; position: absolute; width: 747px;background-color:#f98568; color:White; border-radius: 60px; font-size:large; ff;" Text="Label" 
            Visible="False" ForeColor="Red"></asp:Label>
        <asp:Label ID="Lbl_result" runat="server" Font-Size="Medium" 
            style="z-index: 1; left: 187px; top: 515px; position: absolute; height: 36px; background-color:#af970e; color:White; border-radius: 60px;font-size:large; ff width: 420px; width: 389px;" 
            Visible="False"></asp:Label>
         
        
    
    <asp:Button ID="Button1" runat="server" BackColor="#3333FF" ForeColor="White" 
        style="z-index: 1; left: 272px; top: 445px; position: absolute; width: 217px; height: 35px" 
        Text="Apply for concession" onclick="Button1_Click" Visible="False" />
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged" 
        style="z-index: 1; left: 181px; top: 388px; position: absolute; bottom: 151px; width: 463px;" 
        Text="* I confirm that information provided by me is true and correct." />
 
          

    
        </div>

      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
                                      
        
          <p style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © 
              AVD~ </p>
        </div>
           </div>
      </div>
    </div>
</div>
</div>
</form>
</body>
</html>
