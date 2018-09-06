<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ImagingControl.ascx.cs"  Inherits="SkyServer.Tools.Explore.ImagingControl" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="SkyServer" %>
<%if(objId != null && !objId.Equals("")) {%>
<div id="imaging">
<h3>Imaging</h3>            

<%  if (clean == 0)  { %>
            <div class="warning">
                <table><tr><td>
                    <b>WARNING:</b> 
                    This object's photometry may be unreliable. See the photometric 
                    <em>flags</em> below.
                </td></tr></table>
            </div>

<% } %>

<table>
    <tr>
        <td>
            <table cellpadding=2 cellspacing=2 border=0 width=420>
                <tr align='left' >
                    <td  valign='top' class='h'>
                        <span title="SDSS flags" >
                            <a href='<%=flagsLink%>'>Flags <img src=../../images/offsite_black.png /></a>
                        </span>
                    </td>
                    <td valign='top' class='t'>
                        <%=flag %>
                    </td>
                </tr>
            </table>
         </td>
     </tr>
</table>

<table>
    <tr>
        <td style="vertical-align:top">
             <% string link = "javascript:showNavi(" + ra + "," + dec + "," + 0.2 + ");"; %>
             <a href="<%= link%>">
                 <img alt="" src="<%= globals.WSGetJpegUrl + "?TaskName=Skyserver.Explore.Image&ra=" + ra + "&dec=" + dec + "&scale=0.2&width=200&height=200&opt=G"%>" border="0" width="200" height="200" />
             </a>
         </td>
        <td >
            <table cellpadding=2 cellspacing=2 border=0 width=420>
                <tr><td align='middle' class='h'><span></span></td></tr>
                <tr><td nowrap align='middle' class='t'><b>Magnitudes</b></td></tr>
            </table>
            <table cellpadding=2 cellspacing=2 border=0 width=420>
                <tr><td align='middle' class='h'><span title="unit=<%=columnUnit.Get("u") %>">u</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("g") %>">g</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("r") %>" >r</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("i") %>" >i</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("z") %>" >z</span></td></tr>
                <tr><td nowrap align='middle' class='t'> <%=u.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=g.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=r.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=i.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=z.ToString("F2") %></td></tr>
            </table>
            <table cellpadding=2 cellspacing=2 border=0 width=420>
                <tr><td align='middle' class='h'><span></span></td></tr>
                <tr><td nowrap align='middle' class='t'><b>Magnitude uncertainties</b></td></tr>
            </table>
            <table cellpadding=2 cellspacing=2 border=0 width=420>
                <tr><td align='middle' class='h'><span title="unit=<%=columnUnit.Get("err_u") %>" >err_u</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("err_g") %>" >err_g</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("err_r") %>" >err_r</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("err_i") %>" >err_i</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("err_z") %>" >err_z</span></td></tr>
                <tr><td nowrap align='middle' class='t'> <%=err_u.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=err_g.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=err_r.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=err_i.ToString("F2") %></td>
                    <td nowrap align='middle' class='t'> <%=err_z.ToString("F2") %></td></tr>
              </table>       
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <table cellpadding=2 cellspacing=2 border=0 width=625>
               <tr><td align='middle' class='h'><span title="unit=<%=columnUnit.Get("mjd") %>" >Image MJD</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("mode")%>" >mode</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("nDetect")%>" >Other observations</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("parentID")%>" >parentID</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("nChild")%>" >nChild</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("extinction_r")%>" >extinction_r</span></td>
                   <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("petroRad_r")%>" >PetroRad_r (arcsec)</span></td>
               </tr>
               <tr><td nowrap align='middle' class='t'><%=mjdNum %></td>
                   <td nowrap align='middle' class='t'><%=mode %></td>
                   <td nowrap align='middle' class='t'><%=otherObs %></td>
                   <td nowrap align='middle' class='t'><%=parentId %></td>
                   <td nowrap align='middle' class='t'><%=nchild %></td>
                   <td nowrap align='middle' class='t'><%=extinction_r %></td>
                   <td nowrap align='middle' class='t'><%=petrorad_r %></td>
               </tr>
            </table>
            <table cellpadding=2 cellspacing=2 border=0 width=625>
                <tr>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("mjd") %>" >Mjd-Date</span></td>
                    <td align='middle' class='h'><span title="unit=<%=columnUnit.Get("z") %>" >photoZ (KD-tree method)</span></td>
                    <%--<td align='middle' class='h'><span title="unit=<%=columnUnit.Get("z") %>" >photoZ (RF method)</span></td>--%>
                    <td align='middle' class='h'><span>Galaxy Zoo 1 morphology</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=mjdDate %></td>
                    <td nowrap align='middle' class='t'><%=photoZ_KD %></td>
                    <%--<td nowrap align='middle' class='t'><%=photoZ_RF %></td>--%>
                    <td nowrap align='middle' class='t'><%=galaxyZoo_Morph %></td>
                </tr>
            </table>                            
          </td>
        </tr>
     </table>
   </div>   
  <%--  <!-- end of imaging div  -->--%>
<%} %>
