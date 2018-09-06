<%@ Page Title="" Language="C#" MasterPageFile="../../ProjMaster.master" AutoEventWireup="true" CodeBehind="GalaxiesHome.aspx.cs" Inherits="SkyServer.Proj.GalaxiesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Classifying Small Galaxies</div>

<div id="pdflink">
  <a href="swf/galaxies.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/galaxies.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
      <table align="right" cellpadding="2" cellspacing="2" width="25%">
        <tr>
          <td align="center">
              <img src="images/small.jpg" alt="One of many small galaxies seen by the SDSS" />
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">One of many small galaxies seen by the SDSS</p>
          </td>
        </tr>
      </table>
      
      <h2>Research Question</h2>
      <p>Galaxies come in two major types: spiral and elliptical. But some galaxies are so small and faint that it's 
      hard to tell what type they are. How can you classify these small, faint galaxies?</p>

      <h2>Things you might think about</h2>

      <ol>
      <li><p>How do you classify big galaxies when you look at them?</p></li>
      <li><p>What properties of small galaxies could you measure?</p></li>
      <li><p>What properties could be different in spirals and ellipticals?</p></li>
      <li><p>What types of galaxies would you expect to be the brightest? The reddest? The bluest?</p></li>
      <li><p>What can a galaxy's spectrum tell you about the galaxy?</p></li>
      </ol>
      

      <h2>Tools that might help you (all links open in new windows)</h2>
      <p><a href="../../../tools/chart/navi.aspx" accesskey="n" target="tools">Navigate</a>: use this tool to get 
      data on single galaxies</p>
      <p><a href="../../../tools/search/form/form.aspx" accesskey="s" target="tools">Search Form</a>: use this tool to 
      search for data on many galaxies. See the <a href="../../../tools/search/form/guide.aspx" target="tools" accesskey="g">
      user's guide</a> to learn how to use the tool.</p>
      <p><a href="../../../tools/chart/list.aspx" accesskey="i" target="tools">Image List</a>: use this tool to get 
      thumbnail images of galaxies that meet your search criteria</p>
      <p><a href="../../../tools/search/sql.aspx" accesskey="q" target="tools">SQL Search</a>: use this tool to write complex 
      Structured Query Language (SQL) searches for galaxies</p>

      <h2>Science background (new windows)</h2>
      
      <p><a href="../../basic/galaxies/" target="background">SkyServer galaxies project</a></p>
      <p><a href="http://www.galaxyzoo.org" target="background">Galaxy Zoo</a> (a project where you can classify galaxies)</p>
      <p><a href="http://encarta.msn.com/encyclopedia_761553870/Galaxy.html" target="background">"Galaxy" Encarta article</a></p>
      <p><a href="http://seds.lpl.arizona.edu/messier/xtra/supp/gal-ttab.html" target="background">Classifying Messier galaxies</a> (from the 
      Students for the Exploration and Development of Space)</p>
      <p><a href="http://astro.uchicago.edu/~subbarao/newWeb/line.html" target="background">List of SDSS spectral lines</a></p>

      <h2>Hints and cautions (new windows)</h2>
      
      <p>If you look at spectra, study the line labels carefully. Not all of them are element names!</p>
      <p>You can use SQL <a href="../../../help/howto/search/aggfunctions.aspx" target="help">aggregate 
      functions</a> (like avg, min, max) to do your analysis.</p>
      <p>Look at the data points for "petroR50_g" and "petroR90_r" in the <i>Galaxy</i> table in the 
      <a href="../../../help/browser/browser.aspx?cmd=description+Galaxy+V" target="help">Schema Browser</a>. What do those terms mean?</p>

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
