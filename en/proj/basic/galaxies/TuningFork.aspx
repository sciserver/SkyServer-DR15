<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="TuningFork.aspx.cs" Inherits="SkyServer.Proj.Galaxies.TuningFork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The Hubble Tuning Fork</h1>
      <p>In the early 1900s, Edwin Hubble looked at galaxies like the ones 
      you saw in the last few pages. Hubble classified the galaxies using 
      a &quot;tuning fork&quot; system. The 
      elliptical galaxies made up the fork's handle, and spiral galaxies and barred 
      spiral galaxies make the fork's prongs. So his classification system looked 
      like this:</p>
      <p>
      <img border="0" src="images/tuningfork.jpg" width="487" height="406"></p>
      <p>Hubble believed that galaxies started at the left end of the tuning 
      fork when they were young, and moved toward the right as they aged. 
      Therefore, he called elliptical galaxies &quot;early galaxies&quot; and spiral 
      galaxies &quot;late galaxies&quot;.</p>
      <p>We now know he was mistaken in this 
      belief. Spiral galaxies have a great deal of rotation and elliptical 
      galaxies do not. There is no way an elliptical galaxy could 
      spontaneously begin rotating, so elliptical galaxies cannot turn into 
      spiral galaxies. Although Hubble was wrong about his 
      theory of galaxy evolution, the confusing names have stuck: 
      today, elliptical galaxies are still referred to as 
      early galaxies and spirals as late galaxies. </p>
      
      <a name="ex2"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td width="100%"><p><b>Exercise 2.
          </b> Go back to the galaxies 
          from Exercise 1, shown again in the table below. Click the field 
          numbers to see pictures of the fields. Classify all the galaxies on 
          the Hubble Tuning Fork. Use this <a href="workbooks/exercise2.xls" target="workbooks">
          SkyServer workbook</a> to keep track of your work.</p>
          
          <table id="galaxylist" cellSpacing="1" cellPadding="1" width="50%" border="1">
            <tr>
              <td width="19%"><p class=caption>Run</p></td>
              <td width="24%"><p class=caption>Camcol</p></td>
              <td width="59%"><p class=caption>Field</p></td>
            </tr>
            <tr>
              <td width="19%"><p>752</p></td>
              <td width="24%"><p>1</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=752&C=1&F=244&Z=50&submit1=Get+Image" target="tools">
              244</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>2662</p></td>
              <td width="24%"><p>4</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=2662&C=4&F=243&Z=50&submit1=Get+Image" target="tools">
              243</a></p></td>
            </tr>
            <tr>
              <td width="19%"><p>752</p></td>
              <td width="24%"><p>1</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=752&C=1&F=331&Z=50&submit1=Get+Image" target="tools">
              331</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>1737</p></td>
              <td width="24%"><p>6</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=1737&C=6&F=11&Z=50&submit1=Get+Image" target="tools">
              11</a></p></td>
            </tr> 
            <tr>
              <td width="19%"><p>756</p></td>
              <td width="24%"><p>4</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=756&C=4&F=198&Z=50&submit1=Get+Image" target="tools">
              198</a></p></td>
            </tr>
            <tr>
              <td width="19%"><p>2738</p></td>
              <td width="24%"><p>2</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=2738&C=2&F=196&Z=50&submit1=Get+Image" target="tools">
              196</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>752</p></td>
              <td width="24%"><p>1</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=752&C=1&F=432&Z=50&submit1=Get+Image" target="tools">
              432</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>3</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=3&F=176&Z=50&submit1=Get+Image" target="tools">
              176</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>3</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=3&F=319&Z=50&submit1=Get+Image" target="tools">
              319</a></p></td>
            </tr>            
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>2</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=2&F=216&Z=50&submit1=Get+Image" target="tools">
              216</a></p></td>
            </tr>
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>2</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=2&F=215&Z=50&submit1=Get+Image" target="tools">
              215</a> (just left of center)</p></td>
            </tr>
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>3</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=3&F=230&Z=50&submit1=Get+Image" target="tools">
              230</a> (2 galaxies)</p></td>
            </tr>
            <tr>
              <td width="19%"><p>2738</p></td>
              <td width="24%"><p>3</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=2738&C=3&F=122&Z=50&submit1=Get+Image" target="tools">
              122</a> (2 nice galaxies)</p></td>
            </tr> 
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>3</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=3&F=352&Z=50&submit1=Get+Image" target="tools">
              352</a></p></td>
            </tr> 
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>1</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=1&F=356&Z=50&submit1=Get+Image" target="tools">
              356</a></p></td>
            </tr>
            <tr>
              <td width="19%"><p>3325</p></td>
              <td width="24%"><p>1</p></td>
              <td width="59%"><p><a href="../../../get/frameByRCFZ.ashx?R=3325&C=1&F=359&Z=50&submit1=Get+Image" target="tools">
              359</a></p></td>
            </tr>
          </table>


         </td>          
          
          </td>
        </tr>
      </table>
      <p></p>
	  <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Question 4.</b> 
          Compare and contrast your classification system to Hubble's. 
          How are they similar? How are they different?</p></td>
        </tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="irregular.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="clusters.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
    
    <tr>
    <td><p><font size=-2>Hubble tuning fork diagram courtesy of the 
    <a target="offsite" href="http://www.stsci.edu">Space Telescope 
    Science Institute</a>.</font></p></td>
    </tr>
    
  </table>
</div>
</asp:Content>
