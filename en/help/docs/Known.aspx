<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Known.aspx.cs" Inherits="SkyServer.Help.Docs.Known" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
  <div id="transp">
    <table border="0" cellpadding="0" cellspacing="2" width="640">
      <tr>
	 <td><h3>Known Problems on SkyServer website and the CAS:</h3>
	     <ul>
<!--
		Response.Write( "\t<li>At this time there are no known problems in the "+release+" CAS." );
-->
		<li><b>March 2012</b>: 
			<ul>
				<li>The visual tools (<a href="<%=url%>/tools/explore/obj.aspx">Explore</a>, <a href="<%=url%>/tools/chart/navi.aspx">Navigate</a>, <a href="<%=url%>/tools/chart/chart.aspx">Finding Chart</a>) 
                    sometimes fail to show an object that exists in an SDSS-III field because of the way the JPEG images are constructed. For example, an asteroid is missing from its 
                    <a href="http://skyserver.sdss3.org/dr8/en/tools/explore/obj.asp?id=1237652944786686032">DR8 Explore page</a> even though it showed up in the 
                    <a href="http://cas.sdss.org/dr7/en/tools/explore/obj.asp?id=587727223561781338">DR7 Explore page</a>. We can verify that the object exists in the corresponding SDSS-III field by 
                    using the <a href="<%=url%>/tools/getimg/fields.aspx">Get Frame tool (Tools->Get images->Fields)</a> to look at the 
                    <a href="http://skyservice.pha.jhu.edu/DR8/ImgCutout/getjpegcodec.aspx?R=1739&C=6&F=314&Z=0">field that the asteroid belongs to (run 1739, camcol 6, field 314)</a> 
                    (the asteroid can be seen near the top right of the frame). </li>
			</ul>
		<li><b>November 2011</b>: 
			<ul>
				<li>The Sky Maps feature in <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a> has been disabled for DR8, however the Tutorial still shows Sky Maps.</li>
				<li>The Outlines feature in <a href="<%=url%>/tools/chart/chart.aspx">the Finding Chart</a> and <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a> only shows outlines up to a certain zoom-out level.  Once the outlines get too small to discern, they are not shown.</li>
			</ul>
		</li>

		<li><b>September 2011</b>: 
			<ul>
				<li>The positions of objects in <a href="<%=url%>/tools/chart/chart.aspx">the Finding Chart</a> and <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a> are off by up to a few pixels.  You can see this (for example) most clearly in <a href="<%=url%>/tools/chart/navi.aspx?ra=179.69105498&dec=-0.44282388&scale=0.1981">the little close-up window</a> or <a href="<%=url%>/tools/explore/obj.aspx?id=1237648720693756233">the Explore image</a>.</li>
			</ul>
		</li>

		<li><b>January 2011</b>: 
			<ul>
				<li>The <a href="<%=url%>/help/browser/browser.aspx?cmd=description+Mask+U">Mask table</a> is empty for DR8, It will most likely be populated in DR9.</li>
				<li>The Outlines (checkbox) in <a href="<%=url%>/tools/chart/chart.aspx">the Finding Chart</a> and <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a> take too long to display for the highest zoom-out levels (right-most bars under the "Get Image" button) and the display times out with an error.</li>
			</ul>
		</li>
	     </ul>
	 </td>
      </tr>
      <tr>
	 <td>&nbsp;</td>
      </tr>
      <tr>
	 <td><h3>Known Problems in the <%=globals.Release%> data:</h3> Please see the caveats pages for: 
		 <ul> 
		        <li><a href="<%=globals.SdssUrl%>imaging/caveats.php"><%=globals.Release%> imaging  </a> and  </li>
			<li><a href="<%=globals.SdssUrl%>spectro/caveats.php"><%=globals.Release%> spectroscopy</a></li>
		</ul>
		 for known problems in the data.
	 </td>
      </tr>
    </table>
  </div>
</asp:Content>
