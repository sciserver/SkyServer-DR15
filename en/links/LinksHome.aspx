<%@ Page Title="" Language="C#" MasterPageFile="LinksMaster.master" AutoEventWireup="true" CodeBehind="LinksHome.aspx.cs" Inherits="SkyServer.Links.LinksHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="LinksContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Info Links </div>

<div id="transp">
<table WIDTH="640" border="0" cellspacing="3" cellpadding="3">
<tr><td>

<a href="../astro/">About Astronomy</a> explains how people have studied 
the sky since ancient times, describes many types of celestial objects, and 
brings you to the cutting edge of modern astronomy research.

<p>
<a href="../sdss/">About SDSS</a> explains the Sloan Digital Sky Survey, 
one of the largest sky surveys of all time. These pages describe the SDSS's telescope, 
instruments and data, and profile some of the SDSS's exciting first discoveries.

<p>
<a href="../skyserver/">About SkyServer</a> explains SkyServer, the public interface to SDSS data. These pages describe SkyServer's web site, outline its database structure and performance, and let you download and develop your own version of SkyServer.

<p>
<a href=",../../../edr/">The EDR SkyServer</a> is the old version of SkyServer, featuring the SDSS's Early Data Release. The EDR SkyServer was active from June 2001 to October 2003.

<p>
<a href="http://www.sdss.org/<%=globals.Release%>/">SDSS Data Release 1</a> describes the SDSS's current data coverage, and lets you download raw images and spectra.

<p>
<a href="http://skyquery.net/">SkyQuery</a> lets you quickly and seamlessly search SDSS data in conjunction with three other databases.

<p>
<a href="../help/download/">Download</a> lets you download other tools to search and analyze SDSS data, as well as papers about SkyServer. 

</td></tr>
</table>

</div>
</asp:Content>
