<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MetaDataControl.ascx.cs" Inherits="SkyServer.Tools.Explore.MetaDataControl" %>
<%@ Import Namespace="SkyServer" %>
<%if(master.objId != null && !master.objId.Equals("")) {%>
 <div id="metadata">
    <table class="content">
        <tr>
            <td colspan="2">
                <h1 id="sdssname"><%= Functions.SDSSname(ra, dec)%></h1>
                <table >
                    <tr>
                        <td>
                        <h4 id="othernames">&nbsp;<input type="button" onclick=" findOtherNames(<%=ra%>, <%=dec%>);" value="Look up common name" /> </h4> 
                        </td>
                        <td><h4> &nbsp;&nbsp;&nbsp; <%=OtherObsText%> </h4></td>
                    </tr>
                </table>
            </td>
            
        </tr>
        <tr>
            <td>
                <table width="620">
                    <tr>
                        <td align="center" class="h" colspan="2">Type</td>
                        <td align="center" class="h" colspan="2">run</td>
                        <td align="center" class="h" colspan="2">rerun</td>
                        <td align="center" class="h" colspan="2">camcol</td>
                        <td align="center" class="h" colspan="2">field</td>
                        <td align="center" class="h" colspan="2">obj</td>
                        <td align="center" class="h" colspan="2">SDSS ObjID</td>
                    </tr>
                    <tr>
                        <td class="t" align="center" colspan="2"><b><%=otype%></b></td>
                        <td class="t" align="center" colspan="2"><%=run%></td>
                        <td class="t" align="center" colspan="2"><%=rerun%></td>
                        <td class="t" align="center" colspan="2"><%=camcol%></td>
                        <td class="t" align="center" colspan="2"><%=field%></td>
                        <td class="t" align="center" colspan="2"><%=obj%></td>
                        <td class="t" align="center" colspan="2"><%=master.id%></td>
                    </tr>
                </table>
                <table width="620">
                    <tr>
                        <td class="h" align="center" colspan="2">RA, Dec</td>
                        <td class="h" align="center" colspan="2">Galactic Coordinates (<i>l</i>, <i>b</i>)</td>
                    </tr>
                    <tr>
                        <td align="center" class="h">Decimal</td>
                        <td align="center" class="h">Sexagesimal</td>
                        <td align="center" class="h"><i>l</i></td>
                        <td align="center" class="h"><i>b</i></td>
                    </tr>
                    <tr>
                        <td align="center" class="t">
                            <script type="text/javascript" language="javascript">
                                var thera = new Number(<%=ra%>);
                                var thedec = new Number(<%=dec%>);
                                document.write(thera.toFixed(9) + ', ' + thedec.toFixed(9));
                            </script>
                        </td>
                        <td align="center" class="t">
                            <span class="large"><%= Functions.hmsC(ra) + ", " + Functions.dmsC(dec)%></span>
                        </td>
                        <td align="center" class="t">
                            <script type="text/javascript" language="javascript">
                                var L = new Number(<%=Utilities.ra2glon(ra, dec)%>);
                                document.write(L.toFixed(9));
                            </script>
                        </td>
                        <td align="center" class="t">
                            <script type="text/javascript" language="javascript">
                                var B = new Number(<%=Utilities.dec2glat(ra, dec)%>);
                                document.write(B.toFixed(9));
                            </script>
                        </td>
                    </tr>
                 </table>
              </td>
        </tr>
    </table>
       </div> <!-- end of metadata div -->

<%}else{%>
            <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <%--<tr><td class='nodatafound'>Object is out of SDSS footprint</td></tr>--%>                 
            <%  if (String.IsNullOrEmpty(master.apid) && String.IsNullOrEmpty(master.specObjId)) {%>
                <tr><td class='nodatafound'>The object corresponding to the specified input does not exist in the database.<br> Please try another object.</td></tr>
            <% } else if (!String.IsNullOrEmpty(master.apid) || !String.IsNullOrEmpty(master.specObjId)) {%>
                <tr><td class='nodatafound'>There is no image corresponding to the specified id in the SDSS imaging data.</td></tr>
            <% }%>
            </table>
<%}%>