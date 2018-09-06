<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Conclusion.aspx.cs" Inherits="SkyServer.Proj.Galaxies.Conclusion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Conclusion</h1>
      <p>Modern astronomers have refined Hubble's classification scheme to 
      include more information about galaxies. However, the modern 
      classification system is still based on the Hubble tuning fork.</p>
      <p>Now that you know how to classify galaxies, you are ready to use 
      your knowledge to learn something about what galaxies are like. 
      Below are some ideas for further exploring galaxies in the SDSS data. 
      Choose one, then search through the SDSS data to answer the questions. The 
      <a href="../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a> 
      and the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search Tool</a> 
      will help you find galaxies; see the <a href="../../../help/howto/search" target="help">
      Searching for Data</a> tutorial to learn how to use the SQL Search tool.</p>
      <p>When you finish your research project, <a href="mailto:raddick@pha.jhu.edu?subject=Galaxies research results">
      E-mail us</a> your results, including all your graphs and the 
      object IDs you used to make them. We will look over all the results 
      we receive, and we will put the best of them up on these pages!</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%"><p><strong>Exercise 5.</strong> 
          To prepare for the Research Challenge, make a color-color diagram for a large number of galaxies. Plot u-g 
          on the y-axis and g-r on the x-axis. On your diagram, label each 
          galaxy by its type. Try to identify the areas where different types of 
          galaxies lie on the color-color diagram. Try to come up with 
          rules that will tell you what type of a galaxy you are observing based 
          on its colors. You may want to make other color-color diagrams 
          (such as g-r on the y-axis and r-i on the x-axis) as well.</p></td>
        </tr>
      </table>
      <p></p>
   	  <table class=rchallenge width=600 cellpadding=5 cellspacing=0>      
   	    <tr>
          <td><p><strong>Research Challenge.</strong> The following 
          table contains the redshifts and celestial coordinates of several galaxy 
          clusters. Can you see any differences in the clusters, or the galaxies that 
          make them up, at different redshifts? You may need to make color-color diagrams 
          of several clusters and compare them. Do you notice any 
          differences between rich clusters (with many galaxies) and poor 
          clusters (with few galaxies)?</font></p>
          <p>Click on the Cluster name to launch the Navigation Tool focused on that 
cluster.</p>
          <table border="1" cellspacing="2" cellpadding="2" width="61%" id="AutoNumber2">
            <tr>
              <td width="32%"><p><em>Cluster</em></p></td>
              <td width="26%"><p><em>Redshift</em></p></td>
              <td width="21%"><p><em>RA</em></p></td>
              <td width="21%"><p><em>Dec</em></p></td>
            </tr>
            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=5.44&dec=-0.8894" target="tools">
	Abell 0023</a></p></td>
              <td width="26%"><p>0.105</p></td>
              <td width="21%"><p>5.44</p></td>
              <td width="21%"><p>-0.89</p></td>
            </tr>
<!--            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=12.13&dec=1.43" target="tools">
	Abell 0102</a></p></td>
              <td width="26%"><p>0.0635</p></td>
              <td width="21%"><p>12.13</p></td>
              <td width="21%"><p>1.43</p></td>
            </tr>-->
            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=14.09&dec=-1.26" target="tools">
	Abell 0119</a></p></td>
              <td width="26%"><p>0.044</p></td>
              <td width="21%"><p>14.09</p></td>
              <td width="21%"><p>-1.26</p></td>
            </tr>
<!--            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=0.91&dec=1.64" target="tools">
	Abell 0189</a></p></td>
              <td width="26%"><p>0.0328</p></td>
              <td width="21%"><p>0.91</p></td>
              <td width="21%"><p>1.64</p></td>
            </tr>-->
            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=28.77&dec=1.01" target="tools">
	Abell 0267</a></p></td>
              <td width="26%"><p>0.230</p></td>
              <td width="21%"><p>28.77</p></td>
              <td width="21%"><p>1.01</p></td>
            </tr>
<!--            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=39.93&dec=1.54" target="tools">
	Abell 0370</a></p></td>
              <td width="26%"><p>0.375</p></td>
              <td width="21%"><p>39.93</p></td>
              <td width="21%"><p>1.54</p></td>
            </tr>-->
            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=41.48&dec=-0.64" target="tools">
	Abell 0381</a></p></td>
              <td width="26%"><p>0.179</p></td>
              <td width="21%"><p>41.48</p></td>
              <td width="21%"><p>-0.64</p></td>
            </tr>
            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=151.24&dec=-0.693" target="tools">
	Abell 0919</a></p></td>
              <td width="26%"><p>0.095</p></td>
              <td width="21%"><p>151.24</p></td>
              <td width="21%"><p>-0.693</p></td>
            </tr>
<!--            <tr>
              <td width="32%"><p><a href="../../../tools/chart/navi.aspx?ra=21.39&dec=-1.51" target="tools">
	Abell 0194</a></p></td>
              <td width="26%"><p>0.0180</p></td>
              <td width="21%"><p>21.39</p></td>
              <td width="21%"><p>-1.51</p></td>
            </tr>-->
          </table>
          </td>
        </tr>
      </table>
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
      <td><a href="colorclassification.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="results.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
