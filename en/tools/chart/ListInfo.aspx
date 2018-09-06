<%@ Page Title="" Language="C#" MasterPageFile="ListBase.Master" AutoEventWireup="true" CodeBehind="ListInfo.aspx.cs" Inherits="SkyServer.Tools.Chart.ListInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
<div class="content">

<h1>SDSS <%=globals.Release%> Image List Tool</h1>


<table BORDER=0 WIDTH="440"  cellpadding=1 cellspacing=1>
  
	<tr VALIGN=top><td>
		This page is to generate image cutouts of SDSS images based upon a user defined list 
		of object positions. In order to avoid congestion on the server, the list is currently 
		limited to 1000 objects. If this is a problem, please submit your list in pieces.
		<p>
		If you're new to the Image List tool, please see the <a href="<%=url%>/tools/chart/default.aspx"
		target="Visual">Visual Tools main page</a> and <a href="#list" onclick=
		"window.open('../started/list.aspx','popup','width=440,height=580,resizeable,scrollbars');">
		Getting Started with Image List</a>.
		<br>&nbsp;<br>
For the description of the other options see the Help section of the <a href="chartinfo.aspx">Finding Chart</a>. The format of the list can be from the following choices:
 	<br>
	<ol>

		<li><b>List of (ra,dec) pairs</b><br>
Always ra comes first, followed by dec. Both ra and dec can be in degrees or hh:mm:ss.s dd:mm:ss.s format. The separator can be any white space or a comma.<br>

		<li><b>List of (name,ra,dec) triplets</b><br>
The fields must always be in this order. The name can be any single alphanumeric string containing at most an underscore and a dot (like ABC_1234.32). Both ra and dec can be in degrees or hh:mm:ss.s dd:mm:ss.s format. The separator can be any white space or a comma.<br>

		<li><b>Same as above, with a single header line</b><br>
The formats (1) and (2) can also contain a single header line, containing the column names. The header must use the same separator as the data. The names ra and dec are mandatory.

		<li><b>Lists in the IRSA Gator format</b><br>
For details see the IRSA website. 


	</ol>
	</td></tr>
</table>

		<hr width="540" align="left">
		<span class='s'>	Authors: Jim Gray, Alex Szalay, Maria Nieto-Santisteban, Tamas Budavari, February 2004.</span>

</div>
</asp:Content>
