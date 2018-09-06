<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kidsheader">Data from the Navigation Tool</p>
      

	  <table align=right border=0>
	    <tr><td><img src="images/data.jpg"></td></tr>
	  </table>

      <p class="kids">Look again at the data box on the<br>right side of the window.</p>

      <p class="kids">The ra and dec tell you where in the sky this object is. 
      The type tells you what the SDSS computer program thinks the object is. (The 
      program isn't always right!) u,g,r,i, 
      and z tell you the object's magnitude through each of the five filters.</p>
      
      <table align=left border=1>
        <tr><td><img src="images/thestar.jpg"></td></tr>
      </table>        
      
      <p class="kids">The star shown to the 
      left is the star whose data are displayed above. What color does it 
      look like to you?</p> 
      
      <p class="kids">Astronomers measure color with numbers: 
      differences in magnitude between filters. For example, one 
      color is the difference between the star's 
      u and g values. The star above has a u-g color of 19.10 - 18.04 = 1.06.</p>
      
      <table border=0 align=right>
       <tr>
        <td><img src="images/pentagon.jpg">
        </td>
       </tr>
      </table>
      
      <p class="kids">The color u-g = 1.06 means the star 
      gives off more green light than ultraviolet light (remember that the magnitude 
      scale runs backwards). You could also 
      measure the star's g-r color, which would be 18.04 - 18.29 = -0.25. The 
      star gives off more green light than red light.</p>
      <p class="kids">Now that you know a 
      little about the colors of objects, let's see what types of objects you 
      will be searching for. Click Next to find out.</p></td>

    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="navi.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="objecttypes.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
