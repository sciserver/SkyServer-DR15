<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="GraphHowtoMaster.master" CodeBehind="caveat.aspx.cs" Inherits="SkyServer.Help.Howto.Caveat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GraphHowtoContent" runat="server">
<div id="title">Graphing and Analyzing Data</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

      <h1>Copying Object IDs into Excel</h1>

      <p>Excel has a known problem with SkyServer data: SDSS Object IDs are too long. 
      The Object IDs are 18 digits long, and Excel can display a maximum of only 15 digits. 
      For example, look at this list of IDs from the Advanced Color project:</p>

	<img src="images/objid1.jpg">

      <p>If you copy this list and paste it directly into Excel, the list will look like this:</p>

	<img src="images/objid2.jpg">

      <p>The last three digits of every Object ID show up as zeroes. This is especially bad because 
      if you try to search for these objects by ID in the Object Explorer, you won't be able to find 
      them! The 15-digit limit is set by the CPU processor, so no settings in Excel could fix the 
      problem.</p>

      <p>The solution is to have Excel read the Object ID as a text string rather than a number. 
      To tell Excel to read the ID as a string, enter single quotes (') at the beginning and end of 
      the ID. Copy your list of Object IDs into a text editor (like Notepad) and enter the quotes 
      by hand.</p>

      <p>After you enter the single quotes at the beginning and end of the Object IDs, paste your 
      list into Excel. You should get a screen like this:</p>

      <img src="images/objid3.jpg">

      <p>If you enter these Object IDs (with single quotes) into the Object Explorer's "Search 
      by ObjID" feature, you'll get the correct object.</p>

      <p>Entering the single quotes by hand is time consuming, and it's not practical if you have more than about 20 objects. If you have many objects 
          (like you might get from the SQL Search tool), you should save the results as a CSV file. To learn how to properly open CSV files, see <a href="open.aspx">
How to open a CSV file</a>.</p>

      <p>

      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="trendline.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="../../../">
      <img align="right" src="../../../proj/images/home.gif"></a></td>
    </tr>
  </table>
</div>


    </asp:Content>