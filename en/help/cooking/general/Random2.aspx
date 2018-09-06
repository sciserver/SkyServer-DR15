<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Random2.aspx.cs" Inherits="SkyServer.Help.Cooking.Random2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get a Random Subset</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Get a random subset (<a href="../../../tools/search/sql.aspx" target="tools">open SQL Search in new window</a>)</h2>

<hr />

<ol>

<li><p>Go to the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> page (link opens in new 
window). From the astronomers' main page, look under <i>Search Tools</i>. From the public main page, look 
under <i>SkyServer Tools</i>, then <i>Search</i>.</p></li>

<li><p>In the large textbox, type the following SQL query:</p>

<table width="100%" class="code">
  <tr>
    <td>SELECT u, g, r, i, z</td>
  </tr>
  <tr>
    <td>FROM Galaxy</td>
  </tr>
  <tr>
    <td>WHERE htmid*37 & 0x000000000000FFFF < (650 * 1)</td>
  </tr>
</table>

</li>

<li><p>The query will return a 1% subset of the data. To return a different percentage subset of the data, 
change the final 1 to a different number (for example, for a random 0.5% subset of the data, change it to 0.5).</p></li>

<li><p>The query will return the magnitudes of a 1% subset of the data. You can also return other data, such as 
positions and object IDs.</p></li>

</ol>

<p>The form below will let you run this query. Click <b>Submit</b> to run the query. Click <b>Reset</b> to clear 
the textbox. The full query will take a while to run, but it should start showing results immediately.</p>


	<%	
		string query = "SELECT u, g, r, i, z\n";
	  	query += "FROM Galaxy\n";
	  	query += "WHERE htmid*37 & 0x000000000000FFFF < (650 * 1)";
	   	ResponseAux.sqlform(0,query,url,Response); 	%>

   <p>If you're interested, the query finds the random points by using SkyServer's 
   <a href="http://skyserver.org/HTM/" target="offsite">Hierarchical Triangular Mesh</a>, 
   multiplied by a prime number.</p>

<hr />


</td>
</tr>

<tr>
      <td>&nbsp;<a href="random.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
