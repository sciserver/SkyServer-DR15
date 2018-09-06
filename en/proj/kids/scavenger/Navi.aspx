<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Navi.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.Navi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kidsheader">Using the Navigation Tool</p>

      <p class="kids">Click the link to open the <a href="../../../tools/chart/navi.aspx" target="tools">
      Navigation tool</a>. It will open in a new window. You will see a screen like 
      this:</p>
      <img src="../../images/navi_init.jpg">


 	  <p class="kids">The main window shows a piece of the sky. The boxes "ra" and "dec" (top left) 
 	  tell you where you are. "Get Image" puts a new part of the sky in the main window. You can 
 	  zoom in or out with the zoom bar below Get Image. Click the plus sign to zoom in or the minus sign to zoom out. You 
 	  can also move around in the sky by clicking the NWSE buttons around the image.</p>
 	  
 	  <table align=right border=0>
 	     <tr><td><img src="images/data.jpg"></td></tr>
 	  </table>
 	  
 	  <p class="kids">When you click on any star or galaxy, a green square will 
 	  come up. A close-up of the object will appear on the right. The object's 
 	  data will appear just above the close-up. The data box should look like this (probably with               different numbers):</p>

	  <p>&nbsp;</p>

	  <p class="kids">Click Next to find out what all those numbers mean.</p>


    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="colors.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="data.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
