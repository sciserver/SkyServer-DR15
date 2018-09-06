<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MangaControl.ascx.cs" Inherits="SkyServer.Tools.Explore.MangaControl" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="System.Data" %>
<% if (HasData)   { %>



<div id="manga">
    
  
        <h3>MaNGA observation(s)</h3>




    <!-- data.sdss.org/sas/dr13/manga/spectro/redux/v1_5_4/7443/stack/images/12701.png -->



      <table width=625>
         <tr>
            <td width="120" align="center"> 
                <a target="_blank" href="<%=globals.MangaUrlBase + dt.Rows[0]["versdrp3"].ToString() + "/" + dt.Rows[0]["plate"].ToString() + "/stack/images/" + dt.Rows[0]["ifudsgn"].ToString() + ".png"%>"><img src="<%=globals.MangaUrlBase + dt.Rows[0]["versdrp3"].ToString() + "/" + dt.Rows[0]["plate"].ToString() + "/stack/images/" + dt.Rows[0]["ifudsgn"].ToString() + ".png"%>" width="120" height="120" alt="Manga Image" /></a> 
            </td>
            <td>
                <table  class="content" cellpadding=2 cellspacing=2 border=0 width=520 >   
                    <tr> 
                        <td><a target="_blank" class="showinglink" href="<%=globals.MangaUrlBase + dt.Rows[0]["versdrp3"].ToString() + "/" + dt.Rows[0]["plate"].ToString() + "/stack/manga-" + dt.Rows[0]["plate"].ToString() + "-" + dt.Rows[0]["ifudsgn"].ToString() + "-LINCUBE.fits.gz"%>"> LIN Data Cube </a> </td>
                    </tr>
                    <tr> 
                        <td><a target="_blank" class="showinglink" href="<%=globals.MangaUrlBase + dt.Rows[0]["versdrp3"].ToString() + "/" + dt.Rows[0]["plate"].ToString() + "/stack/manga-" + dt.Rows[0]["plate"].ToString() + "-" + dt.Rows[0]["ifudsgn"].ToString() + "-LOGCUBE.fits.gz"%>"> LOG Data Cube </a> </td>
                    </tr>                    
                    <tr>  
                        <td align="center" class="h">plateIFU</td>
                        <td align="center" class="h">mangaid</td>
                        <td align="center" class="h">objra</td>
                        <td align="center" class="h">objdec</td>
                        <td align="center" class="h">ifura</td>
                        <td align="center" class="h">ifudec</td>
                    </tr>
                    <tr>
                        <!--td><a target="_blank" href="<%=globals.MangaUrlBase + dt.Rows[0]["versdrp3"].ToString() + "/" + dt.Rows[0]["plate"].ToString() + "/stack/manga-" + dt.Rows[0]["plate"].ToString() + "-" + dt.Rows[0]["ifudsgn"].ToString() + "-LOGCUBE.fits.gz"%>"> <%=dt.Rows[0]["plateIFU"].ToString() %> </a> </--td-->
                        <td align="center" class="t" ><%=dt.Rows[0]["plateIFU"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["mangaid"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["objra"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["objdec"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["ifura"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["ifudec"].ToString() %></td>
                    </tr>
                </table>
               <table class="content" cellpadding=2 cellspacing=2 border=0 width=520 style="table-layout: auto">   
                    <tr>  
                        <td align="center" class="h">drp3qual</td>
                        <td align="center" class="h">bluesn2</td>
                        <td align="center" class="h">redsn2</td>
                        <td align="center" class="h">mjdmax</td>
                        <td align="center" class="h">mngtarg1</td>
                        <td align="center" class="h">mngtarg2</td>
                        <td align="center" class="h">mngtarg3</td>
                    </tr>
                    <tr>
                        <td align="center" class="t" ><%=dt.Rows[0]["drp3qual"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["bluesn2"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["redsn2"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["mjdmax"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["mngtarg1"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["mngtarg2"].ToString() %></td>
                        <td align="center" class="t" ><%=dt.Rows[0]["mngtarg3"].ToString() %></td>
                    </tr>
                </table>
           </td>


         </tr>
    </table>

<% if(dt.Rows.Count > 1 ) { %>


    <h4 class="sectionlabel" id="crossidtop">
    <a id="MoreMangaObservations_is_shown" href="javascript:showLink('MoreMangaObservations');javascript:showLink('MoreMangaObservations_is_hidden');javascript:hideLink('MoreMangaObservations_is_shown');" class="showinglink">
      Show additional MaNGA observations
    </a>
    <a id="MoreMangaObservations_is_hidden" href="javascript:hideLink('MoreMangaObservations');javascript:showLink('MoreMangaObservations_is_shown');javascript:hideLink('MoreMangaObservations_is_hidden');" class="hidinglink">
       Hide additional MaNGA observations
    </a>
    </h4>

    <div id="MoreMangaObservations" style="display:none">

    <% for(int RowIndex = 1; RowIndex < dt.Rows.Count; RowIndex++){  %>

         <table width=625>
             <tr>
                    <td width="120" align="center"> 
                          <a target="_blank" href="<%=globals.MangaUrlBase + dt.Rows[RowIndex]["versdrp3"].ToString() + "/" + dt.Rows[RowIndex]["plate"].ToString() + "/stack/images/" + dt.Rows[RowIndex]["ifudsgn"].ToString() + ".png"%>"><img src="<%=globals.MangaUrlBase + dt.Rows[RowIndex]["versdrp3"].ToString() + "/" + dt.Rows[RowIndex]["plate"].ToString() + "/stack/images/" + dt.Rows[RowIndex]["ifudsgn"].ToString() + ".png"%>" width="120" height="120" alt="Manga Image" /></a> 
                    </td>

                    <td>
                        <table  class="content" cellpadding=2 cellspacing=2 border=0 width=520 >   
                            <tr> 
                                <td><a target="_blank" class="showinglink" href="<%=globals.MangaUrlBase + dt.Rows[RowIndex]["versdrp3"].ToString() + "/" + dt.Rows[RowIndex]["plate"].ToString() + "/stack/manga-" + dt.Rows[RowIndex]["plate"].ToString() + "-" + dt.Rows[RowIndex]["ifudsgn"].ToString() + "-LINCUBE.fits.gz"%>"> LIN Data Cube </a> </td>
                            </tr>
                            <tr> 
                                <td><a target="_blank" class="showinglink" href="<%=globals.MangaUrlBase + dt.Rows[RowIndex]["versdrp3"].ToString() + "/" + dt.Rows[RowIndex]["plate"].ToString() + "/stack/manga-" + dt.Rows[RowIndex]["plate"].ToString() + "-" + dt.Rows[RowIndex]["ifudsgn"].ToString() + "-LOGCUBE.fits.gz"%>"> LOG Data Cube </a> </td>
                            </tr>                    

                            <tr>  
                                <td align="center" class="h">plateIFU</td>
                                <td align="center" class="h">mangaid</td>
                                <td align="center" class="h">objra</td>
                                <td align="center" class="h">objdec</td>
                                <td align="center" class="h">ifura</td>
                                <td align="center" class="h">ifudec</td>

                            </tr>
                            <tr>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["plateIFU"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["mangaid"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["objra"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["objdec"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["ifura"].ToString() %></td>
                                <td align="center" class="t" ><%=dt.Rows[RowIndex]["ifudec"].ToString() %></td>

                            </tr>
                        </table>
                        <table class="content" cellpadding=2 cellspacing=2 border=0 width=520 style="table-layout: auto">   
                                <tr>  
                                    <td align="center" class="h">drp3qual</td>
                                    <td align="center" class="h">bluesn2</td>
                                    <td align="center" class="h">redsn2</td>
                                    <td align="center" class="h">mjdmax</td>
                                    <td align="center" class="h">mngtarg1</td>
                                    <td align="center" class="h">mngtarg2</td>
                                    <td align="center" class="h">mngtarg3</td>
                                </tr>
                                <tr>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["drp3qual"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["bluesn2"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["redsn2"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["mjdmax"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["mngtarg1"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["mngtarg2"].ToString() %></td>
                                    <td align="center" class="t" ><%=dt.Rows[RowIndex]["mngtarg3"].ToString() %></td>
                                </tr>
                        </table>
                    </td>
                 </tr>
        </table>





    <%} %>


    </div>

    <%} //end  if(dt.Rows.Count > 1 ) %>



    <!--%  master.showHTable( ds, 400, "");   %-->

</div>  <!-- end of manga div -->
<%} %>