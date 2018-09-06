/**
class STARTBallParams
=====================
Properties
----------
float ra
float dec
float zDepth
float zoomIncrement
bool  zoomSync

Constructors
------------
STARTBallParams(_ra, _dec, _zDepth, _zoomIncrement, _zoomSync)
*/

function STARTBallParams(_ra, _dec, _zDepth, _zoomIncrement, _zoomSync)
{
  this.ra = _ra;
  this.dec = _dec;
  this.zDepth = _zDepth;
  this.zoomIncrement = _zoomIncrement;
  this.zoomSync = _zoomSync;
}

/**
class STARTBall
===============
Properties
----------
STARTBallParams params
String backgroundColor
String textureMapURL
String defaultTextureMapURL
ClickTarget[] clickTargets

Constructors
------------
STARTBall()

Methods
-------
String generateTag()

void addClickCallbacks(function[] f(STARTBallParams p))
void removeClickCallback(function[] f(STARTBallParams p))

void addZoomCallbacks(function[] f(STARTBAllParams p))
void removeZoomCallbacks(function[] f(STARTBallParams p))

void updateSTARTBallParams(STARTBallParams p)
void preloadTextureMap(String url)
void setTextureMap(String url)
void setBackgroundColor(String hexCode)
*/

function STARTBall(_params, _textureMapURL, _defaultTextureMapURL, _backgroundColor, _width, _height)
{
  this.params = _params;
  this.defaultTextureMapURL = STARTBall.valueOf(_defaultTextureMapURL, STARTBall.defaultDefaultTextureMapURL);
  this.textureMapURL = STARTBall.valueOf(_textureMapURL, this.defaultTextureMapURL);
  this.backgroundColor = STARTBall.valueOf(_backgroundColor, "#FFFFFF");
  var width = STARTBall.valueOf(_width, 300);
  var height = STARTBall.valueOf(_height, 325);
  var id = STARTBall.generateID(STARTBall.instanceList);
  var flashProxyID = id + "_flashProxyID";
  var shockLCID = id + "_shocklcid";
  var shockHTMLID = id + "_shockhtmlid";
  var clickCallbacks = new Array();
  var zoomCallbacks = new Array();
  // queuedCalls is an array of arrays.  each array contains a function name followed by args
  var queuedCalls = new Array();
  var ready = false;
  var flashProxy = new FlashProxy(flashProxyID, STARTBall.rootDir + '/FlashJavascriptGateway/FlashJavascriptGateway/installation/JavaScriptFlashGateway.swf');

  STARTBall.instanceList[id] = this;

  this.getID = function()
  {
    return id;
  }
  this.getFlashProxyID = function()
  {
    return flashProxyID;
  }
  this.getShockLCID = function()
  {
    return shockLCID;
  }
  this.getShockHTMLID = function()
  {
    return shockHTMLID;
  }
  this.getWidth = function()
  {
    return width;
  }
  this.getHeight = function()
  {
    return height;
  }
  this.getClickCallbacks = function()
  {
    return clickCallbacks;
  }
  this.setClickCallbacks = function(_clickCallbacks)
  {
    clickCallbacks = _clickCallbacks;
  }
  this.getZoomCallbacks = function()
  {
    return zoomCallbacks;
  }
  this.setZoomCallbacks = function(_zoomCallbacks)
  {
    zoomCallbacks = _zoomCallbacks;
  }
  this.getQueuedCalls = function()
  {
    return queuedCalls;
  }
  this.getFlashProxy = function()
  {
    return flashProxy;
  }
  this.toggleReady = function()
  {
    ready = !ready;
  }
  this.getReady = function()
  {
    return ready;
  }
}

STARTBall.prototype.processReady = function()
{
  this.toggleReady();
  var qc = this.getQueuedCalls();

  if(this.getReady())
  {
    while(qc.length > 0)
    {
      var c = qc.shift();
      var fname = c.shift();
      //alert("calling " + fname + " with " + c[0]);
      this.getFlashProxy().call(fname, c[0]);
    }
  }
}

/**
  Fires a click event.
  _params will be passed on to clickCallback functions.
*/
STARTBall.prototype.processClick = function(_params)
{
  for(var i = 0; i < this.getClickCallbacks().length; ++i)
  {
    this.getClickCallbacks()[i](_params);
  }
}

/**
  Adds a clickCallback function _f or an array of clickCallback functions _f[i]
  to the list of listeners.
  When fireClick(_params) is called, _f[i](_params) will be invoked for all i.
*/
STARTBall.prototype.addClickCallbacks = function(_f)
{
  this.setClickCallbacks(STARTBall.arrayAppend(_f, this.getClickCallbacks()));
}

/**
  Removes a clickCallback function _f or an array of clickCallback functions _fs[i]
  from the list of clickCallback functions for all i.
  _fs[i] will no longer be invoked on fireClick(_params).
*/
STARTBall.prototype.removeClickCallbacks = function(_fs)
{
  this.setClickCallbacks(STARTBall.arrayRemove(_fs, this.getClickCallbacks()));
}

/**
  Fires a zoom event.
  _params will be passed on to zoomCallback functions.
*/
STARTBall.prototype.fireZoom = function(_params)
{
  for(var i = 0; i < this.getZoomCallbacks().length; ++i)
  {
    this.getZoomCallbacks()[i](_params);
  }
}

/**
  Adds a zoomCallback function _f or an array of zoomCallback functions _f[i]
  to the list of listeners.
  When fireZoom(_params) is called, _f[i](_params) will be invoked for all i.
*/
STARTBall.prototype.addZoomCallbacks = function(_f)
{
  this.setZoomCallbacks(STARTBall.arrayAppend(_f, this.getZoomCallbacks()));
}

/**
  Removes a zoomCallback function _f or an array of zoomCallback functions _fs[i]
  from the list of zoomCallback functions for all i.
  _fs[i] will no longer be invoked on fireZoom(_params).
*/
STARTBall.prototype.removeZoomCallbacks = function(_fs)
{
  this.setZoomCallbacks(STARTBall.arrayRemove(_fs, this.getZoomCallbacks()));
}

/**
  returns String
*/
STARTBall.prototype.generateTag = function()
{
  var flashProxyID = this.getFlashProxyID();
  var shockLCID = this.getShockLCID();
  var shockHTMLID = this.getShockHTMLID();
  var comID = "STARTCom";
  var tMapURL = STARTBall.valueOf(this.textureMapURL, this.defaultTextureMapURL);
  var swRemoteVal = "swSaveEnabled='false' swVolume='false' swRestart='false' " +
                    "swPausePlay='false' swFastForward='false' swContextMenu='true'";
  var flashVarsVal = "lcId=" + flashProxyID + "&shockLCID=" + shockLCID;

  var result =
  "<object classid='clsid:166B1BCA-3F9C-11CF-8075-444553540000' " +
  "codebase='http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=8,5,1,0' " +
  "ID='" + shockHTMLID + "' width='" + this.getWidth() + "' height='" + this.getHeight() + "' VIEWASTEXT>\n" +
  "  <param name=src value='" + STARTBall.rootDir + "/STARTBall.dcr' />\n" +
  "  <param name=progress value='true' />\n" +
  "  <param name=logo value='false' />\n" +
  "  <param name=swRemote value=\"" + swRemoteVal + "\" />\n" +
  "  <param name=swStretchStyle value='none' />\n" +
  "  <param name=bgColor value='" + this.backgroundColor + "' />\n" +
  "  <param name=sw1 value='" + shockLCID + "' />\n" +
  "  <param name=sw2 value='" + tMapURL + "' />\n" +
  "  <embed name='" + shockHTMLID + "' swLiveConnect='true' src='" + STARTBall.rootDir + "/STARTBall.dcr' " +
  "bgColor='" + this.backgroundColor + "' " +
  "progress='true' logo='false' width='" + this.getWidth() +
  "' height='" + this.getHeight() + "' swRemote=\"" + swRemoteVal + "\" " +
  "swStretchStyle='none' type='application/x-director' " +
  "sw1='" + shockLCID + "' sw2='" + tMapURL + "' " +
  "pluginspage='http://www.macromedia.com/shockwave/download/' />\n" +
  "</object>\n" +
  "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' " +
  "codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0' " +
  "width='1' height='1' id='STARTCom' align='middle' VIEWASTEXT>\n" +
  "  <param name='allowScriptAccess' value='sameDomain' />\n" +
  "  <param name='movie' value='" + STARTBall.rootDir + "/STARTCom.swf' />\n" +
  "  <param name='quality' value='high' />\n" +
  "  <param name='bgcolor' value='" + this.backgroundColor + "' />\n" +
  "  <param name='FlashVars' value=\"" + flashVarsVal + "\" />\n" +
  "  <embed FlashVars=\"" + flashVarsVal + "\" src='" + STARTBall.rootDir + "STARTCom.swf' quality='high' " +
  "bgcolor='" + this.backgroundColor + "' width='1' height='1' name='STARTCom' align='middle' " +
  "allowScriptAccess='sameDomain' type='application/x-shockwave-flash' " +
  "pluginspage='http://www.macromedia.com/go/getflashplayer' swLiveConnect='true' />\n" +
  "</object>\n";

  if(STARTBall.debug)
  {
    alert("window.location = " + window.location);
    alert("STARTBall.rootDir = " + STARTBall.rootDir);
    alert("tMapURL = " + tMapURL);
    alert(result);
  }

  return result;
}

STARTBall.prototype.updateSTARTBallParams = function(_params)
{
  if(this.getReady())
  {
    this.getFlashProxy().call('updateSTARTBallParams', _params);
  }
  else
  {
    this.getQueuedCalls().push(new Array('updateSTARTBallParams', _params));
  }
}

STARTBall.prototype.preloadTextureMap = function(_url)
{
  if(this.getReady())
  {
    this.getFlashProxy().call('preloadTextureMap', _url);
  }
  else
  {
    this.getQueuedCalls().push(new Array('preloadTextureMap', _url));
  }
}

STARTBall.prototype.setTextureMap = function(_url)
{
  if(this.getReady())
  {
    this.getFlashProxy().call('setTextureMap', _url);
  }
  else
  {
    this.getQueuedCalls().push(new Array('setTextureMap', _url));
  }
}

STARTBall.prototype.setBackgroundColor = function(_hexCode)
{
  if(this.getReady())
  {
    this.getFlashProxy().call('setBackgroundColor', _hexCode);
  }
  else
  {
    this.getQueuedCalls().push(new Array('setBackgroundColor', _hexCode));
  }
}

/**
  BEGIN STATIC FIELDS
*/
STARTBall.setRootDir = function(_rootDir)
{
  STARTBall.rootDir = _rootDir;
}

/**
  returns String
*/
STARTBall.generateIncludes = function()
{
  var gatewayPath = STARTBall.rootDir + "/FlashJavascriptGateway/FlashJavascriptGateway/source/javascript/";
  return "<script language='javascript' src='" + gatewayPath + "Exception.js'></script>\n" +
    "<script language='javascript' src='" + gatewayPath + "FlashTag.js'></script>\n" +
    "<script language='javascript' src='" + gatewayPath + "FlashSerializer.js'></script>\n" +
    "<script language='javascript' src='" + gatewayPath + "FlashProxy.js'></script>\n";
}

/**
  Properties
  protected would be nice, but apparently not an option...
  */
STARTBall.myLocation = document.getElementById('STARTBallTag').src;
STARTBall.rootDir = './STARTBall/';
if(STARTBall.myLocation != null)
{
  STARTBall.rootDir = STARTBall.myLocation.replace(/STARTBall.js$/, "");
}
STARTBall.instanceList = new Array();
STARTBall.defaultDefaultTextureMapURL = './images/skyTest.png';
STARTBall.debug = false;

/**
  Functions
  protected would be nice here too...
*/
STARTBall.fireClick = function(_shockLCID, _params)
{
  var id = _shockLCID.replace(/_shocklcid$/, "");
  var t = STARTBall.instanceList[id];

  if(t != null && t != undefined)
  {
    t.processClick(_params);
  }
}

STARTBall.fireReady = function(_shockLCID)
{
  var id = _shockLCID.replace(/_shocklcid$/, "");
  var t = STARTBall.instanceList[id];

  if(t != null && t != undefined)
  {
    t.processReady();
  }
}

/**
  Append elements of _src to _dest.  If _src is not an array, _src itself is appended to _dest.
  returns the resulting array.
  _src and _dest are unaltered.
*/
STARTBall.arrayAppend = function(_src, _dest)
{
  var result = new Array();

  if(_dest != null && _dest != undefined && _dest.length > 0)
  {
    result = result.concat(_dest);
  }

  if(_src != null && _src != undefined)
  {
    result = result.concat(_src);
  }

  return result;
}

/**
  Remove elements of _src from _dest.  If _src is not an array, _src itself is removed from _dest.
  returns the resulting array.
  _src and _dest are unaltered.
*/
STARTBall.arrayRemove = function(_src, _dest)
{
  var result = new Array();
  var _srcCpy = new Array();

  if(_dest != null && _dest != undefined && _dest.length > 0)
  {
    result = result.concat(_dest);
  }

  if(_src != null && _src != undefined)
  {
    _srcCpy = _srcCpy.concat(_src);
    for(var i = 0; i < _srcCpy.length; ++i)
    {
      for(var j = 0; j < result.length; ++j)
      {
        if(result[j] == _srcCpy[i])
        {
          result.splice(j, 1);
        }
        else
        {
          ++j;
        }
      }
    }
  }

  return result;
}

/**
  returns defaultValue if value is null or undefined, value otherwise
*/
STARTBall.valueOf = function(value, defaultValue)
{
  if(value == null || value == undefined)
  {
    return defaultValue;
  }

  return value;
}

/**
  arg instanceList is array of (ID) Strings
  returns ID String
*/
STARTBall.generateID = function(instanceList)
{
  var id = (new Date()).toString().replace(/[ \-:\(\)]/g, "_");
  var idCount = 0;

  for(idCount = 0; STARTBall.instanceList[id + "_" + idCount] != null;)
  {
    ++idCount;
  }

  id += "_" + idCount;
  STARTBall.instanceList[id] = id;

  return id;
}
/**
  END STATIC FIELDS
*/
