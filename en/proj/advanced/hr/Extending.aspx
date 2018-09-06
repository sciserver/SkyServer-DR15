<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Extending.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Extending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
  
<tr><td>

<H1>Extending the H-R Diagram to More Stars</H1>

<P>The H-R diagrams you have made so far cover only stars in the area very close 
to our Sun - a small part of the whole galaxy. In fact, the volume of space you 
looked at to make your H-R diagrams of the nearest stars is less than 0.0001% of 
the volume of our galaxy. Do stars in the rest of the galaxy fall into the same 
groups as stars close to our Sun? To find out, you need to extend your H-R 
diagram to include more distant stars.</P>

<P>There is a problem, however. To make an H-R diagram, you need to know the 
star's luminosity (or absolute magnitude). To find a star's luminosity, you need 
to know its distance from Earth. SDSS records the apparent magnitudes of stars, 
but not their distances. If SDSS does not find distances to stars, how can you 
make an H-R diagram? You will need to collaborate with another project.</P>

<a name="collab"></a>
<H1>Scientific Collaboration</H1>

<P>Collaboration is one of the most important aspects of science. Another group 
may have data that you would find useful but cannot obtain using your 
equipment. In this case, you need to know distances to stars.</P>

<table width=210 align=right>
<tr><td align=center>
   <img src="images/esa_logo.gif">
</td></tr>
<tr><td align=center>
   <p class=caption><font size=-2>Copyright <a href="#collab" onclick="window.open(
   'http://www.esa.int');">The European Space Agency</a>.</p>
</td></tr>
</table>

<P>To find the distances, you can "collaborate" with the European Space Agency 
(ESA). In 1989, ESA launched a satellite called Hipparcos. It made extremely 
accurate measurements of the brightnesses of and distances to 118,000 stars, and  
measured brightnesses of and distances to about 2.5 million stars with a slightly 
lower level of precision.</p>

<table width=220 align=left><tr><td>
   <img src="images/hipparcos.jpg">
</td></tr>
<tr><td align=center>
   <p class=caption>An artist's conception of the Hipparcos satellite<br>
   <font size=-2>Copyright <a href="#collab" onclick="window.open(
   'http://sci.esa.int');">The European Space Agency</a>.</p>
</table>


<p>Hipparcos measured stars down to 12th magnitude. The SDSS uses digital cameras; if 
you take a picture of a very bright object, the cameras' CCD chips will become 
saturated and you will not get a good image. For the SDSS telescope, very bright 
means about 12th magnitude. So the SDSS can't give any information about stars brighter 
than 12th magnitude. Notice that the SDSS can't observe stars that Hipparcos measured, 
and Hipparcos can't observe stars that the SDSS measures! The SDSS and Hipparcos make a perfect 
collaboration - each data set has strengths that make up for the other set's weaknesses.</P>

<P>Over the next few pages, you will make an H-R diagram of a famous star cluster using 
data from the Hipparcos satellite. After that, you will use what you learned to make an 
H-R diagram of a fainter, more distant star cluster using SDSS data. </P>

<p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="neareststars.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="hipparcos1.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
