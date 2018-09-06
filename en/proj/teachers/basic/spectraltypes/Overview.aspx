<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.SpectralTypes.Overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<!--<script>
    function answers(id) {
        var link = "http://skyserver.pha.jhu.edu/register/answers/getanswer.asp?id=" + id;
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar");
        w.focus();
    }
</script>-->
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Types of Stars</h1>
      <h1>Overview</h1>

<a name="description"></a>
<h2>Project Description</h2>
      
<p>This project teaches students about how astronomers classify stars and the link between absorption lines and temperature. 
This project is an excellent introduction to how astronomers classify stars, and is a good precursor to teaching stellar evolution 
or galactic astronomy.</p>

<p>As they work through the project, students will learn that the lettering scheme for stellar classification initially came from 
examining absorption lines. Then students will classify stars by the peak wavelength of their spectra to learn about the modern 
classification system, which uses temperature to reorder the original types.</p>

<p>Students compare the old and new classification schemes, and a series of questions leads the students to understand an important property of stars - the connection between temperature and 
absorption line strength. They learn that  for hydrogen alpha absorption to take place, a star needs to be just the right temperature &mdash; 
not too hot and not too cool.</p>

<a name="concepts"></a>
<h2>Concepts</h2>

<ul>
	<li>Every star has a unique spectrum</li>
	<li>Absorption lines are caused by electron transitions in atoms</li>
	<li>The strength of absorption lines depends on the temperature of the star</li>
	<li>Classification can eventually lead to a deeper understanding of underlying physics</li>
	<li>Stars can be classified according to their spectrum using either absorption lines or continuum peak</li>
</ul>

<a name="audience"></a>
<h2>Target Audience</h2>

<p>Astronomy 101 students can use this project as an introduction to stars, after learning a bit about light but before 
learning about stellar evolution. High school students can use this activity as an application of their knowledge about spectra. 
Students who are interested in doing more involved projects on stars might use this activity as a way to acquaint themselves with stellar 
classification and working with SDSS spectra.</p>

<a name="classtime"></a>
<h2>Classroom Time</h2>

<p>The full activity can be done during one two-hour lab period. If pressed for time, the first activity (classifying by spectral class) 
can be assigned as a pre-lab.</p>

<a name="relevance"></a>
<h2>Real World Relevance</h2>

<p>This project takes the student deeper into the scientific process by using real data to derive actual information about distant
stars.</p>

<a name="solutions"></a>
<h2>Sample Solutions</h2>

<p>To get a copy of the sample solutions, email us at 
    <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.

      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img src="../../../images/previous.jpg" align=left></a>
<a href="background.aspx"><img src="../../../images/next.jpg" align=right></a></td>
    </tr>
  </table>
</div>
</asp:Content>
