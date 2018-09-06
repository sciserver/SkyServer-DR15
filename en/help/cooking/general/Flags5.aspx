<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags5.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags5" %>
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
            msg += "SELECT objid, ra, dec\n";
            msg += "FROM photoTag\n";
            msg += "WHERE (flags & dbo.fPhotoFlags('MOVED')) != 0";
        }

        if (option == 2) {
            msg += "SELECT objid, ra, dec\n";
            msg += "FROM photoTag\n";
            msg += "WHERE (flags & dbo.fPhotoFlags('SATURATED')) = 0";
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

<h2>Search for flags with SQL (<a href="../../../tools/search/sql.aspx" target="tools">open in new window</a>)</h2>

<hr />

<p>You can also search through flags as part of your searches using SQL. SQL searches will search for and 
   return flags as long decimal numbers that have been converted from binary - but you translate between these 
   numbers and the flag names with the functions <span class="sml">dbo.fPhotoFlags</span> and <span class="sml">dbo.fPhotoFlagsN</span>.</p>

<ol>

<li><p>Go to the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool (opens in new window), under the 
       <b>Search</b> menu. To get there from the astronomers' main page, look under <b>Search Tools</b>. To 
       get there from the public main page, look for <b>Search</b> under <b>SkyServer tools</b>.</p></li>
       
<li><p>To constrain your search based on flags, add one of the following to the WHERE block of your query:</p>

        <ol type="a">
           <li><p>To find only objects for which a certain flag is present:</p>
               <p class="code">WHERE (p.flags & dbo.fPhotoFlags('<i>flag</i>')) != 0</p>
               <p>Replace <i>flag</i> with the name of the flag you want to search.</p>
               <p>For example, this query will find IDs and positions of objects that have 
		       been flagged as having moved:</p>
		       <table class="code" width="100%">
		         <tr>
		           <td>SELECT objid, ra, dec</td>
		         </tr>
		         <tr>
		           <td>FROM photoTag</td>
		         </tr>
		         <tr>
		           <td>WHERE (flags & dbo.fPhotoFlags('MOVED')) != 0</td>
		         </tr>
		       </table>
		   </li>

           <li><p>To find only objects for which a certain flag is absent:</p>
               <p class="code">WHERE (p.flags & dbo.fPhotoFlags('flag')) = 0</p>
               <p>Replace <i>flag</i> with the name of the flag you want to search.</p>
               <p>For example, this query will screen out IDs and positions of objects that have 
		       been flagged as not being saturated:</p>
		       <table class="code" width="100%">
		         <tr>
		           <td>SELECT objid, ra, dec</td>
		         </tr>
		         <tr>
		           <td>FROM photoTag</td>
		         </tr>
		         <tr>
		           <td>WHERE (flags & dbo.fPhotoFlags('SATURATED')) = 0</td>
		         </tr>
		       </table>
		   </li>
		           
        </ol>
</li>       
      
       
</ol>

<p>&nbsp;</p>

<p>The form below will let you practice searching for flags with SQL, using the example queries  
   on this page. Press <b>Query 1</b> or <b>Query 2</b> to load the queries, and <b>Submit</b> to 
   run the queries.</p>



	<%	
/*	    query = "SELECT top 10 objid,ra,dec,r\n";
	    query += "FROM PhotoObj\n";
	    query += "WHERE g BETWEEN 15 and 19";  */
	   	ResponseAux.sqlform(2,"",url,Response); 	%>

<hr />

<p><a href="flags6.aspx">Next: Get objects with clean photometry</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags4.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="flags6.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
