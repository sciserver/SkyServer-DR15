<%@ Page Title="" Language="C#" MasterPageFile="~/en/tools/ToolsMaster.master" AutoEventWireup="true" CodeBehind="IRQS.aspx.cs" Inherits="SkyServer.Tools.Search.IRQS" %>
<%@ Register TagPrefix="uc" TagName="QS_Parameter" Src="QS_Parameter.ascx" %>
<%@ Register TagPrefix="uc" TagName="QS_Position" Src="QS_Position.ascx" %>
<%@ Register TagPrefix="uc" TagName="QS_IRSpec" Src="QS_IRSpec.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<style>
	td,p	{font-size:9pt; color:#000000}
	.tiny	{font-size:8pt; color:#000000}
	.med	{font-size:9pt; color:#000000}
	.qtitle {font-size:10pt;color:#ffffff;font-weight:bold;}
	.q	{font-size:8pt; background-color:#dddddd}
	.frame	{background-color:#aaaaaa;}
	a		{color:#000088;font-weight:normal;}
	.pos	{width:66px}
	.mag	{width:80px}
    .params {width:50px}
    .abunds	{width:80px}
	.name	{width:200px}
	.txt	{width:260px}
</style>

<a href="../../help/docs/QS_UserGuide.aspx" onmouseover="return escape('Form query for imaging data.  Click to see User Guide.');">
<div id="title">Infrared Spectroscopy Query Form</div></a>

<script language="javascript" src="validate_search.js"></script>
<script> 

    function goToWindow() {
        var w = window.open("", 'search');
        w.focus();
    }

</script>

<div id="transp">
<form method="post" target="search" enctype="multipart/form-data" action="x_results.aspx" id=irqs name="irqs">
    <input type="hidden" name="searchtool" id="searchtool" value="IRSpectra" />
    <input type="hidden" name="TaskName" id="TaskName" value="Skyserver.Search.IRQS"/>
    <input type="hidden" name="ReturnHtml" id="ReturnHtml" value="true" />
<!------------------------------------------------------->
<table border=0 cellspacing=3 cellpadding=3 bgcolor=#aaaaaa>
  <tr><td>
    <uc:QS_Parameter id="QS_Parameter1" runat="server"></uc:QS_Parameter>
    <uc:QS_Position id="QS_Position1" runat="server"></uc:QS_Position>
    <uc:QS_IRSpec id="QS_IRSpec1" runat="server"></uc:QS_IRSpec>
  </td></tr>
</table>
<!------------------------------------------------------->
</form>
</div>
</asp:Content>
