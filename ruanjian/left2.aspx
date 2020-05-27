<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>left2</title><script src="js/menu.js"></script>
    <style>
body { margin:0 auto; padding:0; border:0;}
td { text-align:center;}
.style1 { font:12px "宋体"; color:#004C7E;}
a { color:#004C7E; text-decoration:none;}
a:hover { color:#FFF; text-decoration:underline;}
.STYLE2 {
	font-size: 12px;
	color: #03515d;
}
</style>
</head>
<body> 
    <form id="form1" runat="server">
    <div>
    <table width="166" height="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top" bgcolor="D4ECFC">
      <table width="162" height="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td background="images/list_top.gif" height="28"></td>
        </tr>
        
        <tr id="Tr1" onClick="show(2)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Personal Data Management</span></td>
        </tr>
        <tr id="show2" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=TMod.aspx target="frmright">Change Password</a></span></td>
                    </tr>
                  </table></td>
                </tr>
        </table></td>
        </tr>
        
        
    
       <tr id="Tr5" onClick="show(9)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Timetable query</span></td>
        </tr>
        <tr id="show9" style="display:none">
          <td align="center" valign="top" bgcolor="D4ECFC">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=SKeBiao_List.aspx target="frmright">Timetable query</a></span></td>
                    </tr>
                  </table></td>
                </tr> 
                
                </table>
                 </td>
        </tr> 

      <tr id="Tr2" onClick="show(3)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Teacher information</span></td>
        </tr>
        <tr id="show3" style="display:none">
          <td align="center" valign="top" bgcolor="D4ECFC">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=STeacher_List.aspx target="frmright">Teacher information</a></span></td>
                    </tr>
                  </table></td>
                </tr> 
                
                </table>
                 </td>
        </tr> 
           <%--  --%>
       <tr id="Tr4" onClick="show(10)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Other queries</span></td>
        </tr>
        <tr id="show10" style="display:none">
          <td align="center" valign="top" bgcolor="D4ECFC">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=YChengGuoList.aspx target="frmright">Teaching achievement</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" style="height: 30px"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" style="height: 30px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=YGongGaoList.aspx target="frmright">Rules and regulations</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
                
                
                
                 <tr>
                  <td width="10" style="height: 30px"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" style="height: 30px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=YKeYanList.aspx target="frmright">Research project</a></span></td>
                    </tr>
                  </table></td>
                </tr>
         
                   <tr>
                  <td width="10" style="height: 30px"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" style="height: 30px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=YWenJian_List.aspx target="frmright">File download</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                </table>
                 </td>
        </tr> 
          
  

 
    </form>
</body>
</html> 
