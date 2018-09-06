<%@ Page Title="" Language="C#" MasterPageFile="OldTimeMaster.master" AutoEventWireup="true" CodeBehind="GuessThePlace.aspx.cs" Inherits="SkyServer.Proj.Kids.OldTime.GuessThePlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OldTimeContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p class="kids"></p>
      
      <p class="kidsheader">Guess the Place!</p>
      
      <p class="kids">Find a student who drew a different object than you did and trade 
      drawings. Do not tell each other which object you drew!</p>
      <p class="kids">Objects of all 12 objects are shown below. Try to guess which image your friend 
      drew.</p>
      <table border="1" cellpadding="0" cellspacing="0"  width="100%" id="AutoNumber1">
        <tr>
          <td width="50%"><p class="kids">Object #1</p><img border="0" src="images/image1.jpg"></td>
          <td width="50%"><p class="kids">Object #2</p><img border="0" src="images/image2.jpg"></td>
        </tr>
        <tr>
          <td width="50%"><p class="kids">Object #3</p><img border="0" src="images/image3.jpg"></td>
          <td width="50%"><p class="kids">Object #4</p><img border="0" src="images/image4.jpg"></td>
        </tr>
        <tr>
          <td width="50%"><p class="kids">Object #5</p><img border="0" src="images/image5.jpg"></td>
          <td width="50%"><p class="kids">Object #6</p><img border="0" src="images/image6.jpg"></td>
        </tr>
        <tr>
          <td width="50%"><p class="kids">Object #7</p><img border="0" src="images/image7.jpg"></td>
          <td width="50%"><p class="kids">Object #8</p><img border="0" src="images/image8.jpg"></td>
        </tr>
        <tr>
          <td width="50%"><p class="kids">Object #9</p><img border="0" src="images/image9.jpg"></td>
          <td width="50%"><p class="kids">Object #10</p><img border="0" src="images/image10.jpg"></td>
        </tr>
        <tr>
          <td width="50%"><p class="kids">Object #11</p><img border="0" src="images/image11.jpg"></td>
          <td width="50%"><p class="kids">Object #12</p><img border="0" src="images/image12.jpg"></td>
        </tr>
      </table>
      <p class="kids"></p>
      
     <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 5</b>: What object do you think your friend 
          drew?</p></td>
        </tr>
      </table>

      <p class="kids"></p>

      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 6</b>: Have your friend tell you what image they 
          drew. Was your guess correct?</p></td>
        </tr>
      </table>

      <p class="kids"></p>

      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p class="kids"><b>Question 7</b>: If you were correct, what 
          feature most helped you figure out which object your friend drew?  
          If you were wrong, what did your friend draw that confused you?</p></td>        
        </tr>
      </table>

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
      <td><a href="sketchcomparison.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="conclusion.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
