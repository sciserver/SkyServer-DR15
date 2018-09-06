<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="HiiHome.aspx.cs" Inherits="SkyServer.Proj.Hii.HiiHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">HII Regions</div>

<div id="pdflink">
  <a href="swf/default.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/default.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <p>Most spiral galaxies contain star-forming regions rich in ionized 
      hydrogen. Ionized hydrogen is also known as HII, so the star forming 
      regions are known as "HII (pronounced 'H-two') regions." Because stars are 
      actively forming inside HII regions, astronomers are very interested in 
      studying the regions.</p>
      <p>The SDSS has almost certainly seen hundreds of HII regions in nearby 
      galaxies. But using the SDSS to study HII regions presents a problem. Because 
      the SDSS sees so many objects in the sky, the survey uses a computer program 
      called Photo to classify the objects as stars, 
      galaxies, cosmic rays, ghosts (false optical images), or moving objects. Overall, Photo 
      does a very good job of identifying the objects SDSS sees.</p>
      <p>But, nearby spiral galaxies that appear large in our field of view  
      cause problems for Photo. When Photo examines a galaxy like the one 
      below, instead of classifying it as one galaxy, 
      Photo breaks it up into several parts! Photo often mistakes the core and 
      the HII regions in a galaxy for separate galaxies. Sometimes Photo can 
      look at a single galaxy and mistakenly see up to six separate galaxies.</p>
      
      <table border="3" cellpadding="0" cellspacing="0" width=400 align=center>
        <tr>
          <td width="100%"><img border="0" src="images/navi.jpg"></td>
        </tr>
        <tr>
          <td align=center width="100%"><font class="caption">The green square marks 
          an HII region of the large galaxy, misidentified as a separate 
          galaxy</font></td>
        </tr>
      </table>
      
      <p>To tell the difference between a single galaxy with misidentified HII 
      regions and genuine multiple galaxies, a 
      program called Plate selects objects for the SDSS will measure spectra. 
      The SDSS can't measure spectra for all the objects it sees, so Plate selects 
      which objects to examine. Sometimes Plate selects HII regions for spectral 
      analysis. By looking at both images and spectra for the same galaxy, you 
      can tell which places are HII regions misidentified by Photo, and which are 
      actually separate galaxies.</p>
	  <p>The next version of Photo should fix the problem of HII region misidentification. 
	  But until astronomers know how many regions have been misidentified by the 
	  current version of Photo, they'll never know whether the next version is 
	  actually an improvement. And although astronomers agree that a catalog of 
	  misidentified HII regions is important to checking the accuracy of the 
	  survey, none of them has made such a catalog. You can help.</p>
      <p>Your mission, should you choose to accept it, is to find the HII 
      regions for which the SDSS has acquired spectra. This information will allow 
      you to study HII regions in detail, learn how well our Photo program 
      works, and give us a comparison for when we start using a new, and 
      hopefully improved, version of Photo.</p>
      <p>The only way to be sure you have identified an HII region is to 
      visually inspect the SDSS field that contains the galaxy. Data Release 8 (the data you see on SkyServer) contains spectra of 
      around a million galaxies, so you cannot visually inspect every one. 
      Additionally, some of the galaxies are very small, and it can be hard to 
      tell what you are seeing, so you need other evidence to tell whether 
      you are looking at an HII region or a whole galaxy. This process may seem 
      tedious, but it's an important part of astronomy: SDSS astronomers have 
      visually inspected hundreds of galaxies for papers they have written.</p>
      <p>On the next page, you will get some clues on what 
      characteristics might be helpful in searching for HII regions.</p>
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
      <td><a href="characteristics.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
