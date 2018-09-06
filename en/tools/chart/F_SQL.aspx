<%@ Page Title="" Language="C#" MasterPageFile="ListBase.Master" AutoEventWireup="true" CodeBehind="F_SQL.aspx.cs" Inherits="SkyServer.Tools.Chart.F_SQL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
    <table><tr><td>
    Total of <%=count%> rows returned<br>
    </td></tr>
    </table>
    <p/>
    <form target="_top" action="list.aspx" method="post" name="result">

    <input id=submit type=submit value="Send to List"><br>
	    <TEXTAREA wrap=off cols=64 
		    name="paste" rows=25><%=result%></TEXTAREA> 

    <input type="hidden" name="scale" value="0.4" /> 
    </form>
</asp:Content>
