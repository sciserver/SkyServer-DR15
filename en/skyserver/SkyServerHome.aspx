<%@ Page Title="" Language="C#" MasterPageFile="SkyServerMaster.master" AutoEventWireup="true" CodeBehind="SkyServerHome.aspx.cs" Inherits="SkyServer.SkyServer.SkyServerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkyServerContent" runat="server">
<div id="title">About SkyServer</div>

<div id="transp">
<table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
  <tr><td>

   <p>SkyServer brings you the entire public database of the 
   Sloan Digital Sky Survey  
   free of charge. The site includes a variety of 
   <a href="../tools">Tools</a> to view and download SDSS data, and 
   <a href="../proj">Projects</a> that let you use these data to learn science. Teachers, you are 
   welcome to use and adapt our projects in your classes - <a href="../proj/teach.aspx">click 
   here to find out how</a>.</p>

   <p>SkyServer is currently hosting the SDSS's Data Release <%=globals.ReleaseNumber%> (<%=globals.Release%>). For more information on 
   the data, see the <a href="../sdss">About SDSS</a> section. For technical details on how 
   SkyServer works, follow one of the links below:</p>

   <p><a href="sitemap">Site Map</a> gives you a diagram of SkyServer's web tree</p>

   <p><a href="paper/">SkyServer Paper</a> is a paper (published in 2002
   in the ACM SIGMOD proceedings) that describes the SkyServer web site, database structure, content, and usage</p>

   <p><a href="cise/">CiSE Papers</a> describes papers published in a
   special issue of <a href="http://cise.aip.org/">Computing in Science and Engineering (CiSE)</a> in 2008
   devoted to the SDSS Science Archive. 


   <p><a href="http://skyserver.sdss.org/log/en/traffic/">Site Traffic</a> tracks hits to the SkyServer site 
   since April 29, 2003</p>

   <p><a href="http://www.skyserver.org" target="offsite">skyserver.org</a> is a new 
   support site for SkyServer that includes information on how to build your own version 
   of the site</p>

   <p><a href="../sdss/" target="offsite">About the SDSS</a> gives an overview of the SDSS project and leads
   you to more detailed information about the survey and the data.</p>

   <p><a href="../credits/" target="offsite">Credits</a> lists all the sponsors, organizations and people
   who have contributed to bringing SDSS and the SkyServer to you.</p>

   <p><a href="http://www.skyserver.org/team/" target="offsite">SkyServer Team</a> is a look
   at the SkyServer development team.</p>

  </td></tr>
</table>
<p>
</div>
</asp:Content>
