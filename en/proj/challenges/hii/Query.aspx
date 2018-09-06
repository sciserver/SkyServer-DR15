<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="SkyServer.Proj.Hii.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Writing a Query</div>

<div id="pdflink">
  <a href="swf/query.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/query.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <p>Now that you know what to look for to distinguish an HII region from 
      a separate galaxy, you are ready to find some candidates. You could search for 
      them using the Navigation Tool, but since the SkyServer contains 
      spectra of over 
      350,000 galaxies, you'd be searching for a long time. It's much easier to use the 
      <a href="../../../tools/search/sql.aspx" target="tools">SQL Search tool</a> to 
      write a query - a short computer program that requests only the data you need.</p>
      <p>To find candidate HII regions, you are going to write a query to retrieve 
      information on objects that Photo thinks are galaxies. You will want to 
      search for galaxies for which the SDSS has measured spectra. You 
      will also want to think about narrowing your search using the criteria 
      from Question 1.</p>
      <p>SkyServer uses Structured Query Language (SQL) for querying 
      the database. SQL queries consist of three parts:</p>
      
      <p><em>Select</em> - The select block is what data you want retrieved for 
      each object that meets your search criteria. You 
      will probably want to retrieve at least the plate number, fiber number, object ID, 
      magnitudes (u, g, r, i, z), ra, and dec. You may wish to see information from 
      other tables as well.</p>
      <p><em>From</em> - The table(s) you want to search. You can get most 
      of the data you need from the table SpecPhoto, which contains spectral and photometric data 
      together. However, you may also want to use a <em>join</em> to 
      search the SpecObj and PhotoObj tables separately. You may also want to see information in other tables.</p>
      <p><em>Where</em> - Places conditions on the data. This part of the query is where you 
      narrow down your choices from the millions of spectra on SkyServer to the ones 
      you are really interested in.</p>
      <p>You want to be sure that you are looking at galaxies, not stars or quasars, 
      so include the line:</p>
      <p>specPhoto.class = 'GALAXY'</p>
      
      <p>To learn how to use SQL, see SkyServer's <a href="../../../help/howto/search/" target="help">Searching 
      for Data</a> how-to tutorial. You can find other SQL tutorials 
      <a href="http://www.1keydata.com/sql/sql.html" target="help">here</a> 
      and <a href="http://sqlcourse.com/" target="help">here</a>.</p>
      
      <p>To write a query on a database, you need to know how that database is structured. 
      You can find the structure of SkyServer by studying the <a href="../../../help/browser/browser.aspx" target="help">Schema Browser</a>. 
      Spend a few minutes getting a feel for where data are stored in the SDSS database, 
      then start thinking about how to use SQL to search for HII regions. Use the 
      <a href="../../../tools/search/sql.aspx" target="tools">SQL Search Tool</a> to search. Remember that 
      queries are limited to 90 seconds and 1,000 objects.</p>
      
      <p>When you have a list of candidate HII regions from the SQL Search tool, click Next. Your list 
      will probably contain a few hundred possible regions. If you get 1,000, try refining your 
      search characteristics in the <em>where</em> block.</p>
         
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="characteristics.aspx">
      <img align="left" src="../../images/previous.jpg"></a>
      <a href="identifying.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
