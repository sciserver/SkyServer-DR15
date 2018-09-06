
  //------------------------------------
  // ctrlscript.inc
  // client side javascript to manage the cutout controls
  // Alex Szalay, 2003-03-10
  // Controls.js
  // Modified by Deoyani Nandrekar-Heinis 2012-10-10
  //------------------------------------

  //----------------------------------
  // set the scale value directly
  //----------------------------------
  function setscale(p) {
      if (p == 0) p = parseFloat(document.getElementById('scale').value);
  if(isNaN(p)) p=0.396127;
  return setzoombar(p);
  }

  //----------------------------------
  // adjust the zoom value up or down
  //----------------------------------
  function stepzoom(factor) {
      var p = parseFloat(document.getElementById('scale').value);
      if(isNaN(p)) p=0.396127;
        p *= factor;
      return setzoombar(p);
  }
  //----------------------------------
  // set the zoom value
  //----------------------------------
  function setzoom(zm) {     
    return setzoombar(0.396127/Math.pow(2,zm));
  }

  //----------------------------------
  // set the scale value and the zoombar image
  //----------------------------------
  function setzoombar(p) {
    if (p < 0.015) p = 0.015; 
    if ( p >  60) p = 60;
    document.getElementById('scale').value = p;
    drawzoombar();
    ////**** check why
    ////if (p > 1.0) setoptstr(1);    
    return myResubmit();
  }


  //--------------------------------------
  // declare storage for zoombar images
  //--------------------------------------
  var img = new Object();

  //--------------------------------------
  // preload the zoombar images
  //--------------------------------------
  function loadZoombar() {
      var n;
      img.length = 13;
      for (var i = 0; i < 13; i++) {
          var fname = ("./images/zoombar" + i + ".jpg");
          img[i] = fname;
      }
      //alert(img[1]);
      return img;
  }

    //----------------------------------
    // draw the correct zoombar image
    //----------------------------------
  function drawzoombar() {

        var img = loadZoombar();      
        var p = parseFloat(document.getElementById('scale').value);
        var z = Math.round(Math.log(0.396127 / p) / Math.log(2));        
        if (z> 5) z = 5;
        if (z < -7) z = -7;
        var dif = 5 - z;                
		document.getElementById('zoombar').src = img[dif];
	}

	////--------------This is to toggle between twomass and sdss Image data
	function setImageSource(t, c) {

	    var o = document.getElementById('opt').value;
	    var r = new RegExp(c);	   
	    if (c == 'Z' && o.indexOf('X') != -1) {
	        o = o.replace('X', '');
	        document.getElementById('twomass').checked = false;	        
	    }
	    else if (c == 'X' && o.indexOf('X') == -1) {
	        o += c;
	        document.getElementById('sdss').checked = false;
        }
	    document.getElementById('opt').value = o;
	    
	    return myResubmit();
	}

	//----------------------------------
    // set the option string value
    //----------------------------------
	function setopt(t, c) {
	    var o = document.getElementById('opt').value;
	    if (o.indexOf('X') != -1 && (c == 'O' || c == 'B' || c == 'F' || c == 'M' || c == 'Q')) {

	        //alert("SDSS Outlines,BoundingBoxes, Fields, Masks,Plates etc options Do not work for 2MASS images !!");
          
	    } else {
	        var r = new RegExp(c);
	        if (t.checked && o.indexOf(c) == -1) o += c;
	        if (!t.checked) {
	            var n = o.indexOf(c);
	            if (n > -1) o = o.substring(0, n) + o.substring(n + 1);
	        }
	        document.getElementById('opt').value = o;
	        return myResubmit();
	    }
    }

    //----------------------------------
    // set the option checkboxes
    //----------------------------------
    function setoptstr(flag) {
        var v = String(document.getElementById('opt').value).toUpperCase();
        
     var p, f;
     p = ["G", "L", "P", "S", "O", "B", "F", "M", "Q", "I", "A", "X"];
     f = ["Grid", "Label", "PhotoObjs", "SpecObjs", "Outline",
          "BoundingBox", "Fields", "Masks", "Plates", "InvertImage", "APOGEE", "2MASS Images"];

     var o = "";
     for (var i=0; i < p.length; i++){
       var state = (v.indexOf (p[i]) >  -1);
       if (state) o += p[i];       
       document.getElementById(f[i]).checked = state;
      }

      // hack to accommodate debug flag
      if (v.indexOf("D") > -1)o += "D";		// must not be available in main site DR1

      document.getElementById('opt').value = o;

      if (flag==1) return myResubmit();
      else return false;

     }

      //------------------------------------
      // hms2deg and dms2deg are two functions originaly from x-utilities.js in the root directory
      // if a change is required in this piece of code, it should be propagated to x-utilities.js
      // at least until I find out how to include the file
      //------------------------------------
      function hms2deg(s,c) {
      var numargs = arguments.length;
      if( numargs < 2 )
			c = ':';
		// strip leading blanks or plus signs first
		while( s.length > 0 && (s.substring(0,1)==' ' || s.substring(0,1)=='+') )
      s = s.substring(1);
      var a = s.split(c);
      return 15*a[0]+a[1]/4.+a[2]/240.;
      }

      function dms2deg(s,c) {
      var numargs = arguments.length;
      if( numargs < 2 )
			c = ':';
		// strip leading blanks or plus signs first
		while( s.length > 0 && (s.substring(0,1)==' ' || s.substring(0,1)=='+') )
      s = s.substring(1);
      var a = s.split(c);
      if( s.indexOf("-") == 0 )
      return -(-1.0*a[0]+a[1]/60.+a[2]/3600.);
      else
      return 1.0*a[0]+a[1]/60.+a[2]/3600.;
  }

  //------------------------------------
  // set and validate the obj value
  //------------------------------------
  function setobj() {
    
      //var s_obj = String(document.objid.value);
  }
      //------------------------------------
      // set and validate the ra value
      //------------------------------------
  function setra() {
          //alert("here:" + document.getElementById('ra'));
      var s_ra = String(document.getElementById('ra').value);
      var v;
      if (s_ra.lastIndexOf(":") > -1) {
      v = fmt(hms2deg(s_ra,':'), 10, 5);
      } else {
      if( s_ra.search(/\d \d/) > -1 ) {
      v = fmt(hms2deg(s_ra,' '), 10, 5);
      } else {
      v = parseFloat(s_ra);
      if(isNaN(v)) v=180.0;
      v = v % 360;
      if (v < 0) v += 360; 
      }
      }
      document.getElementById('ra').value = v;
      return false;
    }

     //------------------------------------
     // set and validate the dec value
     //------------------------------------
     function setdec() {

        var s_dec = String(document.getElementById('dec').value);
        var v;
        if (s_dec.lastIndexOf(":") > -1) {
        v = fmt(dms2deg(s_dec,':'), 10, 5);
        } else {
        if( s_dec.search(/\d \d/) > -1 ) {
            v = fmt(dms2deg(s_dec,' '), 10, 5);
        } else {
            v = parseFloat(s_dec);
            if(isNaN(v)) v=0.0;
            //if (v<-90) v= -90;
            //if (v>90) v= 90;
				var OldRa = parseFloat(document.getElementById('ra').value)
				if (v < -90 || v > 90) {
				    v = v % 360;					// brings dec within the circle
				    if (v < 0) {
				        v = v + 360     // only allows positive dec values
				    }
				    if (v > 90 & v < 270) { // if dec is at the other side of the poles
				        document.getElementById('ra').value = (OldRa + 180) % 360 // go 1/2 way around the globe
				        v = 180 - v
				    }
				    if (v >= 270) { // if dec is at this side from the south pole
				        v = v - 360
				    }
				}
        }
        }
        document.getElementById('dec').value = v;
        return false;
     }

          //------------------------------------
          // set and validate the width
          //------------------------------------
          function setwidth() {
          var v = parseInt(document.width.value);
          if(isNaN(v)) v =  400;
          if ( v < 64 ) v = 64;
          if (  v > 2048)  v = 2048;
          document.width.value = v;
          return false;
          }

            //------------------------------------
            // set and validate the width
            //------------------------------------
            function setheight() {
                var v = parseInt(document.getElementById('size').value);
            if(isNaN(v)) v =  400;
            if (v < 64) v = 64;
            if ( v > 2048 )  v = 2048;
            document.getElementById('size').value = v;
              return false;
            }

              //--------------------------------------
              // validate all parameters
              //--------------------------------------
            function validate() {
                //alert('TEST');
                if (document.ra) setra();
                if (document.dec) setdec();
                if (document.width) setwidth();
                if (document.height) setheight();
              }

              

	//--------------------------------------
              // submit the form
              //--------------------------------------
            function myResubmit() {
                
              validate();
              document.submit();
              return false;
              }

              function fmt(num,total,digits) {
              var n = new Number(num);
              if (n==0) return n;
              var exp = Math.floor(Math.log(Math.abs(n))/Math.LN10);
              var scale = Math.pow(10.,digits);
              if (total>0)
              scale = Math.pow(10., Math.min(digits,total-exp-1));
              return Math.floor(scale*n+0.5)/scale;
              }

              //---------------------------------
              // point top window to chart
              //---------------------------------
              function gotochart() {
              var s = "chart.aspx";
              //if (branchname!='list') {
              s += "?ra=" + fmt(document.getElementById('ra').value, 10, 5);
              s += "&dec=" + fmt(document.getElementById('dec').value, 10, 5);
              s+= "&scale="+ fmt(document.getElementById('scale').value,8,4);
              s+= "&opt="  + document.getElementById('opt').value;
              s+= "&width=512&height=512";
              //}
              top.document.location.href = s;
              return false;
              }

              //--------------------------------------
              // point top window to the navi
              //--------------------------------------
              function gotonavi() {
              var s = "navi.aspx";
              //if (branchname!='list') {
              s+= "?ra="   + fmt(document.getElementById('ra').value,10,5);
              s+= "&dec="  + fmt(document.getElementById('dec').value,10,5);
              s+= "&opt="  + document.opt.value;
              //}
              top.document.location.href = s;
              return false;
              }

              //--------------------------------------
              // open new window for the Explorer
              //--------------------------------------
              function gotoExp() {
                  var s = "../explore/obj.aspx";
                  ///alert(s);
              //if (branchname!='list') {
              s += "?ra="+document.getElementById('ra').value;
              s += "&dec="+document.getElementById('dec').value;
              //}
              var w = window.open(s,"_top");
              w.focus();
              return false;
              }



