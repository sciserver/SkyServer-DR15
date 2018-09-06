<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="GraphHowtoMaster.master" CodeBehind="trendline.aspx.cs" Inherits="SkyServer.Help.Howto.Trendline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GraphHowtoContent" runat="server">
<div id="title">Graphing and Analyzing Data</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

      <h1>Fitting a Curve to Data</h1>
      <p>Excel will allow you to find the equation for a curve that fits your 
      data. The curve may be a line, quadratic, polynomial or several 
      other types of functions.</p>
      <p>Let's fit a line to the Hubble Diagram.</p>
      <p><img border="0" src="images/trendl1.jpg"></p>
      <p>Click on the Chart menu and select Add Trendline. The following 
      menu will appear:</p>
      <p><img border="0" src="images/trendl2.jpg"></p>
      <p>The points in the Hubble Diagram look like they form a line, 
      so let's try a linear fit. Click on Options. We want the equation 
      to appear on the graph, as well as the r-squared value (r-squared 
      gives you an idea of how good the fit is).</p>
      <p><img border="0" src="images/trendl3.jpg"></p>
      <p>Click OK on both boxes, and your graph will have a trendline added, 
      along with the equation for the line of best fit.</p>
      <p><img border="0" src="images/trendl4.gif"></p>
      <p>An r<sup>2</sup> value close to one indicates a very good fit to the 
      data.</p>
      <p><b>A Word of Caution:</b> If you choose linear, Excel will 
      fit a line to any data you care to input, whether the data follow 
      a linear trend or not. It is important that you think about what type 
      of data you are plotting when you  select the type of trendline. 
      There are times when more than one type of curve will give a good fit to your data!</p>
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
      <td><a href="axis.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="caveat.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>


    </asp:Content>