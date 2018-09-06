<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ApogeeControl.ascx.cs" Inherits="SkyServer.Tools.Explore.ApogeeControl" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<% if(master.apid != null && !master.apid.Equals("")){ %>
 <div id="irspec">
        <h3>Apogee Infrared Spectra
          <span class="target">Targeted star apogee_id: <%=apogee_id%></span>
        </h3>
        <%if(isData != false){ %>
        <table width="800">
          <tr>
            <td class="h">Instrument</td>
            <td class="t"><b>APOGEE</b></td>
          </tr>
          <tr>
            <td class="h">apstar_id</td>
            <td class="t"><%=apstar_id %></td>
          </tr>
        </table>

        <table width="800">
          <tr>
            <td align="center" class="h" colspan="2" width="50%">Galactic Coordinates</td>
            <td align="center" class="h" colspan="2" width="50%">RA,dec</td>
          </tr>
          <tr>
            <td align="center" class="h">Longitude (L)</td>
            <td align="center" class="h">Latitude (B)</td>
            <td align="center" class="h">Decimal</td>
            <td align="center" class="h">Sexagesimal</td>
          </tr>
          <tr>
            <td align="center" class="t"><%=glon.ToString("F5") %></td>                        
            <td align="center" class="t"><%=glat.ToString("F5") %></td>                     
            <td align="center" class="t"><%=ra.ToString("F5") %>, <%=dec.ToString("F5") %></td>
            <td align="center" class="t"><span class="large"><%=Functions.hmsC(ra) + ", " + Functions.dmsC(dec) %></span></td>
          </tr>
        </table>
            
        <table>
          <tr>
            <td colspan="2">
              <a href="<%=apogeeSpecImage %>"><img src="<%=apogeeSpecImage %>" width="780" height="195" alt="APOGEE infrared spectrum of <%=apogee_id %>" /></a>
            </td>
          </tr>
          <tr>
            <td class="irspeclink">
              <a class="content" href="<%=spectrumLink %>" target="_blank">Interactive spectrum<img src="../../images/new_window_black.png" alt=" (new window)" /></a>
            </td>
            <td class="irspeclink" align="right">
              <a class="content" href="<%=fitsLink %>" target="_blank">Download FITS<img src="../../images/new_window_black.png" alt=" (new window)" /></a>
            </td>
          </tr>
        </table>
        <%}else{ %>               
            <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No Spectrum data found for this object</td></tr>
            </table>     
        <%} %>
        <h3>Targeting Information</h3>
         <%if(isData){ %>    
        <table cellpadding="2" cellspacing="2" border="0" width="800">
          <tr>
            <td align="middle" class="h"><span>2MASS j</span></td>
            <td align="middle" class="h"><span>2MASS h</span></td>
            <td align="middle" class="h"><span>2MASS k</span></td>
            <td align="middle" class="h"><span>j_err</span></td>
            <td align="middle" class="h"><span>h_err</span></td>
            <td align="middle" class="h"><span>k_err</span></td>
          </tr>
          <tr>
            <td nowrap align="middle" class="t"><%=j %></td>
            <td nowrap align="middle" class="t"><%=h %></td>
            <td nowrap align="middle" class="t"><%=k %></td>
            <td nowrap align="middle" class="t"><%=j_err %></td>
            <td nowrap align="middle" class="t"><%=h_err %></td>
            <td nowrap align="middle" class="t"><%=k_err %></td>
          </tr>
        </table>

        <table cellpadding="2" cellspacing="2" border="0" width="800">
          <tr>
            <td align="middle" class="h"><span>4.5 micron magnitude</span></td>
            <td align="middle" class="h"><span>4.5 micron magnitude error</span></td>
            <td align="middle" class="h"><span>4.5 micron magnitude source</span></td>
          </tr>
          <tr>
            <td nowrap align="middle" class="t"><%=mag_4_5 %></td>
            <td nowrap align="middle" class="t"><%=mag_4_5_err %></td>
            <td nowrap align="middle" class="t"><%=src_4_5 %></td>
          </tr>
        </table>

        <table cellpadding="2" cellspacing="2" width="800">
          <tr align="left">
            <td valign="top" class="h">APOGEE target flags 1</td>
            <td valign="top" class="b"><%=apogeeTarget1N %></td>
          </tr>
        </table>

        <table cellpadding="2" cellspacing="2" width="800">
          <tr align="left">
            <td valign="top" class="h">APOGEE target flags 2</td>
            <td valign="top" class="b"><%=apogeeTarget2N %></td>
          </tr>
        </table>
        <%} else { %>

            <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No Targeting data found for this object</td></tr>
            </table>
         <%} %>
        <h3>Stellar Parameters</h3>
          <%if(isData){ %>    
        <table cellpadding="2" cellspacing="2" border="0" width="800">
          <tr>
            <td align="middle" class="h"><span>Avg v<sub>helio</sub> (km/s)</span></td>
            <td align="middle" class="h"><span>Scatter in v<sub>helio</sub> (km/s)</span></td>
            <td align="middle" class="h"><span>Best-fit temperature (K)</span></td>
            <td align="middle" class="h"><span>Temp error</span></td>
          </tr>
          <tr>
            <td nowrap align="middle" class="t"><%=vhelio_avg %></td>
            <td nowrap align="middle" class="t"><%=vscatter %></td>
            <td nowrap align="middle" class="t"><%=teff.ToString("F0") %></td>
            <td nowrap align="middle" class="t"><%=teff_err.ToString("F1") %></td>
          </tr>
        </table>
                
        <table cellpadding="2" cellspacing="2" border="0" width="800">  
          <tr>
            <td align="middle" class="h"><span>Surface Gravity log<sub>10</sub>(g)</span></td>
            <td align="middle" class="h"><span>log(g) error</span></td>
            <td align="middle" class="h"><span>Metallicity [Fe/H]</span></td>
            <td align="middle" class="h"><span>Metal error</span></td>
            <td align="middle" class="h"><span>[&alpha;/Fe]</span></td>
            <td align="middle" class="h"><span>[&alpha;/Fe] error</span></td>
          </tr>
          <tr>
            <td nowrap align="middle" class="t"><%=logg.ToString("F2") %></td>
            <td nowrap align="middle" class="t"><%=logg_err.ToString("F3") %></td>
            <td nowrap align="middle" class="t"><%=param_m_h.ToString("F1") %></td>
            <td nowrap align="middle" class="t"><%=param_m_h_err.ToString("F3") %></td>
            <td nowrap align="middle" class="t"><%=param_alpha_m.ToString("F2") %></td>
            <td nowrap align="middle" class="t"><%=param_alpha_m_err.ToString("F3") %></td>
          </tr>
        </table>
                
        <table cellpadding="2" cellspacing="2" width="800">
          <tr align="left">
            <td valign="top" class="h">Star flags</td>
            <td valign="top" class="b"><%=apogeeStarFlagN %></td>
          </tr>
        </table>

        <table cellpadding="2" cellspacing="2" width="800">
          <tr align="left">
            <td valign="top" class="h">Processing flags (ASPCAP)</td>
            <td valign="top" class="b"><%=apogeeAspcapFlagN %></td>
          </tr>
        </table>
      <%} else { %>

            <table cellpadding=2 cellspacing=2 border=0 width=625>
                  <tr><td class='nodatafound'>No Stellar Parameters found for this object</td></tr>
            </table>
         <%} %>

        <h3 class="sectionlabel">
          Visits (click to see visit spectrum)
          <a id="visits_are_shown" href="javascript:showSection('visits');javascript:showLink('visits_are_hidden');javascript:hideLink('visits_are_shown');" class="showinglink">
            Show
          </a>
          <a id="visits_are_hidden" href="javascript:hideSection('visits');javascript:showLink('visits_are_shown');javascript:hideLink('visits_are_hidden');" class="hidinglink">
            Hide
          </a>
        </h3>

        <div id="visits">
          <table cellpadding="2" cellspacing="2" border="0" width="800">
            <tr>
              <td align="middle" class="h"><span>visit_id</span></td>
              <td align="middle" class="h"><span>plate</span></td>
              <td align="middle" class="h"><span>mjd</span></td>
              <td align="middle" class="h"><span>fiberid</span></td>
              <td align="middle" class="h"><span>date</span></td>
              <td align="middle" class="h"><span>time (UTC)</span></td>
              <td align="middle" class="h"><span>vrel</span></td>
            </tr>

            <% string cellClass = "t";
            foreach (ApogeeVisit v in visits)
            { %>
            <tr>
              <td nowrap align="middle" class="<%=cellClass %>">
                <!--a href="<%=globals.ApogeeSpectrumLink%>?apred_ver=<%=apred_version%>&plateid=<%=v.plate %>&mjd=<%=v.mjd %>&fiber=<%=v.fiberid %>" class="content" target="_blank"-->
                <a href="<%=globals.ApogeeSpectrumLink%>/visits?action=search&plate=<%=v.plate %>&mjd=<%=v.mjd %>&fiberid=<%=v.fiberid %>" class="content" target="_blank">
                  <%= v.visit_id %>&nbsp;<img src="../../images/new_window_black.png" alt=" (new window)" />
                </a>
              </td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.plate %></td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.mjd %></td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.fiberid %></td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.dateobs.Substring(0,10) %></td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.dateobs.Substring(11,12) %></td>
              <td nowrap align="middle" class="<%=cellClass %>"><%=v.vrel %></td>
            </tr>
            <% cellClass = (cellClass == "t") ? "b" : "t"; // Alternating row colors 
            } %>
          </table>                          
        </div>  <!-- end of visits div -->
      </div>  <!-- end of irspec div -->
<%} %>