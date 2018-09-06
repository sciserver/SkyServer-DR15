/////////////////////////////////////////////////////////////////////
//
// define the Div class 
//
// original code from Flanagan
// modified by Alex Szalay, 04/21/2001
//
/////////////////////////////////////////////////////////////////////

function Div(id, left, top) {

    this.window = window;
    this.id = id;
    this.pmt = new Object();
    this.pmt.left = left;
    this.pmt.top = top;
    this.initialize();
    this.style.left = left + 'px';
    this.style.top = top + 'px';
    this.moveTo(left, top);
}

// Methods to move the dynamic object
Div.prototype.initialize = function () {

    this.element = document.getElementById(this.id);//this.window.document.all[this.id];
    this.style = this.element.style;
}

Div.prototype.moveTo = function (x, y) {
    this.style.left = x + 'px';
    this.style.top = y + 'px';
}

Div.prototype.moveBy = function (x, y) {

    this.style.left = (parseInt(this.style.left) + x) + "px";
    this.style.top = (parseInt(this.style.top) + y) + 'px';
}

// Methods to set other attributes of the dynamic object
Div.prototype.show = function () { this.style.visibility = "visible"; }
Div.prototype.hide = function () { this.style.visibility = "hidden"; }
Div.prototype.setZIndex = function (z) { this.style.zIndex = z; }
Div.prototype.setBgColor = function (color) { this.style.backgroundColor = color; }
Div.prototype.setBgImage = function (image) { this.style.backgroundImage = image; }
Div.prototype.setClip = function (l, t, r, b) {
    this.style.clip = "rect(" + t + " " + r + " " + b + " " + l + ")";
}
// Methods to query the dynamic object
Div.prototype.getX = function () { return this.style.pixelLeft; }
Div.prototype.getY = function () { return this.style.pixelRight; }
Div.prototype.getWidth = function () { return this.style.width; }
Div.prototype.getHeight = function () { return this.style.height; }
Div.prototype.getZIndex = function () { return this.style.zIndex; }
Div.prototype.isVisible = function () { return this.style.visibility == "visible"; }

// Change the contents of the dynamic element.
Div.prototype.setBody = function () {
    var body = "";
    for (var i = 0; i < arguments.length; i++) { body += arguments[i] + "\n"; }
    this.element.innerHTML = body;
}

// Define an event handler.
Div.prototype.addEventHandler = function (eventname, handler) {
    var dynel = this;  // Current DynEl for use in the nested function
    // Set an IE4 event handler that invokes the specified handler
    // with the appropriate nine arguments.
    this.element[eventname] = function () {
        var e = dynel.window.event;
        e.cancelBubble = true;
        //--------------------------------------------
        // return the page coordinates of the event, 
        // corrected for the scrollbars (Alex Szalay)
        //--------------------------------------------
        var x = e.clientX + document.body.scrollLeft - 2;
        var y = e.clientY + document.body.scrollTop - 2;
        return handler(dynel, e.type, x, y, e.screenX, e.screenY,
            e.button, e.keyCode, e.shiftKey, e.ctrlKey, e.altKey);
    }
}

// Remove an event handler.
Div.prototype.removeEventHandler = function (eventname) {
    delete this.element[eventname];
}


/////////////////////////////////////////////////////////////////////
//
// define the ClickImg class 
//
// written by Alex Szalay 04/21/2001
//
/////////////////////////////////////////////////////////////////////

function ClickImg(id, left, top) {
    this.id = id;
    this.pmt = new Object();
    this.tree = new Object();
    this.pmt.left = left;
    this.pmt.top = top;
}

ClickImg.prototype.addNode = function (name, x, y, m) {
    var left = this.pmt.left;
    var top = this.pmt.top;
    if (x) left = x;
    if (y) top = y;
    eval('this.tree.' + name + '= new Div("' + name + '",' + left + ',' + top + ');');
    eval('this.tree.' + name + '.movable = true;');
    if (m) { eval('this.tree.' + name + '.movable = false;'); }
}

ClickImg.prototype.addEventHandler = function (eventname, handler) {
    for (var i in this.tree) {
        eval("this.tree['" + i + "'].addEventHandler('" + eventname +
			"', function(d,t,x,y,sx,sy) {" + handler + "(d,t,x,y,sx,sy);} );");
    }
}

ClickImg.prototype.setZIndex = function (z) {
    for (var i in this.tree) {
        eval("this.tree['" + i + "'].setZIndex(" + z + ");");
    }
}

ClickImg.prototype.moveBy = function (x, y) {
    for (var i in this.tree) {
        var movable = eval("this.tree['" + i + "'].movable;");
        if (movable)
            eval("this.tree['" + i + "'].moveBy(" + x + "," + y + ");");
    }
}

ClickImg.prototype.shiftBy = function (x, y) {
    var rx = x;
    var ry = y;
    var dx = this.pmt.clipleft + this.pmt.clipwidth - this.pmt.width;
    var dy = this.pmt.cliptop + this.pmt.clipheight - this.pmt.height;
    // check against the boundaries	
    if (rx > this.pmt.clipleft) { rx = this.pmt.clipleft; }
    if (ry > this.pmt.cliptop) { ry = this.pmt.cliptop; }
    if (rx < dx) { rx = dx; }
    if (ry < dy) { ry = dy; }
    // update the clip coords
    this.pmt.clipleft -= rx;
    this.pmt.cliptop -= ry;
    var img = eval("this.tree['" + this.id + "']");
    img.setClip(this.pmt.clipleft, this.pmt.cliptop,
		this.pmt.clipleft + this.pmt.clipwidth,
		this.pmt.cliptop + this.pmt.clipheight);
    this.moveBy(rx, ry);
}
