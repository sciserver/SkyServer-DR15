<%@ Page Title="" Language="C#" MasterPageFile="../../ProjMaster.master" AutoEventWireup="true" CodeBehind="MapHome.aspx.cs" Inherits="SkyServer.Proj.MapHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Map the Universe</div>

<div id="pdflink">
  <a href="swf/map.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/map.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
      <table align="right" cellpadding="2" cellspacing="2" width="50%">
        <tr>
          <td align="center">
              <img src="images/map.jpg" alt="A sample map of the universe" />
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">A sample map of the universe</p>
          </td>
        </tr>
      </table>
      
      <h2>Research Question</h2>
      <p>Make a map of the universe. The easiest way to make this map is to search a wide range of 
      RA and a narrow range of dec to get a 2-D slice through the full 3-D map. But can you make a map in 3-D?</p>
      
      <p>What does the universe look like? Can you quantify the spacing between walls of galaxies? </p>

      <h2>Things you might think about</h2>

      <ol>
      <li><p>What does redshift mean?</p></li>
      <li><p>Can you convert redshift to distance? Do you need to?</p></li>
      <li><p>How does the expansion of the universe affect the map?</p></li>
      </ol>
      

      <h2>Tools that might help you (all links open in new windows)</h2>

      <p><a href="../../../tools/search/form/form.aspx" accesskey="s" target="tools">Search Form</a>: use this tool to 
      search for the positions of many galaxies to make your map. See the <a href="../../../tools/search/form/guide.aspx" target="tools" accesskey="g">
      user's guide</a> to learn how to use the tool.</p>
      
      <p><a href="../../../tools/search/sql.aspx" accesskey="q" target="tools">SQL Search</a>: use this tool to write complex 
      Structured Query Language (SQL) searches for galaxies that you can use to make your map</p>


      <h2>Science background (new windows)</h2>
      
      <p><a href="http://www.sdss.org/news/releases/20060515.structure.html" target="background">SDSS "How Big is Big?" press release, about the scale of the universe</a></p>
      <p><a href="http://astro.berkeley.edu/~mwhite/whatarelss.html" target="background">What is large-scale structure?</a></p>
      <p><a href="http://en.wikipedia.org/wiki/universe" target="background">"Universe" at Wikipedia</a></p>      


      <h2>Hints and cautions (new windows)</h2>
      
      <p>Your data is polar (redshift -> r, RA -> &theta;), while Excel can only graph x-y quantities. How will you 
      overcome this problem?</p>
      
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>

  </table>
</div>
</asp:Content>
