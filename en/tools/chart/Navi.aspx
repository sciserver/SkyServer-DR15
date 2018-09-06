<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navi.aspx.cs" Inherits="SkyServer.Tools.Chart.Navi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta http-equiv="X-UA-Compatible" content="chrome=1, IE=edge">
    <%--<meta name="viewport" content="width=device-width, initial-scale=0.6">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>SDSS <%=globals.Release%> Navigate Tool</title>
    <link href="../../tools.css" rel="stylesheet" type="text/css">
    <link href="../../../alerts.css" rel="stylesheet" type="text/css" />
    <style>
	     /* a		 {font-family:sans-serif;font-size:8pt;color:#aaaaff; text-decoration:none;} */
	    .i		 {font-family:sans-serif;font-size:8pt;color:#00ff00;}
	    .c		 {font-family:sans-serif;font-size:9pt;color:#ccccff;}
	    .g		 {font-family:sans-serif;font-size:9pt;color:#00ff88;}
	    .y		 {font-family:sans-serif;font-size:9pt;color:#eeee00;}
	    .w		 {font-family:sans-serif;font-size:9pt;color:#ffffff;}
	    .big	 {font-family:sans-serif;font-size:16pt;color:#aaaaff;}
	    .bl      {font-family:sans-serif;font-size:9pt;color:#182A66;}
        .rd      {font-family:sans-serif;font-size:10pt;color:#E40B25;font-weight: bold;}
	    
        #toc   {position:absolute;top:10px;left:10px;}
        #mtoggle  {position: absolute; top: 10px; left: 225px; z-index:0;} 
	    #messageZoom {position: absolute; top: 10px; left: 600px; z-index:1;} 
	    #mframe  {position: absolute; top:  30px; left: 220px; z-index:0;}
	    #message  {position: absolute; top: 601px; left: 245px; z-index:1;}
	    #mimage  {position: absolute; top: 56px; left: 246px; z-index:1;}
	    #mmark   {position: absolute; top:130px; left:100px; z-index:1;}
	    #minfo   {position: absolute; top: 30px; left:  0px; z-index:1;}
        #near    {position: absolute; top: 30px; left: 810px; z-index:1;}    
        #canvas1 {background:url('images/loading.jpg')} 
        #testdebug{position: absolute; top:  621px; left: 250px; z-index:1;}
        #temptext  {position: absolute; top: 650px; left: 245px; z-index:1;}
    </style>

    <script type="text/javascript">var wsGetJpegurl = "<%= globals.WSGetJpegUrl + "?TaskName=Skyserver.Chart.Navi&"%>";</script>
    <script type="text/javascript">var wsGetImage64 = "<%= globals.WSGetImage64 + "?TaskName=Skyserver.Chart.Navi&"%>";</script>
    <script type="text/javascript">var release = "<%= globals.Release %>";</script>
    <!--For icon and header-->
    <script id="Script1" type="text/javascript" language='javascript' src='../STARTBall/STARTBall.js'></script>    
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.js"></script>    
    <script type="text/javascript"  src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    
    <script type="text/javascript"  src="./javascript/control.js"></script>    
    <script type="text/javascript"  src="./javascript/hammer.js"></script>
    <script type="text/javascript"  src="./javascript/coord.js"></script>
    <script type="text/javascript"  src="./javascript/showCanvas.js"></script>
    
    
<script type="text/javascript">
  

   window.onorientationchange = function() {
       viewport = document.querySelector("meta[name=viewport]");
       if (window.orientation == 90 || window.orientation == -90) {
           viewport.setAttribute('content', 'width=device-width; initial-scale=1.0; user-scalable=1');            
       } else {
           viewport.setAttribute('content', 'width=device-width; initial-scale=0.75; user-scalable=0');            
       } 
   }

   function init() {

        //document.getElementById('getImageId').disabled = true;
     
        go		= false;
        ra		= <%=ra%>;
	    dec		= <%=dec%>;
	    size	= <%=size%>;
	    opt		= "<%=opt%>";
	    scale	= <%=qscale%>;
	    D2R		= Math.PI/180.0; 	
        prevscale = scale;	     
        document.getElementById('opt').value = opt;	    
        if(opt.indexOf('X') != -1) document.getElementById('twomass').checked = "checked";
        makeCanvas(release,scale,opt,ra,dec,1); 
        setzoombar(scale);

    }

    
    function callNameResolverOLD() {
         $.ajax({
             type: "GET",            
             url : "http://mast.stsci.edu/portal/Mashup/Mashup.asmx/invoke?",
             dataType: ($.browser.msie) ? "text" : "xml",
             data: 'request={"service":"Mast.Name.Lookup","format":"xml","params":{"input":"' + document.getElementById('objid').value + '"},"timeout":10,"page":1,"pagesize":100}',
             success: function(temp) {
                 document.getElementById('getImageId').disabled = false;
                 if (typeof temp == "plain") {
                     alert(temp);
                 } else {
                     xml = temp;
                     $(xml).find('resolvedCoordinate').each(function() {
                         var ra1 = $(this).find('ra').text();
                         var dec1 = $(this).find('dec').text();
                         ra = ra1;
                         dec = dec1;
                         $('#ra').val(ra1);
                         $('#dec').val(dec1);
                         resubmit();
                     });
                 }
             },
             error: function() {
                 if (jQuery.trim(objtext).length > 0) {
                     alert("Could not resolve name: " + objtext);
                 }
             }
         });
    }


    function callNameResolver() {
        var name = document.getElementById('objid').value;
        $.ajax({
            type: "GET",
            url: "../Resolver.ashx?name=" + name,
            success: function (response) {
                document.getElementById('getImageId').disabled = false;
                if (response.indexOf("Error:") == 0) {
                    alert(response);
                }
                else {
                    var s = response.split('\n');
                    //$('#searchName').val(s[0].substring(6));
                    $('#ra').val(s[1].substring(4));
                    $('#dec').val(s[2].substring(5));
                    resubmit();
                }
            },
            error: function () {
                alert("Error: Could not resolve name.");
            }
        });
    }




    $(document).ready(function() {
        var br = $.browser;
        if(br.msie && br.version < 9.0) {                  
            var tempurl = "./navi-old.aspx";         
            setTimeout( window.location = tempurl, 0 );
        }        

         $('#objid').keydown(function(e) {
             var objtext = $('#objid').val();
             var keyC = e.keyCode;
             if (keyC == 9 || keyC == 13) {                 
                 callNameResolver();                 
             }
         });
         $('#resolve').click(function() {           
             callNameResolver();
         });
         $('#ra').keydown(function(e){ 
            document.getElementById('getImageId').disabled = false;
         });
         $('#dec').keydown(function(e){ 
            document.getElementById('getImageId').disabled = false;
         });         
       
     });    

   </script>


<LINK REL="SHORTCUT ICON" HREF="../../../sdss3.ico">
<div style=POSITION:absolute;LEFT:84;TOP:44;z-index:5;>  </div>

</head>

<body onload="init();">
    <%--<asp:ContentPlaceHolder ID="Content1"  runat="server">--%>
                    <%@ Register TagPrefix="login" TagName="loginParam" Src="../../Loginfloat.ascx"  %>
                    <login:loginParam ID="loginParams" runat="server"/>
                <%--</asp:ContentPlaceHolder>--%>
    <form id="form1" runat="server">
    <div>
    


    </div>
    </form>
        <div id="toc">
        <table width="<%=tabwidth%>" border="0" cellspacing="0" cellpadding="2" bgcolor=black>
	    <tr>
		    <td width="40"><a href="<%= url%>" TARGET="_top">
		    <img src="images/sdssIVlogo.png" border="0" height="50"></a></td>
		    <td class='title' align="left" width="<%= (tabwidth-40)%>">&nbsp;&nbsp;<%= globals.Release%></td>
	    </tr>
        </table>
        <table border="0" cellspacing="0" cellpadding="0" >
	        <tr>
                <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('SkyServer Home page')">|<a target="_top" href="<%= url%>">Home&nbsp;|</a></td>
                <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('Help on the current tool')"><a target="MosaicWindow" href="<%= name%>info.aspx">Help&nbsp;|</a></td>
        <%
            if ("navi".Equals(name)) {
        %>
                <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('View the tool tutorial (Flash)')"><a target="MosaicWindow" href="<%= name%>.swf">Tutorial&nbsp;|</a></td>

        <%
            }
            foreach (string my_name in my_apps)
            {
                if(name!=null && !name.Equals(my_name)) 
                {
				    if("chart".Equals(my_name)) {
					    %>
                        <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go to the Finding Chart')"><a href="javascript:void(0)" onclick="return gotochart();">Chart&nbsp;|</a></td>
				        <% }
                    else if("list".Equals(my_name)) {
					    %>
                        <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go to the Image List')"><a href="list.aspx" TARGET="_top">List&nbsp;|</a></td>
				        <% }
                    else {
                        %> 
					    <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go to the Navigate Tool')"><a href="javascript:void(0)" onclick="return gotonavi();">Navi&nbsp;|</a></td>
			            <% }
                }
            }
        %>			
		        <td class='s' align="left" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go to the Object Explorer')"><A href="javascript:void(0)" onclick="return gotoExp();">Explore&nbsp;|</A></td>	
	        </tr>
        </table>
<!--table for parameters-->
<table width="160" bgColor="lightblue" border="1" cellspacing=1 cellpadding=1 valign="middle">
    <tr><td colspan="2" align="middle" bgcolor="skyblue">Parameters</td></tr>
    <%
        drawFormBox("name","objid",objid,"setobj();","<input type='button' value='Resolve' id='resolve' name='resolve'  >","Name of object to be resolved.");
        drawFormBox("ra","ra",""+ra,"setra();","deg","Right ascension as decimal degrees or HH:MM:SS. Value is wrapped around the sphere.");
        drawFormBox("dec", "dec", "" + dec, "setdec();", "deg", "Declination as decimal degrees or DD:MM:SS. Value is wrapped around the sphere."); 
        drawFormBox("opt","opt",opt,"setoptstr(1);","","String of drawing options (checkboxes below)"); 
    %>
</table>
            <table width="<%=tabwidth%>" cellspacing=4 cellpadding=0 border=0>
	            <tr><td align=middle ONMOUSEOVER="this.T_WIDTH='140';return escape('Get an image of the sky at the specified coordinates')">
	            <a href="javascript:void(0);" onClick="return resubmit();" id="getImageId"><img 
			            src="images/get_image2.jpg" ALT="Submit" 
			            border="0" WIDTH="112" HEIGHT="40" id="getImage"></a>
	            </td>
	            <td align=middle ONMOUSEOVER="this.T_WIDTH='140';return escape('Open a new window with a printable image')">
	            <a href="javascript:void(0);" onClick="return popup();"><img 
			            src="images/printer_icon_blue.jpg" ALT="Printable Image" 
			            border="0" WIDTH="40" HEIGHT="40"></a>
	            </td></tr>
	
            </table>

            <table width="<%=tabwidth%>" cellpadding=0 cellspacing=0 border=0>
            <tr>
	            <td><img src="images/zoombar6.jpg" ALT="Zoom In" 
			            border="0" WIDTH="160" HEIGHT="32" ISMAP 
			            USEMAP="#zoom_bar_map" id="zoombar"></td>
            </tr>
            </table>

            <p />

            <map name="zoom_bar_map">
            <area shape="rect" alt="zoom in" coords=" 2,8,24,28" href="javascript:void(0);" onmouseover="this.T_WIDTH='140';return escape('Zoom in')" onclick="return stepzoom(0.5)"/>
            <area shape="rect" alt="zoom=5"  coords="25,8,30,24" href="javascript:void(0);" onclick="return setzoom(5)"/>
            <area shape="rect" alt="zoom=4"  coords="33,8,38,24" href="javascript:void(0);" onclick="return setzoom(4)"/>
            <area shape="rect" alt="zoom=3"  coords="41,8,46,24" href="javascript:void(0);" onclick="return setzoom(3)"/>
            <area shape="rect" alt="zoom=2"  coords="50,8,55,24" href="javascript:void(0);" onclick="return setzoom(2)"/>
            <area shape="rect" alt="zoom=1"  coords="58,8,63,22" href="javascript:void(0);" onclick="return setzoom(1)"/>
            <area shape="rect" alt="zoom=0"  coords="66,8,71,24" href="javascript:void(0);" onclick="return setzoom(0)"/>
            <area shape="rect" alt="zoom=-1" coords="75,8,80,24" href="javascript:void(0);" onclick="return setzoom(-1)"/>
            <area shape="rect" alt="zoom=-2" coords="83,8,88,24" href="javascript:void(0);" onclick="return setzoom(-2)"/>
            <area shape="rect" alt="zoom=-3" coords="91,8,96,24" href="javascript:void(0);" onclick="return setzoom(-3)"/>
            <area shape="rect" alt="zoom=-4" coords="99,8,104,24" href="javascript:void(0);" onclick="return setzoom(-4)"/>
            <area shape="rect" alt="zoom=-5" coords="107,8,112,24" href="javascript:void(0);" onclick="return setzoom(-5)"/>
            <area shape="rect" alt="zoom=-6" coords="115,8,120,24" href="javascript:void(0);" onclick="return setzoom(-6)"/>
            <area shape="rect" alt="zoom=-7" coords="123,8,128,24" href="javascript:void(0);" onclick="return setzoom(-7)"/>
            <area shape="rect" alt="zoom out" coords="132,6,156,28" href="javascript:void(0);" onmouseover="this.T_WIDTH='140';return escape('Zoom out')" onclick="return stepzoom(2.0)">
            </map>
            <!--
            <table width="<%=tabwidth%>" cellpadding=0 cellspacing=0 border=0>
	            <tr>
		            <td ONMOUSEOVER="this.T_TEMP='3000';this.T_WIDTH='180';return escape('Mark selected objects with a purple triangle. See &quot;Help&quot; for options.')">Use query to mark objects</td>
	            </tr>
	

            </table>
            <table border=0 ONMOUSEOVER="this.T_TEMP='3000';this.T_WIDTH='180';return escape('Mark selected objects with a purple triangle. See &quot;Help&quot; for options.')">
              <tr>
                <td>
                  <TEXTAREA wrap=off class='tx' cols=17 name="query" rows=5><%=query%></TEXTAREA> 
	            </td>
              </tr>
            </table>
            -->
<table width="<%=tabwidth%>" cellpadding=0 cellspacing=0 border=1>
<tr><td align=middle bgcolor="skyblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Mark various options on the image')">Drawing options</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Grid with tickmarks to show image scale')"><INPUT type="checkbox" onclick="setopt(this,'G')" name="Grid"  id="Grid"> Grid</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Information on the Navigation window view')"><INPUT type="checkbox" onclick="setopt(this,'L')" name="Label"  id="Label"> Label</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Marks photometrically identified objects with light blue circles')"><INPUT type="checkbox" onclick="setopt(this,'P')" name="PhotoObjs"  id="PhotoObjs"> Photometric objects</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Marks spectroscopic objects with red squares')"><INPUT type="checkbox" onclick="setopt(this,'S')" name="SpecObjs"  id="SpecObjs"> Objects with spectra</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Inverts black and white in the image')"><INPUT type="checkbox" onclick="setopt(this,'I')" name="InvertImage"   id="InvertImage"> Invert Image</td></tr>	
	<tr><td align=middle bgcolor="skyblue">Advanced options</td></tr>	
	<!--
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Marks potential spectroscopy targets with green Xs')"><INPUT type="checkbox" onclick="setopt(this,'T')" name="TargetObjs"  id="TargetObjs"> Spectroscopic Targets</td></tr>
	-->
    <tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Shows APOGEE DATA')"><INPUT type="checkbox" onclick="setopt(this,'A')" name="APOGEE" id="APOGEE"> APOGEE Spectra</td></tr>		
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='5000';this.T_WIDTH='140';return escape('Draws the outline (green) of each photometric object except at the largest zoom-out scales (where they are not legible)')"><INPUT type="checkbox" onclick="setopt(this,'O')" name="Outline"  id="Outline">SDSS Outlines</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Draws a rectangular box (pink) around each photometric object')"><INPUT type="checkbox" onclick="setopt(this,'B')" name="BoundingBox" id="BoundingBox">SDSS Bounding Boxes</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Shows each SDSS field (~10x14 arcmin) in gray')"><INPUT type="checkbox" onclick="setopt(this,'F')" name="Fields" id="Fields">SDSS Fields</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Shows masks (pink) around bright objects and data artifacts')"><INPUT type="checkbox" onclick="setopt(this,'M')" name="Masks" id="Masks">SDSS Masks</td></tr>
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Shows plates (lavender) used to collect spectra')"><INPUT type="checkbox" onclick="setopt(this,'Q')" name="Plates" id="Plates">SDSS Plates</td></tr>		
    
    <%--<tr><td align=middle bgcolor="skyblue">Imaging options</td></tr>	    
	<tr><td bgColor="lightblue" ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Gets TwoMass Images')"><INPUT type="checkbox" onclick="setopt(this,'5')" name="2MASS" id="Checkbox2"> TwoMass</td></tr>--%>
    <tr>
        <td>
            <div id="poweredby">
                <b>Powered by</b><br />
                <img src="../../images/sciserver_logo_inverted_vertical.png" alt="SciServer" align="middle" />
            </div>
        </td>
    </tr>
</table>
</div>
<input type="hidden" value="512"   name="size" id="size">
<input type="hidden" value="<%=qscale%>" name="scale" id="scale">

</td>

<td id='main' valign="top">
<!--This Contains Canvas-->

        <div name="toggeleImage" id="mtoggle">  <span class='snavi'><b> Select Image Source :  </b></span>
        <input type="radio" name="rad" id="sdss"  value="sdss" checked="checked" onclick="setImageSource(this,'Z')"/><span class='s'>SDSS</span>
        <input type="radio" name="rad" id="twomass" value="twomass" onclick="setImageSource(this,'X')" /><span class='s'>2MASS</span>
            
            <br />            
        </div>
    <label id="messageZoom" class="rd"></label>
        <div id="mframe">
        <img src="images/naviframe.gif" ISMAP usemap="#navi_map" width="570" height="570" border="0">
        <MAP NAME="navi_map">
			<AREA SHAPE="rect" ALT="South" COORDS=" 0,535,570,570" HREF="javascript:void(0);" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go south')" onclick="return stepCenter('S')">
			<AREA SHAPE="rect" ALT="North" COORDS=" 0,  0,570, 15" HREF="javascript:void(0);" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go north')" onclick="return stepCenter('N')">
			<AREA SHAPE="rect" ALT="East"  COORDS=" 0,  0, 35,570" HREF="javascript:void(0);" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go east')" onclick="return stepCenter('E')">
			<AREA SHAPE="rect" ALT="West"  COORDS="535, 0,570,570" HREF="javascript:void(0);" ONMOUSEOVER="this.T_WIDTH='140';return escape('Go west')" onclick="return stepCenter('W')">
		</MAP>
        </div>
		<div id="mimage">
		    <canvas id="canvas1" class="canvas1" width="512" height="512" style="border: 0px solid black;">
                This text is displayed if your browser does not support HTML5 Canvas.
            </canvas>
        </div>
		<div id="minfo">&nbsp;</div>		
        <div id = "message" class="bl">Click, hold and drag to navigate!!</div> 
    <br/>
       <%-- <div id="testdebug"> TEST</div>
        <div id = "temptext" class="bl">Temp TEST!!</div> --%>
<!--Iframe for shownearest-->
<script language="JavaScript" type="text/javascript" src="../../wz_tooltip.js"></script>
<iframe id="near" name='near' width ="160px" height="600px" scrolling="no" frameborder="0" src="blank.html"/>
</body>
</html>
