<%@ Page Title="" Language="C#" MasterPageFile="ListBase.Master" AutoEventWireup="true" CodeBehind="SqlToForm.aspx.cs" Inherits="SkyServer.Tools.Chart.SqlToForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
    <form method ="post" name="sql" action="<%=query%>">

    <table BORDER=0 WIDTH="440"  cellpadding=1 cellspacing=1>
	    <tr VALIGN=top><td>
		    <textarea cols=64 name=cmd rows=12 wrap=virtual><%=cmd%>
		    </textarea> 
	    </td></tr>

	    <tr><td><input id="submit" type="submit" value="Submit"/></td></tr>
        <tr><td> &nbsp;</td></tr>	 

	    <tr><td bgcolor=white>
		    The SELECT clause of the query must contain exactly three columns, which
		    must have the following names: <b>name, ra, dec</b>. Pressing the SUBMIT button
		    will call the database, return the rows, and load them into the list form.
		    Then you must press the GetImage button to display the images.
	    </td></tr>	 
    </table>
    <input type="hidden" value="<%=caller%>" name="url" />
    </form>
</asp:Content>
