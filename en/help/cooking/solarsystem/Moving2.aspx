<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Moving2.aspx.cs" Inherits="SkyServer.Help.Cooking.Moving2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Moving Objects</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Solar System index</a></p>

<h2>Use SQL to find moving objects (<a href="../../../tools/search/sql.aspx" target="tools">open in new window</a>)</h2>

<hr />

<ol>

  <li><p>Go to the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool (link opens in a 
  new window). From the astronomers' main page, look under <i>Search Tools</i>. From the public main page, 
  look under <i>SkyServer Tools</i>, then <i>Search</i>.</p></li>

  <li><p>In the main window, type the following query (or use the query box at the bottom of this page):</p>
  
  <table width="100%" class="code">
    <tr>
      <td>SELECT top 100 objID, sqrt( power(rowv,2) + power(colv, 2) ) as velocity</td>
    </tr>
    <tr>
      <td></td>
    </tr>  
    <tr>
      <td>FROM PhotoObj</td>
    </tr>      
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>WHERE (power(rowv,2) + power(colv, 2)) > 50</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;and rowv >= 0 and colv >=0</td>
    </tr>
  </table>
  
  <p>The query returns the object ID and velocity for each of 100 objects seen to be moving. It selects 
  only those objects whose velocity is high enough to be consistent with an asteroid. 
  You can save the query as a CSV (comma-separated value) file by selecting <b>CSV</b> from the <i>Output Format</i> 
  menu of the SQL Search tool. CSV files can be opened by most graphing programs.</p>
  
  </li>
  
  <li><p>You now have a sample of 100 objects that appeared to be moving through the sky when the SDSS 
  imaged them. You can use another tool to view the moving objects.</p></li>

</ol>


	<%	
        string query = "SELECT top 100 objID,\n";
        query += "   sqrt( power(rowv,2) + power(colv, 2) ) as velocity\n";
        query += "\n";
        query += "FROM PhotoObj\n";
        query += "\n";
        query += "WHERE (power(rowv,2) + power(colv, 2)) > 50\n";
        query += "   AND rowv >= 0 and colv >=0";
        
  	    ResponseAux.sqlform(0,query,url,Response); 	
  	%>                

<hr />

<p><a href="moving3.aspx">Next: View the moving objects</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;&nbsp;<a href="moving.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="moving3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
