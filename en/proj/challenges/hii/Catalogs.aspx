<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="Catalogs.aspx.cs" Inherits="SkyServer.Proj.Hii.Catalogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Your Catalogs</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<p><a href="mailto:raddick@pha.jhu.edu?subject=HII region catalog">Send us</a> your catalogs of HII regions. We'll put 
the best of them 
up here, and we'll pass them on to SDSS scientists who might be able to use them!</p>

<h1>Julie M. and Claire R.<br>
<font size=-1>New York, NY</font></h1>

<img src="julieclaire.jpg" align="right" alt="Some galaxies in the HII region catalog from Julie and Claire" />


<p>Research was conducted using the outline written by Sloan Digital Sky Survey, SDSS. Using the program 
Photo, created by SDSS, HII regions that were previously misclassified were searched for. Background 
information was gathered from various research articles and websites. For information on how to distinguish 
HII regions from galaxies, the SDSS website was used. The SDSS website and the x-ray ROSAT survey were the 
only two data sources investigated in this experiment.</p>


<p>These regions were searched for within all of the images taken by SDSS. To narrow the investigation 
down, a search query was written. However, before a query was created, several regions were searched for 
manually to find similarities. The regions were searched for manually to create a list of several regions for 
research and to determine what traits they shared. The similar characteristics found in the regions were 
recorded so they could be included into the query. With these characteristics in the query, it was ensured 
that the results would return other HII regions because they have the same characteristics.</p>

<p>The GALAXY table was searched, since all of the misclassified regions were recorded as galaxies. The GALAXY 
table is a table in the SDSS database consisting of all their recorded galaxies. Within this table, the 
columns ra, dec, u, g, r, i, and z were investigated. The section of the query written to determine where to 
search varied as different areas were examined for HII regions. The query was established based on the similar 
traits of HII regions. The ra section of the query was included to ensure that the computer return a specific 
area for investigation. The five magnitudes, u, g, r, i and z were included because they were alike in HII 
regions that were previously found. The computer retuned the results of the query.</p>

<p>Once the query was written and the ra and dec of possible HII regions were noted, the SDSS 
Navigation Tool was used to determine if the candidate regions were actually HII regions. This 
tool displayed a picture of the candidate region. This picture contained information used to distinguish 
between HII region and galaxies, such as the color.</p>

<p>The pictures were printed and studied. Then, using the SDSS Object Explorer, the spectral line graphs of the 
possible regions were investigated to see if the possible regions contained hydrogen emission lines that HII 
regions contain. The spectral chart for an HII region contains a spike at the wavelength of approximately 
6500. Also, for some possible regions, the x-ray ROSAT survey was investigated. The ROSAT survey is similar to 
SDSS's database, except the survey only gives objects emitting x-rays. This survey was only 
investigated if SDSS did not give enough information to identify a region. If the possible region was 
included in the ROSAT survey, then it was not an HII region since HII regions do not emit x-rays. 
Below is our search query.</p>


 <table width="100%" class="code">
    <tr>
      <td>select ra, dec, u, g, r, i, z</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
      <td>from GALAXY</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
      <td>where ra BETWEEN 195 and 196 AND</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
      <td>u BETWEEN 16 and 18.5 AND</td>
   </tr>
   <tr><td>&nbsp;</td></tr>
    <tr>
      <td>g BETWEEN 16 and 18.5 AND</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
      <td>r BETWEEN 16 and 18 AND</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>      
      <td>i BETWEEN 17 and 19 AND</td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>      
      <td>z BETWEEN 17 and 19</td>
    </tr>
  </table>

<p><a href="julieclaire.xls">Download catalog as Excel spreadsheet (.xls file, 57 KB)</a></p>


</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td><A href="identifying.aspx" ><IMG src="../../images/previous.jpg" align=left></a>
<A href="../../../default.aspx" ><IMG src="../../images/home.gif" align=right></a></td></tr>
</table>

<P></P>

</div>
</asp:Content>
