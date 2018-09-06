<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetData4.aspx.cs" Inherits="SkyServer.Help.Cooking.GetData4" %>
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

<h2>Find by Magnitude or Color (<a href="../../../tools/search/iqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<p>Instead of, or in addition to, searching by position, you can also tell the Imaging Query Form to search by magnitude. 
   To do this, use the <em>Imaging Constraints</em> section. The default is no constraints (that is, to return objects with any magnitudes). </p>

<ol>
  <li><p>First, select the <em>Type</em> of magnitude on which you would like to search: <i>Petrosian</i>, <i>Model</i> (the better fit of 
         a DeVaucouleurs and exponential profile), or <i>PSF</i>.</p></li>
         
  <li><p>Next, enter the magnitudes you would like to search for in the <em>Magnitudes</em> textbox. You can enter constraints on any of the 
         SDSS's five filters (<i>u</i>, <i>g</i>, <i>r</i>, <i>i</i>, <i>z</i>), and you can enter minima and/or maxima for each value.</p></li>         

  <li><p>You can search by color instead of or in addition to magnitude. Your choices for colors are <i>u-g</i>, <i>g-r</i>, <i>r-i</i>, and 
         <i>i-z</i>. You can enter minima and/or maxima for each value.</p></li>       

  <li><p>You also search for specific types of object: <i>extended sources</i>, <i>point sources</i>, <i>sky</i>, or <i>unknown</i>.</p></li>       

  <li><p>You can also search for the presence or absence of specific <em>flags</em>. See the guide <a href="flags.aspx">How do I check quality of SDSS 
         photometry for an object (photo flags)</a>? to see what flags mean and how to use them.</p></li>  

  <li><p>When you have finished entering all your constraints, click <em>Submit Request</em>. The tool will return only the objects you asked for, 
         in the output format you specified. You now have the data you requested. See the next step to learn how to get the same data using SQL.</p></li>

  <li><p>If you would rather search by magnitudes with SQL, add the following line to the WHERE block of your query:</p>

  <p class="code">WHERE g < 17</p>
  
  <p>Substitute any of the filters, the operator (=, <, >, <=, >=, !=), and the value. You can also use BETWEEN to specify a range of magnitudes.</p>

  <p>For example, here is a query to find objects with r magnitudes between 15 and 19 (click <b>Submit</b> to run):</p></li>

</ol>


	<%	
	    string query = "SELECT top 10 objid,ra,dec,r\n";
	    query += "FROM PhotoObj\n";
	    query += "WHERE g BETWEEN 15 and 19"; 
	   	ResponseAux.sqlform(0,query,url,Response); 	%>
	   	
<hr />

<p><a href="getdata5.aspx">Next: Find by Absolute Magnitude</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getdata3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="getdata5.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
