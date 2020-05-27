<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KeYan.aspx.cs" Inherits="KeYan"  ValidateRequest="false"%>


<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
    <link href="G:\Teacher Information Management System/system_dntb/skin/default/toolbar.css" rel="stylesheet"
        type="text/css" />
    <link href="G:\Teacher Information Management System/system_dntb/skin/default/toolbar.css" rel="stylesheet"
        type="text/css" />
    <link href="G:\Teacher Information Management System/system_dntb/skin/default/toolbar.css" rel="stylesheet"
        type="text/css" />
    <link href="G:\Teacher Information Management System/system_dntb/skin/default/toolbar.css" rel="stylesheet"
        type="text/css" />
    <link href="G:\Teacher Information Management System/system_dntb/skin/default/toolbar.css" rel="stylesheet"
        type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="60%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgColor="#4296e7">
					<td colSpan="2" class="style1">
                        Research project</td>
				</tr>
				<tr style="font-family: Times New Roman; font-size: 12pt;">
					<td noWrap width="30" style="WIDTH: 164px; height: 34px;">
                        Teacher：</td>
					<td width="79%" style="height: 34px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="151px">
                        </asp:DropDownList></td>
				</tr>
                <tr style="font-size: 12pt">
                    <td nowrap="nowrap" style="width: 164px; height: 25px" width="164">
                        time:</td>
                    <td style="height: 25px" width="59%">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
       <tr style="font-size: 12pt">
           <td nowrap="nowrap" style="width: 164px; height: 25px" width="164">
               project：</td>
           <td style="height: 25px" width="59%">
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
       </tr>
       <tr style="font-size: 12pt">
           <td nowrap="nowrap" style="width: 164px; height: 25px" width="164">
               award：</td>
           <td style="height: 25px" width="59%">
               <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
       </tr>
                <tr style="font-size: 12pt">
                    <td height="25" nowrap="nowrap" style="width: 164px" width="164">
                        content：</td>
                    <td height="25" width="59%">
                        &nbsp;
                        <DNTB:WebEditor ID="WebEditor1" runat="server" />
                    </td>
                </tr>
				<tr style="font-size: 12pt">
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right">&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="confirm" onclick="Button1_Click"></asp:button><FONT face="宋体">&nbsp;</FONT>
						<asp:button id="Button2" runat="server" Text="refill" onclick="Button2_Click"></asp:button></td>
				</tr>
				<tr style="font-size: 12pt">
					<td colSpan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgColor="#4296e7" style="font-size: 12pt">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
    </div>
    </form>
</body>
</html>
