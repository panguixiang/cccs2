function addRow(idstr){
	var td_obj = document.getElementById(idstr);
	var table_objs = td_obj.children;
	var hidden_table = table_objs(0);
	//alert(hidden_table.innerHTML);
	//alert(hidden_table.tagName+","+hidden_table.style.display);
	//var newObj = hidden_table.cloneNode(true);
	var tmp_div = document.createElement("DIV");
	//alert(hidden_table.innerHTML);
	tmp_div.innerHTML = hidden_table.innerHTML;
	td_obj.appendChild(tmp_div);
}
function deleteRow(obj){
	obj = getParent(obj.parentNode, "DIV");
	//var row_num = obj.rowIndex;
	obj_td = getParent(obj, "TD");
	//alert(obj_td);
	//alert(obj);
	obj_td.removeChild(obj);
}
//取得指定标签的父对象
function getParent(obj, tagName){
	obj = obj.parentNode;
	while(obj.tagName != tagName){
		obj = obj.parentNode;
	}
	return obj;
}

//将string类型转换为日期格式
function StringToDate(DateStr)   
{    
    var converted = Date.parse(DateStr);   
    var myDate = new Date(converted);   
    if (isNaN(myDate))   
    {    
        //var delimCahar = DateStr.indexOf('/')!=-1?'/':'-';   
        var arys= DateStr.split('-');   
        myDate = new Date(arys[0],--arys[1],arys[2]);   
    }   
    return myDate;   
} 

//自动获取申请人信息
function setComposerValue(){
	var compBean = new ComposerBean();
	var obj = document.getElementById("personData");
	var lastChildren = obj.children(obj.children.length-1);
	var tableObj = lastChildren.children(0);
	// 类别-用户类型 
	//alert(tableObj.rows(0).cells(2).children(0).outerHTML);
	var peopleTypeObj = tableObj.rows(0).cells(2).children(0);
	controlSelected(peopleTypeObj, compBean.peopleType);
	if(compBean.peopleType=="21"){
	  if(document.all("busName")!=null&&document.all("busName")!="undefined"&&document.all("busName")!=undefined){
	      document.all("busName")[obj.children.length-1].style.display="block";
	      document.all("busName1")[obj.children.length-1].style.display="block";
	  }
	}else{
	   if(document.all("busName")!=null&&document.all("busName")!="undefined"&&document.all("busName")!=undefined){
	    document.all("busName")[obj.children.length-1].style.display="none";
	    document.all("busName1")[obj.children.length-1].style.display="none";
	  }
	  
	}
	// 国家
	//alert(tableObj.rows(0).cells(4).children(0).outerHTML);
	var countryObj = tableObj.rows(0).cells(4).children(0);
	controlSelected(countryObj, compBean.country);
	// 姓名
	//alert(tableObj.rows(1).cells(0).children(0).outerHTML);
	var nameObj = tableObj.rows(1).cells(0).children(0);
	nameObj.value = compBean.name;
	// 省份
	//alert(tableObj.rows(1).cells(2).children(0).outerHTML);
	var provinceObj = tableObj.rows(1).cells(2).children(0);
	controlSelected(provinceObj, compBean.province);
	// 城市
	//alert(tableObj.rows(1).cells(4).children(0).outerHTML);
	var cityObj = tableObj.rows(1).cells(4).children(0);
	cityObj.value = compBean.city;
	// 证件类型
	//alert(tableObj.rows(2).cells(1).children(0).outerHTML);
	var idTypesObj = tableObj.rows(2).cells(1).children(0);
	controlSelected(idTypesObj, compBean.idTypes);
	// 证件号码
	//alert(tableObj.rows(2).cells(3).children(0).outerHTML);
	var idNumberObj = tableObj.rows(2).cells(3).children(0);
	idNumberObj.value = compBean.idNumber;
	// 园区
	//alert(tableObj.rows(3).cells(1).children(0).outerHTML);
	var gardenObj = tableObj.rows(3).cells(1).children(0);
	controlSelected(gardenObj, compBean.garden);
}
function controlSelected(obj, value){
	if(!obj.options) return;
	for(var i=0; i<obj.options.length; i++){
		if(obj.options(i).value == value){
			obj.options(i).selected = true;
			break;
		}
	}
}

//对多选项,以逗号分割，重新赋值
function getParamValue(src,des)
{
	var src_obj = document.all(src);
	var src_value = "";
	for(var i=0; i<src_obj.length; i++){
			if(src_obj(i).checked)
			{
				src_value += ((src_value=="")?"":",") + src_obj(i).value;
			}
		}  

	document.all(des).value = src_value;
}

// 获取多个radio中被选中的radio的值
function getCheckedValue(obj)
{
	var len = document.all(obj).length;
	var temp = "";
	for(var i=0; i<len; i++)
	{
		if(document.all(obj)[i].checked)
		{
			temp=document.all(obj)[i].value;
		}
	}
	return temp;
}

//判断字符串是否为空
function isEmptyOrNull(obj)
{
	var temp = document.all(obj).value;
	var flag = false;
	if(temp == "" || temp == null)
	{
		flag = true
	}
	return flag;
}

// 判断radio按钮是否选中
function isRadioChecked(obj)
{
	var len = document.all(obj).length;
	var flag = false;
	for(var i=0; i<len; i++)
	{
		if(document.all(obj)[i].checked)
		{
			flag=true;
		}
	}
	return flag;
}

//判断是否为自然数，是则返回true,否则返回false 
function isNumber(obj)    
{             
    if (/^[1-9]\d*$/.test( obj ))    
    {    
       return true;    
    }     
    else     
    {    
        return false;    
    }    
} 

//获取对象的值
function getVal(obj)
{
	return document.all(obj).value;
}

// 获取字符串长度，以字符计算
function getStrLen(str)
{
	var sum=0;
    for(var i=0;i<str.length;i++)
    {
      if ((str.charCodeAt(i)>=0) && (str.charCodeAt(i)<=255))
          sum=sum+1;
      else
          sum=sum+2;
     }
	
	return sum;
}

// 获取多选框中选中的item，并赋给其他变量
function getMutilChoiceValue(obj_,obj)
{
	var temp = document.all(obj_);
	var temp_value = "";
	var count = 0;
	for(var i=0; i<temp.length; i++)
	{
		if(temp(i).checked)
		{
			count++;
			temp_value += ((temp_value=="")?"":",") + temp(i).value;
		}
	} 
	document.all(obj).value = temp_value;
}

function s_h_item(obj)
{
	if(obj.value =="全部" || obj.value =="1")
	{
		setCheckBoxState('rightScope_',true);
		clearCheckedItem('rightScope_');
	}
	else
	{
		setCheckBoxState('rightScope_',false);
	}
}

function setCheckBoxState(obj,state)
{
	var len = document.all(obj).length;
	for(var i=0; i<len; i++)
	{
		document.all(obj)[i].disabled=state;
	}
}

function clearCheckedItem(obj)
{
	var len = document.all(obj).length;
	for(var i=0; i<len; i++)
	{
		if(document.all(obj)[i].checked)
		{
			document.all(obj)[i].checked=false;
		}
	}
}
// 申请方式中，代理人为checkbox的情况
function s_h_agent(obj)
{
	if(obj.checked)
	{
		document.all("A-0").style.display="block";
	}
	else
	{
		document.all("A-0").style.display="none";
	}
}

function setIsAgentValue(obj)
{
	// 设置是由代理人申请的值
	var temp =  document.all(obj);
	if(temp.checked)
	{
		document.all('isAgent').value="代理人";
	}
	else
	{
		document.all('isAgent').value="无代理人";
	}
}

function setDefaultChecked(obj)
{
	var len = document.all(obj).length;
	// 将radio按钮组的第一个radio设为选中状态
	document.all(obj)[0].checked=true;
	for(var i=1; i<len; i++)
	{
		if(document.all(obj)[i].checked)
		{
			document.all(obj)[i].checked=false;
		}
	}
}

function selectApplyType(obj)
{
	document.all('A-0').style.display="none";
	
	document.all('isAgent2').checked=false;
	document.all('isAgent4').checked=false;
	document.all('isAgent5').checked=false;
	
	setDefaultChecked('applyType1');
	setDefaultChecked('applyType2');
	setDefaultChecked('applyType3');
	setDefaultChecked('applyType4');	
	setDefaultChecked('applyType5');

	var kind = document.all('kind').value;
	// 补发或更换证书类型
	if(kind == 'Z64'){
		setDefaultChecked('reissueType1');
		setDefaultChecked('reissueType2');
		setDefaultChecked('reissueType3');
		setDefaultChecked('reissueType4');
		setDefaultChecked('reissueType5');
	}
	
	if(obj.value == "Z11")
	{
		document.all("apply1").style.display = "block";
		document.all("apply2").style.display = "none";
		document.all("apply3").style.display = "none";
		document.all("apply4").style.display = "none";
		document.all("apply5").style.display = "none";
		
		// 补发或更换证书类型
		if(kind == 'Z64'){
			document.all("type1").style.display = "block";
			document.all("type2").style.display = "none";
			document.all("type3").style.display = "none";
			document.all("type4").style.display = "none";
			document.all("type5").style.display = "none";
		}
	}
	else if(obj.value=="Z21")
	{
		document.all("apply2").style.display = "block";
		document.all("apply1").style.display = "none";
		document.all("apply3").style.display = "none";
		document.all("apply4").style.display = "none";
		document.all("apply5").style.display = "none";

		// 补发或更换证书类型
		if(kind == 'Z64'){
			document.all("type1").style.display = "none";
			document.all("type2").style.display = "block";
			document.all("type3").style.display = "none";
			document.all("type4").style.display = "none";
			document.all("type5").style.display = "none";
		}
	}
	else if(obj.value=="Z31")
	{
		document.all("apply3").style.display = "block";
		document.all("apply1").style.display = "none";
		document.all("apply2").style.display = "none";
		document.all("apply4").style.display = "none";
		document.all("apply5").style.display = "none";

		// 补发或更换证书类型
		if(kind == 'Z64'){
			document.all("type1").style.display = "none";
			document.all("type2").style.display = "none";
			document.all("type3").style.display = "block";
			document.all("type4").style.display = "none";
			document.all("type5").style.display = "none";
		}
	}
	else if(obj.value=="Z41")
	{
		document.all("apply4").style.display = "block";
		document.all("apply1").style.display = "none";
		document.all("apply2").style.display = "none";
		document.all("apply3").style.display = "none";
		document.all("apply5").style.display = "none";

		// 补发或更换证书类型
		if(kind == 'Z64'){
			document.all("type1").style.display = "none";
			document.all("type2").style.display = "none";
			document.all("type3").style.display = "none";
			document.all("type4").style.display = "block";
			document.all("type5").style.display = "none";
		}
	}
	else if(obj.value=="Z51")
	{
		document.all("apply4").style.display = "none";
		document.all("apply1").style.display = "none";
		document.all("apply2").style.display = "none";
		document.all("apply3").style.display = "none";
		document.all("apply5").style.display = "block";

		// 补发或更换证书类型
		if(kind == 'Z64'){
			document.all("type1").style.display = "none";
			document.all("type2").style.display = "none";
			document.all("type3").style.display = "none";
			document.all("type4").style.display = "none";
			document.all("type5").style.display = "block";
		}
	}

}

function getRelativeValueByRegisterType()
{
	var type = document.all("registerType");
	var kind = document.all("kind").value;
	if(type[0].checked) //Z11
	{
		document.all('applyType').value = getCheckedValue('applyType1');
		if(kind == "Z64"){
			document.all('reissueType').value = getCheckedValue('reissueType1');
		}
	}
	else if(type[1].checked) //Z21
	{
		document.all('applyType').value = getCheckedValue('applyType2');
		setIsAgentValue('isAgent2');
		if(kind == "Z64"){
			document.all('reissueType').value = getCheckedValue('reissueType2');
		}
	}
	else if(type[2].checked) //Z31
	{
		document.all('applyType').value = getCheckedValue('applyType3');
		if(kind == "Z64"){
			document.all('reissueType').value = getCheckedValue('reissueType3');
		}
	}
	else if(type[3].checked) //Z41
	{
		document.all('applyType').value = getCheckedValue('applyType4');
		setIsAgentValue('isAgent4');
		if(kind == "Z64"){
			document.all('reissueType').value = getCheckedValue('reissueType4');
		}
	}
	else if(type[4].checked) //Z51
	{
		document.all('applyType').value = getCheckedValue('applyType5');
		setIsAgentValue('isAgent5');
		if(kind == "Z64"){
			document.all('reissueType').value = getCheckedValue('reissueType5');
		}
	}
}


function s_h_legalPeople(obj)
{
	//alert(obj.value);
	var _obj = getParent(obj, "TR").children(4).children;
	if(obj.value == '自然人')
	{
		if(!_obj(0).disabled)
		{
			_obj(0).disabled = true;
		}
		_obj(0).value="";
	}
	else
	{
		if(_obj(0).disabled)
		{
			_obj(0).disabled = false;
		}
	}	
}

function winopen(url)
{
	var targeturl = url;
	newwin=window.open(targeturl,"","scrollbars,resizable=yes");
	if (document.all)
	{
		newwin.moveTo(0,0);
		newwin.resizeTo(screen.availwidth,screen.availheight);
	}
}


function getParamListValue(src, des)
{
	var obj_ = document.all(src);
	var obj_value = "";
	for(var i=0; i< obj_.length; i++)
	{
		if(obj_(i).value.trim() != "")
		{
			obj_value += ((obj_value=="")?"":"&$&") + obj_(i).value;
			
		}
	}
	document.all(des).value = obj_value;
}

function changetype(type,str){
	switch (type) {
		case "Z11":
			nametype.innerHTML = "作品名称";
			document.all('z31_type').style.display="none";
			document.all('z41_type').style.display="none";
			document.all('z21_opus').style.display="none";
			document.all('opusName').tips = "请填写作品名称";
			if(str == "Z61"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}else if(str == "Z62"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			 	z62rn.innerHTML = "撤销登记理由";
			}else if(str =="Z63"){
				z63rn.innerHTML ="撤回登记理由";
			}else if(str == "Z64"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}
			break;
		case "Z21":
			nametype.innerHTML = "涉及作品名称";
			document.all('z31_type').style.display="none";
			document.all('z41_type').style.display="none";
			document.all('z21_opus').style.display="block";
			document.all('opusName').tips ="请填写涉及作品名称,作品量为多个时，提交作品清单作为附件，不必在此全部列出。";
			if(str == "Z61"){
				numname.innerHTML ="原备案号";
				datename.innerHTML = "原备案日期";
			}else if(str == "Z62"){
				numname.innerHTML ="原备案号";
				datename.innerHTML = "原备案日期";
			 	z62rn.innerHTML = "撤销备案理由";
			}else if(str =="Z63"){
				z63rn.innerHTML ="撤回备案理由";
			}else if(str == "Z64"){
				numname.innerHTML ="原备案号";
				datename.innerHTML = "原备案日期";
			}
			break;
		case "Z31":
			nametype.innerHTML = "名称";
			document.all('z31_type').style.display="block";
			document.all('z41_type').style.display="none";
			document.all('z21_opus').style.display="none";
			document.all('opusName').tips = "请填写名称";
			if(str == "Z61"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}else if(str == "Z62"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			 	z62rn.innerHTML = "撤销登记理由";
			}else if(str =="Z63"){
				z63rn.innerHTML ="撤回登记理由";
			}else if(str == "Z64"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}
			break;
		case "Z41":
			nametype.innerHTML = "期刊中文名称";
			document.all('z41_type').style.display="block";
			document.all('z31_type').style.display="none";
			document.all('z21_opus').style.display="none";
			document.all('opusName').tips = "请填写期刊中文名称";
			if(str == "Z61"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}else if(str == "Z62"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			 	z62rn.innerHTML = "撤销登记理由";
			}else if(str =="Z63"){
				z63rn.innerHTML ="撤回登记理由";
			}else if(str == "Z64"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}
			break;
		case "Z51":
			nametype.innerHTML = "涉及作品名称";
			document.all('z41_type').style.display="none";
			document.all('z31_type').style.display="none";
			document.all('z21_opus').style.display="none";
			document.all('opusName').tips = "请填写涉及作品名称";
			if(str == "Z51"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}else if(str == "Z62"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			 	z62rn.innerHTML = "撤销登记理由";
			}else if(str =="Z63"){
				z63rn.innerHTML ="撤回登记理由";
			}else if(str == "Z64"){
				numname.innerHTML ="原登记号";
				datename.innerHTML = "原登记日期";
			}
			break;
		}
}

	// 设置R11登记表单中申请人邮编是否为必填项 
	function setIsValid()
    {
    	if(document.all('kind').value =="R11"){
	    	var obj1 = document.all('country1');
			var obj2 = document.all('sqrpostCode');
			var isChina = true;
			//alert("country1 length: " + obj1.length);
			for(var i=1; i<obj1.length; i++)
			{ 	//alert("value: " + obj1[i].value);
				if(obj1[i].value == "中国" || obj1[i].value == "中国香港"|| obj1[i].value == "中国澳门"|| obj1[i].value == "中国台湾"){
					isChina = true;
					
				}else{
					isChina = false;
					break;
				}
			}
			//alert("flag: " + isChina);
			if(isChina){
				obj2.valid = "required";
    		}else{
    			obj2.valid = "no";
	    	}
	    }
    }