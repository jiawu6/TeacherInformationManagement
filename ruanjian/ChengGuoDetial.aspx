<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChengGuoDetial.aspx.cs" Inherits="KeYanDetial" %>

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
                <td colspan="1" style="height: 24px"align=center class="style1">                     Teaching achievement</td>
            </tr>
            <tr>
                <td   align="left">
                    &nbsp;<asp:DataList ID="dlTopic" runat="server" Width="702px">
                        <ItemTemplate>
                            <table border="0" bordercolor="#ffffff" cellspacing="0" style="width: 100%;">
                                <tr>
                                    <td colspan="2" style="height: 18px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 28px; text-align: center" valign="top">
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2" style="height: 100px" valign="top">
                                        <br />
                                        <%# Eval("ChengGuo")%>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
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
