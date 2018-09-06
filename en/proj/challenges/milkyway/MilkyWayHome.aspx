<%@ Page Title="" Language="C#" MasterPageFile="../../ProjMaster.master" AutoEventWireup="true" CodeBehind="MilkyWayHome.aspx.cs" Inherits="SkyServer.Proj.MilkyWayHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">The Milky Way</div>

<div id="pdflink">
  <a href="swf/milkyway.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/milkyway.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
      <table align="right" cellpadding="2" cellspacing="2" width="40%">
        <tr>
          <td>
              <img src="images/leoi.jpg" />
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">Leo I, a small Milky Way companion galaxy discovered by the SDSS</p>
          </td>
        </tr>
      </table>
      
      <h2>Research Question</h2>
      <p>How are stars in the Milky Way's disk different from stars far away 
      from the disk?</p>

      <h2>Things you might think about</h2>

      <ol>
      <li><p>Where in the sky will you look?</p></li>
      <li><p>What properties of stars are most meaningful to compare?</p></li>
      <li><p>Where do you expect the most stars? The brightest? The reddest? How would you test these ideas?</p></li>
      <li><p>What properties of a star might you measure?</p></li>
      <li><p>What do you expect the spectra of stars to look like?</p></li>
      </ol>
      

      <h2>Tools that might help you (all links open in new windows)</h2>
      <p><a href="../../../tools/chart/navi.aspx" accesskey="n" target="tools">Navigate</a>: use this tool to get 
      data on single stars</p>
      <p><a href="../../../tools/chart/navi.aspx" accesskey="s" target="tools">Sky Map</a> (globe on lower right of 
      Navigate): use this tool to find where in the sky the SDSS has looked. The brown stripe is the plane of the Milky Way. 
      If the tool doesn't work for you, see the diagram of <a href="../../../sdss/release/" target="tools">the SDSS's sky coverage</a>.</p>
      <p><a href="../../../tools/search/form/form.aspx" accesskey="s" target="tools">Search Form</a>: use this tool to 
      search for data on many stars. See the <a href="../../../tools/search/form/guide.aspx" target="tools" accesskey="g">
      user's guide</a> to learn how to use the tool.</p>

      <h2>Science background (new windows)</h2>
      
      <p><a href="../../basic/galaxies/" target="background">SkyServer galaxies project</a></p>
      <p><a href="http://en.wikipedia.org/wiki/Milky_Way" target="background">"Milky Way" on Wikipedia</a></p>
      <p><a href="http://messier.seds.org/more/mw.html" target="background">"Milky Way" at Students for the Exploration and Development of Space</a></p>
      <p><a href="http://astro.uchicago.edu/~subbarao/newWeb/line.html" target="background">List of SDSS spectral lines</a></p>

      <h2>Hints and cautions (new windows)</h2>
      
      <p>If you look at spectra, study the line labels carefully. Not all of them are element names!</p>
      <p>You can use SQL <a href="../../../help/howto/search/aggfunctions.aspx" target="help">aggregate 
      functions</a> (like avg, min, max) to do your analysis.</p>

      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
<!--    <tr>
      <td><a href="characteristics.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>-->
  </table>
</div>
</asp:Content>
