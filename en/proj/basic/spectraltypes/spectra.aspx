<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="spectra.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Lines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Classifying by Line Strength</div>

<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <h1>Stellar Spectra</h1>

        <p>Each star's full optical spectrum is shown with a zoom-in of its H-alpha line below it. Click on the image 
to see a larger version.</p>

<table>
<tr><td>
      <h1>Star #1</h1>
	<a href="images/star1.jpg">	
	<img src="images/star1_med.jpg">
	</a>

</td><td>

      <h1>Star #2</h1>
	<a href="images/star2.jpg">	
	<img src="images/star2_med.jpg">
	</a>
</td></tr><tr><td>
      <h1>Star #3</h1>
	<a href="images/star3.jpg">	
	<img src="images/star3_med.jpg">
	</a>
</td><td>
      <h1>Star #4</h1>
	<a href="images/star4.jpg">	
	<img src="images/star4_med.jpg">
	</a>
</td></tr><tr><td>
      <h1>Star #5</h1>
	<a href="images/star5.jpg">	
	<img src="images/star5_med.jpg">
	</a>
</td><td>
      <h1>Star #6</h1>
	<a href="images/star6.jpg">	
	<img src="images/star6_med.jpg">
	</a>
</td></tr><tr><td colspan="2">
      <h1>Star #7</h1>
	<a href="images/star7.jpg">	
	<img src="images/star7_med.jpg">
	</a>
</td></tr>
</table>
        <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="lines.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: absorption lines" /></a>
      <a href="temperature.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: classifying by temperature" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
