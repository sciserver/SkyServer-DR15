var prefix = 'ContentPlaceHolder1_ToolsContent_';

function launch(link,name) {
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
			if(isNaN(v)) v=180.0;
			//if (v<0) v+= 360;
			//if (v > 360) v -= 360;
			v = v % 360;
			if (v < 0) v += 360;
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
			if(isNaN(v)) v=0.0;
			if (v<-90) v= -90;
			if (v>90) v= 90;
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

function validate_onsubmit() {

    var submit = true;

    if (document.getElementById(prefix + 'region').value != "anywhere") {
        submit = submit && !validate(document.getElementById(prefix + 'centerRA'), 'ra', '', 0, 360, 1);
        submit = submit && !validate(document.getElementById(prefix + 'centerDec'), 'dec', '', -90, 90, 0);
        submit = submit && !validate(document.getElementById(prefix + 'radius'), 'radius', '', 0, 600, 0);
}

// validate numbers for magnitudes and colors
    submit = submit && !validate(document.getElementById(prefix + 'u_low'), 'u', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'u_high'), 'u', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'g_low'), 'g', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'g_high'), 'g', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'r_low'), 'r', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'r_high'), 'r', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'i_low'), 'i', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'i_high'), 'i', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'z_low'), 'z', 'magnitude', 0, 30, 0);
    submit = submit && !validate(document.getElementById(prefix + 'z_high'), 'z', 'magnitude', 0, 30, 0);

    submit = submit && !validate(document.getElementById(prefix + 'ug_low'), 'u - g', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById(prefix + 'ug_high'), 'u - g', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById(prefix + 'gr_low'), 'g - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById(prefix + 'gr_high'), 'g - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById(prefix + 'ri_low'), 'r - i', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById(prefix + 'ri_high'), 'r - i', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById(prefix + 'iz_low'), 'i - z', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById(prefix + 'iz_high'), 'i - z', 'color', -20, 20, 1);
    submit = submit && !validate(document.getElementById(prefix + 'ur_low'), 'u - r', 'color', -20, 20, 0);
    submit = submit && !validate(document.getElementById(prefix + 'ur_high'), 'u - r', 'color', -20, 20, 0);

    if (document.getElementById(prefix + 'allorspectra').value != "all objects") {
        submit = submit && !validate(document.getElementById(prefix + 'redshiftmin'), 'min redshift', '', 0, 6, 0);
        submit = submit && !validate(document.getElementById(prefix + 'redshiftmax'), 'max redshift', '', 0, 6, 0);
}

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
	if( name == 'ra' ) {
	   str = parseRA( str );
	}
	if( name == 'dec' ) {
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
		if (error) errorstr = "Please enter "+articlestr+" "+name+" "+type+" between "+min+"  and "+max;
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
       var w = window.open("../X_Results.aspx?searchtool=Radial&TaskName=Skyserver.Search.Radial&format=html&topnum=10&fp=only&ra=" + ra + "&dec=" + dec + "&radius=" + rad, "query", "");
      w.focus();
   }
}


function runquery() {
    if ((document.getElementById(prefix+"SqlBox").readOnly == true) && (document.getElementById("EditQueryStatus").value == "DoneEdit")) {
        var q = escape(document.getElementById(prefix+"SqlBox").value).replace(/\+/g, "%2B");
        //var w = window.open("../x_sql.aspx?format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
        var w = window.open("../X_Results.aspx?searchtool=SQL&TaskName=Skyserver.Search.SearchForm&format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
      w.focus();
   } else {
      if( validate_onsubmit() ) {
          var q = escape(document.getElementById(prefix + "SqlBox").value).replace(/\+/g, "%2B");
          //var w = window.open("../x_sql.aspx?format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
          var w = window.open("../X_Results.aspx?searchtool=SQL&TaskName=Skyserver.Search.SearchForm&format=" + document.getElementById("SkyServerText").value + "&cmd=" + q, "query", "");
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
