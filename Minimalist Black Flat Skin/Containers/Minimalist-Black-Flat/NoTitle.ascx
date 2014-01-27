<%@ Control language="vb" CodeBehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ADDCONTENT" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SYNDICATEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRINTMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MODULESETTINGS" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DELETEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>

<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td valign="top">
</td></tr>
<tr>
	<td class="BCC_MINIPS_NoTitle01Content" id="ContentPane" runat="server" valign="top"></td>
	<td class="BCC_MINIPS_NoTitle01Actionstd"><dnn:SOLPARTACTIONS runat="server" id="dnnSOLPARTACTIONS" /></td>
</tr>
</table>








