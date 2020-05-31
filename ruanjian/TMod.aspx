<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TMod.aspx.cs" Inherits="TMod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body bgColor="#b7d6fd">
    <form id="form1" runat="server">
    <div>
        <h1 align="center">Change Password</h1>
			<table width="50%" border="1" align="center">
                <tr> 
					<td>&nbsp;New password：</td>
					<td>
						<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox>*</td>
				</tr>
				<tr>
					<td>&nbsp;Confirm password：</td>
					<td>
						<asp:TextBox id="TextBox3" runat="server" TextMode="Password"></asp:TextBox>*</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;
						<asp:Button id="Button1" runat="server" Width="48px" Text="confirm" onclick="Button1_Click"></asp:Button>&nbsp;
						<asp:Button id="Button3" runat="server" Width="48px" Text="return" onclick="Button3_Click"></asp:Button></td>
				</tr>
			</table>
    </div>
    </form>
</body>
</html>

</asp:Content>

