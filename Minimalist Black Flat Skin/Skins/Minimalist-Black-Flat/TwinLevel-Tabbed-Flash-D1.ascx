<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTMENU" Src="~/Admin/Skins/SolPartMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTMENU2" Src="~/Admin/Skins/SolPartMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTMENU3" Src="~/Admin/Skins/SolPartMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<script runat="server">
Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
Dim oCSS As Control = Me.Page.FindControl("CSS")
If Not oCSS is Nothing Then
Dim oLink As New HtmlGenericControl("link")
oLink.Attributes("id") = "backgroundClassTag"
oLink.Attributes("rel") = "stylesheet"
oLink.Attributes("type") = "text/css"
oLink.Attributes("href") = ""
oCSS.Controls.AddAt(0, oLink)
oLink = New HtmlGenericControl("link")
oLink.Attributes("id") = "borderStyleClassTag"
oLink.Attributes("rel") = "stylesheet"
oLink.Attributes("type") = "text/css"
oLink.Attributes("href") = ""
oCSS.Controls.AddAt(0, oLink)
oLink = New HtmlGenericControl("link")
oLink.Attributes("id") = "borderTypeClassTag"
oLink.Attributes("rel") = "stylesheet"
oLink.Attributes("type") = "text/css"
oLink.Attributes("href") = ""
oCSS.Controls.AddAt(0, oLink)
oLink = New HtmlGenericControl("script")
oLink.Attributes("language") = "javascript"
oLink.Attributes("type") = "text/javascript"
oLink.Attributes("src") = SkinPath & "flashassets/AC_RunActiveContent.js"
oCSS.Controls.AddAt(0, oLink)
End if
End Sub
</script>
<% dnnSOLPARTMENU2.Visible = iif(PortalSettings.ActiveTab.Level>0,"True","False") %>
<% dnnSOLPARTMENU3.Visible = iif(PortalSettings.ActiveTab.Level>0,"False",PortalSettings.ActiveTab.HasChildren) %>
<script type="text/javascript" language="JavaScript">
if (window.ActiveXObject)
{xmlDoc=new ActiveXObject("Microsoft.XMLDOM");}
else if (document.implementation.createDocument)
{xmlDoc=document.implementation.createDocument("","",null);}
else {alert('Your browser cannot handle this script');}
xmlDoc.async=false;
xmlDoc.load("<%=skinpath%>settings-skin.xml");
x2=xmlDoc.getElementsByTagName('skindisplay');
var backgroundColorValue=x2.item(0).attributes[0].value;
var backgroundStyleValue=x2.item(0).attributes[1].value;
var borderStyleValue=x2.item(0).attributes[2].value;
var borderTypeValue=x2.item(0).attributes[3].value;
var backgroundCssUrl='<%=skinpath%>backgrounds/'+backgroundColorValue+'/'+backgroundStyleValue+'.css';
var borderStyleCssUrl='<%=skinpath%>BorderStyle-'+borderStyleValue+'.css';
var borderTypeCssUrl='<%=skinpath%>BorderType-'+borderTypeValue+'.css';
var jsSkinPath='<%=skinpath%>';
function changeCssSource(elementId,elementUrl){
document.getElementById(elementId).setAttribute("href", elementUrl);
}
if (borderTypeValue=="Open") {
changeCssSource('borderTypeClassTag',borderTypeCssUrl); 
}
else {
changeCssSource('backgroundClassTag',backgroundCssUrl);
changeCssSource('borderStyleClassTag',borderStyleCssUrl);
changeCssSource('borderTypeClassTag',borderTypeCssUrl); 
}</script>

<table id="borderStyle" border="0" cellspacing="0" cellpadding="0" class="SkinBox FullHeight FullWidth">
  <tr>
	<td align="center" valign="top" class="BackgroundTile FullHeight">
<table id="fullheight" class="OuterTable BackgroundTopStretch FullHeight" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td align="center" valign="top" class="OuterTD BackgroundImage FullHeight">
    <table class="MainBox" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="BoxTL"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
    <td class="BoxT"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
    <td class="BoxTR"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
  </tr>
  <tr>
    <td class="BoxL"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
    <td class="BoxM" valign="top">
						<table align="center" class="FullHeight StandardWidth" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td class="LogoRow" colspan="2">
								<table width="100%" cellpadding="0" cellspacing="0" border="0"><tr>
								<td class="LogoTD">
									<dnn:LOGO runat="server" id="dnnLOGO" BorderWidth="0"/>
								</td>
								<td class="LoginTD" valign="top" nowrap="nowrap">
									<div><dnn:LANGUAGE CssClass="Language_object" runat="server" id="dnnLANGUAGE" showMenu="False" showLinks="True" /><br /><br /><dnn:USER runat="server" id="dnnUSER" CssClass="USER_object" /><dnn:LOGIN runat="server" id="dnnLOGIN" CssClass="LOGIN_object" /></div><br /><br /><br /><dnn:CURRENTDATE runat="server" id="dnnCURRENTDATE" CssClass="DATE_object" />
								</td>
								</tr>
								</table>
							</td>
						  </tr>
						  <tr>
							<td class="ImagePane01 Height1px" colspan="2" valign="top" id="ImagePane01" runat="server" visible="false"></td>
						  </tr>
						  <tr>
							<td class="MenuHeight" colspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td class="MenuLeft"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" /></td>
									<td class="MenuTD MenuHeight">
									
															<dnn:SOLPARTMENU
															runat="server"
															id="dnnSOLPARTMENU"
															menualignment="left"
															separatecss="true"
															userootbreadcrumbarrow="false"
															usesubmenubreadcrumbarrow="false"
															menueffectsmouseoverdisplay="none"
															rootmenuitemcssclass="MainMenu_Idle"
															rootmenuitemactivecssclass="MainMenu_Selected"
															rootmenuitemselectedcssclass="MainMenu_Selected"
															rootmenuitembreadcrumbcssclass="MainMenu_BreadcrumbActive"
															rootmenuitemlefthtml="<div><div><div>&nbsp;&nbsp;&nbsp;"
															rootmenuitemrighthtml="&nbsp;&nbsp;&nbsp;</div></div></div>"
                                                            submenuitemrighthtml="&nbsp;"
															separator="<div class='MainMenu_Seperator'>&nbsp;</div>"
                                                            usearrows="true"
                                                            level="root"
                                                            rootonly="true"
                                                            useskinpatharrowimages="true"
                                                            rightarrow="menuarrow.png"
                                                            />
									</td>
									<td class="MenuRight"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" /></td>
								  </tr>
							  </table>
							</td>
						  </tr>
						  <tr>
							<td id="minSubMenus" class="showitem<%= iif(PortalSettings.ActiveTab.Level>0,"True",PortalSettings.ActiveTab.HasChildren)%>" colspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td class="SubMenuLeft"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" /></td>
									<td class="SubMenuTD SubMenuHeight">
									
                                                            <dnn:SOLPARTMENU2
															runat="server"
															id="dnnSOLPARTMENU2"
															menualignment="left"
															separatecss="true"
															userootbreadcrumbarrow="false"
															usesubmenubreadcrumbarrow="false"
															menueffectsmouseoverdisplay="none"
															rootmenuitemcssclass="SubMenu_Idle"
															rootmenuitemactivecssclass="SubMenu_Selected"
															rootmenuitemselectedcssclass="SubMenu_Selected"
															rootmenuitembreadcrumbcssclass="SubMenu_BreadcrumbActive"
															rootmenuitemlefthtml="<div><div><div>&nbsp;&nbsp;&nbsp;"
															rootmenuitemrighthtml="&nbsp;&nbsp;&nbsp;</div></div></div>"
                                                            submenuitemrighthtml="&nbsp;"
															separator="<div class='MainMenu_Seperator'>&nbsp;&nbsp;&nbsp;</div>"
                                                            level="same"
                                                            rootonly="false"
                                                            useskinpatharrowimages="true"
                                                            rightarrow="menuarrow.png"
															/>
                                                            <dnn:SOLPARTMENU3
															runat="server"
															id="dnnSOLPARTMENU3"
															menualignment="left"
															separatecss="true"
															userootbreadcrumbarrow="false"
															usesubmenubreadcrumbarrow="false"
															menueffectsmouseoverdisplay="none"
															rootmenuitemcssclass="SubMenu_Idle"
															rootmenuitemactivecssclass="SubMenu_Selected"
															rootmenuitemselectedcssclass="SubMenu_Selected"
															rootmenuitembreadcrumbcssclass="SubMenu_BreadcrumbActive"
															rootmenuitemlefthtml="<div><div><div>&nbsp;&nbsp;&nbsp;"
															rootmenuitemrighthtml="&nbsp;&nbsp;&nbsp;</div></div></div>"
                                                            submenuitemrighthtml="&nbsp;"
															separator="<div class='MainMenu_Seperator'>&nbsp;&nbsp;&nbsp;</div>"
                                                            level="child"
                                                            rootonly="false"
                                                            useskinpatharrowimages="true"
                                                            rightarrow="menuarrow.png"
															/>
									</td>
									<td class="SubMenuRight"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" /></td>
								  </tr>
							  </table>
							</td>
						  </tr>
						  <tr>
							<td class="FlashTD Height1px" colspan="2" valign="top">
								<script language="javascript">
                                    if (AC_FL_RunContent == 0) {
                                        alert("This page requires AC_RunActiveContent.js.");
                                    } else {
                                        AC_FL_RunContent('codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0', 'width', '946', 'height', '170', 'src', '<%=skinpath%>flashassets/flashheader', 'flashvars','srcUrls=<%=skinpath%>&srcUrlsFile=<%=PortalSettings.ActiveTab.SkinSrc%>', 'quality', 'high', 'pluginspage', 'http://www.macromedia.com/go/getflashplayer', 'align', 'middle', 'play', 'true', 'loop', 'true', 'scale', 'showall', 'wmode', 'window', 'devicefont', 'false', 'id', 'flashheader', 'bgcolor', '#ffffff', 'name', 'flashheader', 'menu', 'true', 'allowFullScreen', 'false', 'allowScriptAccess','sameDomain', 'movie', '<%=skinpath%>flashassets/flashheader', 'wmode','transparent', 'salign', ''); //end AC code
                                    }
                                </script>
                                <noscript>
                                    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="946" height="170" id="flashheader" align="middle">
                                    <param name="allowScriptAccess" value="sameDomain" />
                                    <param name="allowFullScreen" value="false" />
                                    <param name="flashvars" value="srcUrls=<%=skinpath%>&srcUrlsFile=<%=PortalSettings.ActiveTab.SkinSrc%>" />
                                    <param name="wmode" value="transparent" />
                                    <param name="movie" value="<%=skinpath%>flashassets/flashheader.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />	<embed src="<%=skinpath%>flashassets/flashheader.swf" quality="high" bgcolor="#ffffff" width="946" height="170" name="flashheader" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" flashvars="srcUrls=<%=skinpath%>&srcUrlsFile=<%=PortalSettings.ActiveTab.SkinSrc%>" wmode="transparent" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
                                    </object>
                                </noscript>
                            </td>
						  </tr>
						  <tr>
							<td class="BreadcrumbsRow" colspan="2">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td class="BreadcrumbsTD"><dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB" RootLevel="0" cssClass="BREADCRUMBS_object" Separator="&nbsp;&nbsp;&nbsp;&raquo;&nbsp;&nbsp;&nbsp;" /></td>
									<td class="SearchTD"><dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="SearchFeild" ShowSite="False" ShowWeb="False" Submit="<span class='SearchButton'>&nbsp;</span>" /><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="215" /></td>
								  </tr>
								</table>
							</td>
						  </tr>
						  <tr>
							<td class="ImagePane03 Height1px" colspan="2" valign="top" id="ImagePane03" runat="server" visible="false"></td>
						  </tr>
						  <tr>
							<td class="ContentPanesTD" colspan="2">
											<table width="100%" cellpadding="0" cellspacing="0">
												<tr>
													<td colspan="2" class="PanePad Width100p" valign="top" id="TopPane" runat="server" visible="false"></td>
												</tr>
												<tr>
													<td class="PanePad Width50p" valign="top" id="LeftPane" runat="server" visible="false"></td>
													<td class="PanePad Width50p" valign="top" id="RightPane" runat="server" visible="false"></td>
												</tr>
											</table>
											<table width="100%" cellpadding="0" cellspacing="0">
												<tr>
													<td colspan="3" class="PanePad Width100p" valign="top" id="TopPane2" runat="server" visible="false"></td>
												</tr>
												<tr>
													<td class="PanePad Width25p" valign="top" id="LeftPane2" runat="server" visible="false"></td>
													<td class="PanePad" valign="top" id="ContentPane" runat="server" visible="false"></td>
													<td class="PanePad Width25p" valign="top" id="RightPane2" runat="server" visible="false"></td>
												</tr>
												<tr>
													<td colspan="3" class="PanePad Width100p" valign="top" id="BottomPane" runat="server" visible="false"></td>
												</tr>
											</table>
											<table width="100%" cellpadding="0" cellspacing="0">
												<tr>
													<td class="PanePad Width33p" valign="top" id="LeftPane3" runat="server" visible="false"></td>
													<td class="PanePad" valign="top" id="ContentPane2" runat="server" visible="false"></td>
													<td class="PanePad Width33p" valign="top" id="RightPane3" runat="server" visible="false"></td>
												</tr>
												<tr>
													<td colspan="3" class="PanePad Width100p" valign="top" id="BottomPane2" runat="server" visible="false"></td>
												</tr>
											</table>
							</td>
						  </tr>
						  <tr>
							<td class="SpaceBar" colspan="2"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="186" /></td>
						  </tr>
						  <tr>
							<td class="FooterRow" colspan="2"><div class="FooterBox">
								<table class="FooterTable" width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td class="FooterTL"><img src="<%=skinpath%>dummy.gif" alt="" height="6" width="6" /></td>
									<td rowspan="3" class="FooterPane Width100p" valign="top" id="FooterPane" runat="server" visible="true"></td>
									<td class="FooterTR"><img src="<%=skinpath%>dummy.gif" alt="" height="6" width="6" /></td>
								  </tr>
								  <tr>
									<td class="FooterL"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="6" /></td>
									<td class="FooterR"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="6" /></td>
								  </tr>
								  <tr>
									<td class="FooterBL"><img src="<%=skinpath%>dummy.gif" alt="" height="6" width="6" /></td>
									<td class="FooterBR"><img src="<%=skinpath%>dummy.gif" alt="" height="6" width="6" /></td>
								  </tr>
								</table></div>
							</td>
						  </tr>
						  <tr>
							<td class="CopyrightRow" colspan="2">
								<table width="100%" cellpadding="0" cellspacing="0"><tr>
									<td valign="top" class="PrivacyTD" nowrap="nowrap">
									<span class="FOOTER_objects"><dnn:PRIVACY runat="server" id="dnnPRIVACY" CssClass="FOOTER_objects" />&nbsp; | &nbsp;<dnn:TERMS runat="server" id="dnnTERMS" CssClass="FOOTER_objects" /></span>
									</td>
									<td valign="top" class="CopyrightTD" nowrap="nowrap">
									<span class="FOOTER_objects"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>ico-login-over.gif" height="1" width="1" alt="" class="Invisible" /><img src="<%=skinpath%>ico-register-over.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>subnav-idle-l.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>subnav-idle.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>subnav-idle-r.gif" alt="" height="1" width="1" class="Invisible" /><br /><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="FOOTER_objects" /></span>
									</td>
								</tr></table>
				
							</td>
						  </tr>
						</table>
</td>
    <td class="BoxR"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
  </tr>
  <tr>
    <td class="BoxBL"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
    <td class="BoxB"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
<td class="BoxBR"><img src="<%=skinpath%>dummy.gif" alt="" height="11" width="11" /></td>
  </tr>
</table>
	</td>
  </tr>
</table>
	</td>
  </tr>
</table>



