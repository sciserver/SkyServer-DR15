<%@ Page Title="" Language="C#" EnableViewStateMac="false" MasterPageFile="ChartBase.Master" AutoEventWireup="true" CodeBehind="Image.aspx.cs" Inherits="SkyServer.Tools.Chart.Image" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
   <img src="<%= jpegUrl %>" />
</asp:Content>
