<%@ Page Title="" Language="C#" MasterPageFile="~/en/HomeMaster.master" AutoEventWireup="true" CodeBehind="Browser.aspx.cs" Inherits="SkyServer.Help.Browser.Browser" MaintainScrollPositionOnPostback="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
  .h	{font-size:10pt;font-weight:800;background-color:#500000}
  .v	{font-size:10pt;background-color:#000060;}
  .o	{font-size:10pt;background-color:#003030;}
  .d	{font-size:12pt;}
  .t	{font-size:14pt;color:#ffffff;}
  .dhead {font-size:10pt;}
  .ddrop {font-size:10pt;font-weight:100;}
  samp  {FONT-FAMILY: courier; color:#ffff88;}
  #transp
{
    LEFT: 240px;
    POSITION: absolute;
    TOP: 155px
}
</style>
<script type="text/javascript">
    function search() {
        var args = 'search ' + document.getElementById('key').value;
        __doPostBack('<%= UpdatePanel1.UniqueID %>', args);
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <form target="_top" name="find" action="javascript:search();">
  <table border=0 width=190 cellpadding=0 cellspacing=0>
  <tr><td><h1>&nbsp;</h1></td></tr>
  <tr><td class='lo'><a class='lo' href="<%=globals.SdssUrl%>glossary.php" TARGET="_top">Glossary</a></td></tr>
  <tr><td class='lo'><a class='lo' href="<%=globals.SdssUrl%>algorithms/" TARGET="_top">Algorithms</a></td></tr>
  <tr><td align=left><hr width="80%"></td></tr>
  <tr><td><font size=-1>Search for</font></td></tr>
  <tr><td><table>
      <tr><td><input type="text" id="key" size="16" maxlength=20 class="isize" /></td>
	  <td><input type="button" value="Go" class="sml" id=submit1 name=submit1 onclick="search()"></td></tr></table>
  </td></tr>
  </table>
  </form>

  <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" 
      EnableHistory="true"
      EnableSecureHistoryState="false" 
      OnNavigate="OnNavigateHistory" >
    </asp:ScriptManager>
    <asp:TreeView id="TreeView1" runat="server" width="210" style="overflow: auto" NodeIndent="6" LeafNodeStyle-Font-Bold="false" LeafNodeStyle-Font-Size="8pt"></asp:TreeView>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" onload="UpdatePanel1_Load" >
            <ContentTemplate>
                <fieldset style="border:none" id="PanelContents" runat="server">
                  <div id="title">Schema Browser</div>
                  <div id="transp">
                      <p/>The data in the database is contained in
                       <b>Tables</b>, organized in columns and rows.<br/>
                       We have defined <b>Views</b> over the tables.
                       These represent special subsets of the<br/> original table.

                      <p/> Most of the tables also have one or more <b>Indices</b> 
                      defined on them to speed up<br/> searches on them.  Please see the 
                      <b>Archive Intro</b> Help page for more information<br/> 
                      on the types of indices.
    
                      <p/> <b>Functions</b> and stored <b>Procedures</b>
                       take a number of parameters, and execute a <br/>
                       previously defined sequence of commands. Usually,"
                       their names are prefixed by<br/> <i>f</i> or <i>sp</i>,
                       like in <i>fPhotoStatus</i> or <i>spGetFiberList</i>.
    
                      <p/>The table <b>SDSSConstants</b> contains most of the parameters
                       relevant to the SDSS.<br/> Their values can be displayed by
                       clicking on the link in the left hand panel.

                      <p/>The table <b>DataConstants</b> contains most of the bit-flags
                       and enumerated quantities<br/> relevant to the SDSS. Their values "
                       can be displayed by clicking on the link in the<br/> left hand panel.
                       There are several access functions to make ineterpretations and<br/> the "
                       back and forth conversions easier. They are displayed when you look"
                       at the<br/> individual enumerated fields."
    
	                    <p/>Click on the <b>[+]</b> sign in front of the categories
	                     on the left to get an expanded view,<br/>
	                     on the <b>[-]</b> to collapse the list, on the name to get
	                     a summary, and on the individual<br/> items to get
	                     their detailed description.
	
	                    <p/>Enter a keyword into the search box on the top, and press 
	                     Enter or the <b>Go</b> button<br>
	                     to search through the descriptions and units stored in the database.
	
	                    <p/>The symbol <img src='images/info.gif'>, appearing at various places
	                     in the documentation indicates a link<br/> to look up the values of 
	                     various flags and enumerated constants.
                  </div>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
              <div id="progress" style="position:absolute;left:450px;top:120px;"><h1 style="font-size:small;font-face:bold">LOADING...</h1></div>
            </ProgressTemplate>
        </asp:UpdateProgress>
        <%   
          if (cmd != null && !(string.Empty.Equals(cmd)))
          {
        %>
          <script type="text/javascript">
              __doPostBack('<%= UpdatePanel1.UniqueID %>', '<%= cmd %>');
          </script>
        <% 
          }
        %>
  </form>

</asp:Content>