<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="MoreThanOnce2.aspx.cs" Inherits="SkyServer.Help.Cooking.MoreThanOnce2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">

<script type="text/javascript" language="javascript">

    function setDefaultQuery(query, option) {

        /*
        This function allows the user to select from two different default 
        queries that will appear in the query window. The user can then 
        modify either default query. This capability is useful for the 
        SQL tutorial - users can modify pre-existing queries, and have their 
        choice of which query they want to modify.

        Inputs:		query - the query to be entered; usually the "cmd" object

        option - the choice of the query. The options must be 
        hard-coded for each query option, inside the if statements
        below.

        Jordan Raddick		9/27/02
        */
        query.value = "";
        msg = "";


        if (option == 1) {
            msg += "SELECT top 100 t.thingid, t.ndetect, d.objid, p.psfMag_r,\n";
            msg += "p.psfMagerr_r\n";
            msg += "FROM thingIndex AS t\n";
            msg += "JOIN detectionindex AS d ON t.thingid = d.thingid\n";
            msg += "JOIN Star AS p ON d.objid = p.objid\n";
            msg += "WHERE t.ndetect > 1";
        }
        
        if (option == 2) {
            msg += "select LTRIM(STR(mjd_r,20,2)) AS MJD, dbo.fSDSS(p.objId) AS ID,\n";
            msg += "modelMag_g, modelMagErr_g, modelMag_r, modelMagErr_r,\n";
            msg += "modelMag_i, modelMagErr_i, p.ra, p.dec\n";
            msg += "INTO #list\n";
            msg += "FROM detectionindex d\n";
            msg += "JOIN PhotoObjAll p ON d.objid=p.objid\n";
            msg += "JOIN Field f ON p.fieldid=f.fieldid\n";
            msg += "WHERE d.thingid=97423000\n";
            msg += "ORDER BY 1\n";
            msg += "--- Now find objects near each of the detections\n";
            msg += "SELECT a.*, b.*\n";
            msg += "FROM #list a\n";
            msg += "CROSS APPLY dbo.fGetNearbyObjEq(a.ra, a.dec, 0.1) b";
        }


        query.value = msg;
    }

    selectedquery = new Object();
    msg = "";

</script>

<div id="title">Multiple Observations</div>


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
  can practice the query in the query box at the bottom of this page.</p></li>

  <li><p>The SDSS keeps track of multiple detections of the same underlying "thing" in its catalogs using 
      tables called <em>thingIndex</em> and <em>detectionIndex</em>. Each thing is stored in 
      <em>thingIndex</em>, identified by a primary key column called <em>thingID</em>. Each individual 
      detection of a "thing" is stored in the <em>detectionIndex</em> table, which indexes the objectID 
      (<em>objID</em>) of each detection with the appropriate <em>thingID</em>.</p></li>
   <li><p>Thus, to find multiple 
      detections of an object, just write a SQL statement to JOIN each detection (stored in 
      <em>detectionIndex.objID</em>) with its associated thing (<em>thingIndex.thingID</em>). For 
      example:</p></li>
  
  <li><p>In the main window, type the following query:</p>
  
  <table width="100%" class="code">
      <tr>
          <td>SELECT TOP 100 t.thingid, t.ndetect, d.objid, p.psfMag_r,</td>
      </tr>
      <tr>
          <td>p.psfMagerr_r</td>
      </tr>
      <tr>
          <td>FROM thingIndex AS t </td>
      </tr>
      <tr>
          <td>JOIN detectionindex AS d ON t.thingid = d.thingid</td>
      </tr>
      <tr>
          <td>JOIN Star AS p ON d.objid = p.objid</td>
      </tr>
      <tr>
          <td>WHERE t.ndetect > 1</td>
      </tr>
  </table>

    <p>The query returns the object ID of each observation of the star, for 100 stars.</p>
    </li>
    
    <li><p>To learn more about each observation of the star, you will need to go to another tool. Save the object 
           ID of each observation; you will need it to find the observations later. One way to save the 
           object IDs is to request the query results as <i>CSV</i>, then save the resulting CSV file to your machine.</p></li>

    <li><p>You can also return more data about each star in a SQL query. However, because detectionIndex contains only the 
        object IDs of each observation, you will need to JOIN it with the <em>PhotoObjAll</em> table. Note that since 
        PhotoObjAll's associated views contain only primary objects, you must use the full PhotoObjAll table in such 
        queries.</p></li>

    <li><p>For example, the following compound query returns time series data for a specific object:</p>

          <table width="100%" class="code">
      <tr>
          <td>SELECT</td>
      </tr>
      <tr>
          <td>&nbsp;LTRIM(STR(mjd_r,20,2)) AS MJD, dbo.fSDSS(p.objId) AS ID,</td>
      </tr>
      <tr>
          <td>&nbsp;modelMag_g, modelMagErr_g, modelMag_r, modelMagErr_r,</td>
      </tr>
      <tr>
          <td>&nbsp;modelMag_i, modelMagErr_i, p.ra, p.dec </td>
      </tr>
      <tr>
          <td>INTO #list</td>
      </tr>

      <tr>
          <td>FROM detectionindex d</td>
      </tr>
      <tr>
          <td>JOIN PhotoObjAll p ON d.objid=p.objid</td>
      </tr>
      <tr>
          <td>JOIN Field f ON p.fieldid=f.fieldid</td>
      </tr>
      <tr>
          <td>WHERE d.thingid=97423000</td>
      </tr>
      <tr>
          <td>ORDER BY 1</td>
      </tr>
      <tr>
          <td>--- Now find objects near each of the detections </td>
      </tr>
      <tr>
          <td>SELECT a.*, b.*</td>
      </tr>
      <tr>
          <td>FROM #list a</td>
      </tr>
      <tr>
          <td>CROSS APPLY dbo.fGetNearbyObjEq(a.ra, a.dec, 0.1) b</td>
      </tr>

  </table>

        </li>




  
</ol>



    <p>Use the query box below to practice running the two queries shown above. The "Query 1" and "Query 2" buttons will make the two queries above appear in the 
        query window below. You can modify the query to return other data if you want. Click <b>Submit</b> to run the query or <b>Reset</b> to reset the query box.</p>


	<%  ResponseAux.sqlform(2,"",url,Response);	 %>

<hr />

<p><a href="morethanonce3.aspx">Next: Explore the observations of each star</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="morethanonce.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="morethanonce3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
