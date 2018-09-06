<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QS_Parameter.ascx.cs" Inherits="SkyServer.Tools.Search.QS_Parameter" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer.Tools.Search" %>

	<table BORDER=0 WIDTH="100%" >
		<tr>
			<!--td align="left"><input id=submit type="submit" value="Submit Request"></td-->
            <td align="left"><input id=SubmitButton type=button style="width:110px;" onclick="runquery();" value="Submit Request"></input></td>
			<td colspan="5">Limit number of output rows (0 for max) to <input type=text name="limit" size=5 value="50"></td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
		</tr>
		<tr class='q'>
			<td ALIGN=left width="20%">Output Format</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="html" type=radio class="box" checked >HTML</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="xml"  type=radio class="box">XML</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="csv"  type=radio class="box">CSV</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="json"  type=radio class="box">JSON</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="votable"  type=radio class="box">VOTable</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="fits"  type=radio class="box">FITS</td>
            <td nowrap width="13%" ALIGN=middle onmouseover="return escape('Executes the query and stores the result in a table in the CasJobs MyDB database. If the table name entry is empty, then a default name will be given.');"><input name=format value="mydb"  type=radio class="box">MyDB<i><em><strong><sup><font color="red">NEW!</font></sup></strong> </em></i></td>
		</tr>
        <tr>
            <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
            <td nowrap class="q">Table name <input id=TableName name=TableName VALUE="" SIZE="10"></td>
        </tr>

		<tr><td align=center colspan=7>
			<u>Please see the </u><a href="<%=url%>/help/docs/limits.aspx"><u>Query Limits
			help page</u></a><u> for <b>timeouts</b> and <b>row limits</b>.
<%			
			if( globals.DasUrlBase.Length > 1 ) {
%>
				<a href="<%=userguide%>#SAS"><u>To get FITS files</u></a><u><br> from the </u><a href="<%=globals.DasUrl%>">
				<u>Science Archive Server (SAS)</u></a><u>, please use the button(s) on the query results page.
            <% 
			} else {
            %>
				<a href="<%=userguide%>#SAS"><u>To get FITS files</u></a><u> from<br> the </u><a href="<%=globals.DasUrl%>"><u>Science Archive Server (SAS)</u></a><u>, save results to CSV file 
				and upload it to </u><a href="<%=globals.DasUrl%>"><u>SAS retrieval form</u></a>" );
<%
			}
%>
		</td></tr>
	</table>

<table cellspacing='3' cellpadding='3' class='frame' width=640>
<tr><td align=middle >
		<a class='qtitle' href="<%=userguide%>#Parameters" 
			onmouseover="return escape('Parameters to return from your query.');">Parameters to return</a></td>
</tr>

<tr><td>

  <table border=0 cellpadding=4 cellspacing=4 width=100%>
  <tr><td colspan=4 align=middle class='q'><table><tr>
	<td class=smallbodytext>
		(<b>Shift-mouse</b> to select multiple <b>contiguous</b> entries, <b>Ctrl-mouse</b> to select <b>non-contiguous</b> entries)</td>
	</tr></table></td>
  </tr>

<%     using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
       {
           oConn.Open();
           if (queryType == "irspec")
           {
               Response.Write("<tr><td colspan='2' class='q' align='center'>Infrared Spectra</td></tr>");
               ResponseAux.showIRSpecParams(oConn, queryType, Response);
               Response.Write("</tr>\n");
           }   
           else     // this else means: show Imaging and Spectroscopy params only if this is not the Infrared Spectro tool
           {        
%>  

  <tr>
	<td class='q' align='middle'>
		<a href="<%=url%>/help/docs/QS_UserGuide.aspx#<%=first%>" 
            onmouseover="return escape('<%=first%> parameters to return from your query.');"><%=first%></a></td>
	<td class='q' align='middle'><a href="<%=url%>/help/docs/QS_UserGuide.aspx#<%=second%>" 
		onmouseover="return escape('<%=second%> parameters to return from your query.');">
		<%=second%></a></td>
    </tr>    
                    
<%           
               if (queryType == "spec")
               {
                   ResponseAux.showSpecParams(oConn, queryType, Response);
                   ResponseAux.showImgParams(oConn, queryType, Response);
               }
               else
               {
                   ResponseAux.showImgParams(oConn, queryType, Response);
                   ResponseAux.showSpecParams(oConn, queryType, Response);
               }
           }
       }
    %>
    </tr>
  </table>

<table width="100%">
		<tr>
			<!--td align="left"><input id=submit type="submit" value="Submit Request"></td-->
            <td align="left"><input id=SubmitButton type=button style="width:110px;" onclick="goToWindow();runquery();" value="Submit Request"></input></td>
			<td colspan="2">&nbsp;</td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
		</tr>
</table>
