<%@ Page Title="" Language="C#" MasterPageFile="OldTimeMaster.master" AutoEventWireup="true" CodeBehind="Gallery2.aspx.cs" Inherits="SkyServer.Proj.Kids.OldTime.Gallery2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OldTimeContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <p class="kidsheader">Sketch Gallery</p>
	  <p class="kids">Here are some more of your best sketches! To see 
	  a bigger sketch, click "bigger"; the sketch will open in a new window. 
	  When you click another link, the new sketch will load in the same 
	  window.</p>
	  <p class="kids">To see an inverted sketch (where white is black), click "inverted." 
	  To see the full size sketch, click "full-size."</p>
	  <p class=kids><em>Fifth Grade<br>
      <font size="+2">North Lake Park Community School<br>
      Orlando, Florida</em></p>
      
      <table cellpadding=3 cellspacing=1 border=1>
      <tr>
        <td align=center width="30%">
          <img src="drawings/tn/11diamond.jpg"><br>
          <p class=caption>#11, by Diamond</p>
          <p><a href="drawings/med/11diamond.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/11diamond.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/11diamond.gif" target="drawings">Full-size</a></p>
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/11rachel.jpg"><br>
          <p class=caption>#11, by Rachel</p>
          <p><a href="drawings/med/11rachel.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/11rachel.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/11rachel.gif" target="drawings">Full-size</a></p>      
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/11sam.jpg"><br>
          <p class=caption>#11, by Sam</p>
          <p><a href="drawings/med/11sam.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/11sam.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/11sam.gif" target="drawings">Full-size</a></p>        
        </td>      
      </tr>
      
      <tr>
        <td align=center width="30%">
          <img src="drawings/tn/12gustavo.jpg"><br>
          <p class=caption>#12, by Gustavo</p>
          <p><a href="drawings/med/12gustavo.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/12gustavo.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/12gustavo.gif" target="drawings">Full-size</a></p>          
        </td>
        <td align=center width="30%"><p></p>
        </td>
        <td align=center width="30%"><p></p>
        </td>      
      </tr>

      
      </table>
      
      <p><font size=+2><a href="mailto:raddick@pha.jhu.edu?subject=sketch gallery">Send us</a> your favorite sketches, and we'll 
      post them here in the sketch gallery!</font></p>
      <p></p>
      <p></p>
      
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="gallery.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="../../../"><img align="right" src="../../images/home.gif"></a>
      </td>
    </tr>
  </table>
</div>
</asp:Content>
