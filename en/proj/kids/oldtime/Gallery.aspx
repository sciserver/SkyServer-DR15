<%@ Page Title="" Language="C#" MasterPageFile="OldTimeMaster.master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="SkyServer.Proj.Kids.OldTime.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OldTimeContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kids"></p>
      <p class="kidsheader">Sketch Gallery</p>
	  <p class="kids">Here are some of your best sketches! To see 
	  a bigger sketch, click "bigger"; the sketch will open in a new window. 
	  When you click another link, the new sketch will load in the same 
	  window.</p>
	  <p class="kids">To see an inverted sketch (where white is black), click "inverted." 
	  To see the full size sketch, click "full-size."</p>
	  <p class=kids><em>Fifth Grade<br>
      North Lake Park Community School<br>
      Orlando, Florida</em></p>
      
      <table cellpadding=3 cellspacing=1 border=1>
      <tr>
        <td align=center width="30%">
          <img src="drawings/tn/1haley.jpg"><br>
          <p class=caption>#1, by Haley</p>
          <p><a href="drawings/med/1haley.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/1haley.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/1haley.gif" target="drawings">Full-size</a></p>
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/1jose.jpg"><br>
          <p class=caption>#1, by Jose</p>
          <p><a href="drawings/med/1jose.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/1jose.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/1jose.gif" target="drawings">Full-size</a></p>      
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/2kassandra.jpg"><br>
          <p class=caption>#2, by Kassandra</p>
          <p><a href="drawings/med/2kassandra.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/2kassandra.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/2kassandra.gif" target="drawings">Full-size</a></p>        
        </td>      
      </tr>
      
      <tr>
        <td align=center width="30%">
          <img src="drawings/tn/3matt.jpg"><br>
          <p class=caption>#3, by Matt</p>
          <p><a href="drawings/med/3matt.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/3matt.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/3matt.jpg" target="drawings">Full-size</a></p>          
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/4christian.jpg"><br>
          <p class=caption>#4, by Christian</p>
          <p><a href="drawings/med/4christian.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/4christian.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/4christian.gif" target="drawings">Full-size</a></p>
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/5camilo.jpg"><br>
          <p class=caption>#5, by Camilo</p>
          <p><a href="drawings/med/5camilo.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/5camilo.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/5camilo.gif" target="drawings">Full-size</a></p>          
        </td>      
      </tr>

      <tr>
        <td align=center width="30%">
          <img src="drawings/tn/8sydney.jpg"><br>
          <p class=caption>#8, by Sydney</p>
          <p><a href="drawings/med/8sydney.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/8sydney.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/8sydney.gif" target="drawings">Full-size</a></p>          
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/9dorian.jpg"><br>
          <p class=caption>#9, by Dorian</p>
          <p><a href="drawings/med/9dorian.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/9dorian.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/9dorian.gif" target="drawings">Full-size</a></p>          
        </td>
        <td align=center width="30%">
          <img src="drawings/tn/9veronica.jpg"><br>
          <p class=caption>#9, by Veronica</p>
          <p><a href="drawings/med/9veronica.jpg" target="drawings">Bigger</a><br>
          <a href="drawings/invert/9veronica.jpg" target="drawings">Inverted</a><br>
          <a href="drawings/full/9veronica.jpg" target="drawings">Full-size</a></p>         
        </td>      
      </tr>

      
      </table>
      
      <p class="kids">Click Next to see more sketches.</p>
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
      <td><a href="guesstheplace.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="gallery2.aspx"><img align="right" src="../../images/next.jpg"></a>
      </td>
    </tr>
  </table>
</div>
</asp:Content>
