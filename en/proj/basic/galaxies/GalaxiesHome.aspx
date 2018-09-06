<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="GalaxiesHome.aspx.cs" Inherits="SkyServer.Proj.Galaxies.GalaxiesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <table align="right" border="1">
        <tr>
          <td align="middle"><img src="images/andromeda.jpg"></td>
        </tr>
        <tr>
          <td align="middle"><font class="caption">The Andromeda Galaxy<br>
          <font size="-2">Copyright
          <a onclick="window.open('http://www.noao.edu/image_gallery/');" href="#top">
          NOAO/AURA/NSF</a></font></font></td>
        </tr>
      </table>
      <h1>Galaxies</h1>
      <p>At the turn of the 20th Century, a debate was raging in 
      astronomy about faint, fuzzy objects called &quot;nebulae.&quot; 
      Some astronomers thought nebulae were small clusters of stars in our own 
      galaxy. Others saw some of them as giant, distant collections of stars, 
      some larger than the Milky Way itself.</p>
      <p>Finally, in 1924, American astronomer Edwin Hubble measured the 
      distance to what was then called the Andromeda Nebula. He found it to lie 
      over 2 million light-years from Earth. It was the first object to be 
      recognized as another galaxy.</p>
      <p>Hubble's discovery changed our view of the universe. The 
      already vast distances between stars were dwarfed by the incredible 
      distances between galaxies. The universe was suddenly a much larger place 
      than anyone had ever imagined.</p>
      <p>The Sloan Digital Sky Survey has found more than <%=globals.NGalaxy%> galaxies so far. In this project, you 	will look at some of them to learn about different types of galaxies.</p>
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
      <td><a href="classification.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
