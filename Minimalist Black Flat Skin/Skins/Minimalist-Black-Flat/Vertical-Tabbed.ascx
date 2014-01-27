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
End if
End Sub
</script>
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
							<td class="ImagePane02V Height1px" colspan="2" valign="top" id="ImagePane02" runat="server" visible="false"></td>
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
                            <td class="PanelTD PanelWidth" valign="top"><DIV class="PanelMid PanelBG"><DIV class="PanelGrad"><DIV class="PanelBL"><DIV class="PanelBR"><DIV class="PanelTL"><DIV class="PanelTR">
                                            <dnn:SOLPARTMENU
                                                runat="server"
                                                id="dnnSOLPARTMENU"
                                                menualignment="left"
                                                separatecss="true"
                                                display="vertical"
                                                userootbreadcrumbarrow="false"
                                                usesubmenubreadcrumbarrow="false"
                                                menueffectsmouseoverdisplay="none"
                                                rootmenuitemcssclass="MainMenu_Idle"
                                                rootmenuitemactivecssclass="MainMenu_Active"
                                                rootmenuitemselectedcssclass="MainMenu_Selected"
                                                rootmenuitembreadcrumbcssclass="MainMenu_BreadcrumbActive"
                                                rootmenuitemlefthtml="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                                rootmenuitemrighthtml="&nbsp;"
                                                usearrows="true"
                                                level="root"
                                                useskinpatharrowimages="true"
                                                rightarrow="menuarrow.png"
                                                /><IMG src="<%=skinpath%>dummy.gif" height="1" width="202"><br /><br />
                                            <table width="100%" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="PanePad" valign="top" id="PanelPane" runat="server" visible="false"></td>
                                                </tr>
                                            </table>
                                </DIV></DIV></DIV></DIV></DIV></DIV></td>

							<td class="ContentPanesTD">
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
									<span class="FOOTER_objects"><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>dummy.gif" alt="" height="1" width="1" class="Invisible" /><img src="<%=skinpath%>ico-login-over.gif" height="1" width="1" alt="" class="Invisible" /><img src="<%=skinpath%>ico-register-over.gif" alt="" height="1" width="1" class="Invisible" /><br /><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="FOOTER_objects" /></span>
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



