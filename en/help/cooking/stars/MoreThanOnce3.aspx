<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="MoreThanOnce3.aspx.cs" Inherits="SkyServer.Help.Cooking.MoreThanOnce3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Multiple Observations</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>Explore the observations (<a href="../../../tools/explore/obj.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>
  <li><p>Go to the <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool (link 
  opens in new window). From the astronomers' main page, look under <i>Advanced Tools</i>. From the public 
  main page, look under <i>SkyServer Tools</i>, then <i>Explore</i>. From the Explore introduction page, 
  click on the link that says <b>Click here to Explore!</b>.</p></li>
  
  <li><p>Click on <b>ObjID</b> under the <i>Search</i> label in the top left corner of the tool. A small 
  window will pop up with a place to enter an SDSS Object ID (Objid).</p></li>
  
  <li><p>Enter the object ID of the first observation of the star you want to see, which is labeled 
  <i>objid</i> in your search results. Click <b>OK</b>.</p></li>

  <li><p>A new window will pop up with the Explore tool entry for the first observation of the star. Its 
  magnitudes are labeled as <i>u</i>, <i>g</i>, <i>r</i>, <i>i</i>, and <i>z</i>.</p></li>
  
  <li><p>To see more observations of the star, click on <b>More Observations</b>, under the <i>PhotoObj</i> 
  label in the left-hand column. The tool now shows other observations of the same object.</p></li>
  
  <li><p>Each of the links listed under <i>objId</i> is a link to another observation of the same star. 
  Click on the link to go to the Explore page for the new observation of the star. The best observation of 
  the star is known as the <span class="vocabulary">primary</span> observation; the others are known as the 
  <span class="vocabulary">secondary</span> observations.</p></li>
  
  <li><p>If you want to know when the observation was made, look for its Modified Julian Date (MJD) 
  in the SDSS data. Click on <b>Field</b>, then look for <i>mjd_u</i>, <i>mjd_g</i>, and the mjd for the 
  other wavelengths. <%if (globals.Access=="public") { %>You can use a <a href="http://www.csgnetwork.com/julianmodifdateconv.html" target="offsite">
  web-based tool</a> to convert from MJD to a real date. <%} %></p></li>
  
</ol>

<p><b>Note</b>: when you run the query from the last page in the SQL search tool without the "top 100", it will 
probably time out. To get all results, you will should use <a href="<%=globals.CasJobs %>" target="tools">CasJobs</a> 
(link opens in new window). See the <a href="<%=globals.CasJobs %>/guide.aspx" target="tools">CasJobs help page</a> for 
more information.</p>

<hr />

</td>
</tr>

      <td>&nbsp;<a href="morethanonce2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
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
