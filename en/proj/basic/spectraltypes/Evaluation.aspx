<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Evaluation.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Project Evaluation</div>
<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
<p>Let us know what you thought of this project. Please fill out the form below.</p>

<form method="post" action="http://www.fnal.gov/cgi-bin/formmail/fnalformmail.pl">

<input TYPE="hidden" NAME="recipient" VALUE="kristine@fnal.gov" />
<input TYPE="hidden" NAME="subject" VALUE="Types of Stars evaluation has been filled out" />
<input TYPE="hidden" NAME="title" VALUE="Thank you for evaluating this project" />
<input TYPE="hidden" NAME="return_link_url" VALUE="http://cas.sdss.org/" />
<input TYPE="hidden" NAME="return_link_title" VALUE="Back to SkyServer homepage" />



<center>
<table cellspacing="10">
<tr><td width="120">
<b>Name</b>
</td><td>
<input name="realname" type="text" size="30" />
</td></tr>

<tr><td width="120">
<b>Email</b>
</td><td>
<input type=hidden name="required" value="email" />
<input name="email" type="text" size="30"> </td></tr>

<tr><td width="120">
<b>Institution</b>
</td><td>
<input name="Institution" type="text" size="30" />
</td></tr>
</table>
</center>

</form>
</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="followup.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="../../../"><img align="right" src="../../images/home.gif"></a>
      </td>
    </tr>
  </table>
</div>
</asp:Content>
