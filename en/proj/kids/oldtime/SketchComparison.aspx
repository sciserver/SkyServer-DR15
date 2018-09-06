<%@ Page Title="" Language="C#" MasterPageFile="OldTimeMaster.master" AutoEventWireup="true" CodeBehind="SketchComparison.aspx.cs" Inherits="SkyServer.Proj.Kids.OldTime.SketchComparison" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OldTimeContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
      <p class="kidsheader">Compare Your Drawings</p>
      
      <p class="kids">Find the other student who had the same object you 
      did. Compare your drawing with theirs.</p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 2</b>: How are your drawings similar?</p></td>
        </tr>
      </table>
      
      <p class="kids"></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 3</b>: How are your drawings different?</p></td>
        </tr>
      </table>
      
      <p class="kids"></p>
            
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 4</b>: Are there parts that show up on one drawing 
          but not the other? Are these differences important?</p></td>
        </tr>
      </table>
      
      <p class="kids"></p>
      <p class="kids"></p>        
      
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="image_selection.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="guesstheplace.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
