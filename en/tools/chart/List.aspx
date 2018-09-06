<%@ Page Title="" Language="C#" EnableViewStateMac="false" MasterPageFile="ListBase.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="SkyServer.Tools.Chart.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
	function setPage(n) {
	
		//set page value for parent, so that we come back to same page
		if (n>0) document.getElementById("getjpeg").page.value=n;

		// set the local page value, and resubmit
		document.getElementById("getjpeg").page.value=n;
		document.getElementById("getjpeg").submit();

		return false;
	}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FCContent" runat="server">
    
    <div>
    <table border="0" cellspacing="2" cellpadding="0">
	    <tr>
		    <td width="10"></td>
		    <td class='s'><%pagecounters();%></td>
	    </tr>

	    <tr>
		    <td>&nbsp;</td>
		    <td>

        <%
            
           
		        if (master.page==0) {
	 		        Response.Write("<hr>\n");
			        Response.Write("<pre>\n");
			        Response.Write(paste+"\n");
			        Response.Write("</pre>\n");
		        } else {
			        header();
                    if (HasCorrectUploadFormat)
                    {
                        for (var i = 0; i < body.Length; i++)
                            if (body[i].Length > 0)
                                parseLine(names, body[i]);
                        trailer();
                    }
                    else
                    {
                        Response.Write("Error: List of coordinates not in correct format.");
                    }
		        }
            
        %>

        </td></tr>
    </table>
    </div>
</asp:Content>
