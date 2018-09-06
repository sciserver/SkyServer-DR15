<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Colors.aspx.cs" Inherits="SkyServer.Proj.Scavenger.Colors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Colors of Objects</h1>
      <p>The Sloan Digital Sky Survey camera looks at millions of objects. The 
      camera measures how bright they are in five different colors of light. 
      To see these different 
      colors, the camera looks through five different colored filters. The first 
      filter is u, or ultraviolet. Ultraviolet light is the invisible 
      light that causes sunburns. The next two filters are green and red, 
      called g and r, which are colors you see every day. The last two 
      filters are "infrared light" filters called i and z. You can't see 
      infrared light, but you can feel it by putting your hand over a burner on 
      a stove or sitting in front of a fireplace.</p>
      <p>The brightness of an object is called its magnitude. The higher the magnitude, 
      the fainter the object! That scale might seem backwards to you, but 
      astronomers have used it for thousands of years.</p>
	  <p>You can use SkyServer to look up the magnitudes of any of the <%=globals.NObj%>
	  objects the SDSS has seen. Click the link to open the <a href="../../../tools/chart/navi.aspx" target="tools">
	  Navigation Tool</a>. The tool will open in a new window. You will see a 
	  screen like this:</p>
	  
	  <a href="../../../tools/chart/navi.aspx" target="tools"><img src="../../images/navi_init.jpg" border=0></a>
	  <p><a href="../../../tools/chart/navi.aspx" target="tools">Open the Navigation Tool</a></p>

 	  <p>The boxes "ra" and "dec" in the top left of the tool give the location in the sky. 
 	  "Get Image" loads a new image. You can zoom in or out in the image with the zoom bar 
 	  below Get Image. Click the plus sign to zoom in or the minus sign to zoom out. You 
 	  can also move around in the sky by clicking the NWSE buttons around the image.</p>
 	  

      <table border=0 align=right><tr><td align=center valign=center>
         <img src="images/data.jpg">
      </td></tr></table>

 	  <p>When you click on any star or galaxy you see in the image, a green square will 
 	  come up around it. A close-up of the object will appear on the right, and the object's 
 	  data will appear above the close-up. Look closely at the data box at the top of the Navigation 		  tool window. The data box should look like this (probably with different numbers):</p>
      
      <p>The ra and dec tell you where in the sky this object is. 
      The type tells you what the SDSS computers think the object is (and the computers aren't always right). u,g,r,i 
      and z tell you the object's magnitudes through each of the SDSS's five filters - 
      ultraviolet (u), green (g), red (r), and infrared (i and z).</p>

      <table border=0 align=left><tr><td>
        <img border="0" src="images/thestar.jpg" align="left">
      </td></tr></table>

      <p>The star shown to the 
      left is the same star whose data are displayed above. The 
      star looks blue. Its color can be measured scientifically by 
      looking at differences in magnitudes between filters. For example, one 
      way to measure the color is to look at the difference between the star's 
      u and g values. This star has 
      a u-g color of 19.14 - 18.05 = 1.09. This number means the star 
      gives off more green light than ultraviolet light (remember that the magnitude 
      scale runs backwards). You could also 
      measure the star's g-r color, which would be 18.05 - 18.29 = -0.24. The 
      star gives off more green light than red light.</p>
	</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="spectra.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
