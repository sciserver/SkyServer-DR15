<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="GraphHowtoMaster.master" CodeBehind="enteringdata.aspx.cs" Inherits="SkyServer.Help.Howto.EnteringData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GraphHowtoContent" runat="server">
<div id="title">Graphing and Analyzing Data</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

          <p></p>

    <h1>Enter Data</h1>
      <p>When you open Excel, you will see a blank spreadsheet table as shown below:</p>
      <p><img border="0" src="images/enteri1.jpg"></p>
      <p>To enter data, simply click on any cell and enter the values. 
      Be sure to label your columns so you know what they represent. 
      The first row of the table is usually dedicated to labels.</p>
      <p>The diagram below shows a table containing the object ID, ra, dec, 
      u, g, r, i, and z values for a group of stars:</p>
      <p><img border="0" src="images/enteri14.jpg"></p>
      <p>You can also cut and paste data into the table from another source such 
      as a web page. First, select the data you want by highlighting it. 
      Copy the data to the clipboard by using Ctrl-c or by selecting copy under 
      the Edit menu. In the spreadsheet, click on the cell where you want 
      the top left entry of the data you copied to be placed. Paste the 
      data by either using Ctrl-v or by selecting paste under the Edit menu.</p>
      <p>If you want to paste Object IDs from SkyServer into Excel, read this 
      <a href="caveat.aspx">workaround</a> to learn how to paste them properly.</p>
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
      <td><a href="graphhowtohome.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="open.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>

    </asp:Content>