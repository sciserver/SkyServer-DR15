<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="TableDesc.aspx.cs" Inherits="SkyServer.Help.Docs.TableDesc" %>
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
<div id="title">Table Descriptions</div>
<div id="transp">
<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        BrowserFunctions.showTableDesc(oConn, name, search, url, Request, Response, globals);
    }
%>
</div>
</asp:Content>