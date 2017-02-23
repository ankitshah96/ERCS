<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResultD.aspx.cs" Inherits="ResultD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Student Result</title>
    
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
<body >
    <form id="form1" runat="server">
   
   
  <div class="site-wrapper-inner"  >
    <div class="cover-container" >
      <div class="masthead clearfix"  
            
            style="overflow-y:scroll; width:1500px; height:572px; position:absolute; top: 1px; left: -32px;">
        <div class="inner cover">
      <h1 style="color:white;" class="style1">
                   Result
                </h1>
     
       <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
          <h2>&nbsp;</h2>
           
<div class="jumbotron" 
                
                
                style=" background-color:#bfbfbf; opacity:0.5; position:absolute; top: 99px; left: 429px; width: 642px; border-radius:10px;"></div>
  
   <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 616px; top: 158px; position: absolute; right: 758px;" 
        Text="Check Result" onclick="Button1_Click" />
           
      <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 819px; top: 156px; position: absolute; width: 103px;" 
        Text="Back" onclick="Button2_Click" />      
           
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            
            style="z-index: 1; left: 325px; top: 259px; position: absolute; height: 159px; width: 927px; border-radius:10px; overflow:scroll;" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Subj_name" HeaderText="Subj_name" 
                    SortExpression="Subj_name" />
                <asp:BoundField DataField="TH" HeaderText="TH" 
                    SortExpression="TH" />
                <asp:BoundField DataField="Ilnt" HeaderText="Ilnt" SortExpression="Ilnt" />
                <asp:BoundField DataField="TI_TOTAL" HeaderText="TI_TOTAL" 
                    SortExpression="TI_TOTAL" />
                <asp:BoundField DataField="Credit_TI" HeaderText="Credit_TI" 
                    SortExpression="Credit_TI" />
                <asp:BoundField DataField="grade_TI" HeaderText="grade_TI" 
                    SortExpression="grade_TI" />
                <asp:BoundField DataField="gp_TI" HeaderText="gp_TI" SortExpression="gp_TI" />
                <asp:BoundField DataField="CGP_TI" HeaderText="CGP_TI" 
                    SortExpression="CGP_TI" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ercsConnectionString %>" 
            
            
            SelectCommand="SELECT result_subject.Subj_name, result_subject.Name, result_subject.TH, result_subject.Ilnt, result_subject.TI_TOTAL, result_subject.Credit_TI, result_subject.grade_TI, result_subject.gp_TI, result_subject.CGP_TI FROM result_subject INNER JOIN result ON result_subject.Result_num = result.Result_no WHERE (result_subject.SAP_no = @SAP_no) AND (result.Semester = @TH)" 
            onselecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:SessionParameter Name="SAP_no" SessionField="user" Type="Int64" />
                <asp:FormParameter FormField="TextBox1" Name="TH" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 612px; top: 124px; position: absolute; height: 19px;" 
            Text="Enter Semester"></asp:Label>
    
        <asp:TextBox ID="TextBox1" runat="server"
            
            style="z-index: 1; top: 120px; position: absolute; width: 150px; right: 595px;" 
            MaxLength="11"></asp:TextBox>
    
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="Both" 
        
              
              
              
                
                
                
                style="z-index: 1; left: 322px; top: 516px; position: absolute; height: 133px; width: 925px; margin-top: 0px; overflow:scroll;">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Subj_name" HeaderText="Subj_name" 
                SortExpression="Subj_name" />
            <asp:BoundField DataField="TermWork" HeaderText="TermWork" 
                SortExpression="TermWork" />
            <asp:BoundField DataField="Credit_TW" HeaderText="Credit_TW" 
                SortExpression="Credit_TW" />
            <asp:BoundField DataField="GP_TW" HeaderText="GP_TW" SortExpression="GP_TW" />
            <asp:BoundField DataField="CGP_TW" HeaderText="CGP_TW" 
                SortExpression="CGP_TW" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ercsConnectionString %>" 
        
        SelectCommand="SELECT result_subject.Subj_name, result_subject.TermWork, result_subject.Credit_TW, result_subject.GP_TW, result_subject.CGP_TW FROM result_subject INNER JOIN result ON result_subject.Result_num = result.Result_no WHERE (result_subject.SAP_no = @SAP_no) AND (result.Semester = @TH)">
        <SelectParameters>
            <asp:SessionParameter Name="SAP_no" SessionField="user" Type="Int64" />
            <asp:FormParameter FormField="TextBox1" Name="TH" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource3"     
                style="z-index: 1; left: 319px; position: absolute; height: 130px; width: 923px; top: 769px; overflow:scroll; " 
                ForeColor="#333333" GridLines="Both">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Subj_name" HeaderText="Subject Name" 
                SortExpression="Subj_name" />
            <asp:BoundField DataField="Oral" HeaderText="Oral" SortExpression="Oral" />
            <asp:BoundField DataField="CGP_TWO" HeaderText="CGP_TWO" 
                SortExpression="CGP_TWO" />
            <asp:BoundField DataField="G_Two" HeaderText="G_Two" SortExpression="G_Two" />
            <asp:BoundField DataField="GP_TWO" HeaderText="GP_TWO" 
                SortExpression="GP_TWO" />
            <asp:BoundField DataField="Credit_Two" HeaderText="Credit_Two" 
                SortExpression="Credit_Two" />
            <asp:BoundField DataField="TW_Oral_Total" HeaderText="TW_Oral_Total" 
                SortExpression="TW_Oral_Total" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ercsConnectionString %>" 
        
        
        SelectCommand="SELECT result_subject.Subj_name,result_subject.Oral, result_subject.CGP_TWO, result_subject.G_Two, result_subject.GP_TWO, result_subject.Credit_Two, result_subject.TW_Oral_Total FROM result_subject INNER JOIN result ON result_subject.Result_num = result.Result_no WHERE (result_subject.SAP_no = @SAP_no) AND (result.Semester = @semester)">
        <SelectParameters>
            <asp:SessionParameter Name="SAP_no" SessionField="user" Type="Int64" />
            <asp:FormParameter FormField="TextBox1" Name="semester" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource4" 
        
        
              
              
              
              
                
                
                    
                    
                style="z-index: 1; left: 318px; top: 1041px; position: absolute; height: 133px; width: 914px; overflow-y:scroll;" 
                ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Subj_name" HeaderText="Subj_name" 
                SortExpression="Subj_name" />
            <asp:BoundField DataField="TH" HeaderText="TH" 
                SortExpression="TH" />
            <asp:BoundField DataField="Ilnt" HeaderText="Ilnt" 
                SortExpression="Ilnt" />
            <asp:BoundField DataField="TI_TOTAL" HeaderText="TI_TOTAL" 
                SortExpression="TI_TOTAL" />
            <asp:BoundField DataField="Credit_TI" HeaderText="Credit_TI" 
                SortExpression="Credit_TI" />
            <asp:BoundField DataField="grade_TI" HeaderText="grade_TI" 
                SortExpression="grade_TI" />
            <asp:BoundField DataField="gp_TI" HeaderText="gp_TI" SortExpression="gp_TI" />
            <asp:BoundField DataField="CGP_TI" HeaderText="CGP_TI" 
                SortExpression="CGP_TI" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
                <br>
                <br>
                <br></br>
                <br>
                <br>
                <br></br>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ercsConnectionString %>" 
                    SelectCommand="SELECT [Subj_name], [TH], [Name], [Ilnt], [Credit_TI], [TI_TOTAL], [grade_TI], [gp_TI], [CGP_TI] FROM [result_subject],[result] WHERE (([SAP_no] = @SAP_no) AND ([Semester] = @semester) and ([result].Result_no=[result_subject].Result_num))">
                    <SelectParameters>
                        <asp:SessionParameter Name="SAP_no" SessionField="user" Type="Int64" />
                        <asp:FormParameter FormField="TextBox1" Name="semester" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label3" runat="server" 
                    style="z-index: 1; left: 921px; top: 185px; position: absolute" Text=""></asp:Label>
                <br></br>
                <br></br>
                </br>
                </br>
                </br>
    
    <br />
    <br />
    <p style="color:White; position: absolute; top: 1305px; left: 728px; height: 20px;">© AVD Team~ </p>
        
   </div>
     
           
     
      </div>
    </div>
</div>

      </form>
</body>
       
</html>