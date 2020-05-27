<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tab.aspx.cs" Inherits="tab_tab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
<style type="text/css">
<!--
body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>


</head>

<body>
<form id="Form1"  runat="server" >
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">
        Teacher Information Management System</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1" style="height: 15px" align="center">
     <table border="1" bordercolordark="#ffffff" bordercolorlight="#c0c0c0" cellpadding="1"
            cellspacing="0" style="width: 543px">
            <tr>
                <td align="center" bgcolor="#ffffff" class="red_3" colspan="2">
                    Relevant parameters of server</td>
            </tr>
            <tr>
                <td>
                   server name：</td>
                <td>
                   
                    <asp:Label ID="sea1" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 20px">
                   Server IP：</td>
                <td >
                  
                    <asp:Label ID="sea2" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                   Server Port：</td>
                <td>
                   
                    <asp:Label ID="sea3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                  Server time：</td>
                <td>
                   
                    <asp:Label ID="sea4" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                  IIS version：</td>
                <td>
                  
                    <asp:Label ID="sea5" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td height="20">
                    Script timeout：</td>
                <td height="20">
                 
                    <asp:Label ID="sea7" runat="server"></asp:Label>秒</td>
            </tr>
            <tr>
                <td>
                   Site Physical Path：</td>
                <td>
                 
                    <asp:Label ID="sea8" runat="server"></asp:Label></td>
            </tr>
        </table>
    </td>
  </tr>
</table>
</form>
</body>

</html>
