<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetData3.aspx.cs" Inherits="SkyServer.Help.Cooking.GetData3" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Data for Objects</div>

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

        // copy and paste to give 
        if (option == 1) {
            msg += "FIRST QUERY OPTION";
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

<h2>Find by Position (<a href="../../../tools/search/iqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<p>One of the constraints you can use is to find objects only in a specific part of the sky. Use the <em>Position 
   Constraints</em> box to choose constraints. You can choose not to use any position constraints (<i>None</i>), 
   or you can choose one of three types (<i>Rectangle</i>, <i>Cone</i>, and <i>Proximity</i>). </p>

<ol>
  <li><p><i>Rectangle</i> finds objects within a rectangle between a minimum and maximum RA and Dec. Enter minimums and 
         maximums for RA and Dec, either in decimal degrees or in HMS/DMS. HMS input can be formatted as either HH:MM:SS.ss 
         or HH MM SS.ss.</p></li>
         
  <li><p><i>Cone</i> finds objects within a radial patch of sky defined by a center RA/Dec and a radius. The default value 
         is a search around RA = 180, Dec = 0.2.</p></li>
         
  <li><p><i>Proximity</i> finds objects near to a list of positions. You give the list, either by pasting into the textbox 
            or by uploading a file. You can optionally specify a maximum separation in which to search.</p></li>
      
  <li><p>When you have finished entering all your constraints, click <em>Submit Request</em>. The tool will return only the 
         objects you asked for, in the output format you specified. You now have your results; read the next step to see 
         how to get the same results using SQL.</p></li>
      
  <li><p>If you would rather use SQL to search by position, write your query so that it uses one of the position functions, 
         either <span class="sml">dbo.fGetNearbyObjEq(ra,dec,radius)</span> or <span class="sml">dbo.fGetObjFromRect(ra1,ra2,dec1,dec2)</span>. 
         Specify the table containing the data you want in the FROM block, and the function in the JOIN...ON block, joining on 
         photoObj.objID = dbo.fGetNearbyObjEq(ra,dec,radius).objID (for photometric data) or 
         specObj.bestObjID = dbo.fGetNearbyObjEq(ra,dec,radius).objID (for spectroscopic data). So here is 
         a query to search a radial patch of sky, returning IDs and positions (click <b>Submit</b> to run):</p></li>dbo.fGetNearbyObjEq(ra,dec,radius).objID
</ol>

<!--<table class="code" width="100%">
  <tr>
    <td>SELECT p.objid, p.ra, p.dec</td>
  </tr>
  <tr>
    <td>FROM PhotoObj p, dbo.fGetNearbyObjEq(180,0.2,5) n</td>
  </tr>
  <tr>
    <td>WHERE n.objID = p.objID</td>
  </tr>
</table>-->


	<%	
	    string query = "SELECT p.objid, p.ra, p.dec\n";
	    query += "FROM PhotoObj p\n";
        query += "JOIN dbo.fGetNearbyObjEq(180,0.2,5) n ON n.objID = p.objID\n";
	    query += "WHERE n.objID = p.objID"; 
	    /*query = "QUERY FROM MAIN BODY"; */
	   	ResponseAux.sqlform(0,query,url,Response); 	%>
	   	
<hr />

<p><a href="getdata4.aspx">Next: Find by Magnitude</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getdata2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="getdata4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
