<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>


<div class="adminContentPane">	
	<h2><dnn:TITLE runat="server" id="dnnTITLE" CssClass="InteriorH2"/></h2>	
	<div id="ContentPane" runat="server" style="width: 100%"></div>
</div>

	

<div class="c_footer">
</div>
