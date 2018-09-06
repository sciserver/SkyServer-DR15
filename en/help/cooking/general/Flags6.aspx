<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags6.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags6" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Check Flags</div>

<script type="text/javascript">

    function popup(filename, target, w, h) {
        var link = filename;
        var w = window.open(link, target, 'width=' + w + ',height=' + h + ',resizeable,scrollbars');
        w.focus();
    }

    function setDefaultQuery(query, option) {

        /*
        This function allows the user to select from multiple default 
        queries that will appear in the query window. The user can then 
        modify either default query. This capability is useful for the 
        SQL tutorial - users can modify pre-existing queries, and have their 
        choice of which query they want to modify.

        The function buildMultipleQueries(n) in ../sqlform.inc calls this function.

        Inputs:		query - the query to be entered; usually the "cmd" object

        option - the choice of the query. The options must be 
        hard-coded for each query option, inside the if statements
        below.

        Jordan Raddick		5/16/07 */

        query.value = "";
        msg = "";

        // copy and paste to give more options
        if (option == 1) {
            msg += "-- Clean photometry query for stars\n";
            msg += "\n";
            msg += "SELECT TOP 10 objid, ra, dec, u, g, r, i, z,\n";
            msg += "dbo.fPhotoFlagsN(flags) as flags\n";
            msg += "FROM star\n";
            msg += "WHERE ((flags & 0x10000000) != 0)       -- detected in BINNED1\n";
            msg += "AND ((flags & 0x8100000c00a4) = 0)      -- not EDGE, NOPROFILE,\n";
            msg += "       -- PEAKCENTER, NOTCHECKED, PSF_FLUX_INTERP, SATURATED,\n";
            msg += "       -- or BAD_COUNTS_ERROR\n";
            msg += "AND (((flags & 0x400000000000) = 0) or (psfmagerr_g <= 0.2))\n";
            msg += "       -- not DEBLEND_NOPEAK or small PSF error\n";
            msg += "       -- (substitute psfmagerr in other band as appropriate)\n";
            msg += "AND (((flags & 0x100000000000) = 0) or (flags & 0x1000) = 0)";
        }

        if (option == 2) {
            msg += "-- Clean photometry query for extended objects\n";
            msg += "\n";
            msg += "SELECT TOP 10 objid, ra, dec, u, g, r, i, z,\n";
            msg += "dbo.fPhotoFlagsN(flags) as flags\n";
            msg += "\n";
            msg += "FROM galaxy\n";
            msg += "\n";
            msg += "WHERE ((flags & 0x10000000) != 0)       -- detected in BINNED1\n";
            msg += "\n";
            msg += "AND ((flags & 0x8100000c00a0) = 0)      -- not NOPROFILE,\n";
            msg += "       -- PEAKCENTER, NOTCHECKED, PSF_FLUX_INTERP, SATURATED,\n";
            msg += "       -- or BAD_COUNTS_ERROR\n";
            msg += "       -- if you want to accept objects with interpolation\n";
            msg += "       -- problems for PSF mags,\n";
            msg += "       -- change this to: AND ((flags & 0x800a0) = 0)\n";
            msg += "\n";
            msg += "AND (((flags & 0x400000000000) = 0) or (psfmagerr_g <= 0.2))\n";
            msg += "       -- not DEBLEND_NOPEAK or small PSF error\n";
            msg += "       -- (substitute psfmagerr in other band as appropriate)\n";
            msg += "\n";
            msg += "AND (((flags & 0x100000000000) = 0) or (flags & 0x1000) = 0)\n";
            msg += "       -- not INTERP_CENTER or not COSMIC_RAY – omit this\n";
            msg += "       -- AND clause if you want to accept objects\n";
            msg += "       -- with interpolation problems for PSF mags.\n";
        }

        query.value = msg;

    }

    selectedquery = new Object();
    msg = "";

</script>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Get objects with clean photometry (<a href="../../../tools/search/sql.aspx" target="tools">open in new window</a>)</h2>

<hr />

<p>By using several flags together, you can limit your searches to return only objects that have clean 
   photometry, thereby ensuring that you have a good sample. The flags you use differ depending on whether you 
   are looking at stars or extended objects.</p>

<p>The queries below run slowly. These are test versions that use <b>TOP 10</b> to return only the first 10 
   matching objects. To return all matching objects, remove the top 10 and use the <a href="<%=globals.CasJobs %>" target="tools">CasJobs</a> 
   batch query system (link opens in a new window), which lets you run queries that take up to 8 hours. 
   Also, note that lines that start with "--" are comments that are not executed as SQL statements.</p>

<p>For stars, use the following query to return IDs, positions, colors, and flags:</p>

		       <table class="code" width="100%">
		         <tr>
		           <td>SELECT TOP 10 objid, ra, dec, u, g, r, i, z,</td>
		         </tr>
		         <tr>
		           <td>dbo.fPhotoFlagsN(flags) as flags</td>
    	         </tr>
   		         <tr>
		           <td></td>
		         </tr>

		         <tr>
		           <td>FROM star</td>
		         </tr>
		         		         
    	         <tr>
		           <td></td>
		         </tr>

		         <tr>
		         <td>WHERE ((flags & 0x10000000) != 0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- detected in BINNED1</td>
		         </tr>
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND ((flags & 0x8100000c00a4) = 0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- not EDGE, NOPROFILE, PEAKCENTER,</td>
		         </tr>
		         <tr>
		            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- NOTCHECKED, PSF_FLUX_INTERP, SATURATED, or BAD_COUNTS_ERROR</td>
		         </tr>
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND (((flags & 0x400000000000) = 0) or (psfmagerr_g <= 0.2))</td>
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- not DEBLEND_NOPEAK or small PSF error </td>		           
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- (substitute psfmagerr in other band as appropriate) </td>
		         </tr>
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND (((flags & 0x100000000000) = 0) or (flags & 0x1000) = 0)</td>
		         </tr>
		       </table>
		       
		       <p>&nbsp;</p>
		       
		       <p>For extended objects, use the following query to return IDs, positions, colors, and flags:</p>

		       <table class="code" width="100%">
		         <tr>
		           <td>SELECT TOP 10 objid, ra, dec, u, g, r, i, z,</td>
		         </tr>
		         <tr>
		           <td> dbo.fPhotoFlagsN(flags) as flags</td>
    	         </tr>
   		         <tr>
		           <td></td>
		         </tr>

		         <tr>
		           <td>FROM galaxy</td>
		         </tr>
		         		         
    	         <tr>
		           <td></td>
		         </tr>

		         <tr>
		         <td>WHERE ((flags & 0x10000000) != 0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- detected in BINNED1</td>
		         </tr>
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND ((flags & 0x8100000c00a0) = 0)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- not NOPROFILE, PEAKCENTER,</td>
		         </tr>
		         <tr>
		            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- NOTCHECKED, PSF_FLUX_INTERP, SATURATED, or BAD_COUNTS_ERROR</td>
		         </tr>
		         <tr>
		            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- if you want to accept objects with interpolation problems for PSF mags,</td>
		         </tr>
		         <tr>
		            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- change this to: AND ((flags & 0x800a0) = 0)</td>
		         </tr>		         
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND (((flags & 0x400000000000) = 0) or (psfmagerr_g <= 0.2))</td>
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- not DEBLEND_NOPEAK or small PSF error</td>		           
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- (substitute psfmagerr in other band as appropriate) </td>
		         </tr>
		         <tr>
		           <td></td>
		         </tr>
		         <tr>
		           <td>AND (((flags & 0x100000000000) = 0) or (flags & 0x1000) = 0) </td>
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- not INTERP_CENTER or not COSMIC_RAY – omit this AND clause if you</td>
		         </tr>
		         <tr>
		           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- want to accept objects with interpolation problems for PSF mags.</td>
		         </tr>
		         
		       </table>

<p>&nbsp;</p>

<p>The form below will let you practice searching for flags with SQL, using the example queries  
   on this page. Press <b>Query 1</b> or <b>Query 2</b> to load the queries, and <b>Submit</b> to 
   run the queries.</p>


	<!--------------------------------#include file="../sqlform.inc"-------------------->

	<%	
/*	    query = "SELECT top 10 objid,ra,dec,r\n";
	    query += "FROM PhotoObj\n";
	    query += "WHERE g BETWEEN 15 and 19";  */
	   	ResponseAux.sqlform(2,"",url,Response); 	%>


<hr />

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags5.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      </td>
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
