<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Clusters.aspx.cs" Inherits="SkyServer.Proj.Galaxies.Clusters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Galaxy Clusters</h1>
      <table border="1" cellspacing="1" id="AutoNumber1" align="right">
        <tr>
          <td width="100%">
          <a href="../../../get/frameByRCFZ.aspx?Z=1&R=756&C=1&F=251">
          <img src="images/756-1-251.jpg" border="0" width="251" height="252"></a></td>
        </tr>
        <tr>
          <td width="100%">
          <p class=caption align="center">Abell 957<br>Click for a larger image</td>
        </tr>
      </table>
      <p>Galaxies are not evenly distributed throughout the universe. 
      Gravity tends to make galaxies clump together. Small clumps of galaxies are called 
      "groups." Our galaxy, the Milky Way, belongs to a group that we call the Local 
      Group; it contains about 30 known galaxies (although there may be several 
      undiscovered dwarf galaxies in the group, so the actual number is not 
      known).</p>
      <p>Galaxy clusters typically contain hundreds or even thousands of 
      galaxies. The picture at the right shows a famous cluster called 
      Abell 957. The cluster is named after George Abell, an American 
      astronomer who published a catalog of galaxy clusters in 1958.</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%" height="219"><p><strong>Exercise 3. 
          </strong> Use the Navigation tool to look up a few galaxies in Abell 957. 
          Open the tool by clicking the link below, which will take you to the location of Abell 957: RA = 153.4, 
          Dec = -0.90. Click "Get Image." Click Zoom Out (the minus sign) once, and you 
          should be able to see the whole cluster. Click on any galaxy, and its basic data 
          should appear at the right. Click "Save in Notes" to save the galaxy's 
          data in your online notebook.</p>
          <p>Think about how you know which galaxies are part of Abell 957, 
          and which are just other galaxies at different distances in the same 
          part of the sky. Click on ten or so galaxies that you think are part of 
          the cluster, both spirals and ellipticals, and save them in your 
          notebook. How are these galaxies similar? How are they different?</p>
          <p><a href="../../../tools/chart/navi.aspx?ra=153.4&dec=-0.90" target="tools">
          Launch the Navigation tool for Abell 957</a></td>
        </tr>
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
      <td><a href="tuningfork.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="collisions.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
