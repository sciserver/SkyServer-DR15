<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetData5.aspx.cs" Inherits="SkyServer.Help.Cooking.GetData5" %>
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

<h2>Find by Absolute Magnitude (<a href="../../../tools/search/sql.aspx" target="tools">open SQL Search in new window</a>)</h2>

<hr />

<p>Unfortunately, the Imaging Query Form allows you to search only by apparent magnitude, which is what is observed and stored in the 
   database. To find objects by absolute magnitude, you will need to perform a <a href="../../../tools/search/sql.aspx">
   SQL search</a>.</p>
   
<p>Absolute magnitude relies on a distance calculation, which the SDSS can supply through redshift. Assuming Hubble Cosmology, 
   the distance is equal to (4,280 MPc) x redshift. So the equation for absolute magnitude is:</p>


<img src="images/absmag.jpg" alt="Equation for absolute magnitude: M = m - 5 log (4,280 MPc x d) +5" />

<p>SQL can perform simple mathematical calculations. But, to find magnitude and distance data together, you will need to search 
   the <span class="sml">specPhoto</span> view, which has both photometric and spectroscopic data. To search this view, change the 
   table in the FROM block to <span class="sml">FROM specPhoto</span>, and add a statement like this to the WHERE block of your query:</p>

<p class="code">WHERE modelmag_r-5*log10(4.28E+08*z)+5 < -21<br />
AND z>0</p>

<p>The first line of the WHERE block calculates the absolute magnitude; the select line ensures that the formula can calculate the 
logarithm of the redshift.</p>

<p>For example, this query returns the object IDs, positions, and apparent and absolute r magnitudes for all objects with absolute 
magnitude less than -21 (click <b>Submit</b> to run):</p>


	<%	
	    string query = "SELECT top 10 objid,ra,dec,modelmag_r,modelmag_r-5*log10(4.28E+08*z)+5 as abs_mag_r\n";
	    query += "FROM SpecPhoto\n";
	    query += "WHERE modelmag_r-5*log10(4.28E+08*z)+5 < -21"; 
	    query += "AND z>0"; 
	   	ResponseAux.sqlform(0,query,url,Response); 	%>
	   	
<hr />


</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getdata4.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
