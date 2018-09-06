<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="SkyServer.Help.Docs.Indices" %>
<%@ Import Namespace="SkyServer.Help.Browser" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<style>
  .h	{font-size:10pt;font-weight:800;background-color:#500000}
  .v	{font-size:10pt;background-color:#000060;}
  .o	{font-size:10pt;background-color:#003030;}
  .d	{font-size:12pt;}
  .t	{font-size:14pt;color:#ffffff;}
  .dhead {font-size:10pt;}
  .ddrop {font-size:10pt;font-weight:100;}
  samp  {FONT-FAMILY: courier; color:#ffff88;}
</style>

<div id="title">Indices</div>

<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<% using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
   {
       oConn.Open(); 
       BrowserFunctions.showIndices(oConn, "", Request, Response, globals);
       oConn.Close();
       }
%>
</td></tr></table>
</div>
</asp:Content>
