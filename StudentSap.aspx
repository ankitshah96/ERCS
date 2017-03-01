<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentSap.aspx.cs" Inherits="StudentSap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
   <!-- <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() { window.history.forward(); }
</SCRIPT> 
onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload=""
 -->
 
</head>
<body style="height: 430px; width: 1107px; position: relative;" >
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#FF6600" 
            style="z-index: 1; left: 616px; top: 38px; position: absolute; height: 48px; width: 243px" 
            Text="Student Sign In"></asp:Label>
        <asp:Label ID="Label2" runat="server" EnableTheming="False" Font-Size="Large" 
            style="z-index: 1; left: 564px; top: 322px; position: absolute; height: 32px; width: 80px; right: 227px;" 
            Text="Sap Id" Font-Bold="True" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="Txtsap" runat="server" Font-Size="Large" 
            
            
            style="z-index: 1; left: 636px; top: 320px; position: absolute; width: 204px; height: 22px; margin-top: 2px;"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#4D90FE" Font-Size="Large" 
            ForeColor="White" onclick="Button1_Click" 
            style="z-index: 1; left: 576px; top: 364px; position: absolute; width: 269px; height: 38px" 
            Text="Next" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/student.jpg" 
            
            
            style="z-index: 1; left: 638px; top: 116px; position: relative; width: 152px; height: 150px" />
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Label ID="Lbl3" runat="server" Text="Label" Visible="False" 
        style="position: absolute; z-index: 1; left: 864px; top: 327px"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="Txtsap" ErrorMessage="* Please Enter your Sap Id" 
        ForeColor="Red" 
        style="z-index: 1; left: 861px; top: 324px; position: absolute; width: 189px"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Txtsap" ErrorMessage="* Sap Id shoul be of 11 digits only." 
        ForeColor="Red" 
        style="z-index: 1; left: 860px; top: 323px; position: absolute; width: 193px" 
        ValidationExpression="^[0-9]{11}$"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
