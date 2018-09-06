<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Simple.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.Simple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<a name="example"></a>
<h1 class="kidsheader">A Simple Made-Up Constellation</h1>

<p class="kids">Let's start with a simple example: a made-up constellation. Your teacher 
will divide you into two groups. He or she will give you a constellation. Study it, then look 
at the picture below. Pretend you are looking at stars in the sky. What do you see?</p>

<table align=center><tr>
   <td><img src="images/madeup.jpg"></td>
</tr></table>

<p class="kids">Someone from your group should describe what you see to the rest of the class. 
What did the other group see? Can you see what they saw?</p>


<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="default.aspx"><img src="../../images/previous.jpg" align=left>
<a href="compare.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TABLE>
<P></P>

</div>
</asp:Content>
