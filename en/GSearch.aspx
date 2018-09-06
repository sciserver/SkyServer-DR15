<%@ Page Title="" Language="C#" MasterPageFile="HomeMaster.master" AutoEventWireup="true" CodeBehind="GSearch.aspx.cs" Inherits="SkyServer.GSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<title>
	SDSS SkyServer <%=globals.Release%> Site Search</title>
<!-- pics label-->
<meta http-equiv="pics-label" content='(pics-1.1 "http://www.icra.org/ratingsv02.html" l gen true for "http://skyserver.fnal.gov/" r (cz 1 lz 1 nz 1 oz 1 vz 1) "http://www.rsac.org/ratingsv01.html" l gen true for "http://skyserver.fnal.gov/" r (n 0 s 0 v 0 l 0))'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
<table><tr><td>&nbsp;</td></tr></table>
</div>
<div id="form">
  <table width=720>
    <tr>
      <td align=center colspan=3><h1>Site Search with </h1>
          <img src='http://www.google.com/intl/en/logos/Logo_40blk.gif' align=middle></td>
    </tr>
    <tr>
	<td width=20%>&nbsp;</td>
      <td align=center>Search the SkyServer pages for a word or phrase by entering your search text below 
          and pressing the blue search button.</td>
	<td width=20%>&nbsp;</td>
    </tr>
    <tr>
      <td align=center colspan=3>
        <FORM align=center method=GET action="http://www.google.com/search" target="_top">
 <!--         <TABLE bgcolor="#FFFFFF">
            <tr>
              <td>
 -->
               <INPUT TYPE=text name=q size=25 maxlength=255 value="">
                <INPUT type=submit name=btnG class=t VALUE="Search SkyServer with Google">
                <input type="hidden" name="as_sitesearch" value="<%=searchUrl%>">
<!--              </td>
           </tr>
         </table>
-->
       </FORM>
     </td>
   </tr>
</table>
</div>
</asp:Content>
