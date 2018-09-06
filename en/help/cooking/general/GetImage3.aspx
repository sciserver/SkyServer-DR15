<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetImage3.aspx.cs" Inherits="SkyServer.Help.Cooking.GetImage3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get Image and Spectrum</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Get an SDSS Image (<a href="../../../tools/chart/navi.aspx" target="tools">open Navigate in new window</a>)</h2>

<hr />

<ol>
  <li><p>Go to the <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> tool (opens in a new 
         window). To access the tool from the astronomers' main page, look under <b>Advanced Tools</b>. To access 
         the tool from the public main page, look under <b>Visual Tools</b>.</p></li>
         
  <li><p>Look at the <b>ra</b> and <b>dec</b> input boxes near the top left of the tool. Enter the coordinates 
         of your object. You may enter them either as decimal degrees or as HMS/DMS. If you enter them as HMS/DMS, 
         use the format "hh:mm:ss ±dd:mm:ss", and be sure to include seconds even if they are 00. (You may have to 
         re-format the results you copied from SIMBAD).</p></li>
         
  <li><p>Click the blue <b>Get Image</b> button. You will see an interactive image of your object in the center 
         panel.</p></li>
  
  <li><p>Click the directional buttons (<b>NWSE</b>) to pan the image, and click on the <b>+ or – magnifying 
         glasses</b> to zoom in our out within the image.</p></li>
  
  <li><p>Click on one or more of the <b>Drawing Options</b> checkboxes in the left-hand panel to redraw the 
         image with various features selected. Of particular interest is the <i>SpecObjs</i> checkbox. When 
         it is selected, the tool displays a red square around all objects for which the SDSS has obtained a 
         spectrum.</p>
         
      <p>Here is a list of what each of the drawing options does:</p>
      
         <table class="compact" width="100%">
                <tr>
                  <th align="left" valign="top" width="20%">Option</th>
                  <th align="left" valign="top"  width="80%">Meaning</th>
               </tr>
               <tr>
                  <td align="left" valign="top"  width="20%">Grid</td>
                  <td align="left" valign="top"  width="80%">Draw a N-S E-W grid through the center</td>
               </tr>
               <tr>
                  <td align="left" valign="top"  width="20%">Label</td>
                  <td align="left" valign="top"  width="80%">Draw the name, scale, ra, and dec on image</td>
               </tr>               
               <tr>
                  <td align="left" valign="top"  width="20%">PhotoObj</td>
                  <td align="left" valign="top"  width="80%">Draw a small blue circle around each recognized object</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">SpecObj</td>
                  <td align="left" valign="top"  width="80%">Draw a small red square around each object with a spectrum</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">Target</td>
                  <td align="left" valign="top"  width="80%">Draw a small yellow cross-hair around each object targeted 
                                                             <a href='../../docs/glossary.aspx?key=target' target="help"><img src='../../docs/images/glossary.gif' border="0" alt="Glossary" /></a> 
                                                             for spectroscopy</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">Outline</td>
                  <td align="left" valign="top"  width="80%">Draw the outline (in green) of each object</td>
               </tr>                                                           
               <tr>
                  <td align="left" valign="top"  width="20%">BoundingBox</td>
                  <td align="left" valign="top"  width="80%">Draw the bounding box (in pink) of each object</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">Fields</td>
                  <td align="left" valign="top"  width="80%">Draw the outline of each imaging field<a href='../../docs/glossary.aspx?key=field' target="help"><img src='../../docs/images/glossary.gif' border="0" alt="Glossary" /></a> 
                  (in gray)</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">Masks</td>
                  <td align="left" valign="top"  width="80%">Draw the outline (in orange) of each mask 
                  considered to be important</td>
               </tr>   
               <tr>
                  <td align="left" valign="top"  width="20%">Plates</td>
                  <td align="left" valign="top"  width="80%">Draw the outline of each spectral plate<a href='../../docs/glossary.aspx?key=plate' target="help"><img src='../../docs/images/glossary.gif' border="0" alt="Glossary" /></a> (in pink)</td>
               </tr>                                                               
               <tr>
                  <td align="left" valign="top"  width="20%">Invert</td>
                  <td align="left" valign="top"  width="80%">Invert the image (display as black-on-white)</td>
               </tr>                                                                              
             </table>           
         </li>       
         
         <li><p>Click on any object in the image. You will see the object’s data in the right-hand panel. 
                The data displayed are the object’s ra and dec, and the object’s magnitudes in the SDSS’s five 
                filters (<i>u, g, r, i, z</i>). You will also see a close-up image of the object.</p></li> 
         
         <li><p>Click <b>Add to Notes</b> to add the selected object to your online notebook. Click 
             <b>Show Notes</b> to show the notebook. From your notebook, you can click <b>Navigate</b> to 
             return to the Navigate tool. You can also <b>Export</b> the notebook to your computer.</p></li>
</ol>


<hr />

<p><a href="getimage4.aspx">Next: Explore the Object in More Detail</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getimage2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" />
      <a href="getimage4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
</tr>

<tr>
  <td>
    <p><a href="../">Back to Cooking with Sloan main page</a><br />
    <a href="../../">Back to Help main page</a><br />
    <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>
  </td>
</tr>

</table>
</div>
</asp:Content>
