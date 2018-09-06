<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MetaDataControl.ascx.cs" Inherits="SkyServer.Tools.QuickLook.MetaDataControl" %>
<%@ Import Namespace="SkyServer" %>
<%if(master.objId != null && !master.objId.Equals("")) {%>
 <div id="metadata">


	<table border='0' width='640' class="content">
	<tr>	
	<td colspan=2 align='center'>
        <h2><font color=#000086>Summary data for:&nbsp;&nbsp;<%= name %> </font></h2>
        <h2>Position Data (How do I find it?)</h2>
        <table width='640' border='0' cellpadding='3' cellspacing='3'>
        <tr>
            <td width='33%' class='h' align=center>
                Object ID&nbsp;&nbsp;(objID):
            </td>
            <td width='33%' class='h' align=center>
                Right ascension&nbsp;&nbsp;(ra):
            </td>
            <td width='33%' class='h' align=center>
                Declination&nbsp;&nbsp;(dec):
            </td>
        </tr>
        <tr>
            <td align='center' width='33%' class='t'><%= id %></td>
            <td align='center' width='33%' class='t'><%= ra %></td>
            <td align='center' width='33%' class='t'><%= dec %></td>
        </tr>
        </table>
        <table width='640' border='0'>
            <tr>
                <td align='center' valign='top' width='50%'>
                    <h2><b>Image Data</b></font><br><font size=+0><b>(What does it look like?)</h2>
                </td>
                <td align='center' valign='top' width='50%'>
                    <h2>Spectrum Data</b></font><br /><font size='+0'><b>(What does its spectrum look like?)</h2>
                </td>
            </tr>
            <tr>
                <td align='center' valign='top' width='50%'>
                    <p><b>Preview image (click to go to Navigate tool)</b></p>
                    <a href='<%= naviLink %>'>
                    <img alt='An image of this object' align='center' src='<%= (globals.WSGetJpegUrl + "?TaskName=Skyserver.QuickLook.Image&ra="+ra+"&dec="+dec+"&scale=0.2&width=200&height=200&opt=G") %>' border='0' width='200' height='200'/>
                    </a>
                </td>
                <td align='center' valign='top' width='50%'>
                <% if (specObjId != null && !ZERO_ID.Equals(specObjId)) {%>
                        	
    		        <p><b>Preview spectrum (click for a larger version)</b></p>  	
	   		        <a href='../../get/SpecById.ashx?id=<%= specObjId %>'>
			            <img src='../../get/SpecById.ashx?id=<%= specObjId %>' width='256' height='205' border='0' align='center' />
                    </a>
                <% } else { %>
                    <p align='left'><b>The SDSS has not measured a spectrum for this object.</b><br />  	  	
       			    See its <a href='../explore/obj.aspx?id=<%= id %>' target='_blank'>Explore</a> entry if you think it should have a spectrum.</p>
                <% } %>
                </td>
            </tr>

            <tr>
                <td align='center' valign='top' width='50%'>
                    <p><b>Object Type (type):</b><%= otype %></p>
                    <p><b>&nbsp;Magnitudes:</b></p>


                    <table>
                        <tr>
                            <td>
                                <table width='300' cellpadding=2 cellspacing=2 border=0><tr><td align='middle' class='h' width='50%'>Ultraviolet (u): </td><td nowrap align='middle' class='t' width='50%'>  <%= u%> &plusmn;    <%= err_u%></td></tr></table>
                                <table width='300' cellpadding=2 cellspacing=2 border=0><tr><td align='middle' class='h' width='50%'>Green (g): </td><td nowrap align='middle' class='t' width='50%'>  <%= g%> &plusmn;    <%= err_g%></td></tr></table>
                                <table width='300' cellpadding=2 cellspacing=2 border=0><tr><td align='middle' class='h' width='50%'>Red (r): </td><td nowrap align='middle' class='t' width='50%'>  <%= r%> &plusmn;    <%= err_r%></td></tr></table>
                                <table width='300' cellpadding=2 cellspacing=2 border=0><tr><td align='middle' class='h' width='50%'>Infrared - 7600 &Aring; (i): </td><td nowrap align='middle' class='t' width='50%'>  <%= i%> &plusmn;    <%= err_i%></td></tr></table>
                                <table width='300' cellpadding=2 cellspacing=2 border=0><tr><td align='middle' class='h' width='50%'>Infrared - 9100 &Aring; (z): </td><td nowrap align='middle' class='t' width='50%'>  <%= z%> &plusmn;    <%= err_z%></td></tr></table>
                            </td>
                        </tr>
                    </table>
                    <%  if (badphotometry) { %>
                    <p><b>Caution:</b> Magnitudes and other data for this object may be unreliable. See the <b>flags</b> in the <a href='../explore/obj.aspx?id=<%= objId %>+"&spec=<%= specObjId %>' target='explore'>Explore</a> tool summary page for more information.
                    <% } %>

                </td>
  
                <%if (specObjId != null && !ZERO_ID.Equals(specObjId)) { %>
                              
                    <td align='center' valign='top' width='50%'>
                            <% string spectrumlink = globals.DasUrl + "optical/spectrum/view?plateid=" + plate + "&mjd=" + mjd + "&fiberid=" + fiberid + "&run2d=" + run2d;%>
                            <h3><a href="<%=spectrumlink%>" target='_blank' class='content'>Interactive spectrum<img src='../../images/new_window_black.png' alt=' (new window)' /></a></h3>
                            <p><b>Spectral classification (Class):</b> <%= spectralclass %></p>
                            <table cellpadding=2 cellspacing=2 border=0 width=250>
                                <b>&nbsp;Redshift Data:</b><br />
                                <tr align=left>
                                    <td width='50%' valign=top class='h'>Redshift (z):</td>
                                    <td width='50%' align='right' valign=top class='b'><%= redshift %></td>
                                </tr>
                            </table>
                        <% string csvlink = globals.DasUrlBase + "optical/spectrum/view/data/format=csv?plateid=" + plate + "&mjd=" + mjd + "&fiberid=" + fiberid + "&reduction2d=v5_7_0"; %>
                        <a href="<%= csvlink %>" target='_blank' class='content'> <h3>Get spectrum as CSV</h3></a>
                        <% string fitslink = globals.DasUrlBase + "optical/spectrum/view/data/format=fits?plateid=" + plate + "&mjd=" + mjd + "&fiberid=" + fiberid + "&reduction2d=v5_7_0"; %>
                        <a href="<%= fitslink %>" target='_blank' class='content'> <h3>Get spectrum as FITS</h3></a>
                    </td>

                    <%} %>

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