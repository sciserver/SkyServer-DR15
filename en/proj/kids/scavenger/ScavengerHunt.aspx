<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ScavengerHunt.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.ScavengerHunt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kidsheader">The Scavenger Hunt</p>
      <p class="kids">Click the link to open the <a href="scavenger.pdf" target="list">Scavenger Hunt 
      worksheet</a>. It will open in a new window. (If it doesn't open, you 
      might need <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="offsite">
      Adobe Acrobat Reader</a>. Ask your teacher to install it.) The worksheet 
      should look like this:</p>
      
      <img src="images/scavenger.jpg">
      
      <p class="kids">Print out the worksheet and use it to record what you find. 
      Use the <a href="../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a> to 
      find the 20 items in the worksheet. If you need help, review the last few 
      pages of this project. When you find a match, write the data from the data 
      box on the worksheet.</p>
      
      <p class="kids">Your teacher will tell you how long you have. The first 
      group to find all the items on the list, or the group with the most when time 
      runs out, wins. The objects are listed in order of increasing difficulty. In case of a 
      tie, #20 is the tiebreaker.</p>
      
      <p class="kids">After the hunt, ask your teacher to <a href="mailto:raddick@pha.jhu.edu">
      E-mail us</a> the winning groups, and we'll put them up on these pages. 
      They should include the ra, dec, and magnitudes of each object your 
      group found, so we can find them too.</font></p>
      
      <p class="kids">Ready, set, go!</p>
      
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="objecttypes2.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="times.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
    <tr>
      <td>
        <p>TEACHERS: If students can't download the worksheet, print out this 
        <a href="list.html" target="list">HTML List</a> 
        and have students record data on a sheet of paper.</p>
  </table>
</div>
</asp:Content>
