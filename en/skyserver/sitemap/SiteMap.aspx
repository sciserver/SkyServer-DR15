<%@ Page Title="" Language="C#" MasterPageFile="../SkyServerMaster.master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="SkyServer.SkyServer.SiteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkyServerContent" runat="server">
<div id="title">Site Map</div>
<div id="transp">
<table WIDTH="640" border="0" cellspacing="3" cellpadding="3">
<pre cls="sml">
<a href="<%=url%>">Skyserver</a>
|---<a href="<%=url%>/astro">astro</a>
|   |---<a href="<%=url%>/./astro/cosmology">cosmology</a>
|   |---<a href="<%=url%>/./astro/galaxies">galaxies</a>
|   |---<a href="<%=url%>/./astro/mapsky">mapsky</a>
|   |---<a href="<%=url%>/./astro/stars">stars</a>
|   |---<a href="<%=url%>/./astro/structures">structures</a>
|   |---<a href="<%=url%>/./astro/universe">universe</a>
|---<a href="<%=url%>/credits">credits</a>
|---<a href="<%=url%>/help">help</a>
|   |---<a href="<%=url%>/./help/docs">docs</a>
|   |---<a href="<%=url%>/./help/download">download</a>
|   |---<a href="<%=url%>/./help/howto">howto</a>
|---<a href="<%=url%>/links">links</a>
|---<a href="<%=url%>/proj">proj</a>
|   |---<a href="<%=url%>/./proj/advanced">advanced</a>
|   |---<a href="<%=url%>/./proj/basic">basic</a>
|   |---<a href="<%=url%>/./proj/challenges">challenges</a>
|   |---<a href="<%=url%>/./proj/games">games</a>
|   |---<a href="<%=url%>/./proj/kids">kids</a>
|   |---<a href="<%=url%>/./proj/links">links</a>
|   |---<a href="<%=url%>/./proj/teachers">teachers</a>
|---<a href="<%=url%>/sdss">sdss</a>
|   |---<a href="<%=url%>/./sdss/data">data</a>
|   |---<a href="<%=url%>/./sdss/discoveries">discoveries</a>
|   |---<a href="<%=url%>/./sdss/edrpaper">edrpaper</a>
|   |---<a href="<%=url%>/./sdss/instruments">instruments</a>
|   |---<a href="<%=url%>/./sdss/release">release</a>
|   |---<a href="<%=url%>/./sdss/telescope">telescope</a>
|---<a href="<%=url%>/skyserver">skyserver</a>
|   |---<a href="<%=url%>/./skyserver/cise">cise</a>
|   |---<a href="<%=url%>/./skyserver/paper">paper</a>
|   |---<a href="<%=url%>/./skyserver/sitemap">sitemap</a>
|---<a href="<%=url%>/tools">tools</a>
|   |---<a href="<%=url%>/./tools/chart">chart</a>
|   |---<a href="<%=url%>/./tools/crossid">crossid</a>
|   |---<a href="<%=url%>/./tools/explore">explore</a>
|   |---<a href="<%=url%>/./tools/navi">navi</a>
|   |---<a href="<%=url%>/./tools/places">places</a>
|   |---<a href="<%=url%>/./tools/scroll">scroll</a>
|   |---<a href="<%=url%>/./tools/search">search</a>
|   |---<a href="<%=url%>/./tools/started">started</a>
</pre>
</table>
<p>
</div>

</asp:Content>
