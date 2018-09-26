<%@ Page Language="C#" AutoEventWireup="true" Inherits="demo.index" CodeFile="index.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head> 
<body>
    <form id="form1" runat="server" style="font-family: 'Century Gothic'; color: #808080">
		<asp:Label ID="Label1" runat="server" Text="Log On" Font-Bold="False"></asp:Label>
    	<asp:Panel ID="Panel1" runat="server" BorderColor="#666666" BorderStyle="Dashed" BorderWidth="1px" Width="272px">
			<asp:Label ID="Label2" runat="server" Text="User ID:" Width="90px"></asp:Label>
			<asp:TextBox ID="idBox" runat="server" Height="12px" Width="150px"></asp:TextBox>
			<br />
			<asp:Label ID="Label3" runat="server" Text="Password:" Width="90px"></asp:Label>
			<asp:TextBox ID="pwBox" runat="server" Height="12px" TextMode="Password" Width="150px"></asp:TextBox>
			<div style="width:250px; text-align:right">
				<asp:LinkButton ID="logonButton" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
			</div>
			<asp:Label ID="invalidText" runat="server" Font-Size="X-Small" ForeColor="Red"></asp:Label>
			</asp:Panel>
		
        
    </form>
</body>
</html>
