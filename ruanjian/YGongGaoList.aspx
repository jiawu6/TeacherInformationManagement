﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YGongGaoList.aspx.cs" Inherits="YGongGaoList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
        <style type="text/css">

TD {
	COLOR: #000000; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; FONT-SIZE: 12px
}
TH {
	COLOR: #000000; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; FONT-SIZE: 12px
}
A:link {
	COLOR: #000000;
	TEXT-DECORATION: none;
}
            .style1
            {
                font-size: larger;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table   border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" style="width: 100%">
            <tr bgcolor="#4296e7">
                <td colspan="1" style="height: 24px"align=center class="style1">                     Rules and regulations</td>
            </tr>
            <tr>
                <td   align="left">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="830px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="GongGaoDetial.aspx?ID={0}"
                                DataTextField="Title" HeaderText="Title" />
                           
                            <asp:BoundField DataField="FaBuRen" HeaderText="Publisher" />
                            <asp:BoundField DataField="ShiJian" HeaderText="Time" />
                        </Columns>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="1">
                    <div align="center">
                        &nbsp;</div>
                </td>
            </tr>
            <tr bgcolor="#4296e7">
                <td colspan="1">
                     </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
