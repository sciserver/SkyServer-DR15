////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////****New Navigator tool*****/
/// This code has gone through lot of revisions, basically wrote for tiles based approach and later again reverted back to
/// single image so many changes were required in basic functions. Most of the extra stuff cleaned ,still there can be some
/// variables or part of functions remaining to be cleaned, will do it in next version if required.
/// 2012-11-11
/// 2014-01-30  // updated code and reorganized it in different files 
/// @Deoyani Nandrekar-Heinis
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////To get neighbor image centers
function get_theta_phi_2(x_pix, y_pix, x_ref, y_ref, scale_ref) {

    var x_test = -scale_ref * (x_pix - x_ref);
    var y_test = -scale_ref * (y_pix - y_ref);
    var r = Math.sqrt((x_test * x_test) + (y_test * y_test));
    var theta = 0;
    if (r != 0.) theta = Math.atan(180 / (Math.PI * r));
    else theta = Math.PI / 2;
    var phi = Math.atan2(x_test, -y_test);
    return [theta, phi];
}

/// function fro sy to ra dec
function xy2radec(x_pix, y_pix, ra_ref, dec_ref, scale_ref, x_ref, y_ref) {
    //;convert angles to radians
    var deg2rad = Math.PI / 180.0;
    var alpha_p = ra_ref * deg2rad;
    var delta_p = dec_ref * deg2rad;
    ///;get theta, phi
    var tp = get_theta_phi_2(x_pix, y_pix, x_ref, y_ref, scale_ref);
    var theta = tp[0];
    var phi = tp[1];
    var phi_p = 180. * deg2rad;

    var st = Math.sin(theta);
    var ct = Math.cos(theta);
    var cdp = Math.cos(delta_p);
    var sdp = Math.sin(delta_p);

    var ranew = alpha_p + Math.atan2((-ct * Math.sin(phi - phi_p)), (st * cdp - ct * sdp * Math.cos(phi - phi_p)));
    var decnew = Math.asin(st * sdp + ct * cdp * Math.cos(phi - phi_p));

    return [ranew / deg2rad, decnew / deg2rad];
}

//// My functionhelper to get x,y for given ra,dec
function get_theta_phi(alpha_deg, delta_deg, alpha_p_deg, delta_p_deg) {
    ////convert angles to radians
    var deg2rad = Math.PI / 180.0;
    var alpha = alpha_deg * deg2rad;
    var delta = delta_deg * deg2rad;

    var alpha_p = alpha_p_deg * deg2rad;
    var delta_p = delta_p_deg * deg2rad;

    var phi_p = 180.0 * deg2rad;

    var cd = Math.cos(delta);
    var sd = Math.sin(delta);
    var cdp = Math.cos(delta_p);
    var sdp = Math.sin(delta_p);

    var phi = phi_p + Math.atan2((-cd * Math.sin(alpha - alpha_p)), (sd * cdp - cd * sdp * Math.cos(alpha - alpha_p)));
    var theta = Math.asin(sd * sdp + cd * cdp * Math.cos(alpha - alpha_p));
    return [theta, phi];
}

//// My function to get x,y for given ra,dec
function radec2xy(ranew, decnew, ra_ref, dec_ref, scale_ref, x_ref, y_ref) {

    var deg2rad = Math.PI / 180.0;
    var tp = get_theta_phi(ranew, decnew, ra_ref, dec_ref);

    var theta = tp[0];
    var phi = tp[1];
    var rtheta = 1. / Math.tan(theta) / deg2rad;

    var x = rtheta * Math.sin(phi);
    var y = -rtheta * Math.cos(phi);

    ///now  get the actual pixels values
    var x_pix = -x / scale_ref + x_ref;
    var y_pix = -y / scale_ref + y_ref;
    return [x_pix, y_pix];
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////***    Used by Ajax to get the connection   ***////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function getXmlHttpObject() {
    var xhttp;
    try {
        xhttp = new XMLHttpRequest();
    } catch (e) {
        try {
            xhttp = new ActiveXObject("Msxml2.XMLHTTP");

        } catch (e) {
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");

        }
    }
    return xhttp;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///// To find out nearby neighbours
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function getNeighbor(ra, dec, xNeig, yNeig, s) {
    var neiRa, neiDec;
    size = imgsize;
    if (!(xNeig == 0 && yNeig == 0)) {
        var xtemp = (width / 2) + ((width) * xNeig);
        var ytemp = (width / 2) + ((height) * yNeig);
        var test1 = xy2radec(xtemp, ytemp, s.inra, s.indec, s.inscale / 3600, width / 2, height / 2);
        var deg2rad = Math.PI / 180.0;
        neiRa = test1[0];
        neiDec = test1[1];
    } else {
        neiRa = ra;
        neiDec = dec;
    }
    s.addRa(neiRa);
    s.addDec(neiDec);
    var url = s.tempserver + 'ra=' + neiRa + '&dec=' + neiDec + '&scale=' + s.inscale + '&width=' + width + '&height=' + height + "&opt=" + s.opt;
    return url;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////canvasstate holds current state of canvas
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function CanvasState(canvas, tserver) {
    //// **** First some setup! ****
    this.tempserver = tserver;
    this.canvas = canvas;
    this.width = canvas.width;
    this.height = canvas.height;
    this.ctx = canvas.getContext('2d');
    //// This complicates things a little but but fixes mouse co-ordinate problems
    //// when there's a border or padding. See getMouse for more detail
    var stylePaddingLeft, stylePaddingTop, styleBorderLeft, styleBorderTop;
    if (document.defaultView && document.defaultView.getComputedStyle) {
        this.stylePaddingLeft = parseInt(document.defaultView.getComputedStyle(canvas, null)['paddingLeft'], 10) || 0;
        this.stylePaddingTop = parseInt(document.defaultView.getComputedStyle(canvas, null)['paddingTop'], 10) || 0;
        this.styleBorderLeft = parseInt(document.defaultView.getComputedStyle(canvas, null)['borderLeftWidth'], 10) || 0;
        this.styleBorderTop = parseInt(document.defaultView.getComputedStyle(canvas, null)['borderTopWidth'], 10) || 0;
    }
    //// Some pages have fixed-position bars (like the stumbleupon bar) at the top or left of the page
    //// They will mess up mouse coordinates and this fixes that
    var html = document.body.parentNode;
    this.htmlTop = html.offsetTop;
    this.htmlLeft = html.offsetLeft;
    //// **** Keep track of state! ****
    this.valid = false; // when set to false, the canvas will redraw everything
    this.shapes = [];  // the collection of things to be drawn
    this.shapesO = [];  // the collection of Objects to be drawn
    this.bkshapesO = []; this.bkshapesO[0] = null; this.bkshapesO[1] = null;
    this.bkupshapes = []; this.bkupshapes[0] = null, this.bkupshapes[1] = null;
    this.ras = [];  // the collection of things to be drawn
    this.decs = [];  // the collection of things to be drawn
    this.shapes1 = [];  // the collection of things to be drawn
    this.isOverlay = false; // for overlay options display
    this.isZoom = false;   // when true draw selected zoom images    
    this.dragging = false; // Keep track of when we are dragging
    this.mousemove = false; // check moving
    this.mousemovetest = false; // check mouse down
    //// the current selected object. In the future we could turn this into an array for multiple selection
    this.selection = null;
    this.dragoffx = 0; // See mousedown and mousemove events for explanation
    this.dragoffy = 0;
    this.opt = '';
    this.inra = null;
    this.indec = null;
    this.inscale = null;
    this.isoptchange = false;
    //// to keep track of how many tiles in x & y dir -- used to get neigbor of 
    this.xdirmax = 0;
    this.ydirmax = 0;
    this.xdirmin = 0;
    this.ydirmin = 0;
    //// double click show the selected object
    this.dblselection = null;
    this.dblx = null;
    this.dbly = null;
    this.dblra;
    this.dbldec;
    //// to draw grid and label
    this.isGrid = false;
    this.isLabel = false;
    this.labelRa = null;
    this.labelDec = null;
    this.isPhotoObj = false;
    //// this is additional  check for 2mass or sdss
    this.changesource = false;
    //// to check to draw loading label
    this.isLoading = false;
    //// **** Then events! ****
    //// This is our reference!
    var myState = this;
    var prevX;
    var prevY;
    initListeners(myState, canvas);
    //// **** Options! ****
    this.selectionColor = '#00FF00';
    this.selectionWidth = 2;
    this.interval = 30;
    setInterval(function () { myState.draw(); }, myState.interval);
}
CanvasState.prototype.addShape = function (shape) {
    this.shapes.push(shape);
    this.valid = false;
}
CanvasState.prototype.addRa = function (r) {
    this.ras.push(r);
}
CanvasState.prototype.addDec = function (d) {
    this.decs.push(d);
}
CanvasState.prototype.clear = function () {
    this.ctx.clearRect(0, 0, this.width, this.height);
}
// While draw is called as often as the INTERVAL variable demands,
// It only ever does something if the canvas gets invalidated by our code
CanvasState.prototype.draw = function () {
    // if our state is invalid, redraw and validate!
    if (!this.valid) {
        var ctx = this.ctx;
        var shapes = this.shapes;
        var shapesO = this.shapesO;
        this.clear();
        if (newcanvas == true && canvasReady == true) {
            this.ctx.drawImage(canvasbk, 0, 0);
            newcanvas = false;
            canvasReady = false;
            this.shapesO = [];
            this.DeleteLabel();
            if (this.isPhotoObj) this.getPhotoObj(this.inra, this.indec, this.inscale, false);

        } else {
            // draw all shapes
            var l = shapes.length;
            for (var i = 0; i < l; i++) {
                var shape = shapes[i];
                // We can skip the drawing of elements that have moved off the screen:
                if (shape.x > this.width || shape.y > this.height || shape.x + shape.w < 0 || shape.y + shape.h < 0) continue;

                shapes[i].draw(ctx);
            }
        }

        if (this.isPhotoObj == true) {
            var lO = this.shapesO.length;
            for (var i = 0; i < lO; i++) {
                this.shapesO[i].draw(ctx, this);
            }
        }
        if (this.dblselection != null) {

            ctx.beginPath();
            ctx.lineWidth = 1;
            if (this.opt.indexOf('I') !== -1) ctx.strokeStyle = "#330000";
            else ctx.strokeStyle = "#33FF00";
            ctx.strokeRect(this.dblx - 7, this.dbly - 7, 12, 12);
            ctx.stroke();
            if (this.opt.indexOf('I') !== -1) ctx.strokeStyle = "#330000";
            else ctx.fillStyle = "#FFFF99";
            ctx.font = "12px Arial";
            ctx.fillText("[" + this.dblra + "," + this.dbldec + "]", this.dblx + 10, this.dbly);
            ctx.closePath();
        }

        if (this.isGrid == true) this.drawGrid();
        if (this.isLabel == true) this.getLabel();
        if (this.isLoading == true) this.drawLoading();
        this.valid = true;
    }
}

CanvasState.prototype.drawGrid = function () {

    var ctx = this.ctx;
    var width1 = 512;
    var height1 = 512;
    var cFudge = 5;
    var inner = 0.05 * 512;
    var outer = 0.125;
    var xc = width1 / 2;
    var yc = height1 / 2;
    var xLabel = 20;
    var yLabel = 15;
    ctx.beginPath();
    ctx.moveTo(xc, yc - inner);
    ctx.lineTo(xc, height1 * outer);
    ctx.moveTo(xc, yc + inner);
    ctx.lineTo(xc, height1 * (1.0 - outer));
    ctx.moveTo(xc - inner, yc);
    ctx.lineTo(width1 * outer, yc);
    ctx.moveTo(xc + inner, yc);
    ctx.lineTo(width1 * (1.0 - outer), yc);
    if (this.opt.indexOf('I') !== -1 && this.isGrid == true)
        ctx.strokeStyle = "#330000";
    else if (this.isGrid == true) ctx.strokeStyle = "#ccffcc";
    else if (this.isGrid == false) ctx.strokeStyle = "rgba(0,0,0,0)";
    ctx.lineWidth = 0.9;
    ctx.stroke();
    ctx.closePath();
    this.drawRuler();

}

CanvasState.prototype.drawRuler = function () {

    var ctx = this.ctx;
    var scale = this.inscale;
    var width1 = 512;
    var height1 = 512;
    var cFudge = 8;
    var xc = width1 / 2;
    var yc = height1 / 2;
    var ppd = 3600.0 / scale;
    var ppm = ppd / 60.00;
    var ruler = [["0.5''", 1.0 / 120.0], ["1''", 1.0 / 60.0], ["2''", 2.0 / 60.0], ["5''", 5.0 / 60.0],
              ["10''", 1.0 / 6.0], ["20''", 2.0 / 6.0], ["1'", 1.0], ["2'", 2.0], ["5'", 5.0], ["10'", 10.0],
              ["20'", 20.0], ["30'", 30.0], ["1deg", 60.0], ["1.5deg", 90.0], ["2deg", 120.0]];

    var extent = height1;
    var ticks = 10;
    var i;
    for (i = 0; i < ruler.length; i++) {
        ticks = Math.floor(extent / (ruler[i][1] * ppm));
        if ((ticks >= 4) && (ticks < 12)) break;
    }
    ///alert(i + ":" + ruler[0][0]);
    if (i == ruler.length) i--;
    var label = ruler[i][0];
    var tickSize = ruler[i][1] * ppm;

    ctx.beginPath();

    var pos = 0;
    for (i = -ticks; i <= ticks; i++) {
        pos = Math.floor(i * tickSize);
        ctx.moveTo(0, yc + pos);
        ctx.lineTo(cFudge, yc + pos);
        ctx.moveTo(width1, yc + pos);
        ctx.lineTo(width1 - cFudge, yc + pos);
        ctx.moveTo(xc + pos, 0);
        ctx.lineTo(xc + pos, cFudge);
        ctx.moveTo(xc + pos, height1);
        ctx.lineTo(xc + pos, height1 - cFudge);
        if (this.opt.indexOf('I') !== -1 && this.isGrid == true)
            ctx.strokeStyle = "#330000";
        else if (this.isGrid == true)
            ctx.strokeStyle = "#ccffcc";
        else if (this.isGrid == false)
            ctx.strokeStyle = "rgba(0,0,0,0)";
        ctx.lineWidth = 0.9;
        ctx.stroke();
    }

    ctx.closePath();

    var xLabel = 20;
    var yLabel = 30;
    //if (this.isLabel) yLabel = 100;
    var x1 = xLabel;
    var x2 = xLabel + Math.floor(tickSize);
    var len = 4;
    var yy = yLabel + 10;

    ctx.beginPath();
    ctx.moveTo(x1, yy);
    ctx.lineTo(x2, yy);

    ctx.moveTo(x1, yy - len);
    ctx.lineTo(x1, yy + len);
    ctx.moveTo(x2, yy - len);
    ctx.lineTo(x2, yy + len);


    if (this.opt.indexOf('I') !== -1 && this.isGrid == true)
        ctx.strokeStyle = "#330000";
    else if (this.isGrid == true)
        ctx.strokeStyle = "#ccffcc";
    else if (this.isGrid == false)
        ctx.strokeStyle = "rgba(0,0,0,0)";


    ctx.lineWidth = 0.9;
    ctx.stroke();
    ctx.closePath();

    xLabel += (0.5 * tickSize) - cFudge;

    ctx.font = "12px Arial";
    if (this.opt.indexOf('I') !== -1 && this.isGrid == true)
        ctx.fillStyle = "#330000";
    else if (this.isGrid == false)
        ctx.fillStyle = "rgba(0,0,0,0)";
    else
        ctx.fillStyle = "#ccffcc";
    ctx.fillText(label, xLabel, yLabel);
}

CanvasState.prototype.getLabel = function () {
    var zoom = 0;
    var ppd = 3600.0 / this.inscale;
    var imageScale = ppd / 9089;
    var max_zoom = 4;
    //if (release != 'DR8' && release != 'DR9')
    //    max_zoom = 7; /// chnage it for dr8 and dr9

    while (zoom < max_zoom && imageScale <= .5) {
        zoom++; 										// go higher in the pyramid
        imageScale *= 2;
    }

    var zoomRatio = "";
    if (zoom >= 1) {

        var t1 = Math.round((Math.pow(4, zoom)));
        zoomRatio = "1:" + t1;
    }
    else {
        var t2 = Math.round((Math.pow(imageScale, 2.0)) + .5);
        zoomRatio = "" + t2 + ":1";
    }

    var theLabel1 = "SDSS " + this.release;
    var theLabel2 = "Ra:" + fmt(this.labelRa, 9, 5) + "  Dec:" + fmt(this.labelDec, 8, 5);
    var theLabel3 = "Scale:" + fmt(this.inscale, 9, 5) + " arcsec/pix";
    var theLabel4 = "image zoom :" + zoomRatio;

    this.drawLabel(theLabel1, 350, 25);
    this.drawLabel(theLabel2, 350, 40);
    this.drawLabel(theLabel3, 350, 60);
    this.drawLabel(theLabel4, 350, 80);

}

CanvasState.prototype.drawLabel = function (label, xLabel, yLabel) {

    var ctx = this.ctx;
    ctx.font = "12px Arial";
    if (this.opt.indexOf('I') !== -1 && this.isLabel == true)
        ctx.fillStyle = "#330000";
    else if (this.isLabel == false)
        ctx.fillStyle = "rgba(0,0,0,0)";
    else
        ctx.fillStyle = "#ccffcc";

    ctx.fillText(label, xLabel, yLabel);
}

CanvasState.prototype.drawLoading = function () {

    var ctx = this.ctx;
    ctx.font = "Bold 13px Arial";
    if (this.opt.indexOf('I') !== -1)
        ctx.fillStyle = "#EE1010";
    else
        ctx.fillStyle = "#F2E711";
    ctx.fillText("Loading Image ...", 80, 40);
}




/// On any state chnage
CanvasState.prototype.recreateCanvas = function () {

    var div1 = document.getElementById('mimage');
    var can1 = document.getElementById('canvas1');
    div1.removeChild(can1);
    div1 = document.getElementById('mimage');
    var can2 = document.createElement('canvas');
    can2.setAttribute("id", "canvas1");
    can2.setAttribute("width", canvaswidth);
    can2.setAttribute("height", canvasheight);
    can2.setAttribute("style", "border: 0px solid black;");
    div1.appendChild(can2);
    ///reinitializing canvas    
    this.canvas = document.getElementById('canvas1');
    this.ctx = this.canvas.getContext('2d');
    initListeners(this, this.canvas);
}

/////Drawing Overlays options selected by user
CanvasState.prototype.getOverlays = function () {
    this.CreateLabel();
    this.canvas.style.cursor = "progress";
    var tempurl = getNeighbor(this.inra, this.indec, 0, 0, this);
    
    img = new Image();
    var newShape = new Shape(centerImg_x, centerImg_y, imgW, imgH, "", img, "", tempurl, 0, 0, null);
    newShape.ajaxImageOverlays(this.ctx, this, false);
    if (this.changesource)
        this.ShowNearest(this.dblra, this.dbldec);
    //this.addShape(newShape);
    
}


// just a little modification for the position of the image on the sky
CanvasState.prototype.loadZoomNew = function () {
    this.CreateLabel();
    //Adding new shapes
    var tempurl = getNeighbor(this.inra, this.indec, 0, 0, this);
    img = new Image();
    var newShape = new Shape(centerImg_x, centerImg_y, imgW, imgH, "", img, "", tempurl, 0, 0, null);
    newShape.ajaxImageOverlays(this.ctx, this, true);
}


function getXY(tRa, tDec, rRa, rDec, rScale) {

    var xy = radec2xy(tRa, tDec, rRa, rDec, rScale / 3600, width / 2, height / 2);
    var x_ = Math.round(xy[0]) - canvaswidth;
    var y_ = Math.round(xy[1]) - canvasheight;
    return [x_, y_];
}
////Loading All the images first time on submit
CanvasState.prototype.loadImages = function (inra, indec) {

    this.inra = inra;
    this.indec = indec;
    ra = this.inra;
    dec = this.indec;
    img = new Image();
    var imgurl = getNeighbor(ra, dec, 0, 0, this); ////i-2 and j-1 gives position of images with respect to central image
    //img.src = "./images/loading.jpg";
    var objdata = null;
    var newShape = new Shape(centerImg_x, centerImg_y, imgW, imgH, "", img, "", imgurl, 0, 0, objdata);
    prevX = newShape.x;
    prevY = newShape.y;
    newShape.ajaxImage(this.ctx, this);
    this.addShape(newShape);
}
///// Show nearest object
CanvasState.prototype.ShowNearest = function (raSel, decSel) {

    var c = document.getElementById("near");
    var selectedobj = 'ra=' + raSel + '&dec=' + decSel + '&scale=' + (0.25 * this.inscale) + "&radius=0.2";
    if (this.opt.indexOf('X') !== -1) selectedobj += "&opt=X";
    c.src = "./shownearest.aspx?" + selectedobj;
}


//// Mouse move actions
CanvasState.prototype.MoveIt = function (diffx, diffy, isMouseMove, e) {

    var rasT, decsT, xdirtemp, ydirtemp;
    shapesT = this.shapes;
    rasT = this.ras;
    decsT = this.decs;
    var len = shapesT.length;
    var minx = 0, miny = 0;
    if (isMouseMove == true) {
        minx = this.selection.x, miny = this.selection.y;
    }
    var maxx = 0; maxy = 0;
    for (var i = len - 1; i >= 0; i--) {
        var mySelT = shapesT[i];
        if ((isMouseMove == true) && (shapesT[i] == this.selection)) { }
        else {
            mySelT.x = diffx + mySelT.x;
            mySelT.y = diffy + mySelT.y;


            // this is to find which direction image is dragged
            if (i == len - 1) {
                minx = mySelT.x; miny = mySelT.y; maxx = mySelT.x; maxy = mySelT.y;
            } else {
                if (minx > mySelT.x) minx = mySelT.x;
                if (miny > mySelT.y) miny = mySelT.y;
                if (maxx < mySelT.x) maxx = mySelT.x;
                if (maxy < mySelT.y) maxy = mySelT.y;
            }
        }
        if (this.xdirmin > mySelT.xdir) this.xdirmin = mySelT.xdir;
        if (this.ydirmin > mySelT.ydir) this.ydirmin = mySelT.ydir;
        if (this.xdirmax < mySelT.xdir) this.xdirmax = mySelT.xdir;
        if (this.ydirmax < mySelT.ydir) this.ydirmax = mySelT.ydir;

    }
    var testcondition1 = false, testcondition2 = false;
    var testcondition1_1 = false, testcondition2_1 = false, testcondition1_2 = false, testcondition2_2 = false;
    var testcondition3 = false, testcondition4 = false;
    var testcondition5 = false, tempx, tempy;

    if (minx > mincondiS || miny > mincondiS) testcondition1 = true;
    else if (minx < newcondi + canvaswidth - tilesize || miny < newcondi + canvaswidth - tilesize) testcondition2 = true;

    if (testcondition1 == true) {
        if (this.bkupshapes[0] == null) testcondition5 = true;
    }
    else if (testcondition2 == true) {
        if (this.bkupshapes[1] == null) testcondition5 = true;
    }

    if (testcondition5 == true) {
        newcanvas = false;
        canvasReady = false;
        tempx = (canvassize / 2) - this.selection.x;
        tempy = (canvassize / 2) - this.selection.y;
        img = new Image();
        var imgUrl = getNewImage(this.inra, this.indec, tempx, tempy, this);
        var newShape2 = new Shape(centerImg_x, centerImg_y, imgW, imgH, "", img, "", imgUrl, 0, 0, null);
        newShape2.ajaxLoad(this); /// loading image in the background

        //if(this.isPhotoObj) this.getPhotoObj(neiRa, neiDec, this.inscale, true);

        if (testcondition1 == true) {
            this.bkupshapes[0] = newShape2;
            this.bkupshapes[1] = null;

            testcondition1 = false;
            testcondition2 = false;
        }
        if (testcondition2 == true) {
            this.bkupshapes[0] = null;
            this.bkupshapes[1] = newShape2;
            
            testcondition1 = false;
            testcondition2 = false;
        }
    }

    if (minx > mincondiT || miny > mincondiT) {
        testcondition3 = true;
        //if (minx > mincondiT) testcondition1_1 = true;
        //if (miny > mincondiT) testcondition1_2 = true;
    }
    else if (minx < canvaswidth - tilesize || miny < canvasheight - tilesize) {
        testcondition4 = true;
        //if (minx < canvaswidth - tilesize) testcondition2_1 = true;
        //if (miny < canvaswidth - tilesize) testcondition2_2 = true;
    }

    //window.parent.document.getElementById("test1").value = "in testcondition 1 : " + testcondition1 + ":testcondition 2:" + testcondition2 + ":testcondition3:" + testcondition3 + "testcondition4:" + testcondition4;

    if (testcondition3 == true || testcondition4 == true) {
        this.shapes = [];  // the collection of things to be drawn
        this.ras = [];     // the collection of ra 
        this.decs = [];    // the collection of dec
        this.shapesO = [];
        this.CreateLabel();

        if (testcondition3 == true) {

            if (this.bkupshapes[0] != null) this.shapes.push(this.bkupshapes[0]);
            if (this.bkshapesO[0] != null) this.shapesO = this.bkshapesO[0];
            //testcondition3 = false;
            //testcondition4 = false;
        }
        else if (testcondition4 == true) {
            if (this.bkupshapes[1] != null) this.shapes.push(this.bkupshapes[1]);
            if (this.bkshapesO[1] != null) this.shapesO = this.bkshapesO[1];
            //testcondition3 = false;
            //testcondition4 = false;
        }
        this.addRa(neiRa);
        this.addDec(neiDec);
        this.bkupshapes = [];
        this.inra = neiRa;
        this.indec = neiDec;
        newcanvas = true;

        var xy = getXY(this.dblra, this.dbldec, this.inra, this.indec, this.inscale);
        this.dblx = xy[0];
        this.dbly = xy[1];

        this.mousemove = false;
        this.valid = false;
    }
    this.valid = false;
    updateRaDecPara(this);
}

///to get central ra,dec and update parameters box
function updateRaDecPara(s) {
    if (s.shapes[0] != null) {
        var tmpx = (canvassize / 2) - s.shapes[0].x;
        var tmpy = (canvassize / 2) - s.shapes[0].y;
        var tmpradec = xy2radec(tmpx, tmpy, s.inra, s.indec, s.inscale / 3600, width / 2, height / 2);
        //    //var t1 = new Coord(s.inra, s.indec, s.inscale, imgsize);
        //    //t1.screenToEq(tmpx, tmpy);
        window.parent.document.getElementById("ra").value = tmpradec[0];
        window.parent.document.getElementById("dec").value = tmpradec[1];
        s.labelRa = tmpradec[0];
        s.labelDec = tmpradec[1];
    }
}

/// bkgrnd image center
// All this is developed for one image approach
CanvasState.prototype.newRaDec = function () {
    //xtemp = (canvaswidth / 2) - this.shapes[0].x;
    //ytemp = (canvasheight / 2) - this.shapes[0].y;
    //var radec = xy2radec(xtemp, ytemp, this.inra, this.indec, this.inscale / 3600, width / 2, height / 2);
    //var deg2rad = Math.PI / 180.0;
    //this.inra = radec[0];
    //this.indec = radec[1];
    this.inra = window.parent.document.getElementById("ra").value;
    this.indec = window.parent.document.getElementById("dec").value;

}

///
function getNewImage(ra, dec, xtemp, ytemp, s) {
    var test1 = xy2radec(xtemp, ytemp, ra, dec, s.inscale / 3600, width / 2, height / 2);
    var deg2rad = Math.PI / 180.0;
    neiRa = test1[0];
    neiDec = test1[1];
    var url = s.tempserver + 'ra=' + neiRa + '&dec=' + neiDec + '&scale=' + s.inscale + '&width=' + width + '&height=' + height + "&opt=" + s.opt;
    return url;
}

/////reference
function fmt(num, total, digits) {
    var n = new Number(num);
    if (n == 0) return n;
    var exp = Math.floor(Math.log(Math.abs(n)) / Math.LN10);
    var scale = Math.pow(10., digits);
    if (total > 0)
        scale = Math.pow(10., Math.min(digits, total - exp - 1));
    return Math.floor(scale * n + 0.5) / scale;
}

/// Initialize Canvas for the first time on submit
function initCanvas(inra, indec, tserver, scale, opt) {

    var s = new CanvasState(document.getElementById('canvas1'), tserver);
    s.inscale = scale;
    s.opt = opt;
    s.tempserver = tserver;
    s.loadImages(inra, indec);
    $("#dectest").attr("value", indec);
    $("#ratest").attr("value", inra);

}
function is_touch_device() {
    return 'ontouchstart' in window // works on most browsers 
        || 'onmsgesturechange' in window; // works on ie10
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// Initializing all the event listeners for given canvas
function initListeners(myState, canvas) {
    var ua = navigator.userAgent.toLowerCase();    
    tabs = is_touch_device();
    //fixes a problem where double clicking causes text to get selected on the canvas
    canvas.addEventListener('selectstart', function (e) { e.preventDefault(); return false; }, false);
    if (tabs) {
        var testdb1 = Hammer(canvas, { prevent_default: true }).on('touch', function (event) { OnMouseDown(event, myState); });
        var testdb2 = Hammer(canvas, { prevent_default: true }).on('drag', function (event) { OnMouseMove(event, myState); });
        var testdb3 = Hammer(canvas, { prevent_default: true }).on('release', function (event) { OnMouseUp(event, myState); });
        var testdb4 = Hammer(canvas, { prevent_default: true }).on('doubletap', function (event) { OnMouseDblClk(event, myState); });
    }
    else {
        canvas.addEventListener('mousedown', function (e) { OnMouseDown(e, myState); }, true);
        canvas.addEventListener('mousemove', function (e) { OnMouseMove(e, myState); }, true);
        canvas.addEventListener('mouseup', function (e) { OnMouseUp(e, myState); }, true);
        canvas.addEventListener('dblclick', function (e) { OnMouseDblClk(e, myState); }, true);
    }

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///******* Global Variables ********///
var imgsize = 1536, tilesize = 1536;
var canvassize = 512, canvaswidth = 512, canvasheight = 512;
var width = height = size = imgsize, imgW = imgH = imgsize;
var diff = 0.02;
///size of the canvas
var mincondi = 0, maxcondi = canvassize;
var centerImg_x = canvassize / 2 - imgsize / 2, centerImg_y = canvassize / 2 - imgsize / 2;
var testDraw1 = false;
// test global count
var count = 0;
var mincondiS = -100, maxcondiS = canvaswidth + 100;
var newcondi = 100;
var mincondiT = 0, maxcondiT = canvaswidth;
var canvasbk;
var neiRa, neiDec;
var newcanvas = false, canvasReady = false;
var imgLoading = "./images/loading.jpg";
var tabs = false;       // to check whether touch screen device is used

//// Function to update label text
CanvasState.prototype.CreateLabel = function () {
    this.isLoading = true;
    this.valid = false;
}

CanvasState.prototype.DeleteLabel = function () {
    this.isLoading = false;
    this.valid = false;
}

/////
//------------------------------------------------------------------------
// Shape is the object to be drawn in the canvas
// 
// Deoyani Heinis, 2014-01-30
//------------------------------------------------------------------------

//// Constructor for Shape objects to hold data for all drawn objects.
function Shape(x, y, w, h, fill, img, text, imgsrc, xdir, ydir, imgdata) {
    // This is a very simple and unsafe constructor. All we're doing is checking if the values exist.       
    this.x = x || 0;
    this.xtest = x;
    this.y = y || 0;
    this.w = w || 1;
    this.h = h || 1;
    this.fill = fill || '#AAAAAA';
    this.img = img;
    this.text = text;
    this.imgsrc = imgsrc;
    this.xdir = xdir;
    this.ydir = ydir;
    this.imgdata = imgdata;
    this.imgcnt = -1;
    this.ajaxstate = false;
}

////Draw an Image
Shape.prototype.draw = function (ctx) {
    try {
        //if (this.imgdata != null && this.img.src.indexOf("loading.jpg") !== -1)
        //    this.img.src = this.imgdata;
        ctx.drawImage(this.img, this.x, this.y, this.w, this.h);
        return true;
    } catch (e) {
        return false;
    }
}

/////Draw other shapes on top
Shape.prototype.draw1 = function (ctx) {
    ctx.fillStyle = this.fill;
    ctx.fillRect(this.x, this.y, this.w, this.h);
    ctx.fillStyle = "#000000";
    ctx.lineStyle = "#000000";
    ctx.font = "12px sans-serif";
    ctx.fillText(this.text, this.x, this.y + 20);
}

//// Determine if a point is inside the shape's bounds
Shape.prototype.contains = function (mx, my) {
    // All we have to do is make sure the Mouse X,Y fall in the area between
    // the shape's X and (X + Height) and its Y and (Y + Height)
    return (this.x <= mx) && (this.x + this.w >= mx) &&
          (this.y <= my) && (this.y + this.h >= my);
}
////
Shape.prototype.ajaxImage = function (ctx, mystate) {

    var that = this;
    var cx = ctx;
    this.ajaxstate = true;
    that.img.onload = function () {
        that.draw(cx);
        mystate.valid = false;
    }
    that.img.src = that.imgsrc;
    mystate.valid = false;
}

////
Shape.prototype.ajaxImageOverlays = function (ctx, mystate, isZoom) {

    var that = this;
    var cx = ctx;
    this.ajaxstate = true;
    that.img.onload = function () {

        mystate.shapesO = [];
        mystate.shapes = [];
        mystate.bkupshapes = [];
        mystate.bkshapesO = [];
        mystate.ras = [];
        mystate.decs = [];

        mystate.addShape(that);        
        mystate.addRa(mystate.inra);
        mystate.addDec(mystate.indec);

        
        //// this is helpful if the object is selected in previous zoom level    
        var xy = getXY(mystate.dblra, mystate.dbldec, mystate.inra, mystate.indec, mystate.inscale);
        mystate.dblx = xy[0]; mystate.dbly = xy[1];

        mystate.canvas.style.cursor = "auto";        
        isZoom = false;
        mystate.DeleteLabel();
        mystate.mousemove = false;
       
    }
    that.img.src = that.imgsrc;
    mystate.valid = false;
}

//// at load images
Shape.prototype.ajaxLoad = function (myState) {

    var that = this;
    this.ajaxstate = true;
    that.imgcnt = 2;
    canvasbk = document.createElement("canvas");
    canvasbk.setAttribute("width", canvaswidth);
    canvasbk.setAttribute("height", canvasheight);
    that.img.onload = function () {
        that.draw(canvasbk.getContext("2d"));
        canvasReady = true;        
        myState.canvas.style.cursor = "auto";
        myState.DeleteLabel();
    }
    that.img.src = that.imgsrc;
}

///*** actual ajax function ***///
Shape.prototype.ajax = function (url, onSuccess, onError) {

    var xh = getXmlHttpObject();
    xh.onreadystatechange = function () {
        if (xh.readyState == 4) {
            try {
                if (this.status == 200) {
                    onSuccess(this.responseText);
                }
            } catch (e) {
            }
        }
    }
    xh.open('GET', url, true);
    xh.send(null);
    return xh;
}
////
//------------------------------------------------------------------------
// This script takes care of all mouse events in canvas element
// 
// Deoyani Heinis, 2014-01-30
//------------------------------------------------------------------------
// Creates an object with x and y defined, set to the mouse position relative to the state's canvas
// If you wanna be super-correct this can be tricky, we have to worry about padding and borders
CanvasState.prototype.getMouse = function (e) {
    var element = this.canvas, offsetX = 0, offsetY = 0, mx, my;
    // Compute the total offset
    if (element.offsetParent !== undefined) {
        do {
            offsetX += element.offsetLeft;
            offsetY += element.offsetTop;
        } while ((element = element.offsetParent));
    }
    // Add padding and border style widths to offset
    // Also add the <html> offsets in case there's a position:fixed bar
    offsetX += this.stylePaddingLeft + this.styleBorderLeft + this.htmlLeft;
    offsetY += this.stylePaddingTop + this.styleBorderTop + this.htmlTop;

    if (tabs) {
        //mx = e.targetTouches[0].pageX - offsetX;
        //my = e.targetTouches[0].pageY - offsetY;
        mx = e.gesture.touches[0].pageX - offsetX;
        my = e.gesture.touches[0].pageY - offsetY;
    } else {

        mx = e.pageX - offsetX;
        my = e.pageY - offsetY;
    }

    // We return a simple javascript object (a hash) with x and y defined
    return { x: mx, y: my };
}


///////////////////////////////////////
///// All the mouse functions
function OnMouseDown(e, myState) {

    var mouse = myState.getMouse(e);
    var mx = mouse.x;
    var my = mouse.y;
    var shapes = myState.shapes;
    var l = shapes.length;

    for (var i = l - 1; i >= 0; i--) {
        if (shapes[i].contains(mx, my)) {
            var mySel = shapes[i];
            // Keep track of where in the object we clicked
            // so we can move it smoothly (see mousemove)
            myState.dragoffx = mx - mySel.x;
            myState.dragoffy = my - mySel.y;
            prevX = mySel.x;
            prevY = mySel.y;
            
            myState.dragging = true;
            myState.selection = mySel;
            
            myState.valid = false;
            return;
        }
    }
    // havent returned means we have failed to select anything.
    // If there was an object selected, we deselect it
    if (myState.selection) {
        myState.selection = null;
        myState.valid = false; // Need to clear the old selection border
    }
}


function OnMouseMove(e, myState) {
    
    if (myState.dragging) {
        myState.canvas.style.cursor = "move";
        //myState.dblselection = null;
        var mouse = myState.getMouse(e);
        // We don't want to drag the object by its top-left corner, we want to drag it
        // from where we clicked. Thats why we saved the offset and use it here
        myState.selection.x = mouse.x - myState.dragoffx;
        myState.selection.y = mouse.y - myState.dragoffy;
        ///My test for checking all the shapes other than selected-deo  
        //this was modified from tile option          
        var diffx = myState.selection.x - prevX;
        var diffy = myState.selection.y - prevY;

        myState.dblx += diffx;
        myState.dbly += diffy;

        //myState.MoveShapeO(diffx, diffy);

        prevX = myState.selection.x;
        prevY = myState.selection.y;
        myState.mousemove = true;
        myState.MoveIt(diffx, diffy, true, e);
        myState.valid = false; // Something's dragging so we must redraw
    }
}

function OnMouseUp(e, myState) {
    
    
    if (myState.dragging) myState.dragging = false;
        
    if (!myState.mousemove) {

            var mouse = myState.getMouse(e);
            var shapesT = myState.shapes;
            var rasT = myState.ras;
            var decsT = myState.decs;
            var shapesoT = myState.shapesO;

            for (var i = shapesT.length - 1; i >= 0; i--) {

                if (shapesT[i] == myState.selection) {

                    c = new Coord(rasT[i], decsT[i], myState.inscale, size);
                    var xtemp = mouse.x - myState.selection.x;
                    var ytemp = mouse.y - myState.selection.y;
                    c.screenToEq(xtemp, ytemp);
                    myState.dblselection = true;
                    myState.dblx = mouse.x;
                    myState.dbly = mouse.y;
                    myState.dblra = fmt(c.ra, 9, 5);
                    myState.dbldec = fmt(c.dec, 8, 5);
                    myState.ShowNearest(c.ra, c.dec);

                }
            }
            myState.valid = false;
        } else {
            myState.mousemove = false;
       }   
   
    myState.canvas.style.cursor = "auto";

}

function OnMouseDblClk(e, myState) {


    var mouse = myState.getMouse(e);
    var shapesT = myState.shapes;
    var rasT = myState.ras;
    var decsT = myState.decs;
    for (var i = shapesT.length - 1; i >= 0; i--) {
        if (shapesT[i] == myState.selection) {

            var diffx1 = 255 - mouse.x;
            var diffy1 = 255 - mouse.y;

            shapesT[i].x = myState.selection.x + diffx1;
            shapesT[i].y = myState.selection.y + diffy1;

            c = new Coord(rasT[i], decsT[i], myState.inscale, size);
            var xtemp = mouse.x - myState.selection.x + diffx1;
            var ytemp = mouse.y - myState.selection.y + diffy1;

            ////show selected in the small box
            c.screenToEq(xtemp, ytemp);
            myState.dblselection = true;
            myState.dblx = mouse.x + diffx1;
            myState.dbly = mouse.y + diffy1;
            myState.dblra = fmt(c.ra, 9, 5);
            myState.dbldec = fmt(c.dec, 8, 5);
            myState.ShowNearest(c.ra, c.dec);

            var diffx = myState.selection.x + diffx1 - prevX;
            var diffy = myState.selection.y + diffy1 - prevY;
            myState.MoveIt(diffx, diffy, true, e);

            prevX = myState.selection.x + diffx1;
            prevY = myState.selection.y + diffy1;            
        }
    }
    myState.valid = false;

}
////

///Init functions
var canvasState = null;
var prevscale = "";
var prevopt = "";

function selectCenter() {

    canvasState.dblselection = true;
    canvasState.dblx = 256;
    canvasState.dbly = 256;
    canvasState.dblra = fmt(ra, 9, 5);
    canvasState.dbldec = fmt(dec, 8, 5);
    canvasState.ShowNearest(ra, dec);
    setoptstr(0);
}

function makeCanvas(release, scale, opt, raThis, decThis, where) {
    canvasState = new CanvasState(document.getElementById('canvas1'), wsGetJpegurl);
    if (where == 2) canvasState.recreateCanvas();
    canvasState.release = release;
    canvasState.inscale = scale;
    canvasState.opt = opt.replace("G", "").replace("L", "").replace("P", "");
    checkOpt();
    canvasState.loadImages(raThis, decThis);
    selectCenter();
}

function resubmit() {

    //if (document.getElementById('getImageId').disabled == false) {

        var newra = document.getElementById('ra').value;
        var newdec = document.getElementById('dec').value;
        var newscale = document.getElementById('scale').value;
        var newopt = document.getElementById('opt').value;
        prevopt = "";
        checkScale();
        makeCanvas(release, canvasState.inscale, canvasState.opt, newra, newdec, 2);
        document.getElementById('getImageId').disabled = true;
    //}
    return false;
}

function checkOpt() {
    var newopt = document.getElementById('opt').value;
    var prevOptNoGL = prevopt.replace("G", "").replace("L", "");//.replace("P","");
    var newOptNoGL = newopt.replace("G", "").replace("L", "");//.replace("P","");

    if (newopt != prevopt) {
        if (newopt.indexOf('G') !== -1 && prevopt.indexOf('G') == -1) {
            canvasState.isGrid = true;
            canvasState.drawGrid();
        } else if (newopt.indexOf('G') == -1 && prevopt.indexOf('G') !== -1) {
            canvasState.isGrid = false;
            canvasState.valid = false;
            //canvasState.drawGrid();             
        }
        if (newopt.indexOf('L') !== -1 && prevopt.indexOf('L') == -1) {
            canvasState.isLabel = true;
            if (canvasState.labelRa == null)
                canvasState.labelRa = ra;
            if (canvasState.labelDec == null)
                canvasState.labelDec = dec;
            canvasState.getLabel();
        } else if (newopt.indexOf('L') == -1 && prevopt.indexOf('L') !== -1) {
            canvasState.isLabel = false;
            canvasState.valid = false;
        }

        if (newopt.indexOf('X') != prevopt.indexOf('X'))
            canvasState.changesource = true;
    }
    var optchange = false;
    if (prevOptNoGL != newOptNoGL) optchange = true;
    prevopt = newopt;
    canvasState.opt = newOptNoGL;
    if (canvasState.inscale > 10.0) {

        canvasState.opt = canvasState.opt.replace("P", "").replace("S", "").replace("O", "").replace("B", "");
        document.getElementById('opt').value = canvasState.opt;
    }
    return optchange;
}

function checkScale() {
    
    var newscale = document.getElementById('scale').value;
    var changeZoom = false;
    if (prevscale != newscale) {
        changeZoom = true;
    }
    prevscale = newscale;
    canvasState.inscale = newscale;
    
    var drawOpt = ["PhotoObjs", "SpecObjs", "Outline", "BoundingBox", ];

    for (var i = 0; i < 4; i++) {
        if (canvasState.inscale > 10.0) {
            $("#messageZoom").text("Some \"Drawing Options\" are not available at this scale.");
            //$('#L_' + drawOpt[i]).attr({ class: 's' });
            $('#' + drawOpt[i]).attr({ 'disabled': true, 'checked': false });
        } else {
            $('#' + drawOpt[i]).attr({ 'disabled': false });
            $("#messageZoom").text("");
            //$('#L_' + drawOpt[i]).attr({ class: '' });
        }
    }
    return changeZoom;
}

function myResubmit() {
    validate();
    var isScale = checkScale();
    var isOpt = checkOpt();
    //alert(canvasState.inra);
    canvasState.newRaDec();
    //alert(canvasState.inra);
    if (isScale)
        canvasState.loadZoomNew();
    else
        if (isOpt)
            canvasState.getOverlays();
}

function stepCenter(dir) {

    var xmove = 0; ymove = 0;
    switch (dir) {
        case 'N': ymove = 128; break;
        case 'W': xmove = -128; break;
        case 'E': xmove = 128; break;
        case 'S': ymove = -128; break;
    }
    //alert(dir);
    canvasState.dblx = canvasState.dblx + xmove;
    canvasState.dbly = canvasState.dbly + ymove;
    canvasState.MoveIt(xmove, ymove, false);
}

function popup() {
    var s = "printchart.aspx" + qstring();
    var w = window.open(s, "PRINTIMAGE", "width=700,height=840,resizable=yes,scrollbars=auto,menubar=yes");
    w.focus();
    return false;
}

function qstring() {
    var s = "";
    s += "?ra=" + document.getElementById('ra').value;
    s += "&dec=" + document.getElementById('dec').value;
    s += "&scale=" + document.getElementById('scale').value;
    s += "&width=" + document.getElementById('size').value;
    s += "&height=" + document.getElementById('size').value;
    s += "&opt=" + document.getElementById('opt').value;
    return s;
}
