<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ScavengerHunt.aspx.cs" Inherits="SkyServer.Proj.Scavenger.ScavengerHunt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>The Scavenger Hunt</h1>
      <p>Click the link to open the <a href="scavenger.pdf" target="list">
      Scavenger Hunt worksheet</a>. It will open in a new window. (If it 
      doesn't open, you might need to install <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="offsite">
      Adobe Acrobat Reader</a>. If you can't open the worksheet, use this 
      <a href="list.html" target="list">HTML List</a> instead.) The worksheet 
      should look like this:</p>
      <img src="images/scavenger.jpg">
      
      <p>Print out the worksheet and use it to record what you find. Use the 
      <a href="../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a> 
      to find the 18 items on the worksheet. If you need help, review the last 
      few pages of this project. When you find a match, record the data from the 
      data box on the worksheet. Some of the items (such as the ghost and the meteor) may not have data available. For those 
      items, choose a nearby star or galaxy and record its data instead.</p> 
      
      <p>Your teacher will tell you how long you have. The first group to find all 
      the items on the list, or the group with the most when time runs out, wins. 
      The objects are listed in order of increasing difficulty. In case of a tie, 
      #18 is the tiebreaker.</p>
      
      <p>After the hunt, <a href="mailto:raddick@pha.jhu.edu?subject=Scavenger Hunt Winners">E-mail us</a> 
      the winning groups, and we'll put them up on these pages. Include the ra, dec, and 
      magnitudes of each object your group found, so we can find them too.</p>
      
      <p>Ready, set, go!</p>
      
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="objecttypes.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="times.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
