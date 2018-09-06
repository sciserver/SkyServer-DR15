<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Hubble2.aspx.cs" Inherits="SkyServer.Help.Cooking.Hubble2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create a Hubble Diagram</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Teaching/Labs index</a></p>

<h2>Find galaxy clusters (<a href="../../../tools/places/" target="tools">open Famous Places in new window)</a></h2>

<hr />

<ol>

<li><p>The first step to create a Hubble Diagram is to find distances to galaxies. This is by far the hardest 
step. One simple way to do it is to use magnitudes and assume that a brighter galaxy is closer. However, this is 
not a safe assumption, because galaxies have different intrinsic properties – a brighter galaxy might be 
intrinsically brighter, but farther away.</p></li>

<li><p>One way to get around this difficulty is to look at galaxy clusters. All the galaxies in a cluster 
can be assumed to be the same distance from Earth, so differences among the cluster galaxies should arise only 
from intrinsic differences. This means that, for example, the 5th brightest galaxy in a cluster should be just 
as intrinsically bright as the 5th brightest galaxy in another cluster. Therefore, observed differences in 
magnitudes between the 5th brightest galaxies should be due entirely to the differing distances between the 
clusters. This is only an approximation, but it should be enough to demonstrate the expansion of the universe.</p></li>

<li><p>The first step, then, is to find galaxy clusters. SkyServer has a list of Abell clusters that overlap 
with the SDSS survey region. To download the list, click on <b>Tools</b> on the menu bar, then on <a href="../../../tools/places/" target="tools">
Famous Places</a> (link opens in new window).</p></li>

<li><p>Scroll to the bottom of the page and click on the <b>Abell</b> link. You will see images of six 
Abell clusters, as seen by the SDSS. Scroll to the bottom of the page and click on the <b>Abell Data</b> 
link to download a CSV (comma-separated value) file containing numbers and positions (RA and dec) of Abell clusters. Save 
this file to your computer.</p></li>

<li><p>Open the file with a graphing program. The SkyServer Projects provide instructions for Excel because it is a commonly used tool, 
but you should use whatever package you feel comfortable with.</p></li>

<li><p>Choose a cluster you would like to study and record its RA and Dec. Repeat the next few steps for several clusters 
(at least 5-10).</p></li>

</ol>

<hr />

<p><a href="hubble3.aspx">Next: Study one cluster</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td><a href="hubble.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="hubble3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
