<%@ Page Title="SkyServer: Application Programming Interface" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="API.aspx.cs" Inherits="SkyServer.Help.Docs.API" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">API and Tools for Programmer's Reference</div>
<div id="transp">
<table width="600px" cellspacing="3" cellpadding="5">
	<tr><td>
	<p>
        This page gives quick access to the webservices and links of the tools, which can be called programatically.<br />
        First section covers the description of Webservices REST-api and small usage examples.<br/>
        Second section provides quick links to the tools, showing examples how to construct their URLs.
	</p>
	
    <h2> <a href="#RestWebServices">REST web services </a></h2>
        <ul>
	Table 1: List of REST web services
    <table>
	<tr><td class="b">Webservices</td><td class="b">Short Description</td> </tr>
	<tr><td class="h"><a href="#imgcutout">Image Cutout </a></td><td class="h">Returns color images at given location. There are two resources /getJpeg and /getJpegCodec</td> </tr>
	<!--tr><td class="h"><a href="#getspec"> Get Spectra  </a></td><td class="h"> Access spectra graphs and data</td> </tr-->	
    <tr><td class="h"><a href="#voservice"> VO Services</a></td><td class="h">Services to search databases using IVOA standards and protocols. /conesearch, /SIAP, /SDSSFields </td> </tr>
	<tr><td class="h"><a href="#search">Search  </a></td><td class="h"> Returns specific database results. There are three services availble /radial, /rectangular and /sql</td> </tr>
	<!--tr><td class="h"><a href="#cross"> Cross-id </a></td><td class="h">Upload your own objects for cross-identification </td> </tr-->
    <tr><td class="h"><a href="#advanced"> Advanced Search</a></td><td class="h">Equivalent to search tools, there are three services /imagingquery, /spectroquery, /irspectraquery </td> </tr>
	<tr><td class="h"><a href="#cross"> Cross-id </a></td><td class="h">Upload your own objects for cross-identification </td> </tr>
    </table>

            <br />
        Web services described above can used either as an authenticated user or anonymous users. <br/>
        If user wants to use her own authentication tokens following header parameters needs to be set.<br/>
        There are common for all the services listed below.

        <table>
            <tr><td class="b">Header Names</td><td class="b">Values</td> </tr>
            <tr><td class="h">X-Auth-Token</td><td class="h"> Keystone token. If omitted, the query will be executed anonymously.</td> </tr>
        </table>
	</ul>


<h2><a href="#Tools">Tools</a></h2>
<ul>
             Table 2: List of Tools
    <table>
	<tr><td class="b">Tools</td><td class="b">Short Description</td> </tr>
	<tr><td class="h"><a href="#getframe">Get Frame </a></td><td class="h"> Access frame pictures</td> </tr>
	<tr><td class="h"><a href="#getssky">Get Scrolling Sky Image  </a></td><td class="h">Animated images of the sky passing the telescope </td> </tr>	
	<tr><td class="h"><a href="#spectrum">Spectra Services  </a></td><td class="h">Access spectra graphs and data, and use Web Service access to details of spectra</td> </tr>
	<tr><td class="h"><a href="#chart">Finding Chart </a></td><td class="h">Call Finding Chart at a particular location </td> </tr>
	<tr><td class="h"><a href="#navi">Navigate </a></td><td class="h">Pull up navigator with particular location </td> </tr>
	<tr><td class="h"><a href="#imglist">Image List  </a></td><td class="h">Display thumbnails for uploaded object list</td> </tr>
	<tr><td class="h"><a href="#explore"> Explore </a></td><td class="h">Interactive exploration of object properties </td> </tr>
	</table>
</ul>
       <p >
        Note that these web services and tools are the called when the corresponding Skyserver web applications are executed by the user.<br />
        You can see the parameters that where used in these cases by reviewing the <a href="<%= url %>/tools/search/UserHistory.aspx">User History</a> page (if you are already logged-in with Sciserver).
        <p/>
<hr />
<a name="RestWebServices"></a>
<h1>REST Web Services</h1>
<hr />
    <a name="imgcutout"></a>
    <h1 class='m'>Image Cutout</h1>

        There are two resources available under this service. 
        <h4>1. <b>GET or POST</b>      /getJpeg</h4>        
           <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>Ra</td><td>Right Ascention in degrees</td></tr>
               <tr><td>Dec</td><td>Declination in degrees</td></tr>
               <tr><td>scale</td><td>Scale of image in arsec per pixel, 0.4 is default</td></tr>
               <tr><td>height</td><td>in pixels</td></tr>
               <tr><td>width</td><td>in pixels</td></tr>
               <tr><td>opt</td><td>a string of characters for overlays on image (details below). This is an optional parameter</td></tr>
           </table>
        
           <br /><table>	<tr> <td class='b'> Code</td><td class='b'> Effect on image</td></tr>
	        <%
		        string[] p = new string[]{"G","L","P","S","T","O","B","F","M","Q","I"};
		        string[] f = new string[]{"Grid","Label","PhotoObjs","SpecObjs","TargetObjs","Outline","BoundingBox","Fields","Masks","Plates","InvertImage"};
		        for (int i=0; i<p.Length;i++) {
    			    Response.Write("<tr><td class='h'>"+p[i]+"</td>");
	    		    Response.Write("<td class='h'>"+f[i]+"</td></tr>");}
	        %> 
	        </table>
            <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.WSGetJpegUrl%>?ra=114.82991&dec=10.91817&width=512&height=512&opt=OG"><%=globals.WSGetJpegUrl%>?ra=224.5941&dec=-1.09&width=512&height=512&opt=OG </a></pre>
                </span>        
        <hr>
        <h4>2. <b>GET or POST</b>      /getJpegCodec</h4>
            <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>R</td><td>SDSS Run number</td></tr>
               <tr><td>C</td><td>SDSS Camcol number</td></tr>
               <tr><td>F</td><td>SDSS Field number</td></tr>
               <tr><td>Z</td><td>SDSS Zoom number</td></tr>               
           </table>    
            <span>Example:<pre><a target="api"  class='sml' href="<%=globals.WSGetCodecUrl%>?R=1140&C=1&F=120&Z=12"><%=globals.WSGetCodecUrl%>?R=1140&C=1&F=120&Z=12</a></pre></span>
        <hr>

        <a name="voservice"></a>
    <h1 class='m'>VO Webservices</h1>
            Following web services are developed on standards and protocols given by International Virtual Observatory Alliance. 
            These services we are supporting as is.
            <h4>1. Cone Search</h4><br />GET or POST /conesearch
             <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>Ra</td><td>Right Ascention in degrees</td></tr>
               <tr><td>Dec</td><td>Declination in degrees</td></tr>
               <tr><td>sr</td><td>Radius in arcminutes</td></tr>
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.ConeWS%>?ra=145&dec=34&sr=1"><%=globals.ConeWS%>?ra=145&dec=34&sr=1</a></pre>
            </span>
            <hr/>
            <h4>2. SDSS Fields Search</h4><br />GET or POST /sdssfields
               <span>This webservices has four resources as below</span>
               <h5> 2.1 /FieldArray</h5>
               <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>ra</td><td>Right Ascention in degrees</td></tr>
               <tr><td>dec</td><td>Declination in degrees</td></tr>
               <tr><td>radius</td><td>Radius in arcminutes</td></tr>
                <tr><td>format</td><td>output file format. E.g. csv,html,xml,json</td></tr>    
              </table>    
            <br>
            <span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.FieldsArray%>?ra=132&dec=12&radius=10&format=json"><%=globals.FieldsArray%>?ra=132&dec=12&radius=10&format=json</a></pre>
            </span>

            <h5> 2.2 /FieldArrayRect</h5>
                <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>ra</td><td>Right Ascention in degrees  one corner</td></tr>
               <tr><td>dec</td><td>Declination in degrees one corner</td></tr>
               <tr><td>dra</td><td>Right Ascention in degrees other corner </td></tr>
               <tr><td>ddec</td><td>Declination in degrees other corner</td></tr>
                <tr><td>format</td><td>output file format. E.g. csv,html,xml,json</td></tr>    
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.FieldArrayRect%>?ra=132&dec=12&dra=0.1&ddec=0.1&format=json"><%=globals.FieldArrayRect%>?ra=132&dec=12&dra=0.1&ddec=0.1&format=json</a></pre>
            </span>

            <hr>	

             <h4>3. SIAP</h4><br />GET or POST /siap
               <span>Simple Image Access Protocol is a virtual Observatory protocol, web service gives options to get SDSS images data</span>

            <h5> 3.1 /getSIAPinfoAll</h5>
            Siap search for all bands. It outputs all fields (images) included in the Region of Interest.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>POS</td><td>Position (string with comma seperation) in Right Ascention, Declination in degrees </td></tr>
                    <tr><td>SIZE</td><td>Size in degrees</td></tr>               
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.getAllSIAPInfo%>?POS=132,12&SIZE=0.1&FORMAT=image/jpeg"><%=globals.getAllSIAPInfo%>SIAP/getSIAP?POS=132,12&SIZE=0.1&FORMAT=image/jpeg</a></pre>
            </span>
                <h5> 3.2 /getSIAP</h5>
                Get the image access via SIAP.
                <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>POS</td><td>Position (string with comma seperation) in Right Ascention, Declination in degrees </td></tr>
               <tr><td>SIZE</td><td>Size in degrees</td></tr>
               <tr><td>FORMAT</td><td>format , one of the following values: 'METADATA', 'ALL','GRAPHIC','image/fits', or 'image/jpeg' (string)</td></tr>
               
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.getSIAP%>?POS=132,12&SIZE=0.1&FORMAT=metadata&bandpass=i"><%=globals.getSIAP%>?POS=132,12&SIZE=0.1&FORMAT=metadata&bandpass=i</a></pre>
            </span>

            <h5> 3.3 /getSIAPinfo</h5>
            Siap search by band name. It outputs all fields (images) included in the Region of Interes            
               <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>POS</td><td>Position (string with comma seperation) in Right Ascention, Declination in degrees </td></tr>
                    <tr><td>SIZE</td><td>Size in degrees</td></tr>
                    <tr><td>FORMAT</td><td>one of the following values: 'METADATA', 'ALL','GRAPHIC', 'image/fits', or 'image/jpeg' (string) </td></tr>               
                    <tr><td>BANDPASS</td><td> band name, any combination of 'u', 'g', 'r', 'i', 'z' or '*' to get them all in addition to the jpeg mosaic (string)</td></tr>                
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.getSIAPInfo%>?POS=132,12&SIZE=0.1&FORMAT=metadata&bandpass=i"><%=globals.getSIAPInfo%>?POS=132,12&SIZE=0.01&FORMAT=metadata&bandpass=i</a></pre>
            </span>
        <hr />

	<a name="search"></a>
    <h1 class='m'>Search</h1>

	<h4>1. Radial Search</h4><br />GET or POST /radialSearch
           <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>ra</td><td>Right Ascention in degrees</td></tr>
               <tr><td>dec</td><td>Declination in degrees</td></tr>
               <tr><td>radius</td><td>Radius in arcminutes</td></tr>
               <tr><td>format</td><td>output file format. E.g. csv,html,xml,votable,json,fits,mydb</td></tr>
               <tr><td>limit</td><td>maximum number of rows retrieved. If set to 0, then all rows will be retrieved.</td></tr>               
               <tr><td>coordtype</td><td>set to equatorial or galactic, depending on the coordinate system which the ra,dec values are based.</td></tr>
               <tr><td>whichphotometry</td><td>set to optical or infrared, in order to choose between SDSS  legacy or Apogee data.</td></tr>
               <tr><td>*band</td><td>* is a wildcard for u, g, r, i, z, j, h, or k, which represent photmetric bands. These are optional parameters for the aparent magnitude limits of the objects. They are defined as a comma seperated range e.g uband=0,20.</td></tr>
               <tr><td>check_*</td><td>* is a wildcard for u, g, r, i, z, j, h, or k, which represent photmetric bands. These are optional parameters that make effective the aparent magnitude limits defined by the paremeter *band. They take the values u, g, r, i, z, j, h, or k, respectively, e.g check_u=u.</td></tr>
           </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.RadialSearchWS%>?ra=258.2&dec=64&radius=4.1&whichway=equatorial&limit=10&format=html&fp=none&uband=0,17&check_u=u&gband=0,15&check_g=g&whichquery=imaging"><%=globals.RadialSearchWS%>?ra=258.2&dec=64&radius=4.1&whichway=equatorial&limit=10&format=html&fp=none&uband=0,17&check_u=u&gband=0,15&check_g=g&whichquery=imaging</a></pre>
            </span>
	
	<hr>
        <h4>2. Rectangular Search</h4><br />GET or POST /radialSearch
           <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>min_ra</td><td>Right Ascention in degrees in one corner</td></tr>
               <tr><td>min_dec</td><td>Declination in degrees in one corner</td></tr>
               <tr><td>max_ra</td><td>Right Ascention in degrees in other corner</td></tr>
               <tr><td>max_dec</td><td>Declination in degrees in other corner</td></tr>
               <tr><td>format</td><td>output file format. E.g. csv,html,xml,votable,json,fits,mydb</td></tr>
               <tr><td>limit</td><td>maximum number of rows retrieved. If set to 0, then all rows will be retrieved.</td></tr>               
               <tr><td>coordtype</td><td>set to equatorial or galactic, depending on the coordinate system which the ra,dec values are based.</td></tr>
               <tr><td>whichphotometry</td><td>set to optical or infrared, in order to choose between SDSS  legacy or Apogee data.</td></tr>
               <tr><td>*band</td><td>* is a wildcard for u, g, r, i, z, j, h, or k, which represent photmetric bands. These are optional parameters for the aparent magnitude limits of the objects. They are defined as a comma seperated range e.g uband=0,20.</td></tr>
               <tr><td>check_*</td><td>* is a wildcard for u, g, r, i, z, j, h, or k, which represent photmetric bands. These are optional parameters that make effective the aparent magnitude limits defined by the paremeter *band. They take the values u, g, r, i, z, j, h, or k, respectively, e.g check_u=u.</td></tr>
           </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.RectangularSearchWS%>?min_ra=250.2&max_ra=250.5&min_dec=35.1&max_dec=35.5&whichway=equatorial&limit=10&format=html&fp=none&uband=0,17&check_u=u&gband=0,15&check_g=g&whichquery=imaging"><%=globals.RadialSearchWS%>?min_ra=250.2&max_ra=250.5&min_dec=35.1&max_dec=35.5&whichway=equatorial&limit=10&format=html&fp=none&uband=0,17&check_u=u&gband=0,15&check_g=g&whichquery=imaging</a></pre>
            </span>
	<hr>	
     <h4>3. SQL Search</h4><br />GET or POST /sqlSearch
           <table>
               <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
               <tr><td>cmd</td><td>SQL query</td></tr>
               <tr><td>format</td><td>output file format. E.g. csv,html,xml,votable,json,fits,mydb</td></tr>
               <tr><td>limit</td><td>maximum number of rows retrieved. If set to 0, then all rows will be retrieved.</td></tr>               
               <tr><td>syntax</td><td>If set to Syntax, then only a syntax check is performed on the SQL query and no result table is returned.</td></tr>               
           </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.SQLSearchWS%>?cmd=select%20top%2010%20ra,dec%20from%20Frame&format=csv"><%=globals.SQLSearchWS%>?cmd=select%20top%2010%20ra,dec%20from%20Frame&format=csv</a></pre>
            </span>
    <hr />

            <a name="advanced"></a>
            <h1 class='m'>Advanced Search</h1>
<!-------------------------------------------------------Imaging Query Search -------------------------------------------------------------------------------------------------------->     
	<h4>1. ImagingQuery Search</h4><br />GET or POST /ImagingQuery
            Get the query results on Imaging data from SDSS database.            
             <h5> 1.1 /Cone</h5>
                Conical search on the imaging data.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>maximum number of rows retrieved. If set to 0, then all rows will be retrieved.</td></tr>               
                    <tr><td>format</td><td>output file format. E.g. csv,html,xml,votable,json,fits,mydb</td></tr>
                    <tr><td>ra, dec</td><td>sky cordinates to search</td></tr>               
                    <tr><td>radius</td><td>search radius in arcmin</td></tr>               
                    <tr><td>uMin,gMin,rMin,iMin,zMin</td><td>Lower bounds of the magnitudes of objects (in the SDSS photometric bands)</td></tr>               
                    <tr><td>uMax,gMax,rMax,iMax,zMax</td><td>Upper bounds of the magnitudes of objects (in the SDSS photometric bands)</td></tr>               
                    <tr><td>ugMin,grMin,riMin,izMin</td><td>Lower bounds of the colors of objects (in the SDSS photometric bands)</td></tr>               
                    <tr><td>ugMax,grMax,riMax,izMax</td><td>Upper bound of the colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters: imaging fields to be included as columns in the resuts table.</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters: spectroscopic fields to be included as columns in the resuts table.</td></tr>               
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.ConeImaging%>?limit=50&format=csv&imgparams=minimal&specparams=none&ra=10&dec=0.2&radius=5.0&magType=model"><%=globals.ConeImaging%>?limit=50&format=csv&imgparams=minimal&specparams=none&ra=10&dec=0.2&radius=5.0&magType=model</a></pre>

                <h5> 1.2 /NoPosition</h5>
                Search imaging data with no positional constraints.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>               
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
              </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.NoPositionImaging%>?format=html&limit=30&izMin=3&izMax=4&riMin=&riMax=&flagsonlist=BRIGHT,EDGE&magType=model&uMin=0"><%=globals.NoPositionImaging%>?format=html&limit=30&izMin=3&izMax=4&riMin=&riMax=&flagsonlist=BRIGHT,EDGE&magType=model&uMin=0</a></pre>


                <h5> 1.3 /Proximity</h5> Only POST method.
                 Proximity query searches objects based on user input coordinates.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>               
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
                    <tr><td>radecTextarea</td><td>comma separated values of (RA,Dec) coordinates of the objects in the first 2 columns. The optional third column is search radius. Column names should be included in the first row.</td></tr>
               </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.ProximityImaging%>?searchtool=Imaging&limit=50&format=html&imgparams=minimal&specparams=none&raMin=10&decMin=0.20&raMax=10.2&decMax=0.22&positionType=proximity&radecTextarea=ra%2Cdec%2Csep%0D%0A256.443154%2C58.0255%2C1.0%0D%0A29.94136%2C0.08930%2C1.0%0D%0A&searchNearBy=nearest&radiusDefault=1.0"  ><%=globals.ProximityImaging%>?searchtool=Imaging&limit=50&format=html&imgparams=minimal&specparams=none&raMin=10&decMin=0.20&raMax=10.2&decMax=0.22&positionType=proximity&radecTextarea=ra%2Cdec%2Csep%0D%0A256.443154%2C58.0255%2C1.0%0D%0A29.94136%2C0.08930%2C1.0%0D%0A&searchNearBy=nearest&radiusDefault=1.0</a></pre>

                <h5> 1.4 /Rectangular</h5>
            
                <table>                    
                   <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>               
                    <tr><td>raMin,raMax,decMin,decMax</td><td>sky cordinates to search</td></tr>               
                    <tr><td>radius</td><td>search radius in arcmin</td></tr>               
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.RectangularImaging%>?limit=50&raMin=258&raMax=258.2&decMin=64&decMax=64.1&imgparams=typical,minimal&magType=model&format=csv"><%=globals.RectangularImaging%>?limit=50&raMin=258&raMax=258.2&decMin=64&decMax=64.1&imgparams=typical,minimal&magType=model&format=csv</a></pre>

     <!-------------------------------------------------------Spectral Search -------------------------------------------------------------------------------------------------------->     
	<hr>
        <h4>2. Spectroquery Search</h4><br />GET or POST /SpectroQuery
                Similar to Imaging Query search one can do search on the spectral data.                
                They are divided in four sub positional services. Cone,Rectangular,Proximity,NoPosition etc.
           <h5> 2.1 /Cone</h5>
                Conical search on the imaging data, main input parameters are ra, dec and radius.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>ra, dec</td><td>sky cordinates to search</td></tr>               
                    <tr><td>radius</td><td>search radius in arcmin</td></tr> 
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>                                                
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>priFlagsOnList</td><td>comma separated list of primary flags set to on</td></tr>        
                    <tr><td>priFlagsOffList</td><td>comma separated list of primary flags set to off</td></tr>        
                    <tr><td>secFlagsOnList</td><td>comma separated list of secondary flags set to on</td></tr>        
                    <tr><td>secFlagsOffList</td><td>comma separated list of secondary flags set to off</td></tr>        
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
                       
              </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.ConeSpectroWS%>?radius=5.0&dec=0.2&ra=10&uMin=0&uMax=20&objType=doGalaxy,doStar&limit=50&format=csv&specparams=minimal&imgparams=none&redshiftMin=&zWarning=on&redshiftMax=&priFlagsOnList=ignore&priFlagsOffList=ignore&secFlagsOnList=ignore&secFlagsOffList=ignore&magType=model&gMin=&rMin=&iMin=&zMin=&gMax=&rMax=&iMax=&zMax=&ugMin=&grMin=&riMin=&izMin=&ugMax=&grMax=&riMax=&izMax=&minQA=&flagsOnList=ignore&flagsOffList=ignore"><%=globals.ConeSpectroWS%>?radius=5.0&dec=0.2&ra=10&uMin=0&uMax=20&objType=doGalaxy,doStar&limit=50&format=csv&specparams=minimal&imgparams=none&redshiftMin=&zWarning=on&redshiftMax=&priFlagsOnList=ignore&priFlagsOffList=ignore&secFlagsOnList=ignore&secFlagsOffList=ignore&magType=model&gMin=&rMin=&iMin=&zMin=&gMax=&rMax=&iMax=&zMax=&ugMin=&grMin=&riMin=&izMin=&ugMax=&grMax=&riMax=&izMax=&minQA=&flagsOnList=ignore&flagsOffList=ignore</a></pre>

                <h5> 2.2 /NoPosition</h5>
                Search imaging data with no positional constraints.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>               
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>priFlagsOnList</td><td>comma separated list of primary flags set to on</td></tr>        
                    <tr><td>priFlagsOffList</td><td>comma separated list of primary flags set to off</td></tr>        
                    <tr><td>secFlagsOnList</td><td>comma separated list of secondary flags set to on</td></tr>        
                    <tr><td>secFlagsOffList</td><td>comma separated list of secondary flags set to off</td></tr>        
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
              </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.NoPositionSpectroWS%>?limit=30&izMin=3&izMax=4&riMin=&riMax=&flagsonlist=BRIGHT,EDGE&magType=model&uMin=0&format=html"><%=globals.NoPositionSpectroWS%>?limit=30&izMin=3&izMax=4&riMin=&riMax=&flagsonlist=BRIGHT,EDGE&magType=model&uMin=0&format=html</a></pre>

                <h5> 2.3 /Proximity</h5> POST method only
                 Proximity query searches data on user input data.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>               
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>priFlagsOnList</td><td>comma separated list of primary flags set to on</td></tr>        
                    <tr><td>priFlagsOffList</td><td>comma separated list of primary flags set to off</td></tr>        
                    <tr><td>secFlagsOnList</td><td>comma separated list of secondary flags set to on</td></tr>        
                    <tr><td>secFlagsOffList</td><td>comma separated list of secondary flags set to off</td></tr>        
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
               </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.ProximitySpectroWS%>?searchtool=Spectro&limit=50&format=html&imgparams=minimal&specparams=minimal&raMin=10&decMin=0.20&raMax=10.2&decMax=0.22&positionType=proximity&radecTextarea=ra%2Cdec%2Csep%0D%0A256.443154%2C58.0255%2C1.0%0D%0A29.94136%2C0.08930%2C1.0%0D%0A&searchNearBy=nearest&radiusDefault=1.0"><%=globals.ProximitySpectroWS%>?searchtool=Spectro&limit=50&format=html&imgparams=minimal&specparams=minimal&raMin=10&decMin=0.20&raMax=10.2&decMax=0.22&positionType=proximity&radecTextarea=ra%2Cdec%2Csep%0D%0A256.443154%2C58.0255%2C1.0%0D%0A29.94136%2C0.08930%2C1.0%0D%0A&searchNearBy=nearest&radiusDefault=1.0</a></pre>

                <h5> 2.4 /Rectangular</h5>
                        Rectangular search takes two corners of rectangular area.
                <table>                    
                   <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>raMin,raMax,decMin,decMax</td><td>sky cordinates to search</td></tr>               
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>                    
                    <tr><td>u,g,r,i,z</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>ug,gr,ri,iz</td><td>colors of the objects in the SDSS</td></tr>               
                    <tr><td>objType</td><td>To select star or galaxy</td></tr>               
                    <tr><td>magType</td><td>magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>imgparams</td><td> imaging parameters</td></tr>               
                    <tr><td>specparams</td><td>spectroscopy parameters</td></tr>               
                    <tr><td>priFlagsOnList</td><td>comma separated list of primary flags set to on</td></tr>        
                    <tr><td>priFlagsOffList</td><td>comma separated list of primary flags set to off</td></tr>        
                    <tr><td>secFlagsOnList</td><td>comma separated list of secondary flags set to on</td></tr>        
                    <tr><td>secFlagsOffList</td><td>comma separated list of secondary flags set to off</td></tr>        
                    <tr><td>flagsOnList</td><td>comma separated list of photometric flags set to on</td></tr>        
                    <tr><td>flagsOffList</td><td>comma separated list of photometric flags set to off</td></tr>        
              </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.RectangularSpectroWS%>?limit=50&raMin=258&raMax=258.2&decMin=64&decMax=64.1&imgparams=typical,minimal&magType=model&format=csv"><%=globals.RectangularSpectroWS%>?limit=50&raMin=258&raMax=258.2&decMin=64&decMax=64.1&imgparams=typical,minimal&magType=model&format=csv</a></pre>
          
                <!-------------------------------------------------------IR Spectra Search -------------------------------------------------------------------------------------------------------->     
	         <hr>	
              <h4>3. IRSpectra query Search</h4><br />GET or POST /IRSpectraQuery/

                Similar to Imaging Query search one can do search on the spectral data.                
                They are divided in four sub positional services. Cone,Rectangular,Proximity,NoPosition etc.

                <h5> 3.1 /ConeIR</h5>
                    Conical search on the IR Spectra data, main input parameters are ra, dec and radius.
                   <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>ra, dec</td><td>sky cordinates to search</td></tr>               
                    <tr><td>radius</td><td>search radius in arcmin</td></tr> 
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>                                                
                    <tr><td>j,h,k (min and max)</td><td>IR magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>jh,hk (min and max)</td><td>IR colors</td></tr>               
                    <tr><td>snr, vhelio, scatter (min and max)</td><td>Observational Parameters</td></tr>               
                    <tr><td>Temp,logg,feh,afe (min and max)</td><td>Stellar Parameters</td></tr>                                   
                    <tr><td>irspecparams</td><td>IR spectroscopy parameters</td></tr>               
                    <tr><td>irTargetFlagsOnList</td><td>list of APOGEE_Target1 flags set to on</td></tr>   
                    <tr><td>irTargetFlagsOffList</td><td>list of APOGEE_Target1 flags set to off</td></tr>
                    <tr><td>irTargetFlags2OnList</td><td>list of APOGEE_Target2 flags set to on</td></tr>   
                    <tr><td>irTargetFlags2OffList</td><td>list of APOGEE_Target2 flags set to off</td></tr>
                   </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.ConeIRWS%>?limit=50&format=json&irspecparams=typical&ra=271.75&dec=-20.19&radius=5.0&Lcenter=10&Bcenter=0.2&lbRadius=5.0&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore"><%=globals.ConeIRWS%>?limit=50&format=json&irspecparams=typical&ra=271.75&dec=-20.19&radius=5.0&Lcenter=10&Bcenter=0.2&lbRadius=5.0&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore</a></pre>
                
                <h5> 3.2 /GalacticIR </h5>
                Search IR Spectra with galactic coordinates.
               <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>LCenter, Bcenter</td><td>Galactic co-ordinates</td></tr>               
                    <tr><td>lbRadius</td><td>search radius in arcmin</td></tr> 
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>                                                
                    <tr><td>j,h,k (min and max)</td><td>IR magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>jh,hk (min and max)</td><td>IR colors</td></tr>               
                    <tr><td>snr, vhelio, scatter (min and max)</td><td>Observational Parameters</td></tr>               
                    <tr><td>Temp,logg,feh,afe (min and max)</td><td>Stellar Parameters</td></tr>                                   
                    <tr><td>irspecparams</td><td>IR spectroscopy parameters</td></tr>               
                    <tr><td>irTargetFlagsOnList</td><td>list of APOGEE_Target1 flags set to on</td></tr>   
                    <tr><td>irTargetFlagsOffList</td><td>list of APOGEE_Target1 flags set to off</td></tr>
                    <tr><td>irTargetFlags2OnList</td><td>list of APOGEE_Target2 flags set to on</td></tr>   
                    <tr><td>irTargetFlags2OffList</td><td>list of APOGEE_Target2 flags set to off</td></tr>
                   </table>    
                <br><span>Example:
                <pre><a target="api"  class='sml' href="<%=globals.GalacticIRWS%>?limit=50&format=csv&irspecparams=typical&Lcenter=10&Bcenter=0.2&lbRadius=5.0&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore"><%=globals.GalacticIRWS%>IRSpectraQuery/GalacticIR?limit=50&format=csv&irspecparams=typical&Lcenter=10&Bcenter=0.2&lbRadius=5.0&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore</a></pre>


                <h5> 3.3 /NoPositionIR</h5>
                 No positional constraints.
                <table>
                    <tr><td class="b">Prameters</td><td class="b">Expected Values</td></tr>
                    <tr><td>limit</td><td>limit the number of rows in result</td></tr>
                    <tr><td>format</td><td>result format</td></tr>                                                
                    <tr><td>j,h,k (min and max)</td><td>IR magnitudes of the objects in the SDSS</td></tr>               
                    <tr><td>jh,hk (min and max)</td><td>IR colors</td></tr>               
                    <tr><td>snr, vhelio, scatter (min and max)</td><td>Observational Parameters</td></tr>               
                    <tr><td>Temp,logg,feh,afe (min and max)</td><td>Stellar Parameters</td></tr>                                   
                    <tr><td>irspecparams</td><td>IR spectroscopy parameters</td></tr>               
                    <tr><td>irTargetFlagsOnList</td><td>list of APOGEE_Target1 flags set to on</td></tr>   
                    <tr><td>irTargetFlagsOffList</td><td>list of APOGEE_Target1 flags set to off</td></tr>
                    <tr><td>irTargetFlags2OnList</td><td>list of APOGEE_Target2 flags set to on</td></tr>   
                    <tr><td>irTargetFlags2OffList</td><td>list of APOGEE_Target2 flags set to off</td></tr>
               </table>    
            <br><span>Example:
            <pre><a target="api"  class='sml' href="<%=globals.NoPositionIRWS%>?limit=50&format=csv&irspecparams=typical&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore"><%=globals.NoPositionIRWS%>?limit=50&format=csv&irspecparams=typical&jMin=&hMin=&kMin=&jMax=&hMax=&kMax=&jhMin=&hkMin=&jhMax=&hkMax=&snrMin=&vhelioMin=&scatterMin=&snrMax=&vhelioMax=&scatterMax=&tempMin=&loggMin=&fehMin=&afeMin=&tempMax=&loggMax=&fehMax=&afeMax=&irTargetFlagsOnList=ignore&irTargetFlagsOffList=ignore&irTargetFlags2OnList=ignore&irTargetFlags2OffList=ignore</a></pre>
            
<hr>
        	<a name="cross"></a>
                <h1 class='m'>Cross-Identification</h1>
              <br />GET or POST /CrossIDsearch/
	<p>You can search for photometric (image) and/or spectroscopic
	objects using the same cross-id form.  You may use POST or GET
	methods to this URL - the basic form is as follows.</p>

    <h3>The GET method (example for default crossid page):	</h3>

	<pre>
        <a target="api" class='sml' href="<%=globals.CrossIdWS%>?searchtool=CrossID&searchType=photo&photoScope=nearPrim&photoUpType=ra-dec&radius=0.5&firstcol=1&paste=++name++ra+++++++dec%0D%0A++A1+++195.2++++2.5%0D%0A++A2+++194.5++++2.6%0D%0A++A3+++193.6++++2.8%0D%0A++A4+++-90.1++++-90.051%0D%0A&upload=&uquery=SELECT+%0D%0A+++p.objID%2C+p.ra%2C+p.dec%2C+p.run%2C+p.rerun%2C+p.camcol%2C+p.field%2C%0D%0A+++dbo.fPhotoTypeN(p.type)+as+type%2C%0D%0A+++p.modelMag_u%2C+p.modelMag_g%2C+p.modelMag_r%2C+p.modelMag_i%2C+p.modelMag_z+%0D%0AFROM+%23x+x%2C+%23upload+u%2C+PhotoTag+p%0D%0AWHERE+u.up_id+%3D+x.up_id+and+x.objID%3Dp.objID+%0D%0AORDER+BY+x.up_id%0D%0A%09%09&format=html"><%=globals.CrossIdWS%>?searchtool=CrossID&searchType=photo&photoScope=nearPrim&photoUpType=ra-dec&radius=0.5&firstcol=1&paste=++name++ra+++++++dec%0D%0A++A1+++195.2++++2.5%0D%0A++A2+++194.5++++2.6%0D%0A++A3+++193.6++++2.8%0D%0A++A4+++-90.1++++-90.051%0D%0A&upload=&uquery=SELECT+%0D%0A+++p.objID%2C+p.ra%2C+p.dec%2C+p.run%2C+p.rerun%2C+p.camcol%2C+p.field%2C%0D%0A+++dbo.fPhotoTypeN(p.type)+as+type%2C%0D%0A+++p.modelMag_u%2C+p.modelMag_g%2C+p.modelMag_r%2C+p.modelMag_i%2C+p.modelMag_z+%0D%0AFROM+%23x+x%2C+%23upload+u%2C+PhotoTag+p%0D%0AWHERE+u.up_id+%3D+x.up_id+and+x.objID%3Dp.objID+%0D%0AORDER+BY+x.up_id%0D%0A%09%09&format=html</a>
	</pre>

<hr />
<a name="Tools"></a>
<h1>Tools</h1>
        
                    <!-------------------------------------------------------Other Tools -------------------------------------------------------------------------------------------------------->     

<hr />
	<a name="getframe"></a>
	<h1 class="m"> Get Frame </h1>
	<pre><a target="api" class='sml' href="<%=url%>/get/frameByRCFZ.ashx?R=1140&C=1&F=120&Z=12"><%=url%>/get/frameByRCFZ.ashx?R=1140&C=1&F=120&Z=12 </a></pre>
	where R is the Run, C is the CamCol and Z is the Zoom level (Z can be either 12, 25, 50 or 0 (for 100%)), or 
	<pre><a target="api"  class='sml' href="<%=url%>/get/frameById.ashx?id=1237650369404207104&zoom=12"> <%=url%>/get/frameById.ashx?id=1237650369404207104&zoom=12 </a></pre>
	where id is the fieldId.
	<p>
    <hr />

	<a name="getssky"></a>
	<h1 class="m"> Get Scrolling Sky image</h1>
	<pre><a target="api" class='sml'  href="<%=url%>/tools/scroll/camcol.aspx?R=1140&C=1&Z=25"><%=url%>/tools/scroll/camcol.aspx?R=1140&C=1&Z=25 </a></pre>
	Where R is the Run number , C is the CamCol and Z is the Zoom
	level.  Z can be either 12, 25, 50 or 0 (for 100%).
    <hr />

        <a name="spectrum"></a>
        <h1 class='m'>Spectra Services</h1>

        <a name="getspec"></a>
	    <h4>1. Get Spectra </h4>
	    <pre><a target="api" class='sml'  href="<%=url%>/get/specByPF.ashx?P=299489402567026688&F=25"><%=url%>/get/specByPF.ashx?P=299489402567026688&F=25 </a> </pre>
	    where P is the Plate and F is the Fiber, or
	    <pre><a target="api" class='sml'  href="<%=url%>/get/specById.ashx?ID=301889361622886400"><%=url%>/get/specById.ashx?ID=301889361622886400 </a></pre>
	    where ID is the SpecObjId.
	    <hr>
	    <a name="spectrum"></a>
	    <h4>2. Full Spectral Access</h4>
	    There is a comprehensive web site to access the details of spectra from the SDSS
	    and other surveys (2dF). You can also upload your own spectra. <p>
	    <a target="api"  class='sml' href="<%=globals.WSSpecHome%>"> <%=globals.WSSpecHome%></a>  <br>
	    <p>
	    This site also has a <a href="<%=globals.WSFilterHome%>">Filter Profile service</a> and a SOAP interface 
	    to the spectrum service described in its <a target="api" href="<%=globals.WSSpecHome%>/docs/doc.aspx?p=00_index.htm">documentation page </a>.
	    <p>
        <hr />



	
	<a name="chart"></a>
	<h1 class="m">Finding Chart </h1>
	The page, built on top of the Cutout service, creates a Finding Chart, centered
	on the specified location at a specified scale. Properly formatted finding charts 
	can be sent to the printer. The printed image is always inverted for better looking
	prints.
	<p>You may jump directly to a particular location with the navigation tool using:
	<pre><a target="api"  class='sml' href="<%=url%>/tools/chart/chart.aspx?ra=114.82991&dec=10.91817&scale=0.3&opt=GO"><%=url%>/tools/chart/chart.aspx?ra=184.9511&dec=-0.8754&opt=GO</a></pre>
	where ra is Right Ascension in degrees, dec is Declination in degrees,<br>
	scale is the scale of the image in arcsec per pixel, 0.4 is default<br> 
	opt is a string of characters, as listed above for the cutout service.
	<p>
	<hr>

	<a name="navi"></a>
	<h1 class="m">Navigate</h1>
	This page, built from the Cutout service provides easy navigation in the vicinity 
	of a given point on the sky. One can move around by clicking on the frame of the image,
	or on individual objects. A short list of the basic properties and a magnified thumbnail \
	image of the object nearest to the selected point is then displayed. 
	<p>You may jump directly to a particular location with the navigation tool using:
	<pre><a target="api"  class='sml' href="<%=url%>/tools/chart/navi.aspx?ra=184.9511&dec=-0.8754&scale=0.3&opt=GO"><%=url%>/tools/chart/navi.aspx?ra=184.9511&dec=-0.8754&opt=GO</a></pre>
	where ra is Right Ascension in degrees, dec is declination in degrees,<br>
	scale is the scale of the image in arcsec per pixel, 0.4 is default<br> 
	opt is a string of characters, as seen above.
	<p>
	
	<hr>
	<a name="imglist"></a>
   	<h1 class="m">Image List</h1>
   	This page, built from the Cutout service, can generate thumbnails of SDSS images based upon a
		user defined list of object positions. The images are linked to the
		other tools. The list can also be specified with a query. The page can be called via HTTP POST. <br>
	You will need a form such as the following :
	<pre cls="sml">&lt;form action="<%=url%>/tools/chart/showlist.aspx"
method="post">
&lt;TEXTAREA name="paste">
    ra     dec  
159.815 -0.655
161.051  0.152
161.739  0.893
164.090 -0.889
&lt;/TEXTAREA>
&lt;input type="submit">
&lt;/form>
</pre>
Basically you must post to the server a field called "paste" which contains the list of thumbnails you require.
	<p>
	
	
	<hr>
	<a name="explore"></a>
    <h1 class='m'>Explore</h1>
			The Explore Tool contains a summary of an object, and interactive 
		links to further detailed properties, like its spectrum or neighbors, etc.

	<pre><a target="api"  class='sml' href="<%=url%>/tools/explore/obj.aspx?id=1237654386268439267"><%=url%>/tools/explore/obj.aspx?id=1237654386268439267</a></pre>
	where id is the objId, or
	<pre><a target="api" class='sml'  href="<%=url%>/tools/explore/obj.aspx?ra=180.6&dec=0.2"><%=url%>/tools/explore/obj.aspx?ra=180.6&dec=0.2</a></pre>
	where ra is Right Ascension in degrees, dec is declination in degrees, or
	<pre><a target="api" class='sml'  href="<%=url%>/tools/explore/obj.aspx?sid=299492151346096128"><%=url%>/tools/explore/obj.aspx?sid=299492151346096128</a></pre>
	where sid is the SpecObjId, or 
	<pre><a target="api" class='sml'  href="<%=url%>/tools/explore/obj.aspx?mjd=51630&plate=266&fiber=100"><%=url%>/tools/explore/obj.aspx?mjd=51630&plate=266&fiber=100</a></pre>
	where mjd is the modified julian date, plate is the plate and fiber is the fiberid.
    <hr />
<!--
	<hr>
	<a name="density"></a>
	<h3> Density plots</h3>
	You may request colour coded density plots for queries using this SOAP webservice. See <br>
	<a target="api"  class='sml' href="<=Density%>"><=Density%></a> 
-->	



<!--h3>The POST method:	</h3-->

	<!--pre class="sml">
&lt;FORM METHOD="post" ENCTYPE="multipart/form-data" ACTION="<%=url%>/tools/crossid/x_crossid.aspx" id="crossid" name="crossid"&gt;
&lt;input id="searchType1" name="searchType" value="photo" type=radio class="box" CHECKED&gt;
&lt;input id="photoScope1" name="photoScope" value="nearPrim" type=radio class="box" CHECKED&gt;Nearest Primary Object&lt;/input&gt;
&lt;input id="photoScope2" name="photoScope" value="nearObj" type=radio class="box"&gt;Nearest Object&lt;/input&gt;
&lt;input id="photoScope3" name="photoScope" value="allPrim" type=radio class="box"&gt;All Nearby Primary Objects&lt;/input&gt;
&lt;input id="photoScope4" name="photoScope" value="allObj" type=radio class="box"&gt;All Nearby Objects&lt;/input&gt;
&lt;input id="photoUpType1" name="photoUpType" value="ra-dec" type=radio class="box"  CHECKED&gt;RA, dec&lt;/input&gt;
&lt;input id="photoUpType2" name="photoUpType" value="run-rerun" type=radio class="box"&gt;run-rerun-camcol-field-obj&lt;/input&gt;
&lt;input id="joinSpec" name="joinSpec" type="checkbox"&gt;Spectra&lt;/input&gt;
&lt;input id="searchType1" name="searchType" value="spectro" type="radio" class="box"&gt;
&lt;input id="spectroScope1" name="spectroScope" value="nearPrim" type=radio class="box" CHECKED DISABLED&gt;Nearest Primary Spectrum&lt;/input&gt;
&lt;input id="spectroScope2" name="spectroScope" value="nearObj" type=radio class="box" DISABLED&gt;Nearest Spectrum&lt;/input&gt;
&lt;input id="spectroScope3" name="spectroScope" value="allPrim" type=radio class="box" DISABLED&gt;All Nearby Primary Spectra&lt;/input&gt;
&lt;input id="spectroScope4" name="spectroScope" value="allObj" type=radio class="box" DISABLED&gt;All Nearby Spectra&lt;/input&gt;
&lt;input id="spectroUpType1" name="spectroUpType" value="ra-dec" type=radio class="box" DISABLED CHECKED&gt;RA, dec&lt;/input&gt;
&lt;input id="spectroUpType2" name="spectroUpType" value="plate-mjd-fiber" type=radio class="box" DISABLED&gt;plate-MJD-fiberID&lt;/input&gt;
&lt;input id="joinPhoto" name="joinPhoto" type="checkbox" DISABLED&gt;Images&lt;/input
&lt;input id=radius name=radius VALUE="0.5" SIZE="3"&gt;
&lt;input id=firstcol name=firstcol VALUE="1" SIZE="1"&gt;
&lt;TEXTAREA cols='40' name='paste' id='paste' rows='4' wrap='virtual' class='med'&gt;&lt;/TEXTAREA&gt;
&lt;INPUT TYPE="File" NAME="upload" size=32 &gt;
&lt;TEXTAREA cols='85' name='uquery' rows='6' wrap='virtual' class='med'&gt;&lt;/TEXTAREA&gt; 
&lt;input id=submit type=submit value=Submit class="button"&gt;
&lt;input name=format value="html" type=radio class="box" CHECKED&gt;
&lt;input name=format value="xml"  type=radio class="box"&gt;
&lt;input name=format value="csv"  type=radio class="box"&gt;
&lt;input TYPE="reset" VALUE="Reset " class="button" id="reset" name="reset"&gt;
&lt;/FORM&gt;
</pre-->

	</td></tr>
</table>
</div>
</asp:Content>
