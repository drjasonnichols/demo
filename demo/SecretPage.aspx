<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecretPage.aspx.cs" Inherits="demo.SecretPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:LinkButton ID="logoutBtn" runat="server" OnClick="logoutBtn_Click" Font-Names="Century Gothic" Font-Size="Small">Log Off</asp:LinkButton>
        </div>
		
		<asp:SqlDataSource ID="tableData" runat="server" 
		DataSourceMode="DataReader"
		ConnectionString="<%$ ConnectionStrings:myDB %>"
		SelectCommand="Select ID, Info from TestData">
		</asp:SqlDataSource>
	
		<asp:GridView ID="GridView1" runat="server" DataSourceID="tableData">
			<HeaderStyle Font-Names="Century Gothic" ForeColor="#333333" />
			<RowStyle Font-Names="Century Gothic" ForeColor="#666666" />
		</asp:GridView>
    </form>
</body>
</html>
