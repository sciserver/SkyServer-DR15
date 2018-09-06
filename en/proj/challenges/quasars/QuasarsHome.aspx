<%@ Page Title="" Language="C#" MasterPageFile="../../ProjMaster.master" AutoEventWireup="true" CodeBehind="QuasarsHome.aspx.cs" Inherits="SkyServer.Proj.QuasarsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Quasar Spectra</div>

<div id="pdflink">
  <a href="swf/quasars.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/quasars.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
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
              <img src="images/587739609162711177_spec.jpg" alt="The spectrum of a distant quasar" />
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">The spectrum of the quasar shown on the Research Projects main page</p>
          </td>
        </tr>
      </table>
      
      <h2>Research Question</h2>
      <p>Look at the spectra of a number of quasars at different redshifts. How do the spectra change as redshift increases? 
      Make a graph of quasar color as a function of redshift. How do you explain what you see in the graph?</p>

      <h2>Things you might think about</h2>

      <ol>
      <li><p>What does it mean to look at quasars at different redshifts?</p></li>
      <li><p>What features do quasar spectra have in common?</p></li>
      <li><p>What lines are most useful for classifying and comparing quasars?</p></li>
      <li><p>How do spectra change at increasing redshift?</p></li>
      </ol>
      

      <h2>Tools that might help you (all links open in new windows)</h2>
      <p><a href="../../../tools/explore/obj.aspx" accesskey="e" target="tools">Explore</a>: use this tool to get 
      data, including spectra, when you know a quasar's ID number or position</p>
      <p><a href="../../../tools/search/form/form.aspx" accesskey="s" target="tools">Search Form</a>: use this tool to 
      search for data on many quasars. See the <a href="../../../tools/search/form/guide.aspx" target="tools" accesskey="g">
      user's guide</a> to learn how to use the tool.</p>
      <p><a href="../../../tools/chart/list.aspx" accesskey="i" target="tools">Image List</a>: use this tool to get 
      thumbnail images of quasars that meet your search criteria</p>
      <p><a href="../../../tools/getimg/plate.aspx" accesskey="p" target="tools">Plate Browser</a>: use this tool to browse through 
      640 spectra at a time, looking for quasars</p>

      <h2>Science background (new windows)</h2>
      
      <p><a href="../../advanced/quasars/" target="background">SkyServer quasars project</a></p>
      <p><a href="http://en.wikipedia.org/wiki/Quasar" target="background">"Quasars" at Wikipedia</a></p>
      <p><a href="http://www.sdss.org/news/releases/20030109.quasar.html" target="background">SDSS press release about distant quasars</a></p>
      <p><a href="http://astro.uchicago.edu/~subbarao/newWeb/line.html" target="background">List of SDSS spectral lines</a></p>

      <h2>Hints and cautions (new windows)</h2>
      
      <p>If you write your own SQL query, be sure to include spectral classes 3 and 4.</p>
      <p>Be careful that you correctly identify lines in the spectra – some lines are very close to other lines.</p>

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
