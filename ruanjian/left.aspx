<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>left</title><script src="js/menu.js"></script>
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
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=AdminMod.aspx target="frmright">Change Password</a></span></td>
                    </tr>
                  </table></td>
                </tr>
        </table></td>
        </tr>
        
        <tr id="Tr2" onClick="show(3)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Teacher management</span></td>
        </tr>
        <tr id="show3" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=teacher.aspx target="frmright">Add teacher</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=Teacher_List.aspx target="frmright">Teacher management</a></span></td>
                    </tr>
                  </table></td>
                </tr>
        </table></td>
        </tr>
        
        
        <tr id="Tr7" onClick="show(4)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Management of Scientific Research Projects</span></td>
        </tr>
        <tr id="show4" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=KeYan.aspx target="frmright">Adding scientific research projects</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
                <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=KeYanList.aspx target="frmright">Management of Scientific Research Projects</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                 </table>
                 </td>
        </tr> 
        
        
        <tr id="Tr3" onClick="show(5)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">file management</span></td>
        </tr>
        <tr id="show5" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=WenJian.aspx target="frmright">Add files</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=WenJian_List.aspx target="frmright">file management</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
                </table>
                 </td>
        </tr> 
                 
                
                
                
                 <tr id="Tr6" onClick="show(6)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Management of Teaching Achievements</span></td>
        </tr>
        <tr id="show6" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          
                 <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=ChengGuo.aspx target="frmright">Adding Teaching Achievements</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=ChengGuoList.aspx target="frmright">Management of Teaching Achievements</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
                  </table>
                 </td>
        </tr> 
              
                
                
                 <tr id="Tr9" onClick="show(7)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">course management</span></td>
        </tr>
        <tr id="show7" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0"> 
          <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=KeBiao.aspx target="frmright">Add timetable</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" style="height: 30px"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" style="height: 30px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td style="cursor:hand; height: 30px; width: 89px;" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=KeBiao_List.aspx target="frmright">Timetable management</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                </table>
           
 
        
             <%--  --%>
             
           <tr id="Tr8" onClick="show(17)">
          <td height="25" background="images/list_task.jpg"> <span class ="style1">Rules and regulations</span></td>
        </tr>
        <tr id="show17" style="display:none">
          <td align="center" valign="top">
          <table width="145" border="0" align="center" cellpadding="0" cellspacing="0"> 
          <tr>
                  <td width="10" height="30"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=GongGao.aspx target="frmright">Adding rules and regulations</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="10" style="height: 30px"><div align="center"><img src="images/top_4.gif"></div></td>
                  <td width="89" style="height: 30px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td style="cursor:hand; height: 30px; width: 89px;" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class ="STYLE2">&nbsp;<a href=GongGaoList.aspx target="frmright">Rules and regulations</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                </table>
           
 
       
          
       
</table>
    </div>
    </form>
</body>
</html> 
