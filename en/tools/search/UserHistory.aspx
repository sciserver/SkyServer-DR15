<%@ Page Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="UserHistory.aspx.cs" Inherits="SkyServer.en.tools.UserHistory.GetHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">

<html>
<head>
<style>
	#waiting {position:absolute;top:500;left:180;}
	td,p	{font-size:9pt; color:#000000}
	.tiny	{font-size:8pt; color:#000000}
	.med	{font-size:9pt; color:#000000}
	.qtitle {font-size:10pt;color:#ffffff;font-weight:bold;}
	.q	{font-size:9pt; background-color:#dddddd}
	.frame	{background-color:#bbbbbb;}
	a		{color:#000088;font-weight:normal;}
	.pos	{width:66px}
	.mag	{width:56px}
	.name	{width:200px}
	.txt	{width:260px}
</style>


<script src="../../../plugins/datetimepicker-master/jquery.js" type="text/javascript"></script>
<script src="../../../plugins/datetimepicker-master/build/jquery.datetimepicker.full.min.js" type="text/javascript"></script>
<link href="../../../plugins/datetimepicker-master/jquery.datetimepicker.css" rel="stylesheet" type="text/css" />

    <style type="text/css"> 
       table.grid{ 
           border-collapse:collapse; 
           border:solid 1px black; 
        } 
        table.grid td, th{ 
           border:solid 1px black; 
           color:black;
        }
        
        th.sortasc a  
        {
           display:block; padding:0 4px 0 15px; 
           background:url(img/asc.gif) no-repeat;  
        }
        th.sortdesc a 
        {
           display:block; padding:0 4px 0 15px; 
           background:url(img/desc.gif) no-repeat;
        }
    </style>

  <script type="text/javascript">
      $(document).ready(function () {

      $.datetimepicker.setLocale('en');// change accordingly with the skyserver language
      $('#datetimepicker1').datetimepicker({theme:'dark', formatTime: 'H:i', formatDate: 'y/m/d', step: 60});
      $('#datetimepicker2').datetimepicker({ theme: 'dark', formatTime: 'H:i', formatDate: 'y/m/d', step: 60});
  });

  function CheckSubmit() {

      <% if(!IsValidUser){  %>
        alert("You must be logged in with SciServer in order to see your history.")
      <% } %>
  }

  </script>

</head>

<body>


<% if (IsValidUser & !PageHasError) { %>

<div id="title">My SkyServer History</div>
<div id="transp">
<h3>Review the results from SkyServer tools you have used in the past.</h3>

<table width="1000px" > 

<tr  ALIGN=left VALIGN=top>

    <!--td><h4>Change dates to get more records.<br />Maximum <%=MaxRowsDisplayedDefault.ToString("c0").Remove(0, 1)%> rows (<%=UTC.ToString()%>).</h4> </!--td-->
    <td><h4>Change dates to get more records (maximum <%=MaxRowsDisplayedDefault.ToString("c0").Remove(0, 1)%> rows).</h4> </td>
    <td><h4>Filtering rows within results table</h4></td>
</tr>
<tr ALIGN=left VALIGN=top >

    <td>

        <form method ="POST" id="form1" target ="" action="UserHistory.aspx">

        <input type="hidden" name="NewDateSubmmitingSection" id="NewDateSubmmitingSection" value="true"/>
      


        <table BORDER=2 BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1 width="300px"  >
        <tr ALIGN=middle VALIGN=center>
          <td> <b>Start Date</b> </td>
          <td> <input name="date_low" id="datetimepicker1"  type="text" value="<%=DateLow.ToString("yyyy/MM/dd HH:mm:ss")%>"/>  </td>
        </tr>
        <tr ALIGN=middle VALIGN=center>
          <td> <b>End Date</b> </td>
          <td> <input name="date_high" id="datetimepicker2"  type="text" value="<%=DateHigh.ToString("yyyy/MM/dd HH:mm:ss")%>"/>  </td>
        </tr>
        </table>

        <h3>
        <input id=submit1 type=submit value=Submit onclick="CheckSubmit()"  onmouseover="return escape('Press this to get your history.');">
        </h3>
        </form>


    </td>
    <td>

        <form method ="POST" id="form2" target ="" action="UserHistory.aspx" runat="server">

        <input type="hidden" name="settable" id="settable" value="settable"/>

        <% if (QueryGridView.PageCount >= 0){ %>


        


        <table BORDER=2 BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1   >
        <tr ALIGN=left VALIGN=center>
          <td> <b>Select Skyserver tools:</b> <h5><i>Shift-click</i> for multiple <i>contiguous</i> entries, <br /><i>Ctrl-click</i>
            for <i>non-contiguous</i> entries.</h5> </td>
          <td> <asp:ListBox ID="ToolsListBox"  runat="server" SelectionMode="Multiple"  height="70px"  > </asp:ListBox></td>
        </tr>
        <tr ALIGN=left VALIGN=center>
          <td> <b>Keyword within Request Parameters:</b></td>
          <td> <asp:TextBox ID="SearchParameters" runat="server" width="98%"/> </td>
        </tr>

        </table>
        <br />
        <asp:Button Text="Apply" runat="server" OnClick="Search" /><asp:Button Text="Reset" runat="server" OnClick="ResetSearch" /> 
        <br />
        <br />


        <%} %>

    </td>

</tr>

</table>






<hr />

<% if (QueryGridView.PageCount > 0){ 
       
        if(!HasSubmittedForm & !Request.Form.HasKeys()){   %>
            <div style="color: Yellow; font-weight: bold; font-size:23px">
                <%if(NumRows == 1){%>
                    Showing first and only data record.
                <%}else{%>
                    Showing last <%=NumRows.ToString()%> data records.
                <%}%>
            </div>
        <% }else{%>
            <div style="color: Yellow; font-weight: bold; font-size:23px">
                <%if(NumRows == 1){%>
                    Found 1 data record.
                <%}else{%>
                    Found <%=NumRows.ToString()%> data records.
                <%}%>
            </div>
        <% } %>

<% } else { 
        if(!HasSubmittedForm & !Request.Form.HasKeys()){   %>
            <div style="color: Yellow; font-weight: bold; font-size:23px">
                Your use of SkyServer tools has never been registered.<br />
                Try using some of the search tools listed <a target="_blank" href="../toolshome.aspx" style="color:lightblue" > HERE </a>.
                </div>
        <% }else{%>
            <div style="color: Yellow; font-weight: bold; font-size:23px">
                No data records found.
            </div>
        <%}%>

<%} %>



<% if (QueryGridView.PageCount > 0)
   { %>
    <font style="color:DarkGray">(from <%=DateLow.ToString("yyyy-MM-dd HH:mm:ss UTCzzz")%>  to <%=DateHigh.ToString("yyyy-MM-dd HH:mm:ss UTCzzz")%>) </font>
<br />
<br />    
        <div style="color: DarkGray; font-weight: bold">
            <i>Page <%=QueryGridView.PageIndex + 1%> of <%=QueryGridView.PageCount%> </i>
        </div>
    <table BORDER=2 BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1   >
    <tr ALIGN=left VALIGN=center>
      <td > <b>Number of rows per page</b> </td>
      <td>  <asp:TextBox ID="RowsPerPageButton" runat="server" /> <asp:Button Text="Change" runat="server" OnClick="ChangeRowsPerPage" />  </td>
    </tr>
    <tr>
      <td> <b>Go to page</b></td>
      <td>  <asp:TextBox ID="GoToPageButton" runat="server" /> <asp:Button Text="Go" runat="server" OnClick="GoToTablePage" />  </td>
    </tr>
    </table>
<% } %>


<asp:GridView ID="QueryGridView" CssClass="grid" runat="server" AutoGenerateColumns="False" EmptyDataText="" 
                    Font-Names="Verdana" AllowPaging="True" AllowSorting="True" PageSize="2" Width="98%"
                    OnPageIndexChanging="ChangeGridPageIndex" BorderColor="Gray" BorderStyle="Solid" CellPadding="8"
                    BorderWidth="5px" OnSorting="ColumnSorting" BackColor="DarkGray" >

                <SortedAscendingHeaderStyle CssClass="sortasc" />
                <SortedDescendingHeaderStyle CssClass="sortdesc" />

                <pagersettings position="TopAndBottom" FirstPageText="1" LastPageText="Last Page" Mode="NumericFirstLast" NextPageText="Next" PreviousPageText="Previous"/>
                <PagerStyle BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"/>
    
                <HeaderStyle Height="30px" Font-Size="16px" Font-Bold="True" BorderColor="black" BackColor="dimGray" BorderStyle="Solid" BorderWidth="5px" />

                <RowStyle Height="20px" Font-Size="13px" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px"  /> 
                   
                <AlternatingRowStyle BackColor="lightgray"></AlternatingRowStyle>

                <Columns>
                    <asp:BoundField DataField="RowIndex" HeaderText="&#9660;&#9650;" SortExpression="RowIndex" ItemStyle-Width="4%" ItemStyle-HorizontalAlign="Left" />
                    <asp:BoundField DataField="Time" HeaderText="Time  &#9660;&#9650;" SortExpression="Time" ItemStyle-Width="11%" ItemStyle-HorizontalAlign="Left" />
                    <asp:TemplateField HeaderText="Skyserver Tool  &#9660;&#9650;" SortExpression="Application" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center" >
                        <ItemTemplate><asp:HyperLink runat="server" Target="ToolHistory"  NavigateUrl='<%# string.Format("{0}", Eval("Content").ToString()  ) %>' Text='<%# string.Format("{0}", Eval("Application").ToString()  ) %>' /> </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Parameters" HeaderText="Request Parameters" ItemStyle-HorizontalAlign="Left"/>
                </Columns>
            </asp:GridView>

</form>

<br>

</div>

    <%}
   else if (!IsValidUser)
   { %>

<div id="title">My SkyServer History</div>

<div id="transp">

<form method ="POST" id="NotValidUser" target ="" action="UserHistory.aspx">

<input type="hidden" name="searchtool3" id="searchtool3" value="UserHistory"/>

<h3>To see your history, <a target=INFO href=" <% =ConfigurationManager.AppSettings["Keystone.Login"]+ConfigurationManager.AppSettings["skyserverBase"] + HttpUtility.UrlEncode(Request.Url.AbsolutePath) %> "><font  color="yellow"><i><b>log-in</b></i></font></a> with SciServer.</h3>



</form>
    </div>


    <%} 
else if (PageHasError)      
{ %>

<div id="title">My SkyServer History</div>

<div id="transp">

<form method ="POST" id="PageHasError" target ="" action="UserHistory.aspx">

<input type="hidden" name="searchtool4" id="searchtool4" value="UserHistory"/>

<h3>Sorry, an error ocurred. <br />  </h3>

        <div style="color: yellow; font-weight: bold">
            <br />
            <%=Exception.Message%>
        </div>
</form>
    </div>

<% } %>

</body>
</html>

</asp:Content>
