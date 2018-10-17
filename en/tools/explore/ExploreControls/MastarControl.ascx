<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MastarControl.ascx.cs" Inherits="SkyServer.Tools.Explore.MastarControl" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="System.Data" %>
<% if (HasData)   { %>



<div id="manga">

<h3>MaStar crossmatch(es)</h3>


    <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">
        <tr>  
            <td align="center" class="h">mangaid</td>
            <td align="center" class="h">objra</td>
            <td align="center" class="h">objdec</td>
            <td align="center" class="h">catalogra</td>
            <td align="center" class="h">catalogdec</td>
            <td align="center" class="h">nvisits</td>
            <td align="center" class="h">nplates</td>
        </tr>
        <tr>
            <td align="center" class="t" ><%=dt.Rows[0]["mangaid"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["objra"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["objdec"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["catalogra"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["catalogdec"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["nvisits"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["nplates"].ToString() %></td>
        </tr>
    </table>
    </table>
    <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
        <tr>  
            <td align="center" class="h">photocat</td>
            <td align="center" class="h">cat_epoch</td>
            <td align="center" class="h">mngtarg2</td>
            <td align="center" class="h">minmjd</td>
            <td align="center" class="h">maxmjd</td>
        </tr>
        <tr>
            <td align="center" class="t" ><%=dt.Rows[0]["photocat"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["cat_epoch"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["mngtarg2"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["minmjd"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["maxmjd"].ToString() %></td>
        </tr>
    </table>
    <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
        <tr>  
            <td align="center" class="h">psfmag_1</td>
            <td align="center" class="h">psfmag_2</td>
            <td align="center" class="h">psfmag_3</td>
            <td align="center" class="h">psfmag_4</td>
            <td align="center" class="h">psfmag_5</td>
        </tr>
        <tr>
            <td align="center" class="t" ><%=dt.Rows[0]["psfmag_1"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["psfmag_2"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["psfmag_3"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["psfmag_4"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["psfmag_5"].ToString() %></td>
        </tr>
    </table>
    <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
        <tr>  
            <td align="center" class="h">input_logg</td>
            <td align="center" class="h">input_teff</td>
            <td align="center" class="h">input_fe_h</td>
            <td align="center" class="h">input_alpha_m</td>
            <td align="center" class="h">input_source</td>
        </tr>
        <tr>
            <td align="center" class="t" ><%=dt.Rows[0]["input_logg"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["input_teff"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["input_fe_h"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["input_alpha_m"].ToString() %></td>
            <td align="center" class="t" ><%=dt.Rows[0]["input_source"].ToString() %></td>
        </tr>
    </table>
    <b>
        <% string spectrumlink = globals.DasUrl + "mastar/spectrum/view?mangaid=" + dt.Rows[0]["mangaid"].ToString(); %>
        <a class='content' href="<%=spectrumlink%>"  target='_blank'>
            Interactive spectrum<img src='../../images/new_window_black.png' alt=' (new window)' />
        </a>
    </b>
    <br>
    <br>

    <% string mangaId = dt.Rows[0]["mangaid"].ToString();%>
    <% for(int RowIndex = 1; RowIndex < dt.Rows.Count; RowIndex++){ //show top row %>
            <%if (mangaId != dt.Rows[RowIndex]["mangaid"].ToString()) {     %>
               <%mangaId = dt.Rows[RowIndex]["mangaid"].ToString();%>

               <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">
                    <tr>  
                        <td align="center" class="h">mangaid</td>
                        <td align="center" class="h">objra</td>
                        <td align="center" class="h">objdec</td>
                        <td align="center" class="h">catalogra</td>
                        <td align="center" class="h">catalogdec</td>
                        <td align="center" class="h">nvisits</td>
                        <td align="center" class="h">nplates</td>
                    </tr>
                    <tr>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["mangaid"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["objra"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["objdec"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["catalogra"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["catalogdec"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["nvisits"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["nplates"].ToString() %></td>
                    </tr>
                </table>
               <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
                    <tr>  
                        <td align="center" class="h">photocat</td>
                        <td align="center" class="h">cat_epoch</td>
                        <td align="center" class="h">mngtarg2</td>
                        <td align="center" class="h">minmjd</td>
                        <td align="center" class="h">maxmjd</td>
                    </tr>
                    <tr>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["photocat"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["cat_epoch"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["mngtarg2"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["minmjd"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["maxmjd"].ToString() %></td>
                    </tr>
                </table>
               <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
                    <tr>  
                        <td align="center" class="h">psfmag_1</td>
                        <td align="center" class="h">psfmag_2</td>
                        <td align="center" class="h">psfmag_3</td>
                        <td align="center" class="h">psfmag_4</td>
                        <td align="center" class="h">psfmag_5</td>
                    </tr>
                    <tr>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["psfmag_1"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["psfmag_2"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["psfmag_3"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["psfmag_4"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["psfmag_5"].ToString() %></td>
                    </tr>
                </table>
               <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
                    <tr>  
                        <td align="center" class="h">input_logg</td>
                        <td align="center" class="h">input_teff</td>
                        <td align="center" class="h">input_fe_h</td>
                        <td align="center" class="h">input_alpha_m</td>
                        <td align="center" class="h">input_source</td>
                    </tr>
                    <tr>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["input_logg"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["input_teff"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["input_fe_h"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["input_alpha_m"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[RowIndex]["input_source"].ToString() %></td>
                    </tr>
                </table>
               
                <b>
                    <% spectrumlink = globals.DasUrl + "mastar/spectrum/view?mangaid=" + dt.Rows[RowIndex]["mangaid"].ToString(); %>
                    <a class='content' href="<%=spectrumlink%>"  target='_blank'>
                        Interactive spectrum<img src='../../images/new_window_black.png' alt=' (new window)' /> 
                    </a>
                </b>

               <br>
               <br>
               <br>
            <% }   %>

    <%} %>









    <% if(dt.Rows.Count > 1 ) { %>


        <h4 class="sectionlabel" id="crossidtop">
        <a id="MoreMangaObservations_is_shown" href="javascript:showLink('MoreMangaObservations');javascript:showLink('MoreMangaObservations_is_hidden');javascript:hideLink('MoreMangaObservations_is_shown');" class="showinglink">
          Show individual visits by MaStar
        </a>
        <a id="MoreMangaObservations_is_hidden" href="javascript:hideLink('MoreMangaObservations');javascript:showLink('MoreMangaObservations_is_shown');javascript:hideLink('MoreMangaObservations_is_hidden');" class="hidinglink">
           Hide individual visits by MaStar
        </a>
        </h4>
        <div id="MoreMangaObservations" style="display:none">

            <% for(int RowIndex = 0; RowIndex < dt.Rows.Count; RowIndex++){  %>


                       <table class="content" cellpadding=2 cellspacing=2 border=0 width=625 style="table-layout: auto">   
                            <tr>
                                <td align="center" class="h">mangaid</td>
                                <td align="center" class="h">nexp</td>
                                <td align="center" class="h">mjd</td>
                                <td align="center" class="h">mjdqual</td>
                                <td align="center" class="h">ifudesign</td>
                                <td align="center" class="h">plate</td>
                                <td align="center" class="h">heliov</td>
                                <td align="center" class="h">verr</td>
                                <td align="center" class="h">v_errcode</td>
                            </tr>
                            <tr>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["mangaid"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["nexp"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["mjd"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["mjdqual"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["ifudesign"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["plate"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["heliov"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["verr"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["v_errcode"].ToString() %></td>
                            </tr>
                        </table>
                        <br>

            <%} //end  if(dt.Rows.Count > 1 ) %>

        </div>

    <%} %>


</div>  <!-- end of manga div -->
<%} %>