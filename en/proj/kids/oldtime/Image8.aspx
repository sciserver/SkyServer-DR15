<%@ Page Title="" Language="C#" MasterPageFile="OldTimeMaster.master" AutoEventWireup="true" CodeBehind="Image8.aspx.cs" Inherits="SkyServer.Proj.Kids.OldTime.Image8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OldTimeContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<script>

    function done() {
        window.close();

    }

</script>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <p class=kidsheader>Object #1</p>
      <p></p>
      <p class=kids>Draw the object below.&nbsp; Show as much detail as you can.</p>
      <p align="center">
      <img src="images/image8.jpg"</td>
    </tr>
    <tr>
      <td align=center><p class=kids><a href="javascript:done()">Done</a></p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
  </table>
</div>
</asp:Content>
