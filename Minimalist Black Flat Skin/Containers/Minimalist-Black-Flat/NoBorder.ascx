<%@ Control language="vb" CodeBehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ADDCONTENT" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SYNDICATEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRINTMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MODULESETTINGS" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DELETEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>

<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td valign="top">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td valign="top" class="BCC_MINIPS_NoBorder01T">
				<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td class="BCC_MINIPS_NoBorder01Titletd"><dnn:TITLE runat="server" id="dnnTITLE" Cssclass="BCC_MINIPS_NoBorder01Title"/></td>
					<td class="BCC_MINIPS_NoBorder01Actionstd"><dnn:SOLPARTACTIONS runat="server" id="dnnSOLPARTACTIONS" /></td>
				</tr></table>
		</td>
	</tr></table>

</td></tr>
<tr>
	<td class="BCC_MINIPS_NoBorder01Content" id="ContentPane" runat="server" valign="top"></td>
</tr>
</table>








