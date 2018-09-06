<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="ExploreError.aspx.cs" Inherits="SkyServer.Tools.Explore.ExploreError" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>

<asp:Content ID="Head1" ContentPlaceHolderID="OEHead" runat="server">
    <script type="text/javascript" src="./javascript/explore.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">
 <div class="content">
     <h2>Explore Error </h2>
     <asp:Panel ID="InnerErrorPanel" runat="server" Visible="false" Width="625">
     <table cellpadding=2 cellspacing=2 border=0 width="625">
         <tr>
             <td>
             <p>Inner Error Message:<br /></p>
             </td>
         </tr>
        <tr>
            <td class='nodatafound'>
             <asp:Label ID="innerMessage" class='nodatafound' runat="server" Font-Bold="true" Font-Size="Large" /><br />
            </td>
        </tr>
         <tr><td>Inner Error Details: <br/></td></tr>
         <tr><td>
             <pre>
                <asp:Label ID="innerTrace" runat="server" />
              </pre>
             </td>
         </tr>
     </table> 
    </asp:Panel>
    <p>
      Error Message:<br />
      <asp:Label ID="exMessage" runat="server" Font-Bold="true" 
        Font-Size="Large" />
    </p>
    <pre>
      <asp:Label ID="exTrace" runat="server" Visible="false" />
    </pre>
    <br />
    Return to the <a href='Default.aspx'> Default Page</a>
 </div>    
</asp:Content>
