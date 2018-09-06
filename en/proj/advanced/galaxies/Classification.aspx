<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Classification.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Classification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3" id="wholepage">
    <tr>
      <td>
      <p></p>
      <h1>Classifying Galaxies</h1>
      <p>Pretend that you are an astronomer working shortly after Edwin Hubble made his startling 
      discovery. Now that you know the "nebulae" are actually other galaxies like our own, 
      you must come up with a way to classify the 
      galaxies.</p>

      <a name="ex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0 id="exer1">      
        <tr>
          <td width="100%"><p><strong>Exercise 1:</strong> 
          Look at the following galaxies. Divide them into groups 
          based on features they have in common. There is no set number of 
          groups.</p>
          
          <p>Click one of the links in the table below to use the <a href="../../../tools/getimg/fields.aspx" target="tools">
          Get Fields</a> tool to look up each galaxy. You will see a 
          picture of the field the galaxy is in. Because galaxies tend to cluster together, some of the 
          fields have more than one large and interesting galaxy. In all the other frames, 
          the largest galaxy should be obvious. When you click another link, the new 
          field will appear in the same window. You may want to print the fields out, 
          so you can compare the galaxies side-by-side.</p>
          
          <p>Use this <a href="workbooks/exercise1.xls">SkyServer workbook</a> to keep track of your groups.</p>

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
        </tr>
      </table>
      <p></p>
      <p>Now, find another group and partner up with them to compare your results.</p>
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0 id="quest1">            
        <tr>
          <td><p><strong>Question 1:</strong> Do you have 
          the same number of galaxy classes? If not, what distinctions 
          did one group draw that the other did not?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0 id="quest2">                
        <tr>
          <td><p><strong>Question 2: </strong> What do your classification systems have in 
          common? What makes them different?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0 id="quest3">      
        <tr>
          <td><p><strong>Question 3:</strong> Try to 
          combine the best features of each classification system. Repeat 
          Exercise 1 with your new system.</p></td>
        </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="tuningfork.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
