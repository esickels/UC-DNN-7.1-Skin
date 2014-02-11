<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="YEAR" Src="~/Admin/Skins/currentyear.ascx" %>
<%@ Register TagPrefix="dnn" TagName="RadMenu" Src="~/Admin/Skins/DNNRadMenu/DNNRadMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>

<script type="text/javascript">
//SEE status.js FOR DETAILS
var crisis_com_show_all_clear = false;
var crisis_com_campus = "iupui";
var crisis_com_show_output = "large";
</script>
<script type="text/javascript" src="/Portals/_default/Skins/UniversityCollege/js/status.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
 
 
	<div class="topbar">
		<div class="container1">
			<a href="http://www.iupui.edu/" alt="IUPUI Homepage"><img src="/Portals/_default/Skins/UniversityCollege/img/IU.png" height="73" width="64" alt=" "></a>
		</div>
        <div class="container">
			<a href="http://www.iupui.edu/" alt="IUPUI Homepage"><img class="IULogo" src="/Portals/_default/Skins/UniversityCollege/img/logoIU.png" alt=" "></a>
		</div>
	</div>
	<div class="masthead masthead-interior">
		<div class="container">
			<div class="left">
				<a id="ucol-home" href="http://uc.iupui.edu/" alt="University College Homepage"></a>
				<p id="logo"><dnn:LOGO runat="server" id="dnnLOGO" /></p>
			</div>
			<div class="right">
				<div id="user">
					<p>
						<dnn:USER runat="server" id="dnnUSER"  CssClass="user" /> &nbsp;|&nbsp;
						<dnn:LOGIN runat="server" id="dnnLOGIN"  CssClass="user" />
					</p>
				</div>
				    <div id="VivoSearchPane" class="vivoSearch" runat="server"></div>
			</div>
			<div id="navigation">
            	
				<dnn:RADMENU runat="server" id= "dnnMENU" CssClass="nav" expandAnimationType="none" collapseAnimationType="none" collapseDelay="200" expandDelay="200" enablePageIcons="false"/>  
			</div>
			<div class="interior-container">
				<div id="ContentPane" class="ContentPane" runat="server"></div>
				<br class="float-clear"/>
			</div>
		</div>
	</div>
<div class="footerInterior">
    	
        <br />
		<div class="container">
			<div id="left-footer">
				<div id="sub-navigation">
					<dnn:RADMENU runat="server" id="dnnSUBNAV" CssClass="nav" expandAnimationType="none" collapseAnimationType="none" collapseDelay="200" MaxLevel="0" enablePageIcons="false" />
				</div>
				<ul class="footer-links first">
                	<li><a alt="IU Homepage" href="http://www.iu.edu/"><img width="22" height="26" alt="" src="Portals/_default/Skins/UniversityCollege/img/IUfooter.png" /></a></li>
				</ul>
				<ul class="footer-links" style="margin-top:10px !important;">
					<li><a href="http://www.iu.edu/copyright/index.shtml">Copyright</a> &copy; 2002-<dnn:YEAR runat="server" id="CopyrightYear"/> The Trustees of Indiana University</li> | 
					<li><a href="http://www.indiana.edu/comments/complaint.shtml">Copyright Complaints</a></li> | 
					<li><a href="http://www.uc.iupui.edu/aboutus/privacypolicy.aspx">Privacy Policy</a></li>
				</ul>			
			</div>
			<div class="footer-info">
				<div id="FooterInfoPane" class="ContentPane" runat="server"></div>
			</div>
		</div>
		<br class="float-clear" />
	</div>
