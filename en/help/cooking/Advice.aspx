<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Advice.aspx.cs" Inherits="SkyServer.Help.Cooking.Advice" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
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
            var msg = "SELECT z as name, ra, dec\n";
            msg += "FROM SpecPhoto\n";
            msg += "WHERE z BETWEEN 0.01 and 0.05";
        }

        if (option == 2) {
            var msg = "SELECT count(*)\n";
            msg += "FROM galaxy\n";
            msg += "WHERE g < 18";
        }

        if (option == 3) {
            var msg = "SELECT ra, dec, u, err_u\n";
            msg += "FROM PhotoObj\n";
            msg += "WHERE ra BETWEEN 180 and 181\n";
            msg += "AND u > -9999 AND u < 20.0 -- instead of just \"u < 20.0\"\n";
            msg += "AND err_u > -1000 AND err_u < 0.1 -- instead of just \"err_u < 0.1\"";
        }

        if (option == 4) {
            var msg = "SELECT top 100 modelmag_u, modelmag_g, modelmag_r, modelmag_i,\n";
            msg += "modelmag_z, z\n";
            msg += "FROM SpecPhoto\n";
            msg += "WHERE zWarning = 0";

        }

        query.value = msg;
    }

    selectedquery = new Object();
    msg = "";

</script>

<div id="title">Searching Advice</div>
<div id="pdflink">
  <a href="swf/advice.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/advice.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="5">

<tr><td>

<p>This page contains some general advice about how to search Sloan Digital Sky Survey data with 
SkyServer. The bottom of the page contains a form to practice searching, using the sample queries on this page.</p>


<p>Here are some things to keep in mind while searching SkyServer:</p>
<ol>

  <li><p>An excellent way to learn SQL is to modify pre-existing SQL queries. Look at the <a href="../docs/realquery.aspx">Sample SQL Queries</a> 
         on SkyServer. There is a link to them under the Help menu.</p></li>

   <li><p>If you're not sure how many objects a query is going to return, it's always a good idea to first do a "count" query first. A count 
          query will return only the number of objects that match the query, and will not return the actual data. This will give you an idea 
          of how long the query will take, so you don't find yourself waiting a lot longer than you expected to. Here is an example of 
          such a query:</p>

         <table width="100%" class="code">
           <tr>
             <td>SELECT count(*)</td>
           </tr>
           <tr>
             <td>FROM galaxy</td>
           </tr>
           <tr>
             <td>WHERE g < 18</td>
           </tr>                      
         </table>          
          
        </li>
        
    <li><p>If a query takes much longer to run than you think it should,
           you should try it again later to see if the problem is the load on the 
           server. If it still runs slowly, look at the <a href="../docs/sql_help.aspx#optquery">Optimizing Queries</a> section of SkyServer's guide 
           <a href="../docs/sql_help.aspx">SQL in SkyServer</a>.</p></li>
    
    <li><p>Be sure to exclude invalid values (unset or uncalculated
           quantities) as described in the <a href="../docs/sql_help.aspx#invalid">Excluding Invalid Data Values</a> section 
           of SkyServer’s <a href="../docs/sql_help.aspx">SQL in SkyServer</a>. For example, the following query will exclude 
           invalid magnitude data for the u magnitude:</p></li>
           

         <table width="100%" class="code">
           <tr>
             <td>SELECT ra, dec, u, err_u</td>
           </tr>
           <tr>
             <td>FROM PhotoObj</td>
           </tr>
           <tr>
             <td>WHERE ra BETWEEN 180 and 181</td>
           </tr>                      
           <tr>
             <td>AND u > -9999 AND u < 20.0  -- instead of just "u < 20.0"</td>
           </tr>
           <tr>
             <td>AND err_u > -1000 AND err_u < 0.1  -- instead of just "err_u < 0.1"</td>
           </tr>
         </table>          

        </li>

  <li><p>Use the <a href="../../tools/chart/list.aspx" target="tools">Image List</a> tool as a sanity check on your 
         queries. Click on <b>Use query to fill form</b> in the left panel, then enter your query and click <b>Submit</b>. A table of results will appear; 
         click <b>Send to List</b>. You will see thumbnail images of all the objects that matched your query. You can 
         click on the thumbnails to go to the Navigate tool, or on the object names to go to the Explore tool.</p>
         
         <p>Remember that Image List 
         queries are limited to 1,000 objects, and that the SELECT block must have the form <b>SELECT <i>name</i>, ra, dec</b>, where 
         <i>name</i> can be anything you want. For example, this query uses the SDSS redshift as a name:</p>
         
         <table width="100%" class="code">
           <tr>
             <td>SELECT z as name, ra, dec</td>
           </tr>
           <tr>
             <td>FROM specPhoto</td>
           </tr>
           <tr>
             <td>WHERE z BETWEEN 0.01 and 0.05</td>
           </tr>                      
         </table>

         </li>
         
    <li><p>If you are running a query for photometric data, and you are searching for common parameters, consider using the <em>PhotoTag</em> view 
           instead of the <em>PhotoObj</em> view. <span class="sml">PhotoTag</span> contains all the objects that <span class="sml">PhotoObj</span> 
           contains, but has many fewer parameters for each object. Your query will run much faster. But remember that in <span class="sml">PhotoTag</span>, 
           magnitudes are not referred to as [u, g, r, i, z], but as modelMag_[u, g, r, i, z].</p></li>

    <li><p>If your query returns a lot of output (more than a few thousand objects), it is generally not a good idea to 
           let the browser render the output by selecting the <i>HTML</i> output format (default). You can try using 
           one of the other output formats that save results to a file,
           e.g., <i>CSV</i>, <i>JSON</i> or <i>FITS</i>. However, in
           general, for queries that take a long time (more than a few
           minutes) to complete and that return large output data sets,
           you're much better off using an asynchronous service like the
           <a href="<%=globals.CasJobs%>"
           target="tools">CasJobs batch query system</a> to run such queries and
           fetch large numbers of objects.</p></li> 
           
    <li><p>If you know you want to search for both photometric and spectroscopic objects, search on the 
           <em>SpecPhoto</em> view. In <span class="sml">SpecPhoto</span>, the redshift is referred to as 
           <i>z</i> and the magnitudes are referred to as <i>modelmag_x</i> (where x is the waveband). Here 
           is a query to get magnitudes and redshifts from specPhoto:</p>
           
         <table width="100%" class="code">
           <tr>
             <td>SELECT top 100 modelmag_u, modelmag_g, modelmag_r, modelmag_i,</td>
           </tr>
           <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;modelmag_z, z</td>
           </tr>
           <tr>
             <td>FROM SpecPhoto</td>
           </tr>
           <tr>
             <td>WHERE zWarning = 0</td>
           </tr>                      
         </table>          
                    
           </li>
           
</ol>

<p>&nbsp;</p>
<h2>Running these sample queries</h2>

<p>The form below will let you practice some of these techniques using the sample queries given above. Click on 
the <b>Query 1</b> - <b>Query 4</b> buttons below to load these sample queries. Modify them if you like, and 
click <b>Submit</b> to run them. Click <b>Reset</b> to clear the textbox.</p>

	<%	
/*	    query = "SELECT p.objid, p.ra, p.dec\n";
	    query += "FROM PhotoObj p, dbo.fGetNearbyObjEq(180,0.2,5) n\n";
	    query += "WHERE n.objID = p.objID"; 
	    */string query = "QUERY FROM MAIN BODY"; 
	   	ResponseAux.sqlform(4,"",url,Response); 
	   		%>


</td></tr>
</table>
</div>
</asp:Content>
