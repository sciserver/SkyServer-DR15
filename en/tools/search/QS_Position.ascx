<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QS_Position.ascx.cs" Inherits="SkyServer.Tools.Search.QS_Position" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<table cellspacing='3' cellpadding='3' width=640 class='frame'>
<tr><td align=middle >
		<a class='qtitle' href="<%=userguide%>#PositionConstraint" 
			onmouseover="return escape('Apply positional constraints on the objects returned by the query');">
		Position Constraints</a></td>
</tr>
<tr><td>

  <table border=0 cellpadding=4 cellspacing=4 width=100%>

      <% if (queryType == "irspec")     // if this is the irspec page, only show cone search constraints
         { %>
        <tr>
	        <td class='q'> 
		        <table><tr>
			        <td><input type=radio name=positionType id="positionType_cone" value=cone checked></td>
			        <td><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('Search within a given radius of a position');">RA / Dec</a></td>
		        </tr></table>
	        </td>
	        <td class='q'>center</td>
	        <td class='q' width=100>
		        <table width=100%><tr>
			        <td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');">ra</a></td>
			        <td align=right><input class='pos' type=text name=ra id="ra" size=3 value="197.61445"></td>
		        </tr></table>
	        </td>
		
	        <td class='q' width=100>
		        <table width=100%><tr>
			        <td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');">dec</a></td>
			        <td align=right><input class='pos' type=text name=dec id="dec"  size=3 value="18.43816"></td>
		        </tr></table>
	        </td>
	        <td class='q'>
		        <table><tr>
			        <td><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  M.mmm (arcmin)');">radius</a></td>
			        <td><input type=text name=radius id="radius" size=2 value=5.0>&nbsp;&nbsp;arcmin &nbsp;<i>(max 30')</i></td>
		        </tr></table>
        </tr>

      <tr>
	        <td class='q'> 
		        <table><tr>
			        <td><input type=radio name=positionType id="positionType_conelb" value=conelb></td>
			        <td onmouseover="return escape('Search within a given radius of a position');">Galactic<br />Coordinates</td>
		        </tr></table>
	        </td>
	        <td class='q'>center</td>
	        <td class='q' width=100>
		        <table width=100%><tr>
			        <td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');"><i>l</i></a></td>
			        <td align=right><input class='pos' type=text name=Lcenter id="Lcenter" size=3 value="330.6607"></td>
		        </tr></table>
	        </td>
		
	        <td class='q' width=100>
		        <table width=100%><tr>
			        <td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');"><i>b</i></a></td>
			        <td align=right><input class='pos' type=text name=Bcenter id="Bcenter" size=3 value="80.2696"></td>
		        </tr></table>
	        </td>
	        <td class='q'>
		        <table><tr>
			        <td><a href=<%=userguide%>#PositionConeConstraint 
				        onmouseover="return escape('FORMAT:  M.mmm (arcmin)');">radius</a></td>
			        <td><input type=text name=lbRadius id="lbRadius" size=2 value=5.0>&nbsp;&nbsp;arcmin &nbsp;<i>(max 30')</i></td>
		        </tr></table>
        </tr>
          <tr>
	        <td rowspan='2' class='q'> 
		        <table><tr>
		        <td><input type=radio name=positionType id="positionType_none" value=none></td>
		        <td><a href=<%=userguide%>#NoPositionConstraint 
			        onmouseover="return escape('No Position Constraint');">None</a></td>
		        </tr></table>
	        </td>
	        <td colspan='4' class='q'><i><b>No position constraint</b></i></td>
          </tr>
          </table>
      <% } else { %>

  <tr>
	<td rowspan='2' class='q'> 
		<table><tr>
		<td><input type=radio name=positionType id="positionType_rectangular" value=rectangular></td>
		<td><a href=<%=userguide%>#PositionRectangularConstraint 
			onmouseover="return escape('Search a rectangular area bounded in RA and Dec');">Rectangle</a></td>
		</tr></table>
	</td>
	<td class='q' width=40>min</td>
	<td class='q' width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionRectangularConstraint 
				onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');">ra</a></td>
			<td align=right><input class='pos' type=text name=raMin id="raMin" size=3 value=<%=qsRaCenter%> /></td>
		</tr></table>
	</td>
	<td class='q' width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionRectangularConstraint 
				onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');">dec</a></td>
			<td align=right><input class='pos' type=text name=decMin id="decMin" size=3 value="0.20"></td>
		</tr></table>
	</td>
	<td class='q' rowspan='2'>
		&nbsp;&nbsp;&nbsp;<i>(max 10 square degrees)</i>
	</td>
  </tr>
  <tr>
	<td class='q'>max</td>
	<td class='q'  width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionRectangularConstraint 
				onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');">ra</a></td>
			<td align=right><input class='pos' type=text name=raMax id="raMax" size=3 value=<%=qsRaCenter+0.2%> /></td>
		</tr></table>
	</td>
	<td class='q' width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionRectangularConstraint 
				onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');">dec</a></td>
			<td align=right><input class='pos' type=text name=decMax id="decMax" size=3 value="0.22"></td>
		</tr></table>
	</td>
</tr>

<tr>
	<td class='q'> 
		<table><tr>
			<td><input type=radio name=positionType id="positionType_cone" value=cone checked></td>
			<td><a href=<%=userguide%>#PositionConeConstraint 
				onmouseover="return escape('Search within a given radius of a position');">Cone</a></td>
		</tr></table>
	</td>
	<td class='q'>center</td>
	<td class='q' width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');">ra</a></td>
			<td align=right><input class='pos' type=text name=ra id="ra" size=3 value=<%=qsRaCenter%>></td>
		</tr></table>
	</td>
		
	<td class='q' width=100>
		<table width=100%><tr>
			<td width='45'><a href=<%=userguide%>#PositionConeConstraint 
				onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');">dec</a></td>
			<td align=right><input class='pos' type=text name=dec id="dec" size=3 value=0.2></td>
		</tr></table>
	</td>
	<td class='q'>
		<table><tr>
			<td><a href=<%=userguide%>#PositionConeConstraint 
				onmouseover="return escape('FORMAT:  M.mmm (arcmin)');">radius</a></td>
			<td><input type=text name=radius id="radius" size=2 value=5.0>&nbsp;&nbsp;arcmin &nbsp;<i>(max 30')</i></td>
		</tr></table>
</tr>
<tr> 
	<td class='q'>
		<table><tr>
			<td><input type=radio name=positionType id="positionType_proximity" value=proximity></td>
			<td><a href=<%=userguide%>#PositionProximityConstraint 
				onmouseover="return escape('Search near a set of positions');">Proximity</a></td>
		</tr></table>
	</td>
	<td class='q' colspan=3>
		List of <a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('FORMAT:  D.ddddd, HH:MM:SS.ss, or HH MM SS.ss (J2000)');">ra</a>,
			<a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('FORMAT:  sD.ddddd, sDD:MM:SS.ss, or sDD MM SS.ss (J2000)');">dec</a>[,
			<a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('FORMAT:  S.ss (arcmin)');">radius</a>]<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(max 100 obj)</i><br> 
	<textarea class='txt' name=radecTextarea rows=4 cols=22>ra,dec,sep
256.443154,58.0255,1.0
29.94136,0.08930,1.0
</textarea>
	</td>
	<td class='q'>
		<table>
		<tr>
		<td><input type="radio" name=searchNearBy  value="nearest" Checked><a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('Returns only the nearest Object to the given radius');">&nbsp;Nearest Only&nbsp;</td>
		<td><input type="radio" name=searchNearBy  value="nearby"><a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('Returns all nearby Objects to the given radius');">&nbsp;All Nearby&nbsp;</td>
		</tr>
		<tr></tr>
		<tr></tr>
		</table>
		<table>
		<tr>
			<td><a href=<%=userguide%>#PositionProximityConstraint 
			onmouseover="return escape('FORMAT:  S.ss (arcmin)');">radius</td>
			<td><input type=text size=2 name=radiusDefault id="proximity_radius" value=1.0>&nbsp;arcmin&nbsp;<i>(max 10')</i></td>
		</tr></table>
		<br>&nbsp;Upload File<br><input class='name' size=9 type=file name=radecFilename>&nbsp;  
	</td>
  </tr>
  <tr>
	<td rowspan='2' class='q'> 
		<table><tr>
		<td><input type=radio name=positionType id="positionType_none" value=none></td>
		<td><a href=<%=userguide%>#NoPositionConstraint 
			onmouseover="return escape('No Position Constraint');">None</a></td>
		</tr></table>
	</td>
	<td colspan='3' class='q'><i><b>No position constraint</b></i></td>
  </tr>
  </table>
    <% } %>
<table width="100%">
		<tr>
			<!--td align="left"><input id=submit type="submit" value="Submit Request"></td-->
            <td align="left"><input id=SubmitButton type=button style="width:110px;" onclick="goToWindow();runquery();" value="Submit Request"></input></td>
			<td colspan="2">&nbsp;</td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
		</tr>
</table>
