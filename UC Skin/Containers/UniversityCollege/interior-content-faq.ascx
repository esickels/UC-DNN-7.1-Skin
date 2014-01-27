<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<div class="interior-faq">
    	<h2><dnn:TITLE runat="server" id="dnnTITLE" CssClass="InteriorH2"/></h2>

	<p id="ContentPane" runat="server">
	</p>
    	<div class="c_footer">
	</div>
</div>

