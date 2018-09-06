<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="StudentClasses.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.StudentClasses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
      <h1>Classifying Stars</h1>      
      
      <p>Pretend for a moment that you are an astronomer living in the early 
      20<sup>th</sup> century, before the OBAFGKM
      star classification system was developed. You are one of the first astronomers 
      who ever looked at spectra of stars, and it is up to you to develop a 
      classification system.</p>
      <p>The table below shows a list of the first stars you are trying to classify. 
      Look at their spectra and divide them into several groups. There 
      is no set number of groups you should try to achieve, and the groups do not 
      have to have equal numbers of stars (because not all types of stars are equally 
      common). If you find a spectrum that has 
      nothing in common with any of the others, a group of one is OK (but on the 
      other hand, 16 groups of one is probably not useful either!)</p>
<P>Spectra in the SDSS are sorted by Plate and Fiber number. Click the fiber 
numbers below to go to the Object Explorer entry for each star. When you click 
the first number, the tool will open in a new window; when you click another 
number, the entry for the new star will appear in the same Object Explorer 
window.</P>
<P>Once you have a star loaded into the Object Explorer, scroll down in the 
left-hand frame and click "Spectrum." You will see a full-sized picture of the 
star's spectrum. If you click "Print Page," you can print out the spectrum.</p>
      
      <table border="1" cellspacing="1" cellpadding=3 width="100%" id="AutoNumber1">
        <tr>

          <td width="20%"><p class=caption>Plate</p></td>
          <td width="20%"><p class=caption>Fiber</p></td>
          <td width="20%"><p class=caption>Plate</p></td>
          <td width="20%"><p class=caption>Fiber</p></td>
        </tr>
        <tr>

          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=21" target="tools">
          21</a></td>
          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=173" target="tools">
          173</a></td>
        </tr>
        <tr>
          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=275" target="tools">
          275</a></td>
          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=314" target="tools">
          314</a></td>
        </tr>
        <tr>

          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=365" target="tools">
          365</a></td>
          <td width="20%">266/51630</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=513" target="tools">
          513</a></td>
        </tr>
        <tr>

          <td width="20%">273/51597</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=273&mjd=51957&fiber=2" target="tools">
          2</a></td>
          <td width="20%">498/51984</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=498&mjd=51984&fiber=538" target="tools">
          538</a></td>
        </tr>
        <tr>

          <td width="20%">273/51597</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=273&mjd=51957&fiber=157" target="tools">
          157</a></td>
          <td width="20%">273/51597</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=273&mjd=51957&fiber=245" target="tools">
          245</a></td>
        </tr>
        <tr>

          <td width="20%">273/51597</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=273&mjd=51957&fiber=589" target="tools">
          589</a></td>
          <td width="20%">281/51614</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=281&mjd=51614&fiber=3" target="tools">
          3</a></td>
        </tr>
        <tr>

          <td width="20%">281/51614</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=281&mjd=51614&fiber=4" target="tools">
          4</a></td>
          <td width="20%">281/51614</td>
          <td width="20%"><a href="../../../tools/explore/obj.aspx?plate=281&&mjd=51614fiber=133" target="tools">
          133</a></td>
        </tr>
                
      </table>
      
	  <p></p>
      
      <a name="ex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>
          Exercise 1</b>. Make a table as shown below. Classify the stars into groups, and record 	  your groups in the table. Each star should fit 
          in one of your groups. Make notes detailed enough that another group 
          can duplicate your work. (You may have more than four groups or fewer 
          than four groups...this is just a sample chart!)</p><p>&nbsp;</p>
          <table border="1" cellspacing="1" width="100%" id="AutoNumber3">
            <tr>
              <td width="33%"><p class=caption>Group</p></td>
              <td width="33%"><p class=caption>Star(s)</p></td>
              <td width="34%"><p class=caption>Characteristics</p></td>
            </tr>
            <tr>
              <td width="33%">&nbsp;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%">&nbsp;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%">&nbsp;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%">&nbsp;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
          </table>
                    
          </td>
        </tr>
        
      </table>
      
      <p></p>
      
      <p>Now, find another group and partner up with them. Compare your spectral 
      classification system to theirs.<p>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><b>Question 1</b>. Do you have 
          the same number of spectral types as the other group does? If not, what 
          distinctions did one group draw that the other group did not?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0><tr><td>
          <p><b>Question 2</b>. What do your classification systems have in 
          common? What makes them different?</p></td>
        </tr>
      </table>
      
      <p></p>
          
      <table class=question width=600 cellpadding=5 cellspacing=0><tr><td>
          <p><b>Question 3</b>. Try to 
          combine the best features of each classification system. Repeat 
          Exercise 1 with your improved system.</p></td>
        </tr>
      </table>
      
      <p>You have just solved the same problem astronomers at the 
      turn of the century faced when they developed the technology to take spectra of 
      stars. If your classification system is different from the modern 
      one, don't worry. The original classification system underwent several revisions 
      before astronomers arrived at a 
      consensus. Originally, the classifications were the letters A 
      through P. As time progressed, some classifications were added, some 
      were dropped, and some were combined.</p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="energylevels.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
