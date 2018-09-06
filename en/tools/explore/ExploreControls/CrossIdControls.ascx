<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CrossIdControls.ascx.cs" Inherits="SkyServer.Tools.Explore.CrossIdControls" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="SkyServer" %>

<%if (objId != null && !objId.Equals("")){ %>
<h3 class="sectionlabel" id="crossidtop">Cross-identifications
    <a id="crossid_is_shown" href="javascript:showSection('crossid');javascript:showLink('crossid_is_hidden');javascript:hideLink('crossid_is_shown');" class="showinglink">
      Show
    </a>
    <a id="crossid_is_hidden" href="javascript:hideSection('crossid');javascript:showLink('crossid_is_shown');javascript:hideLink('crossid_is_hidden');" class="hidinglink">
       Hide
    </a>
</h3>

<div id="crossid"> 
<table class="content">
    <tr>
        <td>     
            <%
                  if (isUSNO)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>Proper motion (mas/yr)</span></td>
                    <td align='middle' class='h'><span>PM angle (deg E)</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=usno%></td>
                    <td nowrap align='middle' class='t'><%=properMotion%></td>
                    <td nowrap align='middle' class='t'><%=angle.ToString("F2")%></td>
                </tr>
            </table>
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in USNO</td></tr>
            </table>
             <%} if (isFIRST)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>Peak flux (mJy)</span></td>
                    <td align='middle' class='h'><span>Major axis (arcsec)</span></td>
                    <td align='middle' class='h'><span>Minor axis (arcsec)</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=first%></td>
                    <td nowrap align='middle' class='t'><%=peakflux%></td>
                    <td nowrap align='middle' class='t'><%=major%></td>
                    <td nowrap align='middle' class='t'><%=minor%></td>
                </tr>
            </table>
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in FIRST</td></tr>
            </table>
            <%} if (isROSAT)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>cps</span></td>
                    <td align='middle' class='h'><span>hr1</span></td>
                    <td align='middle' class='h'><span>hr2</span></td>
                    <td align='middle' class='h'><span>ext</span></td>
                </tr>
                <tr>
                     <td nowrap align='middle' class='t'><%=rosat%></td>
                    <td nowrap align='middle' class='t'><%=cps%></td>
                    <td nowrap align='middle' class='t'><%=hr1%></td>
                    <td nowrap align='middle' class='t'><%=hr2%></td>
                    <td nowrap align='middle' class='t'><%=ext%></td>
                </tr>
            </table>
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in ROSAT</td></tr>
            </table>
            <%} if (isRC3)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>Hubble type</span></td>
                    <td align='middle' class='h'><span>21 cm magnitude</span></td>
                    <td align='middle' class='h'><span>Neutral Hydrogen Index</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=rc3%></td>
                    <td nowrap align='middle' class='t'><%=hubletype%></td>
                    <td nowrap align='middle' class='t'><%=magnitude%></td>
                    <td nowrap align='middle' class='t'><%=hydrogenIndex%></td>
                </tr>
            </table>
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in RC3</td></tr>
            </table>
            <%} if (is2MASS)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>J</span></td>
                    <td align='middle' class='h'><span>H</span></td>
                    <td align='middle' class='h'><span>K_s</span></td>
                    <td align='middle' class='h'><span>phQual</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=twomass%></td>
                    <td nowrap align='middle' class='t'><%=j%></td>
                    <td nowrap align='middle' class='t'><%=h%></td>
                    <td nowrap align='middle' class='t'><%=k%></td>
                    <td nowrap align='middle' class='t'><%=phQual%></td>
                </tr>
            </table>
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in 2MASS</td></tr>
            </table>
            <%} if (isWISE)
                  { %>
            <table cellpadding=2 cellspacing=2 border=0 width=620>
                <tr>
                    <td align='middle' class='h'><span>Catalog</span></td>
                    <td align='middle' class='h'><span>w1mag</span></td>
                    <td align='middle' class='h'><span>w2mag</span></td>
                    <td align='middle' class='h'><span>w3mag</span></td>
                    <td align='middle' class='h'><span>w4mag</span></td>
                    <td align='middle' class='h'><span>Full WISE data</span></td>
                </tr>
                <tr>
                    <td nowrap align='middle' class='t'><%=wise%></td>
                    <td nowrap align='middle' class='t'><%=wmag1%></td>
                    <td nowrap align='middle' class='t'><%=wmag2%></td>
                    <td nowrap align='middle' class='t'><%=wmag3%></td>
                    <td nowrap align='middle' class='t'><%=wmag4%></td>
                    <td nowrap align='middle' class='t'><a href="<%=linkQuery%>">Link</a></td>                   
                </tr>
            </table>
            
            <%}
                  else
                  {%>
             <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No data found for this object in WISE</td></tr>
            </table>
            <%}%>
             
        </td>
    </tr>
</table></div>  <%} %>