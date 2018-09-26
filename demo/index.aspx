<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="demo.index"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			Here is some data pulled from a database!

	<asp:SqlDataSource ID="tableData" runat="server" 
		DataSourceMode="DataReader"
		ConnectionString="<%$ ConnectionStrings:myDB %>"
		SelectCommand="Select ID, Info from TestData">
	</asp:SqlDataSource>
	
    <asp:GridView ID="GridView1" runat="server" DataSourceID="tableData"/>
        </div>
    </form>
</body>
</html>
