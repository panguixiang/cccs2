function signin(path) {
	var passport = $('#passport').val();
	var passwd = $('#passwd').val();
	var captcha = $('#captcha').val();
	var typeid = $('#typeid').val();
	$.post(path+"/account/signin", {
		passport : passport,
		passwd : passwd,
		captcha : captcha,
		types : typeid
	}, function(data) {
		if (data.result) {
			location.reload();
		} else {
			jAlert(data.msg, '登录错误提示');
		}
	})
}

function signout(path) {
	$.post(path, function() {
		location.reload();
	})
}

function show_tips(obj,event,tips_length) {
	obj = $(obj);
	tip_obj = $("#my_tips");
	var tips = obj.attr("tips");
	if (obj.attr("valid") || obj.attr("length")) {
		tips = tips + '<br>';
	}
	if (obj.attr("valid")) {
		tips = tips + '<font color="red"><b>*</b>&nbsp必填项</font>&nbsp';
	}
	if (obj.attr("length")) {
		tips = tips + '<font color="red">长度限制：' + obj.attr("length")
				+ '字节(一个汉字等于2个字节)</font>&nbsp';
	}

	event = event || window.event;
	tip_obj.html(tips);
	tip_obj.css("display", "block");
	tip_obj.css("width", tips_length);
	tip_obj.css("left", event.clientX+10+document.body.scrollLeft);
	tip_obj.css("top", event.clientY+10+document.body.scrollTop);
	

}

function hidden_tips() {
	tip_obj = $("#my_tips");
	tip_obj.html("");
	tip_obj.css("display", "none");
}

function addrow(obj1, obj2) {
	var obj1 = $(obj1);
	var obj2 = $(obj2)
	obj1.html(obj1.html() + obj2.html());
}

function deleterow(obj){
	var parent_tr = $(obj).parents("tr:first");
	parent_tr.remove();
}

function deleterow2(obj,node1){
	var parent_tr = $(obj).parents(node1);
	parent_tr.remove();
}

//重置表单
function restd(formId) {
	$(":input","#"+formId).not(":button,:submit,:reset,:hidden").val("");	
}

function windowOpen_SoftNumber(){
	 window.open("SoftClassNumber.html","",
			 "dialogWidth:760px;dialogHeight:1150px;resizable:no;status:yes;scroll:auto;");
	
}

function initAddInfo(url) {
    window.parent.document.getElementById('center').src=url;
}

/**
* 删除前确认!
**/
function deleteCheck(url) {
	if(confirm("删除后将永远无法恢复,请确认!")) {
		location.href=url;
	}
 }

function compareDate(date1, date2)
{
	try {
		date1 = adjustDate(date1, date2);
		date1 = date1.replace(/\-/g,"\/");
		date2 = date2.replace(/\-/g,"\/");
		var dt1=new Date(date1);
		var dt2=new Date(date2);
		var r = dt1-dt2;
		if (r>0)
			return 1;
		else if (r==0)
			return 0;
		else
			return -1
	}
	catch (e)
	{
		alert("Error");
	}
}

function adjustDate(date1, date2)
{
	var date_section = date2.split("-");
	
	if (date1.match(/^[\d]{4}$/)){
		return date1+"-"+date_section[1]+"-"+date_section[2];
	}else if (date1.match(/^[\d]{4}-[\d]{2}$/)){
		return date1+"-"+date_section[2];
	}else{
		return date1;
	}
}