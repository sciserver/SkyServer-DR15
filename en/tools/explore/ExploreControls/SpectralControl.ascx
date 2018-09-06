<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SpectralControl.ascx.cs" Inherits="SkyServer.Tools.Explore.SpectralControl" %>
<%if(specId !=null && !specId.Equals("")){  %>
 <div id="spectro">

   <h3>Optical Spectra</h3>
      
    <div class="infobox">
        <table width="100%">
            <tr>
                <td width="60%">
                  <p><b> SpecObjID = <%=specObjId%></b></p>                
                </td>
                <td width="40%">
                    <% string spectrumlink = globals.DasUrl + "optical/spectrum/view?plateid=" + plate + "&mjd=" + mjd + "&fiberid=" + fiberid + "&run2d=" + run2d; %>
                    <p><b>
                      <a class='content' href="<%=spectrumlink%>"  target='_blank'>
                          Interactive spectrum<img src='../../images/new_window_black.png' alt=' (new window)' />
                       </a>
                    </b></p>
                </td>
            </tr>
        </table>
   </div>
   <table class="content">
        <tr>
            <%             
                    string instrumentLink = globals.SdssUrlBase + "instruments";            
            %>
	   	      <td>             
		            <a href="../../get/SpecById.ashx?id=<%= specObjId %>">
		                <img alt="" src="../../get/SpecById.ashx?id=<%= specObjId %>" width="316" height="253" border="0" align="left" />
		            </a>
              </td>
              <td>                     
                 <table cellpadding=2 cellspacing=2 border=0 width=300>
                   
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Spectrograph</span></td>
                       <td valign='top' class='t'><%=instrument %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>class</span></td>
                       <td valign='top' class='t'><%=objclass %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Redshift (z)</span></td>
                       <td valign='top' class='t'><%=redshift_z.ToString("F3") %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Redshift error</span></td>
                       <td valign='top' class='t'><%=redshift_err.ToString("F5") %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Redshift flags</span></td>
                       <td valign='top' class='t'><%=redshift_flags %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>survey</span></td>
                       <td valign='top' class='t'><%=survey %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>programname</span></td>
                       <td valign='top' class='t'><%=programname %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>primary</span></td>
                       <td valign='top' class='t'><%=primary %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Other spec</span></td>
                       <td valign='top' class='t'><%=otherspec %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>sourcetype</span></td>
                       <td valign='top' class='t'><%=sourcetype %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>Velocity dispersion (km/s)</span></td>
                       <td valign='top' class='t'><%=veldisp.ToString("F2") %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>veldisp_error</span></td>
                       <td valign='top' class='t'><%=veldisp_err.ToString("F3") %></td>
                   </tr>
                   <tr align='left' >
                       <td  valign='top' class='h'><span>targeting_flags</span></td>
                       <td valign='top' class='t'><%=targeting_flags %></td>
                   </tr>
                     <tr align='left' >
                       <td  valign='top' class='h'><span>plate</span></td>
                       <td valign='top' class='t'><%=plate %></td>
                   </tr>
                  <tr align='left' >
                      <td  valign='top' class='h'><span>mjd</span></td>
                      <td valign='top' class='t'><%=mjd %></td>
                  </tr>
                  <tr align='left' >
                      <td  valign='top' class='h'><span>fiberid</span></td>
                      <td valign='top' class='t'><%=fiberid %></td>
                  </tr>
                 </table>
	   	      </td>            
        </tr>   
    </table> 
</div>  <!-- end of spectro div -->
<%} %>
