<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Colors.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.Colors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kids"></p>
      <p class="kidsheader">Colors of Objects</p>
      <p class="kids">The Sloan Digital Sky Survey camera has five <em>filters</em>. 
      Filters are pieces 
      of glass that let in only certain colors of light. So the camera sees 
      every sky object in five colors.</p>
      
      <table width=185 border=1 align=right>
        <tr>
          <td align=center><img src="images/camera.jpg"></td>
        </tr>
        <tr>
          <td align=center><p class=caption>The SDSS camera's<br> five filters</p></td>
        </tr>
      </table>
      
      <p class="kids">The first filter is u, or ultraviolet. Ultraviolet light is the invisible 
      light that causes sunburns. The next two filters are green and red, 
      called g and r. These are colors you see every day. The last two 
      filters are "infrared light" filters called i and z. You can't see 
      infrared light, but you can feel it as heat from a stove or 
      fireplace.</p>
      
      <img src="images/brightstar.jpg" align=left>
      <p class="kids">The brightness of a sky object is called its <em>magnitude</em>. The higher the magnitude, 
      the fainter the object! That scale might seem backwards to you, but 
      astronomers have used it for thousands of years.</p>
      <p class="kids">You can use SkyServer's Navigation tool to look up the magnitude for any 
      of SkyServer's hundreds of millions of objects. Click Next to find out how.</p>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="navi.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
