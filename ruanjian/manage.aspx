<%@ Page Language="C#"  MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<STYLE>.main_left {
	TABLE-LAYOUT: auto; BACKGROUND: url(images/left_bg.gif)
}
.main_left_top {
	BACKGROUND: url(images/left_menu_bg.gif); PADDING-TOP: 5px
}
.main_left_title {
	PADDING-LEFT: 15px; FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #fff; TEXT-ALIGN: left
}
.left_iframe {
	BACKGROUND: none transparent scroll repeat 0% 0%; VISIBILITY: inherit; WIDTH: 180px; HEIGHT: 92%
}
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 500px;
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: tahoma, ËÎÌו, fantasy
}
TD {
	FONT-SIZE: 12px; FONT-FAMILY: tahoma, ËÎÌו, fantasy
}
</STYLE>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<IFRAME class="main_iframe" id="frmright" name="frmright" src="tab.aspx" frameBorder=0></IFRAME>
</asp:Content>
