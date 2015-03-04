/**
--------------------------------------------------------
表单通用校验
	整理：丁宗秋，2008-07-10
特别说明：
	这个文件来自不易，先后经历过项目组成员(中国版权保护中心著作权登记项目)李
维一的不懈努力，以及项目经理陈朝阳的深度挖掘和多方思考后，才有现在这个成果。
	可以说，这个成果是本次项目实施中，对大而复杂的业务表单进行js校验的一个很
好的解决方案，也是本项目组全体成员的共同努力的结晶。
	最后，本人能有幸整理之，实感荣幸。当然由于个人能力的局限，还有诸多的地方
需要改进，如果您正在使用此文件，还请多多赐教!
--------------------------------------------------------
input中加如下属性：
	tips="请填姓名或单位"  //鼠标放上去后的浮动提示框内容
	valid="required"     //验证类型，下面有详细的说明，多个以"|"分隔
	errmsg="不能为空！"    //错误提示信息，多个以"|"分隔
	length="10" 		//长度限制
	onmousemove="cpcc_showtip(this.tips,this.valid,this.length,500)" 
	onMouseOut="cpcc_showtip()"
--------------------------------------------------------
valid 验证类型说明：
	isNumber        //数字
	isEmail         //email
	isPhone         //电话
	isMobile        //手机
	isIdCard        //证件号
	isMoney         // money
	isZip           // 邮编
	isQQ            //  qq
	isInt           // 数字
	isEnglish       //英文
	isChinese       // 中文
	isUrl           //  url
	isDate          // 日期
	isTime          // 时间
	required        //不为空规则
	custom          //定制规则，必须包含 rules 属性，属性值为正则表达式
	limitEmpty      //可选规则，如果填了内容，则应该包含 limitRules 属性
*/
// 校验前的处理function
function beforeValid(){
	//需重实现，选项
}

// 在校验之后需要处理的一些逻辑
function lastLogic(){
	//需重实现，选项
}

// 关闭当前页面
function goBack()
{
	self.close();
}
	
// 提交表单响应函数
function subForm(url){
	if(confirm("表格提交后将自动进入初审状态,\r无法在操作下进行修改和删除!")){
	clearErrorMsgDiv();
	// 校验前的处理function
	beforeValid(); 
	var canSubmit = false;
	var specialVerify = afterValids();
	var comVerify = validFormElements(); 

	if(comVerify && specialVerify){
		canSubmit = true;
	}
	// 校验之后需要处理的一些逻辑
	lastLogic();
	if(canSubmit){
		document.forms[0].action=url;
		document.forms[0].submit();
	  }
	}
}

//提交表单响应函数
function saveForm(url){
	document.forms[0].action=url;
	document.forms[0].submit();
}

function modifyForm(){
	
	clearErrorMsgDiv();
	// 校验前的处理function
	beforeValid();
	var canSubmit = validFormElements();
	var afterB = afterValid();
	if(canSubmit && afterB){
		canSubmit = true;
	}
	// 校验之后需要处理的一些逻辑
	lastLogic();
	
	if(canSubmit){
		document.forms[0].submit();
	}
}
function afterValid(){
	//需重实现，选项
	return true;
}

// 清楚上次的留下的校验错误信息
function clearErrorMsgDiv(){
	var fm = document.forms[0];
	var fm_els = fm.elements;
	//alert("x : "+fm_els[0].outerHTML);
	for(var i=0; i<fm_els.length; i++){
		var _td = getParentEF(fm_els[i], "TD");
		if(_td == null){
			continue;	
		}
		
		for(var j=0; j<_td.children.length; j++){
			var _tmp = _td.children(j);
			
			if(_tmp.tagName == "DIV" && _tmp.className == "divErrorRed"){
				_td.removeChild(_tmp);
				// 需要特别注意：很多时候，都会忘了下面这步操作
				j--;
			}
		}
	}	
}

/* 
*   检查指定的域是否需要校验
*   无需校验，返回true，否则返回false
*/
function checkIfNeedValid(inputObj){
	// 1、域的valid属性为空，或等于no、""时，则不校验
	if(!inputObj.valid || inputObj.valid == 'no' || inputObj.valid == ''){
		return true;
	}
	// 2、如果被一个隐藏的html标签包含，则不校验
	var _hiddenTag = inputObj.parentNode;
	if(_hiddenTag && _hiddenTag.style.display == 'none'){
		return true;
	}
	// 3、如果被一个隐藏的tbody包含，则不校验
	var _tbody = getParentEF(inputObj, "TBODY");
	if(_tbody && _tbody.style.display == 'none'){
		return true;
	}
	// 4、如果包含在一个table中，并且这个table又被一个隐藏的html标签包含，则不校验
	var _table = getParentEF(inputObj, "TABLE");
	_table = _table.parentNode;
	if(_table && _table.style.display == 'none'){
		return true;
	}
	
	return false;
}

/*
*  对指定域属性中指定的校验属性进行相应的校验
*      如果是定制的校验逻辑，即valid=“custom”，
*      则需提供rules属性，其包含的内容为本次校验的正则表达式逻辑。
*
*      如果校验通过，返回true；
*      如果校验没通过，显示错误信息，返回false
*/
var errorCount = 0;//没通过校验的个数
function validAppointElement(inputObj){
	
	// 校验类型
	var validType = inputObj.getAttribute('valid');
	// 校验对应的错误信息
	var errorMsg = inputObj.getAttribute('errmsg');
	
	// 校验类型数组
	var vts = validType.split('|');
	// 错误信息数组
	var ems = errorMsg.split('|');
	
	for (var j=0; j<vts.length; j++) {
		var curValidType = vts[j];
		var curErrorMsg = ems[j];
		
		validTypeChoose(inputObj, curValidType, curErrorMsg);
	}
}
// 对limitEmpty限制允许空的情况的处理
function limitEmptyValid(inputObj){
	
	// 校验类型
	var validType = inputObj.getAttribute('limitRules');
	// 校验对应的错误信息
	var errorMsg = inputObj.getAttribute('errmsg');
	
	// 校验类型数组
	var vts = validType.split('|');
	// 错误信息数组
	var ems = errorMsg.split('|');
	
	for (var j=0; j<vts.length; j++) {
		var curValidType = vts[j];
		var curErrorMsg = ems[j];
		
		validTypeChoose(inputObj, curValidType, curErrorMsg);
	}
}
// 根据验证验证类型进行校验, validAppointElement方法的辅助方法
function validTypeChoose(inputObj, curValidType, curErrorMsg){
		switch (curValidType) {
			case 'isNumber':
			case 'isEmail':
			case 'isPhone':
			case 'isMobile':
			case 'isIdCard':
			case 'isMoney':
			case 'isZip':
			case 'isQQ':
			case 'isInt':
			case 'isEnglish':
			case 'isChinese':
			case 'isUrl':
			case 'isDate':
			case 'isTime':
				//alert(curValidType +" : "+RegStorage[curValidType]);
				if(!executeVerify(inputObj, RegStorage[curValidType])){
					errorCount++;
					showErrorMsg(inputObj, curErrorMsg);
				}
				break;
			case 'custom':
				//alert(inputObj.getAttribute('rules'));
				if(!executeVerify(inputObj, eval(inputObj.getAttribute('rules')))){
					errorCount++;
					showErrorMsg(inputObj, curErrorMsg);
				}
				break;
			case 'required':
				if(inputObj.value.trim() == ''){
					errorCount++;
					showErrorMsg(inputObj, curErrorMsg);
				}
				break;
			case 'limitEmpty':
				if(inputObj.value.trim() != ''){
					limitEmptyValid(inputObj);
				}
				break;
			default :
				break;
		}
}
// 显示没通过校验的错误信息
function showErrorMsg(inputObj, errorMsg){
	var newDIV = document.createElement("DIV");
	newDIV.innerHTML = errorMsg;
	newDIV.className = 'divErrorRed';
	var _td = getParentEF(inputObj, "TD");
	_td.appendChild(newDIV);
}

// 执行校验，校验成功返回true，否则返回false
function executeVerify(inputObj, regx_){
	var tmpValue = inputObj.value.trim();
	//alert(regx_+".test("+tmpValue+")");
	//alert(eval(regx_+".test("+tmpValue+")"));
	if (regx_.test(tmpValue)){
		return true;
	}
	return false;
}

// 对表单中的每个元素进行校验
function validFormElements(){
	// 取表单的所有元素
	var fm = document.forms[0];
	var fm_els = fm.elements;
	// 初始化错误号
	errorCount = 0;
	
	for(var i=0; i<fm_els.length; i++){
		// 判断指定的域是否需要校验，无需校验时退出本次循环
		if(checkIfNeedValid(fm_els[i])){
			continue;	
		}
		// 对域fm_els[i]进行校验
		if(validAppointElement(fm_els[i])){
			continue;
		}
	}
	//alert(errorCount);
	if(errorCount > 0){
		return false;
	}
	return true;
}



// 以下为一些辅助的函数
//---------------------------------------------------------------------
//一些常用的js正则表达式校验
var RegStorage = {
	isNumber:  /^[-\+]?\d+(\.\d+)?$/,
	isEmail: /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/,
	isPhone:  /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/,
	isMobile:  /^((\(\d{2,3}\))|(\d{3}\-))?13\d{9}$/,
	isIdCard:  /(^\d{15}$)|(^\d{17}[0-9Xx]$)/,
	isMoney:  /^\d+(\.\d+)?$/,
	isZip:  /^[0-9]\d{5}$/,
	isQQ:  /^[1-9]\d{4,10}$/,
	isInt:  /^[-\+]?\d+$/,
	isEnglish:  /^[A-Za-z]+$/,
	isChinese:  /^[\u0391-\uFFE5]+$/,
	isUrl:  /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/,
	isDate:  /^\d{4}-\d{1,2}-\d{1,2}$/,
	isTime:  /^\d{4}-\d{1,2}-\d{1,2}\s\d{1,2}:\d{1,2}:\d{1,2}$/
};
//取得指定标签的父对象，以Form为上限
function getParentEF(obj, tagName){
	obj = obj.parentNode;
	//alert(obj.tagName + "," + tagName);
	while(obj.tagName != tagName){
		//alert(obj.tagName + "," + tagName);
		if(obj.tagName == "FORM"){
			return null;
		}
		obj = obj.parentNode;
	}
	return obj;
}
// 去字符串两边的空格
String.prototype.trim = function() {
	return this.replace(/^\s*|\s*$/g, "");
}

//***************************************************************************
//以下为输入框长度限制功能
//用法 input 或 textarea 加上 length =  'n' 如果无限制或不需要说明，则不加!
//by chenzhaoyang 2008-07-05
//***************************************************************************
 
String.prototype.len=function(){  
return this.replace(/[^\x00-\xff]/g,"**").length;  
}  
 
//Set maxlength for multiline TextBox  
function setMaxLength(object,length)  
{ 
     
    var result = true;  
    var controlid = document.selection.createRange().parentElement().id;  
    var controlValue = document.selection.createRange().text;  
    var tempString=object.value; 
	
     if(tempString.len()>length){
		var tt="";  
		for(var i=0;i<length;i++)  
			{  
				if(tt.len()<length)  
					tt=tempString.substr(0,i+1);  
				else  
					break;  
			}  
		if(tt.len()>length) 
			tt=tt.substr(0,tt.length-1); 
		object.value=tt;
     
     }
}  
 
//Check maxlength for multiline TextBox when paste  
function limitPaste(object,length)  
{  
        var tempLength = 0;  
        if(document.selection)  
        {  
            if(document.selection.createRange().parentElement().id == object.id)  
            {  
                tempLength = document.selection.createRange().text.len();  
            }  
        }  
        var tempValue = window.clipboardData.getData("Text");  
        tempLength = object.value.len() + tempValue.len() - tempLength;  
 
        if (tempLength > length)  
        {  
            tempLength -= length;  
            var tt="";  
            for(var i=0;i<tempValue.len()-tempLength;i++)  
                {  
                    if(tt.len()<(tempValue.len()-tempLength))  
                        tt=tempValue.substr(0,i+1);  
                    else  
                        break;  
                }  
            if(tt.len()<=0) 
            {     
                window.event.returnValue=false; 
                 
            } 
            else 
            { 
                tempValue=tt;  
                window.clipboardData.setData("Text", tempValue);  
                window.event.returnValue = true;  
            } 
        }  
     
 
}  
 
function PressLength() 
{ 
     
    if(event.srcElement.type=="text" || event.srcElement.type=="textarea" ) 
    { 
        if(event.srcElement.length!=null) 
            setMaxLength(event.srcElement,event.srcElement.length); 
         
    } 
} 
 
function LimitLength() 
{ 
 
    if(event.srcElement.type=="text" || event.srcElement.type=="textarea" ) 
    { 
        if(event.srcElement.length!=null) 
            limitPaste(event.srcElement,event.srcElement.length); 
    } 
} 
document.documentElement.attachEvent('onkeyup', PressLength);  
document.documentElement.attachEvent('onpaste', LimitLength); 
