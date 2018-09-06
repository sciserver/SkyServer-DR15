<%@ Page Title="" Language="C#" MasterPageFile="~/en/proj/basic/solarsystem/SolarSystemMaster.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="SkyServer.en.proj.basic.solarsystem.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
  <form id="Form1" runat="server">

  <asp:SqlDataSource id="SqlDataSource1" runat="server"></asp:SqlDataSource>

  <div id="transp">
    <table width=600 border="0" cellspacing="3" cellpadding="3">
      <tr>
        <td>
          <h1>Run a SQL Query</h1>
        </td>
      </tr>
      <tr>
        <td>
          <asp:TextBox id="TextBox1" runat="server" TextMode="multiline" Columns="50" Rows="5"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td>
          <asp:Button id="Button1" runat="server" OnClick="RunQuery" Text="Submit"  />
        </td>
      </tr>
      <tr>
        <td>
          <asp:GridView id="GridView1" runat="server" DataSourceID="SqlDataSource1" CellSpacing="3" CellPadding="3" CssClass="gridview"></asp:GridView>
        </td>
      </tr>
    </table>
  </div>

  </form>
</asp:Content>
