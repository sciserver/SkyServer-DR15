<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GeneralHome.aspx.cs" Inherits="SkyServer.Help.Cooking.GeneralHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cooking with Sloan</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
<!--    <th width="33%" class="menuheadlink"><a href="../general/">General tasks</a></span></th>-->
    <th width="34%" style="font-size:large"><b>General tasks</b></th>        
    <th width="33%" class="menuheadlink"><a href="../solarsystem">Solar System</a></th>
    <th width="33%" class="menuheadlink"><a href="../stars">Stars</a></th>
  </tr>
  <tr>
    <th width="34%" class="menuheadlink"><a href="../galaxies">Galaxies</a></th>
    <th width="34%" class="menuheadlink"><a href="../quasars">Quasars/Cosmology</a></th>
    <th width="34%" class="menuheadlink"><a href="../labs">Teaching/Labs</a></th>
  </tr>
</table>

<h2>General Tasks</h2>

<p>Some problems, such as getting images, searching for objects by magnitude, and matching two 
datasets, appear in all areas of astronomy research. These guides will give you step-by-step directions 
for solving these problems with SDSS data.</p>

<p>Click on one of the questions below to see a guide. Open the tools through the links provided in the 
guides, and follow along as you read.</p>

<h2>How do I...</h2>

<ol>
<li><p><a href="getimage.aspx">Get an image and spectrum of my favorite object?</a></p></li>
<li><p><a href="flags.aspx">Find out if SDSS's imaging data for an object are reliable?</a></p></li>
<li><p><a href="getdata.aspx">Find data for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</a></p></li>
<li><p><a href="searchimage.aspx">Find images and spectra for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</a></p></li>
<li><p><a href="crossid.aspx">Upload my own data to see what the SDSS knows about those objects?</a></p></li>
<li><p><a href="random.aspx">Get a random subset of the data?</a></p></li>
<li><p><a href="pairs.aspx">Find closely paired objects?</a></p></li>
<li><p><a href="finding.aspx">Create a finding chart for my telescope?</a></p></li>

</ol>
<hr />

<p><a href="../">Back to Cooking with Sloan main page</a></p>
<p><a href="../../">Back to Help main page</a></p>
<p> <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>

<p>&nbsp;</p>

</td></tr>
</table>
</div>
</asp:Content>
