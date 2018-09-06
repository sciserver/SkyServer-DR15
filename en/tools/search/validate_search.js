var prefix = 'ContentPlaceHolder1_ToolsContent_';

function dec2glat(ra, dec) {
    var galPoleRA = 192.859508;
    var galPoleDec = 27.128336;
    var galAscNode = 32.932;

    // convert all angles from degrees to radians for the trig functions
    ra = ra * (Math.PI / 180);
    dec = dec * (Math.PI / 180);
    galPoleRA = galPoleRA * (Math.PI / 180);
    galPoleDec = galPoleDec * (Math.PI / 180);
    galAscNode = galAscNode * (Math.PI / 180);

    var glat = Math.asin((Math.cos(dec) * Math.cos(galPoleDec) * Math.cos(ra - galPoleRA)) + (Math.sin(dec) * Math.sin(galPoleDec)));

    glat = glat * (180 / Math.PI);

    if (glat < -90)
        glat = glat + 90;
    if (glat > 90)
        glat = glat - 90;

    return glat;
}

function ra2glon(ra, dec) {
    var glat = dec2glat(ra, dec); // first, find the galactic latitude (B) since we'll need it in the formula

    var galPoleRA = 192.859508;
    var galPoleDec = 27.128336;
    var galAscNode = 32.932;

    // convert all angles from degrees to radians for the trig functions
    ra = ra * (Math.PI / 180);
    dec = dec * (Math.PI / 180);
    galPoleRA = galPoleRA * (Math.PI / 180);
    galPoleDec = galPoleDec * (Math.PI / 180);
    galAscNode = galAscNode * (Math.PI / 180);
    glat = glat * (Math.PI / 180);

    var numerator = Math.sin(dec) - (Math.sin(glat) * Math.sin(galPoleDec));
    var denominator = Math.cos(dec) * Math.sin(ra - galPoleRA) * Math.cos(galPoleDec);

    var glon = Math.atan2(numerator, denominator) + galAscNode;  // use atan2 instead of atan to solve ambiguity of arctan

    glon = glon * (180 / Math.PI); // convert answer back to degrees

    if (glon < 0)
        glon = glon + 360;
    if (glon > 360)
        glon = glon - 360;

    return glon;
}

function glon2ra(L, B) {
    // function to convert from a galactic longitude (l) to right ascension
    // input: the galactic latitude (b) and longitude (l) of a point in degrees
    // output: the celestial RA in degrees

    var i = 192.859508;
    var j = 27.128336;
    var k = 32.932;

    var m = L - k;

    // convert all angles from degrees to radians for the trig functions
    L = L * (Math.PI / 180);
    B = B * (Math.PI / 180);
    var x = i * (Math.PI / 180);
    var y = j * (Math.PI / 180);
    var z = m * (Math.PI / 180);

    var numerator = Math.cos(B) * Math.cos(z);
    var denominator = (Math.sin(B) * Math.cos(y)) - (Math.cos(B) * Math.sin(y) * Math.sin(z));

    var ra = Math.atan2(numerator, denominator) + x;  // use atan2 instead of atan to solve ambiguity of arctan
    // double ra = Math.Atan(numerator / denominator) + x;

    ra = ra * (180 / Math.PI); // convert answer back to degrees
    if (ra > 360)
        ra = ra - 360;
    return ra;
}

function glat2dec(L, B) {
    // function to convert from a galactic latitude (B) to declination
    // input: the galactic latitude (B) and longitude (L) of a point in degrees
    // output: that point's celestial dec in degrees

    var i = 192.859508;
    var j = 27.128336;
    var k = 32.932;

    var m = L - k;

    // convert all angles from degrees to radians for the trig functions
    L = L * (Math.PI / 180);
    B = B * (Math.PI / 180);
    var x = i * (Math.PI / 180);
    var y = j * (Math.PI / 180);
    var z = m * (Math.PI / 180);

    var dec = Math.asin((Math.cos(B) * Math.cos(y) * Math.sin(z)) + (Math.sin(B) * Math.sin(y)));
    dec = dec * (180 / Math.PI); // convert answer back to degrees

    return dec;

}

function isNumeric(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}






function launch(link, name) {
	window.open(link,'_blank');
//	if (window.focus) { w.focus();}
}


function fmt(num,total,digits) {
    var n = new Number(num);
    if (n==0) return n;
	var exp = Math.floor(Math.log(Math.abs(n))/Math.LN10);
	var scale = Math.pow(10.,digits);
	if (exp<-2 || exp>3) {
		var esc = Math.pow(10.,exp);
		return String(Math.floor(scale*num/esc+0.5)/scale)+"E"+exp;
	}
	if (total>0) 
		scale = Math.pow(10., Math.min(digits,total-exp-1));
	return Math.floor(scale*n+0.5)/scale;
}



// hms2deg and dms2deg have been copied to ctrlscript.inc in the tools/chart directory.
// if a change is required in this piece of code, it should be propagated to tools/chart/// ctrlscript.inc
// at least until I find out how to include the file in ctrlscript.inc
//------------------------------------

function hms2deg(s,c) {
	var numargs = arguments.length;
	if( numargs < 2 )
		c = ':'; 
	var a = s.split(c);
	return 15*a[0]+a[1]/4.+a[2]/240.;
}

function dms2deg(s,c) {
	var numargs = arguments.length;
	if( numargs < 2 )
		c = ':'; 
	var a = s.split(c);
	if( s.indexOf("-") == 0 )	
		return -(-1.0*a[0]+a[1]/60.+a[2]/3600.);
	else
		return 1.0*a[0]+a[1]/60.+a[2]/3600.;
}
	

function parseRA(s_ra) {
	var v;
	if (s_ra.lastIndexOf(":") > -1) {
		v = fmt( hms2deg(s_ra,':'), 10, 5 );
	} else {
		if( s_ra.search(/\d \d/) > -1 ) {
			v = fmt( hms2deg(s_ra,' '), 10, 5 );
		} else {
			v = parseFloat(s_ra);
			//if(isNaN(v)) v=180.0;
			//if (v<0) v+= 360;
			//if (v > 360) v -= 360;
			//v = v % 360;
			//if (v < 0) v += 360;
		}
	}
	return v;
}



function parseDec(s_dec) {
	var v;
	if (s_dec.lastIndexOf(":") > -1) {
		v = fmt( dms2deg(s_dec,':'), 10, 5 );
	} else {
		if( s_dec.search(/\d \d/) > -1 ) {
			v = fmt( dms2deg(s_dec,' '), 10, 5 );
		} else {
			v = parseFloat(s_dec);
			//if(isNaN(v)) v=0.0;
			//if (v<-90) v= -90;
			//if (v>90) v= 90;
		}
	}
	return v;
}

function validate_radec_onsubmit() {
   var submit = true;

   if (document.getElementById(prefix+'region').value != "anywhere") {
       submit = submit && !validate(document.getElementById(prefix + 'centerRA'), 'ra', '', 0, 360, 1);
       submit = submit && !validate(document.getElementById(prefix + 'centerDec'), 'dec', '', -90, 90, 0);
       submit = submit && !validate(document.getElementById(prefix + 'radius'), 'radius', '', 0, 600, 0);
   }
   return submit;
}

// validates all fields on clicking "Update Query" button

function validate_onsubmit(SearchFormID) {

    var submit = true;
    var dd = SearchFormID
    var ff = document.getElementsByName('u_high').value

        //var position = document.getElementsByName("positionType")
        //alert(position.value)
        //alert(position.checked)
        //if (position.value == 'cone' && position.checked == true) {
    if (SearchFormID == "irqs") {
        if (document.getElementById('positionType_cone').checked == true) {
            submit = submit && !validate(document.getElementById('ra'), 'ra', '', 0, 360, 1);
            submit = submit && !validate(document.getElementById('dec'), 'dec', '', -90, 90, 0);
            submit = submit && !validate(document.getElementById('radius'), 'radius', '', 0, 600, 0);
        }
        if (document.getElementById('positionType_conelb').checked == true) {
            submit = submit && !validate(document.getElementById('Lcenter'), 'Lcenter', '', 0, 360, 0);
            submit = submit && !validate(document.getElementById('Bcenter'), 'Bcenter', '', -90, 90, 0);
            submit = submit && !validate(document.getElementById('lbRadius'), 'lbRadius', '', 0, 600, 0);
        }
        if (typeof (document.getElementById('jMin')) != "undefined") { submit = submit && !validate(document.getElementById('jMin'), 'j', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('jMax')) != "undefined") { submit = submit && !validate(document.getElementById('jMax'), 'j', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('hMin')) != "undefined") { submit = submit && !validate(document.getElementById('hMin'), 'h', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('hMax')) != "undefined") { submit = submit && !validate(document.getElementById('hMax'), 'h', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('kMin')) != "undefined") { submit = submit && !validate(document.getElementById('kMin'), 'k', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('kMax')) != "undefined") { submit = submit && !validate(document.getElementById('kMax'), 'k', 'magnitude', 0, 30, 0); }

        if (typeof (document.getElementById('jhMin')) != "undefined") { submit = submit && !validate(document.getElementById('jhMin'), 'j-h', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('jhMax')) != "undefined") { submit = submit && !validate(document.getElementById('jhMax'), 'j-h', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('hkMin')) != "undefined") { submit = submit && !validate(document.getElementById('hkMin'), 'h-k', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('hkMax')) != "undefined") { submit = submit && !validate(document.getElementById('hkMax'), 'h-k', 'color', -20, 20, 0); }

        if (typeof (document.getElementById('snrMin')) != "undefined") { submit = submit && !validate(document.getElementById('snrMin'), 'snr', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('snrMax')) != "undefined") { submit = submit && !validate(document.getElementById('snrMax'), 'snr', '', -10000, 10000, 0); }

        if (typeof (document.getElementById('vhelioMin')) != "undefined") { submit = submit && !validate(document.getElementById('vhelioMin'), 'vhelio', -10000, 10000, 0); }
        if (typeof (document.getElementById('vhelioMax')) != "undefined") { submit = submit && !validate(document.getElementById('vhelioMax'), 'vhelio', -10000, 10000, 0); }

        if (typeof (document.getElementById('scatterMin')) != "undefined") { submit = submit && !validate(document.getElementById('scatterMin'), 'scatter', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('scatterMax')) != "undefined") { submit = submit && !validate(document.getElementById('scatterMax'), 'scatter', '', -10000, 10000, 0); }

        if (typeof (document.getElementById('tempMin')) != "undefined") { submit = submit && !validate(document.getElementById('tempMin'), 'Temp', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('tempax')) != "undefined") { submit = submit && !validate(document.getElementById('tempMax'), 'Temp', '', -10000, 10000, 0); }

        if (typeof (document.getElementById('loggMin')) != "undefined") { submit = submit && !validate(document.getElementById('loggMin'), 'log(g)', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('loggMax')) != "undefined") { submit = submit && !validate(document.getElementById('loggMax'), 'log(g)', '', -10000, 10000, 0); }

        if (typeof (document.getElementById('fehMin')) != "undefined") { submit = submit && !validate(document.getElementById('fehMin'), '[M/H]', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('fehMax')) != "undefined") { submit = submit && !validate(document.getElementById('fehMax'), '[M/H]', '', -10000, 10000, 0); }

        if (typeof (document.getElementById('afeMin')) != "undefined") { submit = submit && !validate(document.getElementById('afeMin'), 'a/Fe', '', -10000, 10000, 0); }
        if (typeof (document.getElementById('afeMax')) != "undefined") { submit = submit && !validate(document.getElementById('afeMax'), 'a/Fe', '', -10000, 10000, 0); }

    } else {
        if (document.getElementById('positionType_cone').checked == true) {
            submit = submit && !validate(document.getElementById('ra'), 'ra', '', 0, 360, 1);
            submit = submit && !validate(document.getElementById('dec'), 'dec', '', -90, 90, 0);
            submit = submit && !validate(document.getElementById('radius'), 'radius', '', 0, 600, 0);
        }
        if (document.getElementById('positionType_rectangular').checked == true) {
            submit = submit && !validate(document.getElementById('raMin'), 'raMin', '', 0, 360, 1);
            submit = submit && !validate(document.getElementById('decMin'), 'dec', '', -90, 90, 0);
            submit = submit && !validate(document.getElementById('raMax'), 'raMax', '', 0, 360, 1);
            submit = submit && !validate(document.getElementById('decMax'), 'decMax', '', -90, 90, 0);
            if (Number(document.getElementById('raMin').value)  >= Number(document.getElementById('raMax').value) ) { alert("Error: min RA should be smaller than max RA"); submit = false }
            if (Number(document.getElementById('decMin').value) >= Number(document.getElementById('decMax').value)) { alert("Error: min Dec should be smaller than max Dec"); submit = false }
        }
        if (document.getElementById('positionType_proximity').checked == true) {
            submit = submit && !validate(document.getElementById('proximity_radius'), 'proximity radius', '', 0, 10, 1);
        }
        if (typeof (document.getElementById('uMin')) != "undefined") { submit = submit && !validate(document.getElementById('uMin'), 'u', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('uMax')) != "undefined") { submit = submit && !validate(document.getElementById('uMax'), 'u', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('gMin')) != "undefined") { submit = submit && !validate(document.getElementById('gMin'), 'g', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('gMax')) != "undefined") { submit = submit && !validate(document.getElementById('gMax'), 'g', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('rMin')) != "undefined") { submit = submit && !validate(document.getElementById('rMin'), 'r', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('rMax')) != "undefined") { submit = submit && !validate(document.getElementById('rMax'), 'r', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('iMin')) != "undefined") { submit = submit && !validate(document.getElementById('iMin'), 'i', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('iMax')) != "undefined") { submit = submit && !validate(document.getElementById('iMax'), 'i', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('zMin')) != "undefined") { submit = submit && !validate(document.getElementById('zMin'), 'z', 'magnitude', 0, 30, 0); }
        if (typeof (document.getElementById('zMax')) != "undefined") { submit = submit && !validate(document.getElementById('zMax'), 'z', 'magnitude', 0, 30, 0); }

        if (typeof (document.getElementById('ugMin')) != "undefined") { submit = submit && !validate(document.getElementById('ugMin'), 'u-g', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('ugMax')) != "undefined") { submit = submit && !validate(document.getElementById('ugMax'), 'u-g', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('grMin')) != "undefined") { submit = submit && !validate(document.getElementById('grMin'), 'g-r', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('grMax')) != "undefined") { submit = submit && !validate(document.getElementById('grMax'), 'g-r', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('riMin')) != "undefined") { submit = submit && !validate(document.getElementById('riMin'), 'r-i', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('riMax')) != "undefined") { submit = submit && !validate(document.getElementById('riMax'), 'r-i', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('izMin')) != "undefined") { submit = submit && !validate(document.getElementById('izMin'), 'i-z', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('izMax')) != "undefined") { submit = submit && !validate(document.getElementById('izMax'), 'i-z', 'color', -20, 20, 0); }
        if (typeof (document.getElementById('minQA')) != "undefined") { submit = submit && !validate(document.getElementById('minQA'), 'score', '', 0, 1, 0); }
        if (SearchFormID == "sqs") {
            if (typeof (document.getElementById('redshiftMin')) != "undefined") { submit = submit && !validate(document.getElementById('redshiftMin'), 'min redshift', '', 0, 20, 0); }
            if (typeof (document.getElementById('redshiftMax')) != "undefined") { submit = submit && !validate(document.getElementById('redshiftMax'), 'max redshift', '', 0, 20, 0); }
        }

    }
    // validate numbers for magnitudes and colors
    /*
    submit = submit && !validate(document.getElementById('u_low'), 'u', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('u_high'), 'u', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('g_low'), 'g', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('g_high'), 'g', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('r_low'), 'r', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('r_high'), 'r', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('i_low'), 'i', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('i_high'), 'i', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('z_low'), 'z', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById('z_high'), 'z', 'magnitude', 0, 30, 0);

    submit = submit && !validate(document.getElementById('ug_low'), 'u - g', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById('ug_high'), 'u - g', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById('gr_low'), 'g - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById('gr_high'), 'g - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById('ri_low'), 'r - i', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById('ri_high'), 'r - i', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById('iz_low'), 'i - z', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById('iz_high'), 'i - z', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById('ur_low'), 'u - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById('ur_high'), 'u - r', 'color', -20, 20, 0);

    //if (document.getElementById(prefix + 'allorspectra').value != "all objects") {
        submit = submit && !validate(document.getElementById('redshiftmin'), 'min redshift', '', 0, 6, 0);
        submit = submit && !validate(document.getElementById('redshiftmax'), 'max redshift', '', 0, 6, 0);
//}
*/
return submit;

}

function validate(elem,name,type,min,max,article){
// validate function that can be used for any field
// validates field
// article indicates whether the message should display "a" or "an" : 0 = a, 1 = an
//alert("validating "+name);
var error = false;
var str = elem.value;
var articlestr = "a";
if (article) articlestr = "an";

var errorstr = "";
//check if user has entered a value
if(str.length == 0){
	if (name == 'ra' || name == 'dec' || name == 'radius') {
	error = true;
	errorstr='Please enter a value for '+name;
	}
	else error = false;
} else {
    if (name == 'ra' || name == 'raMin' || name == 'raMax' || name == 'Lcenter') {
	   str = parseRA( str );
	}
    if (name == 'dec' || name == 'decMin' || name == 'decMax' || name == 'Bcenter') {
	   str = parseDec( str );
	}
	// check if user has entered a valid number
//	if (/^[-+]?\d+(\.\d+)?$/.test(str)) {   old code didn't accept values of form .5
	if ((/^[-+]?\d+(\.\d+)?$/.test(str)) | (/^[-+]?(\.\d+)?$/.test(str)) ) { 

	// check if it's a number within the acceptable range
	/* acceptable ranges:
		ra:		0 to 360
		dec:    -90 to 90
		mags:   0 to 30
		colors: -20 to 20
		redshifts: 0 to 6
	
	*/
		error=((str < min) || (str > max));
		//if (error) errorstr = "Please enter " + articlestr + " " + name + " " + type + " between " + min + "  and " + max;
		if (error) errorstr = "Error: value of " + name + " should be between " + min + "  and " + max;
		}
	  else 
		{
		    error=true;
	    	errorstr = "Please enter a valid number for "+name;
		}
	
	}
	
	if (error) alert(errorstr);
//	assign_error(errorstr,label);
	return error;


}

function validate_mags_presence(elem,name){
// executes only if mag_u (etc.) is chosen as <, >, or =
var error = false;
var str = elem.value;

var errorstr = "";
//check if user has entered a value
if(str.length == 0){

	error = true;
	errorstr='Please enter a value for '+name;
	}
	
	if (error) alert(errorstr);
	return error;

}


function assign_error(str,label) {
	label.Text = str;
	alert(label.id);

}

function getLabel(name) {

	var objLabels = Form1.getElementsByTagName("label");
	var objField;
	alert(name);
	
		for (var i = 0; i < objLabels.length ; i++) {
			alert("loop # "+i+"id = "+objLabels[i].id+"class = "+objLabels[i].className);
			if (objLabels[i].id == name) {
				alert("success!!!");
				alert("objLabels[i].id = "+objLabels[i].id);
				alert("objLabels[i].text = "+objLabels[i].text);
			}
		}
}

// function msg - will eventually put the user message in an HTML message instead of 
//   an annoying alert box. Not yet implemented. 
//         Jordan Raddick  20 July 2005
//
// -----------------------------------------
//                  msg
// Display warn/error message in HTML element
// commonCheck routine must have previously been called
// -----------------------------------------

function msg(fld,     // id of element to display message in
             msgtype, // class to give element ("warn" or "error")
             message) // string to display
{
  // setting an empty string can give problems if later set to a 
  // non-empty string, so ensure a space present. (For Mozilla and Opera one could 
  // simply use a space, but IE demands something more, like a non-breaking space.)
  var dispmessage;
  if (emptyString.test(message)) 
    dispmessage = String.fromCharCode(nbsp);    
  else  
    dispmessage = message;

  var elem = document.getElementById(fld);
  elem.firstChild.nodeValue = dispmessage;  
  
  elem.className = msgtype;   // set the CSS class to adjust appearance of message
}


function runfootprint() {
   if( validate_radec_onsubmit() ) {
       var ra = document.getElementById(prefix + "centerRA").value;
       var dec = document.getElementById(prefix + "centerDec").value;
       var rad = document.getElementById(prefix + "radius").value;
       //var w = window.open("../x_radial.aspx?format=html&topnum=10&fp=only&ra=" + ra + "&dec=" + dec + "&radius=" + rad, "query", "");
       var w = window.open("../X_Results.aspx?searchtool=Radial&format=html&topnum=10&fp=only&ra=" + ra + "&dec=" + dec + "&radius=" + rad, "query", "");
      w.focus();
   }
}


function runquery() {

    var SearchFormID = String(document.forms.item(0).id)
    var doRun = true
    doRun = validate_onsubmit(SearchFormID)
    
    if (doRun) {
        //document.getElementById(SearchFormID).submit()
        var x = document.getElementsByTagName("form");
        document.createElement('form').submit.call(x[0])
    }
}



function runquery2() {
    if ((document.getElementById(prefix+"SqlBox").readOnly == true) && (document.getElementById("EditQueryStatus").value == "DoneEdit")) {
        var q = escape(document.getElementById(prefix+"SqlBox").value).replace(/\+/g, "%2B");
        //var w = window.open("../x_sql.aspx?format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
        var w = window.open("../X_Results.aspx?searchtool=SearchForm&format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
      w.focus();
   } else {
      if( validate_onsubmit() ) {
          var q = escape(document.getElementById(prefix + "SqlBox").value).replace(/\+/g, "%2B");
          //var w = window.open("../x_sql.aspx?format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
          var w = window.open("../X_Results.aspx?searchtool=SearchForm&format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
         w.focus();
      }
   }
}


function runimglist() {
    if ((document.getElementById(prefix + "SqlBox").readOnly == true) && (document.getElementById("EditQueryStatus").value == "DoneEdit")) {
      var w=window.open( document.getElementById("ImageListText").value, "imagelist", "" );
      w.focus();
   } else {
      if( validate_onsubmit() ) {
         var w=window.open( document.getElementById("ImageListText").value, "imagelist", "" );
         w.focus();
      }
   }
}
