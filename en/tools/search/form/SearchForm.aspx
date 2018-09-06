<%@ Page Title="" Language="C#" MasterPageFile="../../ToolsMaster.master" AutoEventWireup="true" CodeBehind="SearchForm.aspx.cs" Inherits="SkyServer.Tools.Search.SearchForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<script language="javascript" src="validate.js"></script>
	<div id="transp">
        <TABLE height="500" cellSpacing="0" cellPadding="0" width="640" border="0" ms_2d_layout="TRUE">
			<TR vAlign="top">
				<TD width="640" height="500">
					<form id="Form1" method="post" runat="server">
						<TABLE height="400" cellSpacing="0" cellPadding="0" width="640" border="0" ms_2d_layout="TRUE">
							<tr><td colspan="3" bgcolor="#252525"><h1 align=center>SkyServer Search Form</h1></td></tr>
							<TR vAlign="middle">
								<TD height="10" colspan="3" align="center">&nbsp;</TD>
							</TR>
							<TR vAlign="top">
								<TD colspan="3" align="center">
									<table bgcolor=DimGray>
									  <tr>
										<td align=center><a href="guide.aspx" target="guide" onmouseover="return escape('Click on one of the orange ? links for help on a specific part of the form.');"><span class="formLabel">Mouseover the 
										<span class="helplink">?</span> links for quick help, or click for the User Guide</span></a>
										</td>
									  </tr>
									</table>
								</TD>
							</TR>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<TR vAlign="top">
								<TD height="32"></TD>
								<TD colspan="2" width="600">
									<table width="600" cellSpacing="0" cellPadding="1" border="0" ms_2d_layout="TRUE" height="32">
										<tr>
											<td width="20">&nbsp;</td>
											<td>
												<a href="guide.aspx#objtypes" target="guide" onmouseover="return escape('Select from the drop-down menu to choose what type of object to search for.');">
												<span class="formLabel">
												Show me&nbsp;&nbsp;</span></a><asp:DropDownList id="objecttype" runat="server" />
												<a href="guide.aspx#objtypes" target="guide" onmouseover="return escape('Select from the drop-down menu to choose what type of object to search for.');">
												&nbsp;<span class="helplink">?</span></a>&nbsp;&nbsp;&nbsp;
												<a href="guide.aspx#objtypes" target="guide" onmouseover="return escape('To search the entire sky, choose <b>anywhere</b>. To search a specific circular region, choose <b>around</b>.');">
												<span class="formLabel">in the region&nbsp;&nbsp;</span></a>
												<asp:DropDownList id="region" Runat="server" AutoPostBack="True" />
												<a href="guide.aspx#objtypes" target="guide" onmouseover="return escape('To search the entire sky, choose <b>anywhere</b>. To search a specific circular region, choose <b>around</b>.');">
												&nbsp;<span class="helplink">?</span></a>
											</td>
										</tr>
										<tr>
											<td></td>
										</tr>
										<tr>
											<td></td>
										</tr>
										<%
										if (region.SelectedItem.Text.CompareTo("anywhere")>0)
										{%>
										<tr>
										  <td height="3" colspan=2>
										    <p></p>
										  </td>
										</tr>									
										<tr>
											<td width="20">&nbsp;</td>
											<td><table border="0">
											   <tr>
												 <td width="40" align="right"><span class="formLabelSmall">ra :&nbsp;</span></td>
												 <td width="70"><asp:TextBox Runat="server" ID="centerRA" Columns="6" onblur="validate(centerRA,'ra','',0,360,1)"></asp:TextBox></td>
												 <td width="50" align="right"><span class="formLabelSmall">dec :&nbsp;</span></td>
												 <td width="70"><asp:TextBox Runat="server" ID="centerDec" Columns="6" OnBlur="validate(centerDec,'dec','',-90,90,0)"></asp:TextBox></td>
												 <td width="134" align="right"><span class="formLabelSmall">radius (arcmin):&nbsp </span></td>
												 <td width="100"><asp:TextBox Runat="server" ID="radius" Columns="4" OnBlur="validate(radius,'radius','',0,600,0)"></asp:TextBox>
													&nbsp;<a href="guide.aspx#region" target="guide" onmouseover="return escape('Enter the right ascension and declination of the center of the region you want to search, then enter search radius.');"><span class="helplink">?</span></a></td>
											   </tr>
											   <tr>
											     <td colspan=6>
											       <a href="guide.aspx#region" target="guide" onmouseover="return escape('Click this button to check whether the region you specified overlaps with the area covered by the SDSS.');">
												   <span class="formLabelSmall">Check if this area overlaps with SDSS footprint:&nbsp;&nbsp;</span></a>
												   <input id=Button6 type=button style="width:160px;" onclick="runfootprint();" value="Check SDSS Footprint"></input>												
											       &nbsp;<a href="guide.aspx#checkfootprint" target="guide" onmouseover="return escape('Click this button to check whether the region you specified overlaps with the area covered by the SDSS.');"><span class="helplink">?</span></a>
											     </td>
											   </tr>
											</table></td>		
										</TR>
										<%}%>
									</table>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD height="180"></TD>
								<TD colSpan="2">
									<table width="600" cellSpacing="0" cellPadding="1" border="0" ms_2d_layout="TRUE" height="180">
										<tr><td colspan="3"><hr></td></tr>
										<tr vAlign="top">
											<td width="20" class="small">&nbsp;</td>
											<td width="224">
													<a href="guide.aspx#mags" target="guide" onmouseover="return escape('Compare your search results with desired magnitudes. Enter a lower-limit magnitude in the left textbox and an upper-limit magnitude in the right textbox.');">
													<span class="formLabel">with magnitudes</span>
													&nbsp;
													<span class="helplink">?</span></a>
											</td>
											<td width="200">
												<a href="guide.aspx#mags" target="guide" onmouseover="return escape('Compare your search results with desired colors. Enter a lower-limit color in the left textbox and an upper-limit color in the right textbox.');">
												<span class="formLabel" align="left">and colors</span>
												&nbsp;
												<span class="helplink">?</span></a>
											</td>
										</tr>
										<tr vAlign="top">
										  <td width="20" class="small">&nbsp;</td>
										  <td colspan="2">
											<table border="0">
												<tr>												
													<td width="40"><asp:TextBox Columns="5" id="u_low" runat="server" OnBlur="validate(u_low,'u','magnitude',0,30,0)" /></td>
													<td width="80" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; u &nbsp; &lt; &nbsp;</span></td>
													<td width="40"><asp:TextBox Columns="5" id="u_high" runat="server" OnBlur="validate(u_high,'u','magnitude',0,30,0)" /></td>
													<td width="80">&nbsp;</td>
													<td width="40"><asp:TextBox Columns="5" id="ug_low" runat="server" OnBlur="validate(ug_low,'u - g','color',-20,20,0)" /></td>
													<td width="100" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; u-g &nbsp; &lt; &nbsp; </span></td>
													<td width="40"><asp:TextBox Columns="5" id="ug_high" runat="server" OnBlur="validate(ug_high,'u - g','color',-20,20,0)" /></td>
												</tr>
												<tr>												
													<td width="40"><asp:TextBox Columns="5" id="g_low" runat="server" OnBlur="validate(g_low,'g','magnitude',0,30,0)" /></td>
													<td width="80" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; g &nbsp; &lt; &nbsp;</span></td>
													<td width="40"><asp:TextBox Columns="5" id="g_high" runat="server" OnBlur="validate(g_high,'g','magnitude',0,30,0)" /></td>
													<td width="80">&nbsp;</td>
													<td width="40"><asp:TextBox Columns="5" id="gr_low" runat="server" OnBlur="validate(gr_low,'g - r','color',-20,20,0)" /></td>
													<td width="100" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; g-r &nbsp; &lt; &nbsp; </span></td>
													<td width="40"><asp:TextBox Columns="5" id="gr_high" runat="server" OnBlur="validate(gr_high,'g - r','color',-20,20,0)" /></td>
												</tr>
												<tr>
													<td width="40"><asp:TextBox Columns="5" id="r_low" runat="server" OnBlur="validate(r_low,'r','magnitude',0,30,1)" /></td>
													<td width="80" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; r &nbsp; &lt; &nbsp;</span></td>
													<td width="40"><asp:TextBox Columns="5" id="r_high" runat="server" OnBlur="validate(r_high,'r','magnitude',0,30,1)" /></td>
													<td width="80">&nbsp;</td>
													<td width="40"><asp:TextBox Columns="5" id="ri_low" runat="server" OnBlur="validate(ri_low,'r - i','color',-20,20,1)" /></td>
													<td width="100" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; r-i &nbsp; &lt; &nbsp; </span></td>
													<td width="40"><asp:TextBox Columns="5" id="ri_high" runat="server" OnBlur="validate(ri_high,'r - i','color',-20,20,1)" /></td>
												</tr>
												<tr>
													<td width="40"><asp:TextBox Columns="5" id="i_low" runat="server" OnBlur="validate(i_low,'i','magnitude',0,30,1)" /></td>
													<td width="80" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; i &nbsp; &lt; &nbsp;</span></td>
													<td width="40"><asp:TextBox Columns="5" id="i_high" runat="server" OnBlur="validate(i_high,'i','magnitude',0,30,1)" /></td>
													<td width="80">&nbsp;</td>
													<td width="40"><asp:TextBox Columns="5" id="iz_low" runat="server" OnBlur="validate(iz_low,'i - z','color',-20,20,1)" /></td>
													<td width="100" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; i-z &nbsp; &lt; &nbsp; </span></td>
													<td width="40"><asp:TextBox Columns="5" id="iz_high" runat="server" OnBlur="validate(iz_high,'i - z','color',-20,20,1)" /></td>
												</tr>
												<tr>
													<td width="40"><asp:TextBox Columns="5" id="z_low" runat="server" OnBlur="validate(z_low,'z','magnitude',0,30,0)" /></td>
													<td width="80" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; z &nbsp; &lt; &nbsp;</span></td>
													<td width="40"><asp:TextBox Columns="5" id="z_high" runat="server" OnBlur="validate(z_high,'z','magnitude',0,30,0)" /></td>
													<td width="80">&nbsp;</td>
													<td width="40"><asp:TextBox Columns="5" id="ur_low" runat="server" OnBlur="validate(ur_low,'u - r','color',-20,20,0)" /></td>
													<td width="100" align=center><span class="formLabelSmall"> &nbsp; &lt; &nbsp; u-r &nbsp; &lt; &nbsp; </span></td>
													<td width="40"><asp:TextBox Columns="5" id="ur_high" runat="server" OnBlur="validate(ur_high,'u - r','color',-20,20,0)" /></td>
												</tr>
												<tr>
													<td colspan="9">
														<div class="bindent2">
															<span class="formLabelSmall">Remember that the magnitude scale is backward!<br>
																For objects brighter than 18 in g, use g &lt; 18.</span>
														</div>
													</td>
												</tr>
											  </table>
											</td>
										</tr>
										<tr><td colspan="3"><hr></td></tr>
									</table>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD height="20"></TD>
								<TD colSpan="2">
									<table width="600" cellSpacing="0" cellPadding="0" border="0" ms_2d_layout="TRUE" height="20">
										<tr vAlign="top">
											<td width="12" class="small">&nbsp;</td>
											<td colspan="2">
													<a href="guide.aspx#spec" target="guide" onmouseover="return escape('Select whether you want results for all objects, or only for objects with measured spectra.');">
													<span class="formLabel">
													&nbsp;&nbsp;for </span></a><asp:DropDownList id="allorspectra" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TurnOffSpectra" />
													<a href="guide.aspx#spec" target="guide" onmouseover="return escape('Select whether you want results for all objects, or only for objects with measured spectra.');">
													&nbsp;<span class="helplink">?</span></a>
											</td>
										</tr>
										<%
									  if (allorspectra.SelectedItem.Text.CompareTo("only objects with spectra")==0)
									  {%>
										<tr>
										  <td height="12">
										    <p></p>
										  </td>
										</tr>
										<tr>
											<td width="12">&nbsp;&nbsp;</td>
											<td width="32" height="20">&nbsp;</td>
											<td>
													<a onmouseover="return escape('Enter the range of redshifts for which you want spectra returned.');">
													<span class="formLabelSmall">with redshifts between</span>
													<asp:TextBox Runat="server" ID="redshiftmin" Columns="5" OnBlur="validate(redshiftmin,'min redshift','',0,6)"></asp:TextBox>
													<span class="formLabelSmall">and</span>
													<asp:TextBox Runat="server" ID="redshiftmax" Columns="5" OnBlur="validate(redshiftmax,'max redshift','',0,6)"></asp:TextBox>
													&nbsp;</a><a href="guide.aspx#spec" target="guide" onmouseover="return escape('Enter the range of redshifts for which you want spectra returned.');"><span class="helplink">?</span></a>
											</td>
										</tr>
										<%}%>
									</table>
								</TD>
							</TR>
							<tr><td height="20" colspan="3"></td></tr>
							<TR vAlign="top">
								<TD height="80"></TD>
								<TD colSpan="2">
									<table cellSpacing="0" cellPadding="1" border="0" ms_2d_layout="TRUE" width="600" height="80">
										<tr vAlign="top">
											<td width="20">&nbsp;</td>
											<td><a href="guide.aspx#results" target="guide" onmouseover="return escape('These controls let you specify what types of data your search will return.');">
												<span class="formLabel">Please return:</span>
												&nbsp;<span class="helplink">?</span></a></td>
										<tr valign="top">
											<td width="20">&nbsp;</td>
											<td>
												<table border="2">
													<tr>
														<td width="145">
															<a href="guide.aspx#results" target="guide" onmouseover="return escape('These radio buttons let you control how many results to return. <b>Count Only</b> will return only the number of results and not the results themselves. <b>10</b> and <b>100</b> will return the first 10 or 100 results in the database. <b>All</b> will return all results that match your query, but might take a long time.');">
															<span class="formLabelSmall">Num. of Objects:</span>
															<span class="helplink">?</span></a></td>
														<td colspan="4">
															<asp:RadioButtonList id="NumObjs" runat="server" Width="345" Height="8" RepeatDirection="Horizontal">
																<asp:ListItem Value="count">
																	<span class="formLabelSmall">Count Only</span>
																</asp:ListItem>
																<asp:ListItem Value="10" Selected="True">
																		<span class="formLabelSmall">10</span>
																</asp:ListItem>
																<asp:ListItem Value="100">
																		<span class="formLabelSmall">100</span>
																</asp:ListItem>
																<asp:ListItem Value="1000">
																	<span class="formLabelSmall">1000</span>
																</asp:ListItem>
																<asp:ListItem Value="all">
																	<span class="formLabelSmall">All</span>
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
													</tr>
													<tr>
														<td width="145">
															<a href="guide.aspx#results" target="guide" onmouseover="return escape('These checkboxes let you select particular image attributes to return:<ul> <li><b>Object IDs</b> are the 18-19 digit unique numbers that SDSS uses to refer to objects;</li> <li><b>RA</b> and <b>dec</b> are the sky coordinates of the object;</li> <li><b>Magnitudes</b> are the brightness of the object seen through the five SDSS filters (u,g,r,i,z).</li> </ul>')">
															<span class="formLabelSmall">Image Data:</span>
															<span class="helplink">?</span></a></td>
														<td width="345">
															<asp:CheckBox id="Objids" runat="server" /><span class="formLabelSmall">object IDs</span>
															<asp:CheckBox id="radec" runat="server" /><span class="formLabelSmall">RA and Dec</span>
															<asp:CheckBox id="Magnitudes" runat="server" /><span class="formLabelSmall">magnitudes</span>
														</td>
													</tr>
										<%
							  if (allorspectra.SelectedItem.Text.CompareTo("only objects with spectra")==0)
								{%>
													<tr>
														<td width="145">
															<a href="guide.aspx#results" target="guide" onmouseover="return escape('These checkboxes let you select particular spectroscopic attributes to return:<ul> <li><b>Redshift</b> is a measure of how fast an object is moving in the expanding universe - it can be used as a measure of the distance of the object;</li> <li><b>Spectrum ID</b> and <b>Plate/mjd/fiber number</b> are two ways of looking up a spectrum in SkyServer.</li> </ul>');">
															<span class="formLabelSmall">Spectral Data:</span>
															<span class="helplink">?</span></a></td>
														   
														<td width="345">
															<asp:CheckBox id="redshift" runat="server" /><span class="formLabelSmall">redshift</span>
															<asp:CheckBox id="specobjid" runat="server" /><span class="formLabelSmall">spectrum ID</span>
															<asp:CheckBox id="platefiber" runat="server" /><span class="formLabelSmall">plate/mjd/fiber</span>
														</td>
													</tr>
										<%}%>
												</table>
											</td>
										</tr>
									</table>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD height="200"></TD>
								<TD colSpan="2">
									<table width="600" cellSpacing="0" cellPadding="1" border="0" ms_2d_layout="TRUE" height="200">
										<tr><td colspan="3"><hr></td></tr>
										<tr vAlign="top">
											<td width="20">&nbsp;</td>
											<td width="580">
												<span class="formLabel">SQL Query:</span>
												&nbsp;&nbsp;
												<asp:Button Text="Generate Query" runat="server" id="Button1" onclick="showQuery" />
																<a href="guide.aspx#update" target="guide" onmouseover="return escape('Click this button to show the SQL query that your form selections generated. If you want to make additional manual changes to the query, click <b>Edit Query</b>.<br><br>To submit the query, click one of the buttons below.');">
												&nbsp;<span class="helplink">?</span></a>
												&nbsp;&nbsp;
												<asp:Button Text="Edit Query" Enabled=False runat="server" id="Button4" onclick="enableEdit" />
												<a href="guide.aspx#update" target="guide" onmouseover="return escape('Click this button to manually edit the query <b>after</b> you have finished making your form selections. When you are finished editing, press <b>Done Edit</b>. You will <b>NOT</b> be able to update the form after you press Edit Query.');">
												&nbsp;<span class="helplink">?</span></a>
												&nbsp;&nbsp;
												<asp:Button Text="Syntax" Enabled=False runat="server" id="Button7" onclick="runSqlSyntaxCheck" />
												<a href="guide.aspx#update" target="guide" onmouseover="return escape('Click this button if you wish to check the syntax of your <b>edited</b> query before submitting it.');">
												&nbsp;<span class="helplink">?</span></a>

											</td>
										</tr>
										<tr vAlign="top">
											<td width="20">&nbsp;</td>
											<td colspan=2 width="580">
												<asp:TextBox ReadOnly=True TextMode="MultiLine" id="SqlBox" rows="8" Columns="60" runat="server" />
												<input type="hidden" id="SkyServerText" value="<%=SkyServerText%>"></input>											</td>
												<input type="hidden" id="ImageListText" value="<%=ImageListText%>"></input>											</td>
												<input type="hidden" id="EditQueryStatus" value="<%=EditQueryStatus%>"></input>											</td>
										</tr>
										<tr><td colspan="3"><hr></td></tr>
										<tr vAlign="top">
											<td width="20">&nbsp;</td>
											<td>
												<table border=2>
													<TR>
														<td width="244">&nbsp;
														<% if( (Button4.Enabled == false) || (Button4.Text == "Done Edit") ) { %>
															<asp:Button id="Button2" Enabled=False onclick="runSql" runat="server" width="200px" Text="Submit Query to SkyServer">
															</asp:Button>
															<a href="guide.aspx#submit" border=1 target="guide" onmouseover="return escape('Click this button to submit your query to SkyServer. Use the radio buttons to the right to select how your data will be formatted: <b>HTML</b> or <b>CSV</b> (comma-separated value). Results will appear in a new window.');">
															&nbsp;<span class="helplink">?</span></a>&nbsp;
														<%} else {%>
															<input id=Button2 type=button style="width:200px;" onclick="runquery();" value="Submit Query to SkyServer"></input>
															<a href="guide.aspx#submit" border=1 target="guide" onmouseover="return escape('Click this button to submit your query to SkyServer. Use the radio buttons to the right to select your output format. Results will appear in a new window.');">
															&nbsp;<span class="helplink">?</span></a>&nbsp;
														<%}%>
														</td>
														<td width="248" align="center">
														   <table border=0>
														      <tr>
																<td align="center">
																	<a href="guide.aspx#submit" border=1 target="guide" onmouseover="return escape('Choose whether you want your results returned as HTML or as comma-separated values (CSV).');">
																	<span class="formLabelSmall">Output Format:</span></td><td><asp:RadioButtonList id="RadioButtonList1" runat="server" width="126px" RepeatDirection="Horizontal">
																	<asp:ListItem Value="html" Selected="True">HTML&nbsp;</asp:ListItem><asp:ListItem Value="csv">CSV&nbsp;</asp:ListItem>
																	</asp:RadioButtonList>
																	<!--&nbsp;&nbsp;<a href="guide.aspx#submit" border=1 target="guide" onmouseover="return escape('Click this button to submit your query to SkyServer. Use the radio buttons to the right to select your output format. Results will appear in a new window.');">
															&nbsp;<span class="helplink">?</span></a>&nbsp;-->
																</td>
															  </tr>
														   </table>
														</td>
													</TR>
												</table>
											</td>
										</tr>
										<tr vAlign="top">
											<td width="20">&nbsp;</td>
											<td>
												<table border=2 height="40px">
													<TR>
														<td width="244">&nbsp;
														<% if( (Button4.Enabled == false) || (Button4.Text == "Done Edit") ) { %>
															<asp:Button id="Button3" Enabled=False onclick="runImageList"  runat="server" width="200px" Text="Submit Query to Image List"></asp:Button>
															<a href="guide.aspx#imagelist" border=1 target="guide" onmouseover="return escape('Click this button to submit your query to the Image List tool. You will see a list of results in a new window. Click <b>Send to List</b> to see the images.');">
															&nbsp;<span class="helplink">?</span></a>
														<%} else {%>
															<input type=button style="width:200px;" onclick="runimglist();" value="Submit Query to Image List"></input>
															<a href="guide.aspx#submit" border=1 target="guide" onmouseover="return escape('Click this button to submit your query to the Image List tool. Then, click <b>Send to List</b> to see the images.');">
															&nbsp;<span class="helplink">?</span></a>&nbsp;
														<%}%>
														</td>
														<td width="248" align="center">&nbsp;&nbsp;
															<asp:Button id="Button5" onclick="resetForm" runat="server" width="100px" Text="Reset Form"></asp:Button>
															<a href="guide.aspx#resetform" target="guide" onmouseover="return escape('Click this button to reset the form to its default values.');">
															&nbsp;<span class="helplink">?</span></a>
														</td>
													</TR>
												</table>
											</td>
										</tr>
									</table>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD height="32"></TD>
								<TD colSpan="2">
									<table width="560" cellSpacing="0" cellPadding="1" border="0" ms_2d_layout="TRUE" height="32">
										<tr vAlign="top">
											<td>&nbsp;</td>
										</tr>
										<tr vAlign="top">
											<td align="center">
												<table bgcolor=DimGray>
													<tr>
														<td align=center>
															<a href="guide.aspx#hints" target="guide" onmouseover="return escape('Click this link to see some tips on how to make your searches run faster, and how to make your results more useful.');"><span class="formLabel">Hints for Better Searches&nbsp;</span>
															<span class="helplink">?</span></a>
														</td>
													</tr>
												</table>	
											</td>
										</tr>
									</table>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD height="23"></TD>
								<TD colSpan="2">
									<input type="hidden" id="page" value="1"></TD>
							</TR>
							<!-- this table displays controls for magnitudes and colors -->
							<!-- this table displays controls for spectra and redshift -->
							<!-- this table displays controls for what parameters are returned -->
							<!-- this table displays the SQL query text box and the function buttons (Update Query, Submit Query) -->
							<!--  this table displays the "Submit Query to Image List" Button"  -->
						</TABLE>
					</form>
				</TD>
			</TR>
		</TABLE>

		</div>

</asp:Content>
