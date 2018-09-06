<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QS_Spectro.ascx.cs" Inherits="SkyServer.Tools.Search.QS_Spectro" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace=" SkyServer.Tools.Search" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<table cellspacing='3' cellpadding='3' class='frame'>
<tr><td align=middle>
	<a class='qtitle' href=<%=userguide%>#SpectroscopyConstraints
		onmouseover="return escape('Apply constraints based on spectroscopic data on the objects returned by the query');">
		Spectroscopy Constraints</a></td>
</tr>
<tr><td>

  <table border=0 cellpadding=4 cellspacing=4 width=100%>
  <tr>
	<td class='q' rowspan=2 align=center width=75>
		<a href=<%=userguide%>#Redshift
		onmouseover="return escape('Apply constraints based on redshift');">
		Redshift, </a> <br>
		<a href=<%=userguide%>#SpectralClassification
		onmouseover="return escape('Apply constraints based upon spectroscopically classified object type');">
		Classification</a>
	</td>
	<td class='q'>min</td>
	<td class='q'>
		<table><tr>
		<td><a href=<%=userguide%>#Redshift
			onmouseover="return escape('minimum redshift');">redshift</a></td>
		<td><input type=text id="redshiftMin" name=redshiftMin size=2 class='mag'></td>
		</tr></table>
	</td>
	<td class='q' rowspan=2 align=center>
          <table>
		  <tr valign=top>
			<td><a href=<%=userguide%>#Redshift
			   onmouseover="return escape('Redshift warning flag(s).  Unchecking this will remove the constraint that the redshift should have no warnings associated with it.');">Redshift Warning Flags</a></td>
		  </tr>
		  <tr>
		      <td><input type=checkbox name=zWarning class='mag' checked>No warnings</input></td>
		  </tr></table>
	</td>
	<td class='q' rowspan=2>
		<a href=<%=userguide%>#SpectralClassification
		onmouseover="return escape('Apply constraints based upon spectroscopically classified object type');">Classification</a><br>
		<select size=4 name=class multiple=multiple>
		<option>ALL</option>
		<option>STAR</option>
		<option>GALAXY</option>
		<option>QSO</option>
		</select>
	</td>
  </tr>
  <tr>
	<td class='q'>max</td>
	<td class='q'>
		<table><tr>
		<td><a href=<%=userguide%>#Redshift
			onmouseover="return escape('maximum redshift');">redshift</a></td>
		<td><input type=text id="redshiftMax" name=redshiftMax size=2 class='mag'></td>
		</tr></table>
	</td>
  </tr>  
  </table>

  <table border=0 cellpadding=4 cellspacing=4 width=100%>
<tr class='q'><td colspan=5 align=center class=smallbodytext>
(<b>Shift-mouse</b> to select multiple <b>contiguous</b> entries, <b>Ctrl-mouse</b>
    to select <b>non-contiguous</b> entries)</td></tr>

  <tr>
	<td class='q' align=center width=75>
		<a href=<%=userguide%>#Primtarget
		onmouseover="return escape('Apply constraints based upon primary target selection bits');">
		Target Flags<br>(PRIMTARGET)</a>
	</td>
<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        
        using (SqlCommand oCmd = oConn.CreateCommand())
        {
            string cmd = "SELECT [name] FROM DataConstants WHERE field='PrimTarget' ORDER BY value";
            oCmd.CommandText = cmd;
            using (SqlDataReader reader = oCmd.ExecuteReader())
            {
                if (!reader.HasRows)
                {
                    %>
                    <td colspan=4><b>No PrimTarget flags found in DataConstants table</b></td>
                    <%
                }
                else
                {
        %>
                   <td class='q' colspan=2><a href="<%=url %>/help/docs/QS_UserGuide.aspx#PrimTarget" onmouseover="return escape('The bit-wise OR of all these bits must be greater than 0.');">
                   <strong>At least one of these bits ON</strong></a><br>
                   <SELECT name="priFlagsOnList" multiple="multiple+" size="5">
                   <OPTION value="ignore" selected>ignore</OPTION>
        <%
                    List<string> values = new List<string>();
                    while (reader.Read())
                    {
                        values.Add(reader.GetSqlValue(0).ToString());
                    }
                    foreach (string v in values)
                    {
                        
         %>               
                        <OPTION value="<%=v %>"> <%=v%>
         <%
                    }
         %>
                   </OPTION></SELECT>
                   </td><td class='q' colspan=2><a href="<%=url %>/help/docs/QS_UserGuide.aspx#PrimTarget" onmouseover="return escape('The bit-wise AND of all these bits must be equal to 0.');"><strong>All of these bits OFF</strong></a><br>
                   <SELECT name="priFlagsOffList" multiple="multiple+" size="5">
                    <OPTION value="ignore" selected>ignore</OPTION>
        <%
                    foreach (string v in values)
                    {
        %>
                        <OPTION value="<%=v %>"> <%=v %> 
        <%
                    }
        %>
                    </OPTION></SELECT>
                    </td>
        <%
                }
            } // using SqlDataReader
        } // using SqlCommand
    
%>
  </tr>
  <tr>
	<td class='q' align=center width=75> 
		<a href=<%=userguide%>#Sectarget 
		onmouseover="return escape('Apply constraints based upon secondary target selection bits');">
		Target Flags<br>(SECTARGET)</a>
	</td>
<%  
      using (SqlCommand oCmd = oConn.CreateCommand())
        {
            string cmd = "SELECT [name] FROM DataConstants WHERE field='SecTarget' ORDER BY value";
            oCmd.CommandText = cmd;
            using (SqlDataReader reader = oCmd.ExecuteReader())
            {
                 if (!reader.HasRows)
                {
      %>
                   <td colspan=4><b>No SecTarget flags found in DataConstants table</b></td>
      <%
                }
                else
                {
       %>
                    <td class='q' colspan=2><a href="<%=url %>/help/docs/QS_UserGuide.aspx#SecTarget" onmouseover="return escape('The bit-wise OR of all these bits must be greater than 0.');"><strong>At least one of these bits ON</strong></a><br>
                    <SELECT name='secFlagsOnList' multiple='multiple+' size=5>
                    <OPTION value="ignore" selected>ignore</OPTION>
        <%
                    List<string> values = new List<string>();
                    while (reader.Read())
                    {
                        values.Add(reader.GetValue(0).ToString());
                    }

                    foreach (string v in values)
                    {
          %>
                        <OPTION value='<%=v %>'><%=v %>
          <%
                    }
          %>
                    </OPTION></SELECT>

                    </td><td class='q' colspan=2><a href="<%=url%>/help/docs/QS_UserGuide.aspx#SecTarget" onmouseover="return escape('The bit-wise AND of all these bits must be equal to 0.');"><strong>All of these bits OFF</strong></a><br>

                    <SELECT name="secFlagsOffList" multiple="multiple+" size="5">
                    <OPTION value="ignore" selected>ignore</OPTION>
            <%        foreach (string v in values)
                    {
            %>           <OPTION value="<%=v %>"><%=v %>
            <%        }
             %>      </OPTION></SELECT></td>
      <%
                }
            } // using SqlDataReader
        } // using SqlCommand
      %>
        </tr>

  <tr>
	<td class='q' align=center width=75> 
		<a href=<%=userguide%>#BossTarget 
		onmouseover="return escape('Apply constraints based upon BOSS target selection information bits at plate');">
		BOSS Flags<br>(BossTarget1)</a>
	</td>
<%  
      using (SqlCommand oCmd = oConn.CreateCommand())
        {
            string cmd = "SELECT [name] FROM DataConstants WHERE field='BossTarget1' ORDER BY value";
            oCmd.CommandText = cmd;
            using (SqlDataReader reader = oCmd.ExecuteReader())
            {
                 if (!reader.HasRows)
                {
      %>
                   <td colspan=4><b>No BossTarget1 flags found in DataConstants table</b></td>
      <%
                }
                else
                {
       %>
                    <td class='q' colspan=2><a href="<%=url %>/help/docs/QS_UserGuide.aspx#BossTarget" onmouseover="return escape('The bit-wise OR of all these bits must be greater than 0.');"><strong>At least one of these bits ON</strong></a><br>
                    <SELECT name='bossFlagsOnList' multiple='multiple+' size=5>
                    <OPTION value="ignore" selected>ignore</OPTION>
        <%
                    List<string> values = new List<string>();
                    while (reader.Read())
                    {
                        values.Add(reader.GetValue(0).ToString());
                    }

                    foreach (string v in values)
                    {
          %>
                        <OPTION value='<%=v %>'><%=v %>
          <%
                    }
          %>
                    </OPTION></SELECT>

                    </td><td class='q' colspan=2><a href="<%=url%>/help/docs/QS_UserGuide.aspx#BossTarget" onmouseover="return escape('The bit-wise AND of all these bits must be equal to 0.');"><strong>All of these bits OFF</strong></a><br>

                    <SELECT name="bossFlagsOffList" multiple="multiple+" size="5">
                    <OPTION value="ignore" selected>ignore</OPTION>
            <%        foreach (string v in values)
                    {
            %>           <OPTION value="<%=v %>"><%=v %>
            <%        }
             %>      </OPTION></SELECT></td>
      <%
                }
            } // using SqlDataReader
        } // using SqlCommand
      %>
        </tr>

  <tr>
	<td class='q' align=center width=75> 
		<a href=<%=userguide%>#EbossTarget 
		onmouseover="return escape('Apply constraints based upon EBOSS target selection information bits at plate');">
		EBOSS Flags<br>(EbossTarget0)</a>
	</td>
<%  
      using (SqlCommand oCmd = oConn.CreateCommand())
        {
            string cmd = "SELECT [name] FROM DataConstants WHERE field='EbossTarget0' ORDER BY value";
            oCmd.CommandText = cmd;
            using (SqlDataReader reader = oCmd.ExecuteReader())
            {
                 if (!reader.HasRows)
                {
      %>
                   <td colspan=4><b>No EbossTarget1 flags found in DataConstants table</b></td>
      <%
                }
                else
                {
       %>
                    <td class='q' colspan=2><a href="<%=url %>/help/docs/QS_UserGuide.aspx#EbossTarget" onmouseover="return escape('The bit-wise OR of all these bits must be greater than 0.');"><strong>At least one of these bits ON</strong></a><br>
                    <SELECT name='ebossFlagsOnList' multiple='multiple+' size=5>
                    <OPTION value="ignore" selected>ignore</OPTION>
        <%
                    List<string> values = new List<string>();
                    while (reader.Read())
                    {
                        values.Add(reader.GetValue(0).ToString());
                    }

                    foreach (string v in values)
                    {
          %>
                        <OPTION value='<%=v %>'><%=v %>
          <%
                    }
          %>
                    </OPTION></SELECT>

                    </td><td class='q' colspan=2><a href="<%=url%>/help/docs/QS_UserGuide.aspx#EbossTarget" onmouseover="return escape('The bit-wise AND of all these bits must be equal to 0.');"><strong>All of these bits OFF</strong></a><br>

                    <SELECT name="ebossFlagsOffList" multiple="multiple+" size="5">
                    <OPTION value="ignore" selected>ignore</OPTION>
            <%        foreach (string v in values)
                    {
            %>           <OPTION value="<%=v %>"><%=v %>
            <%        }
             %>      </OPTION></SELECT></td>
      <%
                }
            } // using SqlDataReader
        } // using SqlCommand
      %>
        </tr>
        
<%        
    } // using SqlConnection
%>
  



  </table>

<table width="100%">
		<tr>
			<!--td align="left"><input id=submit type="submit" value="Submit Request"></td-->
            <td align="left"><input id=SubmitButton type=button style="width:110px;" onclick="goToWindow();runquery();" value="Submit Request"></input></td>
			<td colspan="2">&nbsp;</td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
		</tr>
</table>
