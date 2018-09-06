<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="Identifying.aspx.cs" Inherits="SkyServer.Proj.Hii.Identifying" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Identifying HII Regions</div>

<div id="pdflink">
  <a href="swf/identifying.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/identifying.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <p>Once you have a list of objects you think might be HII regions, 
      use the 
      <a target="tools" href="../../../tools/chart/navi.aspx">Navigation Tool</a> or 
      the <a target="tools" href="../../../tools/explore/obj.aspx">Object Explorer</a> 
      to see which ones really are. Look also at their spectra to see 
      which ones have the hydrogen emission lines characteristic of HII regions.</p>

      <p>HII regions are generally found in the arms of spiral galaxies. For 
      nearby galaxies that appear large, spiral arms are easy to identify. You 
      will probably find the cores of active galaxies also turn up in your data. 
      These may be due to massive black holes eating gas and dust near the 
      galaxy core, rather than star formation. These cores are <i>not</i> HII regions.</p>
      <p>One clue to whether you are seeing a galaxy core or a real HII region might be to check 
      if the source was also seen in the x-ray ROSAT survey, 
      since active galactic nuclei frequently give off x-rays as well. If ROSAT 
      saw the sources, chances are it is a galactic nucleus and not an HII region. 
      ROSAT data are available online at the 
      <a href="http://www.xray.mpe.mpg.de/cgi-bin/rosat/rosat-survey" target="offsite">ROSAT Archive</a>.
      Another clue is to look at the object's spectrum for the characteristic 
      strong hydrogen emission lines that mark HII regions.</p>
      <p>If the galaxy is small, use the Zoom bar of the Navigation Tool to 
      zoom in on it. SkyServer is somewhat limited in its zoom ability, however. If you need to zoom 
      in further still, download FITS images with the <a href="../../../tools/explore/obj.aspx" target="tools">
      Object Explorer</a> and use and image processing program 
      such as Iris (see the <a href="../../advanced/processing">Image Processing</a> project) 
      to zoom in on the object to see if it might be an HII region.</p>
      <p>Even with your best efforts, it may be difficult to tell if an object is really 
      HII region. If you are unsure, simply mark the object as uncertain. SDSS 
      astronomers frequently carry out follow-up observations with other 
      telescopes on objects they are unsure of.</p>
      <p>There is no single sure way to identify HII regions. Sometimes 
      visual inspection is enough. For other candidates, you may need to look at the 
      spectrum, zoom in on the region, or look at the object in other 
      wavelengths. Even if you do all these things, you may still find some 
      objects that you cannot be certain are HII regions.</p>

      <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Challenge.</strong> 
          Are you ready for the challenge? Create a catalog of HII regions in SDSS data. Write a 
          query (or series of queries) to find objects classified as galaxies 
          that are actually HII regions. Use the colors of galaxies to 
          narrow the list of potential HII candidates down to a manageable 
          level. Inspect each candidate in various ways to determine if it really 
          is an HII region.</p>
          <p>Each entry in your catalog should include the object ID, ra, dec, 
          and the magnitudes through each of the five filters. You 
          also should include a short essay on how your data were collected (for 
          example: We searched for galaxies for which SDSS has obtained 
          spectra. We looked for objects where u - z &lt; x.) This 
          information is important so other researchers can know where your data 
          came from, and 
          can judge whether or not your data suit their needs.</p>
          
          <p><a href="mailto:raddick@pha.jhu.edu?subject=HII region catalog">Send us</a> 
          your HII region catalogs. We'll look at all the catalogs we 
          receive. If yours is one of the best, we'll post it here, and 
          we'll pass it on to SDSS scientists to use!</p></td>
         </tr>
       </table>
          
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="query.aspx">
      <img align="left" src="../../images/previous.jpg"></a>
      <a href="catalogs.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
    <tr><td><p><font size=-3>Challenge designed by Robert Sparks</font></p>
    </td></tr>
<tr><td><p><font size=-3>Questions? 
      Comments? Suggestions? E-mail the <a href="mailto:raddick@pha.jhu.edu">web 
      designer</a>.</font></p></td></tr>    
  </table>
</div>
</asp:Content>
