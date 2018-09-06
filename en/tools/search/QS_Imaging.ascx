<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QS_Imaging.ascx.cs" Inherits="SkyServer.Tools.Search.QS_Imaging" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer.Tools.Search" %>
<%@ Import Namespace="System.Data" %>
<table cellspacing='3' cellpadding='3' class='frame' width='640'>
<!-------------------------------------------------------------------------------->
  <tr><td align=middle>
	<a class='qtitle' href=<%=userguide%>#ImagingConstraints 
		onmouseover="return escape('Apply constraints based on imaging data on the objects returned by the query');">
		Imaging Constraints</a>
  </td></tr>
<!-------------------------------------------------------------------------------->
  <tr><td>
    <table cellpadding=4 cellspacing=4 width=100%>
	<tr>	
	  <td colspan=7 class='q'>
		<table width=100%>
		  <tr>
			<td>Magnitude and Color Type</td>
			<td>
				<input type=radio name=magType value=petro>
				<a href=<%=userguide%>#MagnitudeType 
					onmouseover="return escape('Use petrosian magnitudes and colors to constrain query');">Petro</a>
			</td>
			<td>		
				<input type=radio name=magType value=model checked>
				<a href=<%=userguide%>#MagnitudeType 
					onmouseover="return escape('Use model magnitudes and colors to constrain query');">Model</a> 
			</td>
			<td>		
				<input type=radio name=magType value=psf>
				<a href=<%=userguide%>#MagnitudeType 
					onmouseover="return escape('Use PSF magnitudes and colors to constrain query');">PSF</a>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
<!-------------------------------------------------------------------------------->

	<tr><td class='q' width=80 rowspan=2 ><a href=<%=userguide%>#Magnitudes onmouseover="return escape('Apply constraints based on the magnitude');">Magnitudes</a></td>
		<td class='q' width=25>min</td>
		<td class='q' width=95><table width=100%><tr><td>u</td><td align=right><input class='mag' type=text id="uMin" name=uMin size=2></td></tr></table></td>
		<td class='q' width=95><table width=100%><tr><td>g</td><td align=right><input class='mag' type=text id="gMin" name=gMin size=2></td></tr></table></td>
		<td class='q' width=95><table width=100%><tr><td>r</td><td align=right><input class='mag' type=text id="rMin" name=rMin size=2></td></tr></table></td>
		<td class='q' width=95><table width=100%><tr><td>i</td><td align=right><input class='mag' type=text id="iMin" name=iMin size=2></td></tr></table></td>
		<td class='q' width=95><table width=100%><tr><td>z</td><td align=right><input class='mag' type=text id="zMin" name=zMin size=2></td></tr></table></td>
	</tr>
	<tr>
		<td class='q'>max</td>
		<td class='q'><table width=100%><tr><td>u</td><td align=right><input class='mag' type=text id="uMax" name=uMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>g</td><td align=right><input class='mag' type=text id="gMax" name=gMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>r</td><td align=right><input class='mag' type=text id="rMax" name=rMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>i</td><td align=right><input class='mag' type=text id="iMax" name=iMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>z</td><td align=right><input class='mag' type=text id="zMax" name=zMax size=2></td></tr></table></td>
	</tr>

	<tr>
		<td class='q' rowspan=2><a href=<%=userguide%>#Colors onmouseover="return escape('Apply constraints based on the colors');">Colors</a></td>
		<td class='q'>min</td>
		<td class='q'><table width=100%><tr><td>u-g</td><td align=right><input class='mag' type=text id="ugMin" name=ugMin size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>g-r</td><td align=right><input class='mag' type=text id="grMin" name=grMin size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>r-i</td><td align=right><input class='mag' type=text id="riMin" name=riMin size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>i-z</td><td align=right><input class='mag' type=text id="izMin" name=izMin size=2></td></tr></table></td>
		<td class='q'>&nbsp;</td>
	</tr>

	<tr>
		<td class='q'>max</td>
		<td class='q'><table width=100%><tr><td>u-g</td><td align=right><input class='mag' type=text id="ugMax" name=ugMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>g-r</td><td align=right><input class='mag' type=text id="grMax" name=grMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>r-i</td><td align=right><input class='mag' type=text id="riMax" name=riMax size=2></td></tr></table></td>
		<td class='q'><table width=100%><tr><td>i-z</td><td align=right><input class='mag' type=text id="izMax" name=izMax size=2></td></tr></table></td>
		<td class='q'>&nbsp;</td>
	</tr>

<!-------------------------------------------------------------------------------->
	<tr>
		<td class='q'><a href=<%=userguide%>#ObjectType onmouseover="return escape('Apply constraints based on the imaging-classified object type');">Obj Type</a></td>
		<td class='q' colspan='6'>
		  <table width=365>
			<tr>
				<td><input type=checkbox name=doGalaxy checked>Extended Sources <i>(e.g., Galaxies)</i></td>
				<td><input type=checkbox name=doSky>Sky</td>
			</tr>
			<tr>
				<td><input type=checkbox name=doStar checked>Point Sources <i>(e.g., Stars)</i></td>
				<td><input type=checkbox name=doUnknown>Unknown</td>
			</tr>
		</table>
		</td>
	</tr>
<!-------------------------------------------------------------------------------->
	<tr>
		<td class='q'><a href=<%=userguide%>#Score onmouseover="return escape('Apply minimum photometruc quality constraint using <i>score</i> in PhotoObjAll table');">Score</a></td>
		<td class='q' colspan='2'><input type=checkbox name=addQA><a href=<%=userguide%>#Score onmouseover="return escape('Return the value of PhotoObjAll.<i>score</i> for each object');">Return value</a></input></td>
		<td class='q' colspan='4'>min score (<i>enter value from 0 to 1, e.g. 0.9</i>)&nbsp;<input type=text id="minQA" name=minQA size=1></td>
	</tr>
<!-------------------------------------------------------------------------------->
<%		
	Response.Write("<tr class='q'><td colspan=8 align=center class=smallbodytext>");
	Response.Write(" (<b>Shift-mouse</b> to select multiple <b>contiguous</b> entries, <b>Ctrl-mouse</b>");
	Response.Write(" to select <b>non-contiguous</b> entries)</td></tr>");
%>
	<tr>
		<td class='q' rowspan=2><a href=<%=userguide%>#objFlags 
			onmouseover="return escape('Apply constraints based on the first set of flags');">Obj Flags</a>
		</td>
		<td class='q' colspan=6>
		  <table>
			<tr>
<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        
        string cmd = "SELECT [name] FROM DataConstants WHERE field='PhotoFlags' ORDER BY value";
        using (SqlCommand oCmd = oConn.CreateCommand())
        {
            oCmd.CommandText = cmd;
            using (SqlDataReader reader = oCmd.ExecuteReader())
            {
                if (!reader.HasRows)
                {
                    Response.Write("<td><b>No PhotoFlags found in DataConstants table</b></td>\n");
                }
                else
                {
                    Response.Write("<td><a href=\"" + url + "/help/docs/QS_UserGuide.aspx#objFlags\" onmouseover=\"return escape('");
                    Response.Write("The bit-wise OR of these flags must be non-zero');\"><strong>At least one of these flags ON</strong></a></td>\n");
                    Response.Write("<td width=20>&nbsp;</td>\n");
                    Response.Write("<td><a href=\"" + url + "/help/docs/QS_UserGuide.aspx#objFlags\" onmouseover=\"return escape('");
                    Response.Write("The bit-wise AND of these flags must be zero');\"><strong>All of these flags OFF</strong></a><br></td></tr>\n");
                    Response.Write("\t<tr>\n\t\t<td><SELECT name=\"flagsOnList\" multiple=\"multiple+\" size=\"5\">\n");
                    Response.Write("\t\t<OPTION value=\"ignore\" selected>ignore</OPTION>\n");
                    List<string> values = new List<string>();
                    while (reader.Read())
                    {
                        
                        values.Add(reader.GetValue(0).ToString());
                    }

                    foreach (string v in values)
                    {
                        Response.Write("\t\t<OPTION value=\"" + v + "\">" + v + "\n");
                    }
                    
                    Response.Write("\t</OPTION></SELECT></td><td>&nbsp;</td>\n");

                    
                    Response.Write("\t\t<td><SELECT name=\"flagsOffList\" multiple=\"multiple+\" size=\"5\">\n");
                    Response.Write("\t\t<OPTION value=\"ignore\" selected>ignore</OPTION>\n");
                    foreach (string v in values)
                    {
                        Response.Write("\t\t<OPTION value=\"" + v + "\">" + v + "\n");
                    }
                    Response.Write("\t</OPTION></SELECT></td>\n");
                }
            } // using DataReader
        } // using SqlCommand
    } // using SqlConnection            
%>
			</tr>
		  </table>
		</td>
	</tr>
<!-------------------------------------------------------------------------------->
	</table>
  </td></tr>

</table>

<table width="100%">
		<tr>
			<!--td align="left"><input id=submit type="submit" value="Submit Request"></td-->
            <td align="left"><input id=SubmitButton type=button style="width:110px;" onclick="goToWindow();runquery();" value="Submit Request"></input></td>
			<td colspan="2">&nbsp;</td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
		</tr>
</table>