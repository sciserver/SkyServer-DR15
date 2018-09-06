//------------------------------------------------------------------
//  sdss-main-scroll.js  - javascript for the SDSS scrolling display
//  written by Alex Szalay, Dec 30, 2000
//  it assumes mosaic files in the path
//------------------------------------------------------------------
  var p,next,status;
    
  function nextImg() {	var s = getFileName(next);
	if (--next<FIELD_MIN)
		resetStripe();
	return s;  }

function move() {
    if (status)		for (var i = 0; i < p.length; i++) {p[i].move();}	timer = setTimeout("move()",DELTA_T);
  }
  
  function toggle() {
	status = !status;  }
  //--------------- definition of the Scroll class --------
    function Scroll(i,step) {
	this.id   = i;
	this.step = step;	this.pos  = i*STRIDE;
	this.setDiv();	this.nextSrc();
	this.div.top = this.pos+"px";
  }

  Scroll.prototype.setDiv = function () {
      if (is.ns4) { this.div = document["s" + this.id]; }
      else if (is.ns6) { this.div = document.getElementById("s" + this.id).style; } else if (is.ie) { this.div = document.all["s" + this.id].style; } 
  }
  
  Scroll.prototype.move = function () {	if (this.pos < -HEIGHT) {		this.pos += p.length*STRIDE;
		this.nextSrc();
	}
	this.pos    -= this.step;	this.div.top = this.pos+"px";
  }

  Scroll.prototype.nextSrc = function () {
      
      if (is.ns4) { document["s" + this.id].document.images["img" + this.id].src = nextImg(); } else if (is.ns6) {
          document.images["img" + this.id].src = nextImg();
      } else if (is.ie) { document.all["img" + this.id].src = nextImg(); }
      
  }
  //-------------------------------------------------------
  
  function init(stepsize) {

	//initialize the state variables, and the array	  
    status = false;	next   = FIELD_MAX;

	p = new Array(3);
    for (var i = 0; i < p.length; i++) {
		p[i] = new Scroll(i,stepsize);
    }
	status = true;	move();
  }

  function Is() {
	this.id    = navigator.appVersion;	this.major = parseInt(navigator.appVersion);	this.agent = navigator.userAgent.toLowerCase();	this.ns = ( (this.agent.indexOf('mozilla')!=-1) &&
				(this.agent.indexOf('spoofer')==-1) &&
				(this.agent.indexOf('compatible')==-1) &&
				(this.agent.indexOf('opera')==-1));	this.ns4 = (this.ns && (this.major==4));
	this.ns6 = (this.ns && (this.major>=5));	this.ie  = (this.agent.indexOf('msie')!=-1);  }
  
