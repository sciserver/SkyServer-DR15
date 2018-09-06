<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="SkyServer.Help.Docs.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<script type="text/javascript">
function runfootprint() {
   var ra = document.getElementById("centerRA").value;
   var dec = document.getElementById("centerDec").value;
   var rad = document.getElementById("radius").value;
   var w=window.open( "../../tools/search/x_radial.aspx?format=html&topnum=10&fp=only&ra="+ra+"&dec="+dec+"&radius="+rad, "query", "" );
   w.focus();
}
</script>



<div id="title">Help</div>
<div id="pdflink">  
  <!--<a href="pdf/introduction.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" /><span class="sml">coming soon</span>
  <!--</a>-->

</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="5">

<tr><td>

<h2>Welcome to SkyServer!</h2>

<p>SkyServer is the catalog data access site for the Sloan Digital Sky Survey-III. 
From this site, you can view all the catalog data - measuremed quantities like positions 
and magnitudes - for all the stars, galaxies and quasars in the SDSS-III's Data Release <%=globals.ReleaseNumber%>.</p>

<p>Data Release <%=globals.ReleaseNumber%> (<%=globals.Release %>) is described at 
<a href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>">the <%=globals.Release %> page</a><img src="../../images/offsite.png" /> of the SDSS-III website. 
The area of sky covered by <%=globals.Release %> is shown on the <a href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>/scope"><%=globals.Release %> Scope</a><img src="../../images/offsite.png" /> 
page.</p>

<h2>Available Data</h2>

<p>Data Release <%=globals.ReleaseNumber%> includes many different kinds of data, accessible through either 
SkyServer or its companion site, the <a href="<%=globals.DasUrl %>">Science Archive Server</a><img src="../../images/offsite.png" />.
(<%=globals.Release %> is cumulative, including all the data included in previous releases.</p>

<p><%=globals.Release %> contains the full imaging survey from the SDSS imaging camera. Future data releases will include 
only spectra, so <%=globals.Release %> includes all the released images of the entire Sloan Digital Sky Survey. SkyServer includes JPG images of the entire <%=globals.Release %> 
survey area; FITS image files of corrected frames in 
<a href="<%=globals.SdssUrlBase%>instruments/camera/#filters">five imaging filters</a><img src="../../images/offsite.png" /> 
are available through the <a href="<%=globals.DasUrl %>">Science Archive Server</a><img src="../../images/offsite.png" />.</p>

<!--
<p>Use the form below to find whether the radial search area you are interested in is part of the SDSS-III's Data Release <%=globals.ReleaseNumber %> 
(specifically, whether your area overlaps with the DR8 footprint):</p>


<form onsubmit="javascript:runfootprint();" action="javascript:runfootprint();" runat="server" >
<table border="0">
    <tr>
         <td width="40" align="right"><span class="formLabelSmall">ra :&nbsp;</span></td>
         <td width="70" align="right"><input id="centerRA" type="text" name="centerRA"  /></td>
         <td width="50" align="right"><span class="formLabelSmall">dec :&nbsp;</span></td>
         <td width="70" align="right"><input id="centerDec" type="text" /></td>
         <td width="134" align="right"><span class="formLabelSmall">radius (arcmin):&nbsp </span></td>
         <td width="100" align="right"><input id=radius" type="text" /></td>
    </tr>
	<tr>
         <td colspan=6>
              <input id="Button1" type="submit" style="width:160px;" value="Check SDSS Footprint" />												
         </td>
   </tr>
</table>
</form>    
-->

<p><%=globals.Release %> also contains more than one million spectra from the original SDSS spectrograph, as part of the SDSS-I 
and SDSS-II, as well as data from the previous year of operations of the 
<a href="<%=globals.SdssUrlBase%>segue2">SEGUE-2</a><img src="../../images/offsite.png" /> stellar spectra survey. 
SkyServer includes GIF previews and CSV files of all the spectra in <%=globals.Release %>; FITS files of the spectra 
are available through the <a href="<%=globals.DasUrl %>">Science Archive Server</a><img src="../../images/offsite.png" />.</p>

<p>SkyServer hosts all catalog data measured from the images and spectra as part of <%=globals.Release %>. For more 
information on how the catalog data was derived, see the <%=globals.Release %> 
<a href="<%=globals.SdssUrlBase%>/dr<%=globals.ReleaseNumber%>/algorithms/">Algorithms</a><img src="../../images/offsite.png" /> page. 
To see what catalog data are available in the SkyServer database, see <a href="intro.aspx">About the Database</a>.</p>

<h2>Data Access</h2>

<p>SkyServer includes a number of <a href="../../tools">Data Access tools</a>. The tools vary from simple to 
complex and powerful. It is not necessary to learn every tool; just find one you are comfortable with and use it. 
If you find you are unable to do what you want using your favorite tool, return to this list and find another tool.</p>

<p>There are two general <em>categories</em> of tools: either you know what objects or positions you 
are looking for, or you are searching for data to match certain criteria. Once you know which category of tool 
you need, use the table below to decide which specific tool to use.</p>

<h3>When you know what you are looking for...</h3> 

<table width=600 border=1 cellpadding=3 cellspacing=1>
 <tr>
   <th width="40%">When you have...</th>
   <th width="40%">...and you need...</th>
   <th width="20%">..then use</th>
 </tr>
 <tr>
   <td width="40%">Position (RA/Dec) of an object or point in the sky</td>
   <td width="40%">An interactive image, with magnitudes of objects</td>
   <td width="20%"><a href="../../tools/chart/navi.aspx">Navigate</a></td>
 </tr>
 <tr>
   <td width="40%">SDSS ID or RA and Dec of a known object</td>
   <td width="40%">The object's image, spectrum (if available), and magnitudes</td>
   <td width="20%"><a href="../../tools/quicklook/quickobj.aspx">Quick Look</a></td>
 </tr> 
 <tr>
   <td width="40%">SDSS ID or RA and Dec of a known object</td>
   <td width="40%">The object's image, spectrum (if available), and complete catalog data</td>
   <td width="20%"><a href="../../tools/explore/obj.aspx">Explore</a></td>
 </tr> 
 <tr>
   <td width="40%">Position (RA/Dec) of an object or point in the sky</td>
   <td width="40%">A finding chart for telescope observations</td>
   <td width="20%"><a href="../../tools/chart/chart.aspx">Finding Chart</a></td>
 </tr>
 <tr>
   <td width="40%">Positions (RA/Dec) of several objects in SDSS-III</td>
   <td width="40%">Thumbnail images of each object</td>
   <td width="20%"><a href="../../tools/chart/list.aspx">Image List</a></td>
 </tr>
  <tr>
   <td width="40%">IDs and positions (RA/Dec) from another survey or your own observations</td>
   <td width="40%">SDSS-III cross-matches for each of your objects</td>
   <td width="20%"><a href="../../tools/crossid/">Cross-ID</a></td>
 </tr>
 </table>
 
 
 <h3>When you are searching for objects to meet certain criteria...</h3> 

<table width=600 border=1 cellpadding=3 cellspacing=1>
 <tr>
   <th width="40%">When your search criteria are...</th>
   <th width="40%">...and you need...</th>
   <th width="20%">..then use</th>
 </tr>
  <tr>
   <td width="40%">Position (RA/Dec), for a radial or rectangular area</td>
   <td width="40%">SDSS-III object IDs and magnitudes</td>
   <td width="20%"><a href="../../tools/search/radial.aspx">Radial Search</a><br />
                    or<br />
                   <a href="../../tools/search/rect.aspx">Rectangular Search</a>
   </td>
 </tr> 
 <tr>
   <td width="40%">Position (RA/Dec), magnitude, or redshift (if DR8 includes a spectrum for that object)</td>
   <td width="40%">Position (RA/Dec), magnitude, and/or redshift (if DR8 includes a spectrum for that object)</td>
   <td width="20%"><a href="../../tools/search/form/form.aspx">Search Form</a></td>
 </tr> 
 <tr>
   <td width="40%">Position (RA/Dec), magnitude, object type, flags</td>
   <td width="40%">Any imaging or spectroscopic data</td>
   <td width="20%"><a href="../../tools/search/iqs.aspx">Imaging Query (IQS)</a></td>
 </tr>  
  <tr>
   <td width="40%">Position (RA/Dec), magnitude, object type, flags, spectral classification, redshift</td>
   <td width="40%">Any imaging or spectroscopic data</td>
   <td width="20%"><a href="../../tools/search/sqs.aspx">Spectroscopic Query (SQS)</a></td>
 </tr>  
 <tr>
   <td width="40%">Any parameters in the DR8 <a href="../browser/browser.aspx" target="schema">Schema</a><img src="../../images/new_window.png" /></td>
   <td width="40%">Any DR8 data for up to 100,000 objects</td>
   <td width="20%"><a href="../../tools/search/sql.aspx">SQL Search</a></td>
 </tr>   
 <tr>
   <td width="40%">Any parameters in the DR8 <a href="../browser/browser.aspx" target="schema">Schema</a><img src="../../images/new_window.png" /></td>
   <td width="40%">Unlimited amounts of data, with personal tables and analysis tools</td>
   <td width="20%"><a href="<%=globals.CasJobs%>">CasJobs</a> batch query service</td>
 </tr>   
 </table>
 


<h2>Help</h2>

<p>SkyServer and the <a href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>"><%=globals.Release%> web site</a><img src="../../images/offsite.png" /> include 
extensive help and documentation, covering all the ways to access the data. Good places to start are the 
<a href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>/help/faq/">Frequently Asked Questions</a><img src="../../images/offsite.png" /> and 
<a href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>/help/glossary/">Glossary</a><img src="../../images/offsite.png" />.</p>

<p><a href="../cooking/">Cooking with Sloan</a> is a series of guides showing you how to accomplish common 
astronomical tasks using SkyServer tools and SDSS data. SkyServer also offers an 
<a href="../howto/search">SQL Tutorial</a> to help you search for data using the SQL programming language.</p>

<p>If you can't find the answer your question, <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"]) %>" target="tools">contact the 
SDSS Help Desk</a><img src="../../images/new_window.png" />.</p>

<a name="proj"></a>
<h2>Educational Resources</h2>

<p>SkyServer is an excellent resource for educators, including K-12 teachers and college instructors. SDSS-III data 
provides a rich source of hands-on, inquiry-based activities for learning science at all levels. SkyServer includes 
many free resources that you can use and modify for your students. See the 
<a href="../../proj/teach.aspx">For Educators</a> link to learn more about these free resources.</p>

<p>The SkyServer <a href="../../proj">
Educational Resources</a> include many activities that teach a single science topic, such as the expanding universe or 
stellar spectra, using SDSS data. See the <a href="../../proj/teachers/">teacher guides</a> for more information 
on how to use SkyServer educational resources in your classroom or lab section.</p>

<p>If you have questions about SkyServer educational resources, please <a href="mailto:<%=globals.EpoHelp%>">E-mail the SkyServer education helpdesk</a>!</p>

<p>&nbsp;</p>

</td></tr>
</table>
</div>
</asp:Content>
