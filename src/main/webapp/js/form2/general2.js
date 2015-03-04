//meta http-equiv content-type charset=GBK
function addLoadListener(fn) {
  if (typeof window.addEventListener != 'undefined') {
  	window.addEventListener('load', fn, false);
  }
  else if (typeof document.addEventListener != 'undefined') {
  	document.addEventListener('load', fn, false);
  }
  else if (typeof window.attachEvent != 'undefined') {
  	window.attachEvent('onload', fn);
  }
  else {
  	var oldfun = window.onload;
  	if (typeof window.onload != 'function') {
  		window.onload = fn;
  	}
  	else {
  		window.onload = function() {
  			oldfun();
  			fn();
  		};
  	}
  }
}

// onload事件响应函数，系统初始化
function addEvent(){
  initDIV();
  initTextBox();
  initSelect();
  initTable();
  myInit();
}

addLoadListener(addEvent);

function initTable() {
  aTags=document.getElementsByTagName("TABLE");
  for(var i=0;i<aTags.length;i++) {
    var activeTag = aTags[i];
	if (activeTag.id.indexOf("dataTable")!=-1) {
	  for (var j=0; j<activeTag.rows.length; j++) {
	    activeTag.rows[j].className = (j%2==0)?"dataOdd":"dataEven";
      }
    }
  }
}

// 初始化选择框
function initSelect() {
  aTags=document.getElementsByTagName("SELECT");
  for(var i=0;i<aTags.length;i++) {
    var activeTag = aTags[i];
    activeTag.onblur=function(){
      this.className='';
    }
    activeTag.onfocus=function(){
      this.className='focus';
    }
    activeTag.onmouseout=function(){
      this.className='';
    }
    activeTag.onmouseover=function(){
      this.className='focus';
    }
  }
}

// 初始化文本输入框
function initTextBox() {
  aTags=document.getElementsByTagName("INPUT");
  for(var i=0;i<aTags.length;i++) {
    var divType = aTags[i].getAttribute("type");
    var activeTag = aTags[i];
    if(divType=="text"||divType=="password"){
      activeTag.className='inputtext';
      
	  addDefaultBlurFun(activeTag, function(){
        this.className='inputtext';
      });
	  addDefaultFocusFun(activeTag, function(){
        this.className='focus';
      });
	  addDefaultMouseOutFun(activeTag, function(){
        this.className='inputtext';
      });
	  addDefaultMouseOverFun(activeTag, function(){
        this.className='focus';
      });
    }
  }
  aTags=document.getElementsByTagName("TEXTAREA");
  for(var i=0;i<aTags.length;i++) {
    var activeTag = aTags[i];
	addDefaultBlurFun(activeTag, function() {this.className='';});
	addDefaultFocusFun(activeTag, function() {this.className='focus';});
	addDefaultMouseOutFun(activeTag, function() {this.className='';});
	addDefaultMouseOverFun(activeTag, function() {this.className='focus';});
  }
}

function addDefaultBlurFun(activeTag, newfun) {
	var oldfun = activeTag.onblur;
  	if (typeof oldfun != 'function') {
  		activeTag.onblur = newfun;
  	}
  	else {
  		activeTag.onblur = function() {
  			oldfun();
			newfun();
  		};
  	}
}

function addDefaultFocusFun(activeTag, newfun) {
	var oldfun = activeTag.onfocus;
  	if (typeof oldfun != 'function') {
  		activeTag.onfocus = newfun;
  	}
  	else {
  		activeTag.onfocus = function() {
  			oldfun();
			newfun();
  		};
  	}
}

function addDefaultMouseOutFun(activeTag, newfun) {
	var oldfun = activeTag.onmouseout;
  	if (typeof oldfun != 'function') {
  		activeTag.onmouseout = newfun;
  	}
  	else {
  		activeTag.onmouseout = function() {
  			oldfun();
			newfun();
  		};
  	}
}

function addDefaultMouseOverFun(activeTag, newfun) {
	var oldfun = activeTag.onmouseover;
  	if (typeof oldfun != 'function') {
  		activeTag.onmouseover = newfun;
  	}
  	else {
  		activeTag.onmouseover = function() {
  			oldfun();
			newfun();
  		};
  	}
}

// Intialize Div
function initDIV() {
  aTags=document.getElementsByTagName("DIV");
  for(var i=0;i<aTags.length;i++) {
    // For Support IE & Mozilla,Use Standard Method
    var divType     = aTags[i].getAttribute("type");
    var divName     = aTags[i].getAttribute("name");
    var divLabel    = aTags[i].getAttribute("label");
    var divAction   = aTags[i].getAttribute("action");
    var divDisabled = aTags[i].getAttribute("disabled");
    var divWidth    = aTags[i].getAttribute("width");
    var leftPane    = aTags[i].getAttribute("leftPane");
    var rightPane    = aTags[i].getAttribute("rightPane");
    var splitBar    = aTags[i].getAttribute("splitBar");
    var autoResize    = aTags[i].getAttribute("autoResize");
    // divType is required
    if (!isValueValid(divType)) {
      continue;
    }
    // Command Button Type
    if (divType=="button") {
      disabledHTML = '';
      widthHTML = '';
      if (isValueValid(divDisabled) && divDisabled.toString()!="false") {
        disabledHTML = 'disabled';
        // Special Process For Mozilla
        if (!document.all) {
          divLabel = '<font class=\'btn_disabled\'>' + divLabel + '</font>';
          divAction = '';
        }
      }
      if (isValueValid(divWidth)) {
        widthHTML = 'width='+divWidth;
      }
      aTags[i].innerHTML='<table border=0 cellspacing=0 cellpadding=0>' +
                         '<tr>' +
                         ' <td width=1 nowrap></td>' + 
                         '  <td><img src='+contextPath+'/themes/faces/'+galaxyUserFaceKey+'/images/button/left_btn.gif></td>' +
                         '  <td ' + widthHTML + ' ' + disabledHTML + ' background='+contextPath+'/themes/faces/'+galaxyUserFaceKey+'/images/button/mid_btn.gif class=btntext ' +
                         '    onmouseover=\"this.className=\'btntexthighlight\';\" onmouseout=\"this.className=\'btntext\';\" ' +
                         '    onfocus=\"this.className=\'btntexthighlight\';\" onblur=\"this.className=\'btntext\';\" ' +
                         '    onclick=\"' + divAction + '\" nowrap><div nowrap class="btn_words">' + divLabel + '</div></td>' +
                         '  <td><img src='+contextPath+'/themes/faces/'+galaxyUserFaceKey+'/images/button/right_btn.gif></td>' +
                         ' <td width=5 nowrap></td> ' + 
                         '</tr>' +
                         '</table>';
    // Command Link
    } else if (divType=="link") {
      aTags[i].innerHTML='<a class=linktext onmouseover=\"this.className=\'linktexthighlight\';\"' +
                         ' onmouseout=\"this.className=\'linktext\';\" onclick=' + divAction + '>' +
                         divName + '</a>';
    } else if (divType=="twinkle") {
      twinkleInfo.srcElement=aTags[i];
      enableTwinkling(aTags[i].getAttribute("interval"), aTags[i].getAttribute("count"));
    // Split
    } else if (divType=="split") {
      splitInfo.baseObj=aTags[i];      
      splitInfo.leftFrameElement = (document.getElementById(leftPane));
      splitInfo.rightFrameElement = (document.getElementById(rightPane));
      splitInfo.leftPane = splitInfo.leftFrameElement;
      splitInfo.rightPane = splitInfo.rightFrameElement;   
      splitInfo.splitBar = document.getElementById(splitBar);
      splitInfo.leftPane.onload=resizeToFitLeft;
      splitInfo.rightPane.onload=resizeToFitRight;
      splitInfo.splitBar.onmousedown=splitmousedown;
      splitInfo.splitBar.onmouseup=splitmouseup;
      splitInfo.splitBar.style.cursor="col-resize";
      if(!autoResize){
      	autoResize="true";
      }
      if(autoResize=="true"){
      	resizeToFitLeft();
        resizeToFitRight();
      }
    }
  }
}

// 空的init函数
function myInit() {}

// 以下支持文字闪烁功能
var twinkleInfo = new TwinkleInfo();

function TwinkleInfo() {
  this.currCount = 0;
  this.intervalHander = null;
  this.colorNormal = "black";
  this.colorHighlight = "red";
  this.srcElement=null;
}

function enableTwinkling(millis, count) {

  if(twinkleInfo.intervalHandler == null && twinkleInfo.currCount >= count) {
    return;
  }
  twinkleInfo.intervalHandler = setInterval("doTwinkle("+count+")", millis);
} 

function doTwinkle(count){

  var obj=twinkleInfo.srcElement;

  if(obj.style.color==twinkleInfo.colorNormal){
    obj.style.color=twinkleInfo.colorHighlight;
  }else{
    obj.style.color=twinkleInfo.colorNormal;
  }

  twinkleInfo.currCount++;
  
  if(twinkleInfo.currCount >= 2*count) {
    clearInterval(twinkleInfo.intervalHandler);
    twinkleInfo.intervalHandler=null;
    obj.style.color=twinkleInfo.colorNormal;
  }

}

// 以下支持split功能
var splitInfo = new SplitInfo();

function SplitInfo() {
  this.bsplitResizing = false;
  this.orgX = 0;
  this.minLeftPaneWidth = 90;
  this.leftPane = null;
  this.rightPane = null;
  this.splitBar = null;
  this.leftFrameElement=null;
  this.rightFrameElement=null;
  this.baseObj=null;
}  

function splitmousedown()
{
  // Capture mouse if column border has been selected
  var formatEvent = EventUtil.getEvent();
  //event.cancelBubble = true;
  formatEvent.stopPropagation();
  if (isIE) {
  	splitInfo.splitBar.setCapture();
  } else if (isMoz) {
  	window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
  }
  splitInfo.bsplitResizing = true;
  splitInfo.orgX = formatEvent.pageX;
}
  
function splitmouseup()
{
  // Release mouse capture
  if (splitInfo.bsplitResizing) {
    //event.cancelBubble = true;
    var formatEvent = EventUtil.getEvent();
    formatEvent.stopPropagation();
	if (isIE) {
		splitInfo.splitBar.releaseCapture();
	} else if (isMoz) {
		window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
	}
    var resizeX = formatEvent.pageX - splitInfo.orgX;
    var leftPaneWidth = splitInfo.leftFrameElement.style.width;
    var match = leftPaneWidth.match(/(\d+)px/);
    var width = new Number(match[1]);
    var newWidth = width + resizeX;
    if (newWidth < splitInfo.minLeftPaneWidth ) newWidth = splitInfo.minLeftPaneWidth;
    splitInfo.leftFrameElement.style.width = newWidth + "px";
    splitInfo.bsplitResizing = false;
  }
}

function resizeToFitRight() {
  if (splitInfo.rightPane==null) {
    window.setTimeout("resizeToFitRight()", 100);
    return;
  }
  if (document.all) {
  	var docHeight = splitInfo.leftPane.document.body.scrollHeight;
  } else {
  	var docHeight = splitInfo.leftPane.contentDocument.body.scrollHeight;
  }
  {
    if (docHeight < 500) docHeight = 500;
    //splitInfo.rightFrameElement.style.height = docHeight + 16 + 'px'; // + 16 for scrollbar width
    splitInfo.rightFrameElement.style.height = 500;
  }
}

function resizeToFitLeft() {
  if (splitInfo.leftPane==null) {
    window.setTimeout("resizeToFitLeft()", 100);
    return;
  }
  if (document.all) {
  	var docHeight = splitInfo.leftPane.document.body.scrollHeight;
  } else {
  	var docHeight = splitInfo.leftPane.contentDocument.body.scrollHeight;
  }
  //var docHeight = document.body.scrollHeight;
  {
    if (docHeight < 500) docHeight = 500;
    //splitInfo.leftFrameElement.style.height = docHeight + 16 + 'px'; // + 16 for scrollbar width    
    //splitInfo.baseObj.style.height=docHeight + 16 + 'px'; 
    splitInfo.leftFrameElement.style.height = 500;
    splitInfo.baseObj.style.height=500;
  }
}
//zhangbo 2005-10-25
function rezieToFitConentFrame(){
    if(splitInfo.leftFrameElement==null){
        return;
    }
    splitInfo.leftFrameElement.style.height=document.body.scrollHeight-105; 
    splitInfo.baseObj.style.height=document.body.scrollHeight-105;  
}

// 动态调整iframe页面的高度，使之等于内容高度
function resizeToFit(frameName) {
      var contentframe;
      try {
      	contentframe = document.frames(frameName);
      } catch(Error) {
      	contentframe = window.frames[frameName];
      }
      
      if (contentframe==null)
          return;
      	
      docHeight = contentframe.document.body.scrollHeight;
      if (docHeight == 0) {
          // 页面高度还没有完全计算出来
          window.setTimeout("resizeToFit('"+frameName+"')", 100);
      }
      else {
          document.getElementById(frameName).height = contentframe.document.body.scrollHeight;
      }
}
//动态调整表单元素的大小，主要是用于textarea
function resizeToElement(bodyExpr) {
  var formElement = eval(bodyExpr);
  if(formElement) {   
   var width = formElement.scrollWidth;
   var height = formElement.scrollHeight;
   if(width == 0 || height == 0) {
     //对于Form的表单元素不会出现为零的现象
     window.setTimeout("resizeToElement(" + bodyExpr + ")", 100);
   } else {
     formElement.style.width = width + 5 + 'px' ;
     formElement.style.height = height + 10 + 'px';
   }
   }
}

//这个方法只给usermanager中的frame.jsp用
function resizeToFitForUM() {
      var contentframe;
      try {
      	contentframe = document.frames("main_right");
      } catch(Error) {
      	contentframe = window.frames["main_right"];
      }
      docHeight = contentframe.document.body.scrollHeight;
      if (docHeight == 0) {
          // 页面高度还没有完全计算出来
          window.setTimeout("resizeToFit('main_right')", 100);
      }
      else {
          if (docHeight < 500) docHeight = 500;
          //注意这里是contentpane
          document.getElementById("contentpane").style.height = docHeight + 16 + 'px'; // + 16 for scrollbar width
      }
}

//add trim() function to String 
String.prototype.trim = function () {
  var reExtraSpace = /^\s+(.*?)\s+$/;
  return this.replace(reExtraSpace, "$1");
};

function dealTextArea(areas){
    for(var i=0;i<areas.length;i++){
      var one = areas[i];
      if(one&&one.value)
        one.value=one.value.trim();
    } 
} 
/**
 * Return false if attrValue has no real meaning
 * @return boolean
 * @param attrValue
 */
function isValueValid(attrValue) {
  var validFlg = true;
  if (attrValue==undefined || attrValue==null) {
    validFlg = false;
  }
  return validFlg;
}

function winopen(url, width, height, scroll)
{
	if (width==null)
		width=screen.availwidth;
	if (height==null)
		height=screen.availheight;
	if (scroll==null)
		scroll="scrollbars";

	var left = (screen.availwidth - width) / 2;
	var top = (screen.availheight - height) / 2;

	var targeturl = url;
	newwin=window.open(targeturl,"",scroll+",resizable=yes");
	if (document.all)
	{
		newwin.moveTo(left, top);
		newwin.resizeTo(width,height);
	}
}

function openwin(url, width, height, scroll)
{
	if (width==null)
		width=screen.availwidth;
	if (height==null)
		height=screen.availheight;
	if (scroll==null)
		scroll="scrollbars";

	var left = (screen.availwidth - width) / 2;
	var top = (screen.availheight - height) / 2;

	var targeturl = url;
	newwin=window.open(targeturl,"",scroll+",resizable=yes");
	if (document.all)
	{
		newwin.moveTo(left, top);
		newwin.resizeTo(width,height);
	}
}

function dialogopen(url, width, height)
{
	if (width==null)
		width=screen.availwidth;
	if (height==null)
		height=screen.availheight;

	var left = (screen.availwidth - width) / 2;
	var top = (screen.availheight - height) / 2;

	return showModalDialog (
		url, document,  "dialogHeight="+height+"px;dialogWidth="+width+"px;dialogLeft="+left+"px;dialogTop="+top+"px;scroll:no");
}
function checkAllIfNecessary(allCheckBox)
{
	var ckBoxObj = document.frm.selectitem;
	var checkAll = true;
		
	if(ckBoxObj.length==undefined)
	{
		checkAll = (ckBoxObj.checked==true);
	} 
	else
	{
		for(var i=0;i<ckBoxObj.length;i++)
		{
			if(ckBoxObj[i].checked==false)
			{
				checkAll = false;
				break;		
			}	
		}
	}
	
	if (checkAll) 
	{
		allCheckBox.checked="true";
	} 
	else 
	{
		allCheckBox.checked="";
	}	
}