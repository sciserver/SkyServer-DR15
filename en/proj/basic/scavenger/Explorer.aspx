<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Explorer.aspx.cs" Inherits="SkyServer.Proj.Scavenger.Explorer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The Object Explorer</h1>

<p>Look again at the <a href="../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a>. The Navigation Tool is designed to give you a quick look at objects as seen by the SDSS. To examine spectra, you need to use another tool called the Object Explorer. But first, how do you know which objects have spectra measured?</p>

<p>In the left-hand frame of the Navigation tool, click the checkbox marked "SpecObj." The main frame will reload with small red boxes around all objects for which the SDSS has measured a spectrum, as shown in the image below:</p>

<img src="images/navi_specobj.jpg" border=0>

<p>Click on any of the objects in the red boxes, then click the "Explore" link in the right-hand frame. A new window will open containing the Object Explorer.</p>

<img src="images/explore.jpg">

<p>Scroll down to the bottom of the page. The spectrum is the graph at the lower left. Just above the graph, look at the piece of data labeled "class." Class indicates what type of object this is. The example in the screenshot above says GALAXY under class, so the object is a galaxy.</p>

<p>Click Next to learn about the types of objects you will see.</p>


</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="spectra.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="objecttypes.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
