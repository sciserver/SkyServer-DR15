<%@ Page Title="" Language="C#" MasterPageFile="~/en/tools/QuickLook/QuickLook.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="SkyServer.Tools.QuickLook.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="qlhelp.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
		<h1>SDSS
			<%=globals.Release%>
			Quick Look Tool</h1>
	    <p><a href="help.aspx" target="_blank">Launch help in new window</a></p>
		<hr width="560" align="left" />

			<table width="560">
				<tr>
					<td>
						<p>For a quick introduction, see the <span class="quicklook"><a href="quicklook.swf" target="video">video tutorial</a></span>.</p>
					
						<p>The Quick Look tool is an easy way to get basic <a href="../../sdss/" target="_blank">SDSS</a> data about a single object. Click the links in the 
						left panel to use the tool - move your mouse over the links to see what they do.
						
						<p>Data will appear in this main panel. Read on to learn more about what the data mean. Links let you go deeper. Some links take you off SkyServer; 
						click <b>Help</b> from there to return to this screen, or <i>new window</i> to launch these sites in a new window.</p>
										
						<p>The data you can view for a single object (star, galaxy, etc.) in the Quick Look tool are:</p>						
						
						<ul>
						   <li><em>Object ID</em>: The long ID that you can use to find this object in SkyServer [<i>example: 1237648721764876467</i>]</li>
						   <li><em>Right ascension</em> and <em>declination</em>: this object's <a href="http://liftoff.msfc.nasa.gov/academy/universe/radec.html">position in the sky</a> 
						   (<a href="http://liftoff.msfc.nasa.gov/academy/universe/radec.html" target="_blank">new window</a>) [<i>example: 173.74781796, 0.41921316</i>]</li>
						   <li><em>Preview image</em>: A close-up of the object. Click the image to go to the <a href="../chart/navi.aspx" target="_blank">Navigate</a> tool to see what else is near the object.</li>
						   <li><em>Object type</em>: The type of the object, as identified by SDSS software: either STAR or GALAXY. This type was found automatically, so it may not always be correct!</li>
						   <li><em>Magnitudes</em> (<em>u</em>, <em>g</em>, <em>r</em>, <em>i</em>, <em>z</em>): The object's <a href="http://www.noao.edu/outreach/nop/nophigh/steve6.html">magnitudes</a> 
						   (<a href="http://www.noao.edu/outreach/nop/nophigh/steve6.html" target="_blank">new window</a>) - how bright it appears in each of the SDSS's five wavelength filters 
						   (ultraviolet, green, red, infrared-i, infrared-z) [<i>example: 19.55 ± 0.03, etc.</i>]</li>
						</ul>
						
						<p>If the SDSS measured a <a href="http://www.astro.uiuc.edu/~kaler/sow/spectra.html">spectrum</a> (<a href="http://www.astro.uiuc.edu/~kaler/sow/spectra.html" target="_blank">new window</a>) for the object, you will also see the following data:</p>
						
						<ul>
						   <li><em>Preview spectrum</em>: A graph of the spectrum. Click the preview spectrum for a larger view.</li>
						   <li><em>Spectral classification</em>: The type of object, as seen from its spectrum: STAR, GALAXY, QSO (quasar), or HIZ_QSO (high-redshift quasar). The spectral classification is more reliable than the imaging object type.</li>
						   <li><em>Redshift</em>: The <a href="http://www.esa.int/esaSC/SEM8AAR1VED_index_0.html">redshift</a> (<a href="http://www.esa.int/esaSC/SEM8AAR1VED_index_0.html" target="_blank">new window</a>) of the object, which can be used to calculate its distance. Redshift is symbolized by z - do not confuse this z with the infrared-z magnitude. 
						   [<i>example: 2.31427E-4</i>]</li>
						   <li><em>Get spectrum as CSV</em>: Download the spectrum in a format that can be opened in a spreadsheet for analysis</li>
						</ul>
						
						<p>For some objects, you may get a message saying the data may be unreliable. If you see that message, check the <i>flags</i> data in the 
						<a href="../explore/obj.aspx" target="_blank">Explore</a> tool to see why. For a description of the flags, see the 
						<a href="../../help/cooking/general/flags.aspx">Cooking with Sloan: Flags</a> guide (<a href="../../help/cooking/general/flags.aspx" target="_blank">new window).</p>

                		<hr width="560" align="left" />
                		
                		<a name="examples"></a>
                		<h2>Examples</h2>
						
						<p>Click on an object below to see its Quick Look data:</p>
						
                        <p><a href="quickobj.aspx?id=1237651191352590533" target="_top">SDSS J075946.49+421526.6</a>: a beautiful spiral galaxy</p>
                        <p><a href="quickobj.aspx?id=1237663783131873466" target="_top">SDSS J011522.02-004937.3</a>: a quasar at redshift 1.2, halfway across the universe
						<p><a href="quickobj.aspx?id=1237663784205746244" target="_top">SDSS J011620.75+001016.2</a>: a bright blue star - notice the diffraction spikes</p>
                        <p><a href="quickobj.aspx?id=1237666339726950497" target="_top">SDSS J011613.03+001311.4</a>: a faint red star</p>
						<p><a href="quickobj.aspx?id=1237661382772195478" target="_top">SDSS J094103.63+344331.9 (the "voorwerp"):</a> a blue blob discovered by a 
						<a href="http://www.galaxyzoo.org" target="_blank">Galaxy Zoo</a> volunteer. It is a star-forming region from the galaxy above it.</p>
						
					</td>
				</tr>
			</table>

		<hr width="560" align="left" />
</asp:Content>
