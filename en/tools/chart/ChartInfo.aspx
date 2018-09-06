<%@ Page Title="" Language="C#" MasterPageFile="ChartBase.Master" AutoEventWireup="true" CodeBehind="ChartInfo.aspx.cs" Inherits="SkyServer.Tools.Chart.ChartInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
    <div class="content">
		<h1>SDSS
			<%= globals.Release%>
			Finding Chart Tool</h1>
		<hr width="600" align="left">
		<h3>Finding Chart (ra, dec, scale, height, width, opt, query)</h3>
		<ul>
			<table width="560">
				<tr>
					<td>
						returns a JPEG image centered on <i>(ra,dec)</i>, of size <i>(height x width)</i>
						where the image is scaled to an arbitrary scale <i>(scale)</i>. In SDSS the 
						default scale is 0.396127 arcsec/pix. Various drawing options can be specified <i>(opt)</i>.
						Use mark query to select objects of special interest.
						<p id="list">
						If you're new to the Finding Chart, please see the <a href="<%= url%>/tools/chart/default.aspx" target="Visual">Visual Tools main page</a>
						and <a href="#list" onclick="window.open('../started/chart.aspx','popup','width=440,height=580,resizeable,scrollbars');">
						Getting Started with Finding Chart</a>.
					</td>
				</tr>
			</table>
		</ul>
		<hr width="540" align="left">
		<i>Parameters:</i>
		<ul>
			<table>
				<tr>
					<td class='q' width="60">ra</td>
					<td>
						center point right ascension in J2000 decimal degrees, hh mm ss.s, or hh:mm:ss.s</td>
				</tr>
				<tr>
					<td class='q'>dec</td>
					<td>
						center point declination in J2000 decimal degrees, dd mm ss.s, or dd:mm:ss.s</td>
				</tr>
				<tr>
					<td class='q'>scale</td>
					<td>
						arcsec/pixel (the natural scale of SDSS is 0.396127)</td>
				</tr>
				<tr>
					<td class='q'>height</td>
					<td>
						image height in pixels, limited to [64..2048]</td>
				</tr>
				<tr>
					<td class='q'>width
					</td>
					<td>
						image width in pixels, limited to [64..2048]</td>
				</tr>
				<tr>
					<td class='q' valign="top">opt
					</td>
					<td>
						options string, a set of upper-case characters, like 'GPST'.<br>
					</td>
				</tr>
			</table>
		</ul>
		<hr width="540" align="left">
		<i>Use query to mark objects:</i>
		<ul>
			This option will draw a triangle on top of objects selected by a marking string.<br>
			Objects must be inside the field of view of the image to be displayed.<br>
			The format of the string can be from the following choices:<br><br>
			<ol>	
				<LI><b>List of objects.</b> A header with RA and DEC columns must be included. 
				<br>Columns must be separated by tabs, spaces, commas or semicolons.
				<br>The list may contain as many columns as wished. 
				<p>
				<TABLE>
				<TR>
					<TD><b>ObjId</b></TD>
					<TD><b>RA</b></TD>
					<TD><b>DEC</b></TD>
					<TD><b>RMag</b></TD>
				</TR>
				<TR>
					<TD>1237666338116206715</TD>
					<TD>18.877321</TD>
					<TD>-0.859906</TD>
					<TD>21.57310</TD>

				</TR>
				<TR>
					<TD>1237666338116206712</TD>
					<TD>18.876854</TD>
					<TD>-0.860976</TD>
					<TD>12.82945</TD>
				</TR>
			</TABLE><br>

			<LI><b>SQL SELECT query.</b> RA and DEC columns must be included. 
			<p style="font-size:10pt">
				SELECT TOP 10 p.objID, p.ra, p.dec, p.r <br/>
				FROM fGetObjFromRectEq(&lt;ra1&gt;,&lt;dec1&gt;,&lt;ra2&gt;,&lt;dec2&gt;) n, PhotoPrimary p <br />
				WHERE n.objID=p.objID<br/><br/>
		  </p>
			<LI><b>String following the pattern:</b> <I>ObjType Band (low_mag, high_mag)</I>
			<p>
				<table cellpadding="2">
					<tr>
						<td><b>ObjType:</b></td>
						<td>S | G | P </td> 
					</tr>
					<tr>
						<td></td>
						<td> marks Stars, Galaxies or PhotoPrimary objects.</td>
					</tr>					
					<tr>
						<td><b>Band:</b>
						<td>U | G | R | I | Z | A </td>
					<tr>	
						<td></td>
						<td> restricts marks to objects with <i>Band </i>BETWEEN <i>low_mag</i> AND <i>high_mag</i><br> 
						Band 'A' will mark all objects within the specified magnitude range in any band (ORs composition).
						</td>						
					</tr>
					<tr>
						<td><b>Examples:</b></td>
						<td>S</td>
					</tr>
					<tr>
						<td></td>
						<td>S R (0.0, 23.5)</td>
					</tr>
					<tr>
						<td></td>
						<td>G A (20, 30)</td>
					</tr>				
				</table>
			</ol>
		</ul>		

				
		<hr width="540" align="left">
		<i>Drawing options:</i>
		<ul>
			The characters present will select the corresponding option<br>
			from the list below. Characters not in the list are ignored.
			<p>
				<table cellpadding="2">
					<tr>
						<td class='q'>G</td>
						<td>Grid</td>
						<td>Draw a N-S E-W grid through the center</td>
					</tr>
					<tr>
						<td class='q'>L</td>
						<td>Label</td>
						<td>Draw the name, scale, ra, and dec on image</td>
					</tr>
					<tr>
						<td class='q'>P</td>
						<td>PhotoObj</td>
						<td>Draw a small cicle around each primary photoObj</td>
					</tr>
					<tr>
						<td class='q'>S</td>
						<td>SpecObj</td>
						<td>Draw a small square around each specObj</td>
					</tr>
<!--
					<tr>
						<td class='q'>T</td>
						<td>Target</td>
						<td>Draw a small square around each Target</td>
					</tr>
-->
					<tr>
						<td class='q'>O</td>
						<td>Outline</td>
						<td>Draw the outline of each photoObj
						</td>
					</tr>
					<tr>
						<td class='q'>B</td>
						<td>Bounding Box</td>
						<td>Draw the bounding box of each photoObj
						</td>
					</tr>
					<tr>
						<td class='q'>F</td>
						<td>Fields</td>
						<td>Draw the outline of each field
						</td>
					</tr>
					<tr>
						<td class='q'>M</td>
						<td>Masks</td>
						<td>Draw the outline of each mask considered to be important
						</td>
					</tr>
					<tr>
						<td class='q'>Q</td>
						<td>Plates</td>
						<td>Draw the outline of each plate
						</td>
					</tr>
					<tr>
						<td class='q'>I</td>
						<td>Invert</td>
						<td>Invert the image (B on W)</td>
					</tr>
				</table>
		</ul>
		<hr width="540" align="left">
		<i>Direct access for web pages:</i>
		<ul>
			<table width="560">
				<tr>
					<td>
						This application is based on an underlying web service, <b>ImgCutout.asmx</b> which 
						can be called in many different ways, using the SOAP protocol, or just using the 
						standard HTTP GET and PUT interfaces. The formal description is contained in 
						the <A href="<%=chartUrl%>/ImgCutout.asmx?WSDL">WSDL</A>, Web Service Description 
						Language document.</p>
					</td>
				</tr>
				<tr>
					<td>
						The getjpeg service can be directly called from any web page through the HTTP 
						GET protocol. In order to build a dynamic cutout into your own web page, insert 
						the following example. Naturally, replace the parameter values with your own.
						<p>
							<samp><font color="blue">&lt;IMG SRC="<%=chartUrl%>
									<br>
									&nbsp;&nbsp;/getjpeg?ra=<%= globals.VisualRA%>&amp;dec=<%= globals.VisualDec%>&amp;scale=<%= globals.VisualScale%> 
									&nbsp;&nbsp;&amp;width=400&amp;height=400&amp;opt=GST&amp;query=SR(10,20)"&gt;</font></samp>
							<br>
						</p>
					</td>
				</tr>
			</table>
		</ul>
		<!--
				<span class='s'>&nbsp;*&nbsp; to be implemented later </span></p>
-->
		<hr width="540" align="left">
		<span class='s'>	Authors: Jim Gray, Alex Szalay, Maria Nieto-Santisteban, Tamas Budavari, February 2004.</span>

    </div>
</asp:Content>
