<%@ Page Title="" Language="C#" MasterPageFile="HomeMaster.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SkyServer.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #logos  {position:absolute;top:0px;left:0px;visibility:visible}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="logos">
		<div style="position:absolute;left:<%= logoleftpos%>px;top:108px;z-index:5;">
            <table width="80" border="0" cellpadding="0" cellspacing="5">
		        <tr><td align="middle" class="smallbodytext">SDSS is <br>supported by</td></tr>
		        <tr><td align="middle"><a href="http://www.sloan.org"><img src="../images/logo_sloan.jpg" width="48" height="48" border="0"></a></td></tr>
		        <tr><td align="middle"><a href="http://www.nsf.gov"><img src="../images/logo_nsf.jpg" width="48" height="48" border="0"></a></td></tr>
		        <tr><td align="middle"><a href="http://www.energy.gov"><img src="../images/logo_energy.jpg" width="48" height="48" border="0"></a></td></tr>
		        <tr><td>&nbsp;</td></tr>
		        <tr><td align="middle" class="smallbodytext">Powered by</td></tr>
                <tr>
                    <td align="middle">
                        <a href="<%=globals.SciServerLink%>">
                            <img src="../images/sciserver_icon_bkgd_blue_64px.png" alt="SciServer logo" /><br />
                            <span class="smallbodytext">SciServer</span>
                        </a>
                    </td>
                </tr>
		        <tr><td align="middle"><a href="http://research.microsoft.com/"><img src="../images/logo_ms.jpg" width="64" height="21" border="0"></a></td></tr>
            </table>
        </div>
        <div style="position:absolute;left:<%= logoleftpos%>px;top:450px;z-index:5;">
            <table width="80" border="0" cellpadding="0" cellspacing="0">
		        <tr><td><hr class="hrule"></td></tr>
  		        <tr><td>		
			        <a class="smallbodytext" style="FONT-WEIGHT: normal" 
				        href="<%= globals.LogUrl %>">
			        &nbsp;&nbsp;Site Traffic</a>
		        </td></tr>
		        <tr><td>	
			        <a class="smallbodytext" style="FONT-WEIGHT: normal"
				        href="<%= globals.LogUrl %>privacy.asp">
			        &nbsp;&nbsp;Privacy Policy</a>
		        </td></tr>
		        <tr><td><hr class="hrule"></td></tr>
		        <tr><td class="hiddentext" align="center"><a class="hiddentext" href=""><%= version %></a></td></tr>
            </table>
        </div>
	</div>

	<div id="public">

        <%=MessageOfTheDay%>
        
		<table border="0" cellpadding="0" cellspacing="2" width="668">
			<tr><td colspan=5 class="midbodytext" style="color=#ffff00"><b>
			</b></td></tr>
			<tr>
				<td colspan="5" class="smallbodytext">&nbsp;</td>
			</tr>
			<tr valign="top">
				<td width="10">&nbsp;</td>
				<td width="410" class="midbodytext" style="color=#cccc99">
					Welcome to the <a href="<%=globals.SdssUrl%>">
					<%= siteTitle + " " %>
					site</a>!!!
					<br>
					&nbsp;<br>
					This website presents data from the Sloan Digital Sky Survey, a project to make 
					a map of a large part of the universe. We would like to show you the beauty of 
					the universe, and share with you our excitement as we build the largest map in 
					the history of the world.<br />
				</td>
				<td width="10" class="smallbodytext">&nbsp;</td>
				<td width="204" class="newstext">
					<b>News</b>
					<br>
					&nbsp;<br>
					The site hosts data from <a href="<%=globals.SdssUrl%>">Data Release <%=globals.ReleaseNumber%> (<%=globals.Release%>)</a>.
					<a href="<%=globals.SdssUrl%>whatsnew">What's new in <%=globals.Release%></a>, 
					<!--<a href="news.aspx">what's new on this site</a>--> and 
					<a href="<%=globals.SdssUrl%>problems">known problems</a>. 
					<a class="newstext"	href="<%=globals.SdssUrl%>">More...</a>
				</td>
				<td width="10" class="smallbodyText">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="5">&nbsp;</td>
			</tr>
		</table>
		<table width="668" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td width="152">
					<table width="152" cellpadding="0" cellspacing="0" border="0" background="images/new_menu_gradient.jpg">
						<tr height="35">
							<td nowrap class="menuheadlink">
							  <a class="menuheadlink" href="tools/">
							    &nbsp;Data Access&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							  <a class="menulink" href="tools/chart/navi.aspx">
							    &nbsp;&nbsp;Navigate&nbsp;&nbsp;&nbsp;|
<a class="menulink" href="tools/chart/chart.aspx">
							    &nbsp;&nbsp;Finding Chart&nbsp;&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							  <a class="menulink" href="tools/quicklook/quickobj.aspx">
							    &nbsp;&nbsp;Quick Look</a>&nbsp;&nbsp;|
							    <a class="menulink" href="tools/explore/obj.aspx">&nbsp;&nbsp;Explore&nbsp;&nbsp;&nbsp;</a>
							</td>
						</tr>
<!--
						<tr height="20">
							<td nowrap class="menulink">
							  <a class="menulink" href="tools/chart/chart.aspx">
							    &nbsp;&nbsp;Finding Chart&nbsp;&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
-->
						<tr height="20">
							<td nowrap class="menulink">
							  <a class="menulink" href="tools/chart/list.aspx">
							     &nbsp;&nbsp;Image List&nbsp;&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							  <a class="menulink" href="tools/search/">
							    &nbsp;&nbsp;Search&nbsp;&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							  <!--<a class="menulink" href="tools/search/form/form.aspx">
							    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Form</a>
							    &nbsp;|&nbsp;-->
							    &nbsp;&nbsp;
							  <a class="menulink" href="tools/search/iqs.aspx">
							    IQS</a>
							    &nbsp;|&nbsp;
							  <a class="menulink" href="tools/search/sqs.aspx">
							    SQS</a>
							    &nbsp;|&nbsp;
                              <a class="menulink" href="tools/search/irqs.aspx">
							    IRSQS</a>
                                &nbsp;&nbsp;
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							   <a class="menulink" href="tools/search/sql.aspx">
							     &nbsp;&nbsp;SQL Search&nbsp;&nbsp;&nbsp;
							   </a>
							 </td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink">
							   <a class="menulink" href="tools/crossid/crossid.aspx">
							     &nbsp;&nbsp;Cross-ID&nbsp;&nbsp;&nbsp;
							   </a>
                            </td>
                        </tr>
<% if( Boolean.Parse(ConfigurationManager.AppSettings["DoShowCrossMatch"].ToLower() )  ) {  %>						
                        <tr height="20">
							<td nowrap class="menulink">
                                <a class="menulink" href="tools/crossmatch/crossmatch.aspx">
							     &nbsp;&nbsp;SkyQuery CrossMatch <i><em><strong><sup>NEW!</sup></strong> </em></i>  </a>
							 </td>
						</tr>
<% } %>
						<tr height="20">
							<td nowrap class="menulink">
							   <a class="menulink" href="<%=globals.CasJobs%>">
							     &nbsp;&nbsp;CasJobs&nbsp;</a><img src="images/offsite.png" />&nbsp;&nbsp;</td>
						</tr>						

						<tr height="20">
							<td nowrap>&nbsp;</td>
						</tr>

					</table>
				</td>
		    
				<td width="15">&nbsp;</td>
				<td width="152">
					<table width="152" cellpadding="0" cellspacing="0" border="0" background="images/new_menu_gradient.jpg">
						<tr height="35">
							<td nowrap class="menuheadlink">
							  <a class="menuheadlink" href="proj/">
							    &nbsp;Education&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/teach.aspx">&nbsp;&nbsp;For Educators&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/">&nbsp;&nbsp;Lesson Plans&nbsp;&nbsp;</a></td>
						</tr>
<!--
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/basic/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle School&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/advanced/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; High School&nbsp;&nbsp;</a></td>
						</tr>
-->
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/advanced/">&nbsp;&nbsp;College Lab Activities&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/teachers/">&nbsp;&nbsp;Instructor Guides&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="proj/challenges/">&nbsp;&nbsp;Student/Public Research&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="http://www.galaxyzoo.org">&nbsp;&nbsp;Galaxy Zoo&nbsp;</a><img src="images/offsite.png" /></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="http://www.zooniverse.org">&nbsp;&nbsp;Zooniverse&nbsp;</a><img src="images/offsite.png" />&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="http://voyages.sdss.org">&nbsp;&nbsp;Voyages&nbsp;</a><img src="images/offsite.png" />&nbsp;&nbsp;</td>
						</tr>
						
						<tr height="20">
							<td nowrap>&nbsp;</td>
						</tr>																							

					</table>
				</td>
				<td width="15">&nbsp;</td>
				<td width="152">
					<table width="152" cellpadding="0" cellspacing="0" border="0" background="images/new_menu_gradient.jpg">
						<tr height="35">
							<td nowrap class="menuheadlink">
							  <a class="menuheadlink" href="links/">
							     &nbsp;Links&nbsp;&nbsp;
							  </a>
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite" href="<%=globals.SdssUrlBase%>">&nbsp;&nbsp;sdss.org &nbsp;</a><img src="images/new_window.png" />&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite" href="<%=globals.SdssUrlBase%>dr<%=globals.ReleaseNumber%>/"> &nbsp;&nbsp;Data Release <%=globals.ReleaseNumber%> &nbsp;</a><img src="images/new_window.png" />&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite"  href="<%=globals.SdssUrlBase%>/surveys/">&nbsp;&nbsp;Surveys&nbsp;</a><img src="images/new_window.png" />|<a class="menulink" target="offsite"  href="<%=globals.SdssUrlBase%>/instruments/">&nbsp;Instruments&nbsp;&nbsp;</a><img src="images/new_window.png" /></td>
						</tr>												
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="<%=globals.SdssUrlBase%>science/">&nbsp;&nbsp;SDSS Science &nbsp;</a><img src="images/offsite.png" />&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite" href="<%=globals.DasUrl %>">&nbsp;&nbsp;Science Archive Server&nbsp;</a><img src="images/new_window.png" />&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="astro/">&nbsp;&nbsp;About Astronomy&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="skyserver/">&nbsp;&nbsp;About SkyServer&nbsp;</a></td>
						</tr>
<!--
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="http://www.usvao.org/">&nbsp;&nbsp;VAO&nbsp;</a><img src="images/offsite.png" />&nbsp;&nbsp;</td>
						</tr>
-->
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="<%=ConfigurationManager.AppSettings["creditsUrl"]%>">&nbsp;&nbsp;Credits&nbsp</a><img src="images/offsite.png" /></td>
					    </tr>

						<tr height="20">
							<td nowrap>&nbsp;</td>
						</tr>					    					    

					</table>
				<td width="15">&nbsp;</td>
				<td width="152">
					<table width="152" cellpadding="0" cellspacing="0" border="0" background="images/new_menu_gradient.jpg">
						<tr height="35">
							<td nowrap class="menuheadlink"><a class="menuheadlink" href="help/">&nbsp;Help&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/docs/introduction.aspx">&nbsp;&nbsp;Start Here</a>&nbsp;&nbsp;|
							&nbsp;
							<a class="menulink" target="offsite" href="<%=globals.SdssUrl%>help/">FAQ &nbsp;</a><img src="images/new_window.png" />
							</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite" href="<%=globals.SdssUrl%>/glossary">&nbsp;&nbsp;Glossary &nbsp;</a><img src="images/new_window.png" />						
							&nbsp;&nbsp;</td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" target="offsite" href="<%=globals.SdssUrl%>/algorithms">&nbsp;&nbsp;Algorithms &nbsp;</a><img src="images/new_window.png" />						
							&nbsp;&nbsp;</td>
						</tr>
<!--
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="tools/started/">&nbsp;&nbsp;Tool User Guides&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
-->
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/cooking/">&nbsp;&nbsp;Cooking with Sloan&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/howto/search/">&nbsp;&nbsp;SQL Tutorial&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/docs/intro.aspx">&nbsp;&nbsp;About the Database&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/browser/browser.aspx">&nbsp;&nbsp;Schema Browser&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="help/docs/realquery.aspx">&nbsp;&nbsp;Sample SQL Queries&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
<!--
						<tr height="20">
							<td nowrap class="menulink"><a class="menulink" href="sdss/pubs/">&nbsp;&nbsp;Data Release Papers&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
						</tr>
-->

						<tr height="20">
							<td nowrap>&nbsp;</td>
						</tr>
					</table>
				</td>
				<td width="15">&nbsp;</td>
			</tr>

			<tr height="10">
				<td colspan="7"></td>
			</tr>

			<tr height="80">
				<td><a href="tools/"><img class="imgborder" border="0" width="152" height="80" src="images/new_tools_1.jpg"></a></td>
				<td width="15"></td>
				<td><a href="proj/"><img class="imgborder" border="0" width="152" height="80" src="images/new_projects_1.jpg"></a></td>
				<td width="15"></td>
				<td><a href="links/"><img class="imgborder" border="0" width="152" height="80" src="images/new_astronomy_1.jpg"></a></td>
				<td width="15"></td>
				<td><a href="help/"><img class="imgborder" border="0" width="152" height="80" src="images/new_help_1.jpg"></a></td>
				<td width="15">&nbsp;</td>
			</tr>
						
			<tr height="5">
				<td colspan="7"></td>
			</tr>

			<tr valign=middle>
				<td colspan="7" align=center valign=center><a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Us</a></td>
			</tr>

		</table>
	</div>
</asp:Content>
