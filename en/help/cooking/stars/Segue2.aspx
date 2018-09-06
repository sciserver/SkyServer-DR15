<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Segue2.aspx.cs" Inherits="SkyServer.Help.Cooking.Segue2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Segue Spectra</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>Search with SQL (<a href="../../../tools/search/sql.aspx" target="tools">open in new window</a>)</h2>

<hr />

<ol>
  <li><p>Go to the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool (link 
  opens in new window). To get there from the astronomers' main page, look under <i>Search Tools</i>. 
  To get there from the public main page, look under <i>SkyServer Tools</i>, then <i>Search</i>. Or, you 
  can practice searching using the query in the query box at the bottom of this page.</p></li>
  
  <li><p>In the main window, type the following query (note that lines preceded by -- are comments):</p>
  
  <table width="100%" class="code">
    <tr>
      <td>SELECT s.bestobjid, s.ra, s.dec,&nbsp;&nbsp;&nbsp;-- select ID, ra, dec of star,</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;s.plate, s.mjd, s.fiberID&nbsp;&nbsp;&nbsp;--  plate, MJD, fiber ID of spec observation</td>
    </tr>

    <tr>
      <td></td>
    </tr>    
    
    <tr>
      <td>FROM plateX p
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>JOIN specObjAll s ON s.plateID = p.plateID&nbsp;&nbsp;&nbsp;-- from plate and spectrum tables</td>
    </tr>
    <tr>
      <td></td>
    </tr>

    <tr>
      <td>WHERE p.programname like '%segue%'&nbsp;&nbsp;&nbsp;-- part of SEGUE survey</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND s.bestObjID > 0&nbsp;&nbsp;&nbsp;-- object also has photometric data </td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND s.class = 'STAR'	&nbsp;&nbsp;&nbsp;-- object is a star    </td>
    </tr>
    
  </table>

    <p>The query returns the object ID, RA, and dec of each star with a SEGUE spectrum. It also returns 
    the plate number on which the spectrum was observed, the MJD when it was observed, and the fiber that the 
    spectrum was observed with. The last three pieces of information will help you to retrieve the spectrum 
    FITS file.</p>
    </li>
    
    <li><p>To learn more about each observation of the star, you will need to go to another tool. Save the object 
           ID and/or RA and dec of each observation; you will need it to find the observations later. One way to save the 
           object IDs is to request the query results as <i>CSV</i>, then save the resulting CSV file to your machine.</p></li>


  
</ol>

    <p>Use the query box below to practice running the query shown above. You can modify the query to return other data if 
    you want. Click <b>Submit</b> to run the query or <b>Reset</b> to reset the query box.</p>


	<%	
        string query = "SELECT s.bestobjid, s.ra, s.dec,   -- select ID, ra, dec of star,\n";
        query += "s.plate, s.mjd, s.fiberID   -- plate, MJD, fiber ID of spectrum\n";
        query += "\n";
        query += "FROM plateX p\n";
        query += "JOIN specObjAll s ON s.plateID = p.plateID  -- from plate and spectrum tables\n";
        query += "\n";
        query += "WHERE p.programname like '%segue%'   -- part of SEGUE survey\n";
        query += "   AND s.bestObjID > 0   -- object also has photometric data\n";
        query += "   AND s.class = 'STAR'    -- object is a star";

	   	ResponseAux.sqlform(0,query,url,Response); 	%>

<hr />

<p><a href="segue3.aspx">Next: View the star and spectrum</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="segue.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="segue3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
</tr>

<tr>
  <td>
    <p><a href="../">Back to Cooking with Sloan main page</a><br />
    <a href="../../">Back to Help main page</a><br />
    <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>
  </td>
</tr>

</table>
</div>
</asp:Content>
