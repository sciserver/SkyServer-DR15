<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="GraphHowtoMaster.master" CodeBehind="calculate.aspx.cs" Inherits="SkyServer.Help.Howto.Calculate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GraphHowtoContent" runat="server">
<div id="title">Graphing and Analyzing Data</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

      <h1>Create a New Column from a Calculation</h1>
      <p>To learn how to use Excel to do calculations, let's say we 
      wanted to create a new column that contains the value of the 
      color (difference in magnitudes) u-g for each star.</p>
      <p>First, click on the top cell in your new column and type a label. 
      Next, click on the cell just below the label. Type the equals (=) 
      sign. Next, click on the column for 
      u in the same row. Type the minus (-) sign. Click on the column that 
      contains the g value. The spreadsheet should look like it does 
      below:</p>
      <p><img border="0" src="images/calcul15.jpg"></p>

      <p>Hit Enter and the spreadsheet will calculate u-g for that cell.</p>
      <p></p>
      <p>Next, select all cells in the u-g column (except for the label). 
      Click the Edit menu. Select Fill and then Down. The entire 
      column will now have the u-g value for the star in its row.</p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="open.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="select.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>


    </asp:Content>