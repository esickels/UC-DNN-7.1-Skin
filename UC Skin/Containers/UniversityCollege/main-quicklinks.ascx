<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div id="quicklinks">

	<span><dnn:TITLE runat="server" id="dnnTITLE" CssClass="quicklinks-title" />:</span>

	<div id="ContentPane" runat="server" class="quicklinks">
	</div>
</div>
	<div class="c_footer">
	</div>
