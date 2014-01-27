<%@ Control language="vb" CodeBehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ADDCONTENT" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SYNDICATEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRINTMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MODULESETTINGS" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DELETEMODULE" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td valign="top">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td valign="top" class="EON_MI_BLF02TL"><img alt="" src="<%=skinpath%>dummy.gif" width="10" height="1"  border="0" /></td>
		<td valign="top" class="EON_MI_BLF02T">
				<table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td class="EON_MI_BLF02Titletd"><dnn:TITLE runat="server" id="dnnTITLE" Cssclass="EON_MI_BLF02Title"/></td>
					<td class="EON_MI_BLF02Actionstd"><dnn:SOLPARTACTIONS runat="server" id="dnnSOLPARTACTIONS" /></td>
				</tr></table>
		</td>
		<td valign="top" class="EON_MI_BLF02tr"><dnn:VISIBILITY runat="server" id="dnnVISIBILITY" MinIcon="icomax_Minimalist.png" MaxIcon="icomin_Minimalist.png" /></td>
	</tr></table>

</td></tr>
<tr>
	<td class="EON_MI_BLF02Content" id="ContentPane" runat="server" valign="top"></td>
</tr>
<tr>
	<td class="EON_MI_BLF02Icons"><dnn:DELETEMODULE runat="server" id="dnnDELETEMODULE" CommandName="DeleteModule.Action" DisplayIcon="True" DisplayLink="True" /><dnn:MODULESETTINGS runat="server" id="dnnMODULESETTINGS" CommandName="ModuleSettings.Action" DisplayIcon="True" DisplayLink="True" /><dnn:ADDCONTENT runat="server" id="dnnADDCONTENT" CommandName="AddContent.Action" DisplayIcon="True" DisplayLink="True" /><dnn:SYNDICATEMODULE runat="server" id="dnnSYNDICATEMODULE" CommandName="SyndicateModule.Action" DisplayIcon="True" DisplayLink="False" /><dnn:PRINTMODULE runat="server" id="dnnPRINTMODULE" CommandName="PrintModule.Action" DisplayIcon="True" DisplayLink="False" /></td>
</tr>
</table>








