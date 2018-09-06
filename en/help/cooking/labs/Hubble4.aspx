<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Hubble4.aspx.cs" Inherits="SkyServer.Help.Cooking.Hubble4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create a Hubble Diagram</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Teaching/Labs index</a></p>

<h2>Find redshift of cluster (<a href="../../../tools/explore/obj.aspx" target="tools">open Explore in new window)</a></h2>

<hr />

<ol>

<li><p>Return to studying the cluster, and turn on the <b>SpecObj</b> checkbox if you haven't already. Look for a galaxy 
in the cluster with a red square around it – the SDSS has measured its spectrum. Click <b>Explore</b> to learn 
more about the object. A new window will open containing the <a href="../../../tools/explore/obj.aspx">Explore</a> 
tool, which displays all SDSS data about that galaxy.</p></li>

<li><p>You will see the object's identifier, ra and dec, and long SDSS object ID at the top of the page. 
Below that is a close-up image of the object with its photometric data, and below that is its spectrum and 
spectroscopic data.</p></li>

<li><p>Click on the picture of the spectrum to see a larger view. Spectral lines are marked on the spectrum by 
green and pink dotted lines, as well as labels. The redshift and error are shown at the bottom of the spectrum. 
Record the redshift. Don’t worry if the redshift you are recording is for a different galaxy than the galaxy 
whose properties you recorded on the last page – the cluster is far enough away that you can assume that all the 
galaxies are at the same redshift, so you can measure one redshift for the entire cluster.</p></li>

<li><p>You now have magnitude and redshift data for a galaxy in a galaxy cluster. Repeat the measurements for a 
number of other clusters.</p></li>

<li><p>Make a graph of redshift against the quantity you measured in on the last page, with a point on the graph for each 
cluster. You should see a roughly straight line. The straight line is a powerful piece of evidence that the 
universe is expanding, although discussing how the line indicates the expanding universe is beyond the scope 
of this guide. There are many good activities for teaching more about the Hubble Diagram, including the activities 
in the SkyServer <a href="../../../proj">Projects</a>.</p></li>

</ol>

<hr />

<p><a href="hubble5.aspx">Next: Make a Hubble Diagram for all SDSS galaxies</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td><a href="hubble3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="hubble5.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
