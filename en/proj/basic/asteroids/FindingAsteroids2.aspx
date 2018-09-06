<%@ Page Title="" Language="C#" MasterPageFile="AsteroidsMaster.master" AutoEventWireup="true" CodeBehind="FindingAsteroids2.aspx.cs" Inherits="SkyServer.Proj.Asteroids.FindingAsteroids2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AsteroidsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td><a name="galaxies"></a><a name="ex12"></a>
      <p></p>
      <h1>Find Those Asteroids!</h1>
      
      <a name="ex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td width="100%"><p><strong>Exercise 1</strong>.
	  Practice finding a 
          few asteroids. Go to the 
          <a href="../../../tools/getimg/fields.aspx" target="tools">
          Get Fields</a> tool. 
          Look at the run, camcol and field from the table below. 
          Select the appropriate run and camcol from the dropdown menus, 
          then type in the field. (If the run appears more than once in 
	  the drop-down menu, just choose the first one.)</p>
          <p>Each image has at least one asteroid. Find the asteroids!</p>
          
          <p>HINT: 
          Asteroids show up better if you select the 1984 x 1361 size from 
          the Size dropdown menu. 
          When you think you have found the asteroids, check your findings 
          with another group. (When you compare, remember there may be 
          more than one asteroid per field.)</p>
          
          <p></p>
          
          <table border="1" cellpadding="1" cellspacing="1" width=400 width="100%" id="AutoNumber1" height="58">
            <tr>
              <td width="33%" height="18"><p class=caption>Run</p></td>
              <td width="33%" height="18"><p class=caption>Camcol</p></td>
              <td width="34%" height="18"><p class=caption>Field</p></td>
            </tr>
            <tr>
              <td width="33%" height="1">752</td>
              <td width="33%" height="1">1</td>
              <td width="34%" height="1">373</td>
            </tr>
            <tr>
              <td width="33%" height="18">756</td>
              <td width="33%" height="18">1</td>
              <td width="34%" height="18">314</td>
            </tr>
            <tr>
              <td width="33%" height="18">756</td>
              <td width="33%" height="18">5</td>
              <td width="34%" height="18">700</td>
            </tr>
          </table>
          <p></p>
          
          <p><a href="../../../tools/getimg/fields.aspx" target="tools">
          Launch the Get Fields tool</a</p></td>
        </tr>        
      </table>
      <p>
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
      <td><a href="howtofind2.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="asteroidhunt.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
