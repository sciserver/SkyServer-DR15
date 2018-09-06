<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Segue3.aspx.cs" Inherits="SkyServer.Help.Cooking.Segue3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Segue Spectra</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>View the star and spectrum (<a href="../../../tools/chart/list.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

<li><p>To view each star's photometric and spectroscopic data, run a similar query in the <a href="../../../tools/chart/list.aspx" target="tools">Image List</a> 
tool (link opens in a new window). To get there from the astronomers' main page, look under <i>Advanced Tools</i>. 
To get there from the public main page, look under <i>SkyServer Tools</i>.</p></li>

<li><p>Click on the small blue <b>Use query to fill form</b> link in the top left of the tool. Paste the following query 
into the textbox:</p>

<table width="100%" class="code">
		      

   <tr>
      <td>SELECT top 100 s.bestobjid as name, s.ra, s.dec</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-- select object ID, ra, dec of star only</td>
    </tr>

    <tr>
      <td></td>
    </tr>    
    
    <tr>
      <td>FROM plateX p</td>
    </tr>

    <tr>
      <td></td>
    </tr>    

    <tr>
      <td>JOIN specObjAll S ON p.plateID = S.plateID &nbsp;&nbsp;&nbsp;-- from plate and spectrum tables</td>
    </tr>
    <tr>
      <td></td>
    </tr>

    <tr>
      <td>WHERE p.programname like '%segue%'&nbsp;&nbsp;&nbsp;-- part of SEGUE survey</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND s.bestObjID > 0&nbsp;&nbsp;&nbsp;-- object also has photometric data </td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND s.class = 'STAR'	&nbsp;&nbsp;&nbsp;-- object is a star    </td>
    </tr>
    
  </table>

   <p>It is important to note that every query to the Image List tool must start with SELECT <i>name</i>, 
   ra, dec (where name can be any parameter you want).</p>
   </li>
   
   <li><p>Click <b>Submit</b>, then <b>Send to List</b>. You will see a table of thumbnail images of the 
   stars.</p></li>

   <li><p>To see the spectrum, you will need to go use the <b>Explore</b> tool. You can get there directly 
   from the Image List tool. Click on the SDSS object ID of a star whose spectrum you want to see – 
   it is above the star’s image. A new window will open.</p></li>

   <li><p>The new window contains the <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool. 
   The tool will show the spectrum near the bottom of the page. (If the tool does not show a spectrum, click 
   on <b>All Spectra</b> in the left-hand frame, under <i>SpecObj</i>, then select another observation of the 
   star to see that star's spectrum.</p></li>
   
   <li><p>Click on the spectrum to see a larger view of the spectrum. Spectral lines are marked in pink 
   and green.</p></li>
   
   <li><p>To see the line strengths of various lines in the star, click on the <b>SpecLineIndex</b> link in the 
   left-hand frame, under <i>SpecObj</i>. The name of each line identified in that spectrum is listed under 
   <i>name</i>. The minimum and maximum rest wavelengths of the line are listed under <i>waveMin</i> and <i>waveMax</i>. 
   The line’s equivalent width is listed under <i>ew</i>.</p></li>

</ol>

<hr />


</td>
</tr>

<tr>
      <td>&nbsp;<a href="segue2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
