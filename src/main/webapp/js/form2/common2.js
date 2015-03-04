
 // 日期只有年，或只有年月的情况
  function getDateString(des,srcyear,srcmonth)
  {
  	// 构造日期格式
		var tdate="";
		var tyear = document.getElementById(srcyear).value;
		var tmonth = document.getElementById(srcmonth).value;
		if(tyear !="") tdate = tyear;
		if(tmonth !="") tdate += "-" + tmonth;
		document.all(des).value=tdate;
		return tdate;
		//alert(tdate);
  } 
  

function compareDate(date1, date2)
{
	try {
		date1 = adjustDate(date1);
		date2 = adjustDate(date2);
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

function adjustDate(date)
{
	var date_sec = "-01";
	return date + date_sec;
}
var count = 1;
function addNewRow(obj){
	var td_obj = document.getElementById(obj);
	var table_objs = td_obj.children;
	var hidden_table = table_objs(0);
	//var changeObj = hidden_table.children(0).children(0).children(0).children(0);
	
	var tmp_div = document.createElement("DIV");

	tmp_div.innerHTML = hidden_table.innerHTML;
	count ++;
	tmp_div.children(0).children(0).children(0).children(1).children(0).id = "record" + count;
	tmp_div.children(0).children(0).children(0).children(1).children(1).id = "rname" + count;
	tmp_div.children(0).children(0).children(1).children(1).children(0).id = "rename" + count;
	var kind = document.getElementById("kind").value;
	if(kind != "Z71"){
		tmp_div.children(0).children(0).children(0).children(1).children(2).id = "auth" + count;
	} else {
		tmp_div.children(0).children(0).children(2).children(1).children(0).id = "country_" + count;
		//alert(tmp_div.children(0).children(0).children(2).children(3).children(0).children(0).id );
		tmp_div.children(0).children(0).children(2).children(3).children(0).children(0).id = "publishDate" + count;
	}
	
	td_obj.appendChild(tmp_div);
	//alert("final: " + td_obj.outerHTML);
}

function setItemValues(param,des)
{	
	var reVal = "";
	for(var i=1; i<= count; i++)
	{
		var temp= param + i;
		if(document.all(temp) != null){
			var curVal = document.all(temp).value;
			if(curVal==""){
				curVal = " ";
			}
			
			if(count==1){
				reVal = curVal;
			}else if(i==count){
				reVal += curVal;
			}else{
				reVal += curVal + ";";
			}
		}
	}
	document.all(des).value=reVal;
}

function setItemIds(param,des)
{	
	var reVal = "";
	for(var i=1; i<= count; i++)
	{
		var temp= param + i;
		if(document.all(temp) != null){
			if(count==1){
				reVal = temp;
			}else if(i==count){
				reVal += temp;
			}else{
				reVal += temp + ";";
			}
		}
	}
	document.all(des).value=reVal;
}
function setItemIdsE(param,des)
{
	var t = document.all(param)
	if(t) {
		if(t.length>1) {
			count = t.length
		}
	}
	var tm = param.substring(0,param.length-1); 
	var reVal = "";
	for(var i=1; i<= count; i++)
	{
		var temp= tm + i;
		if(count==1){
			reVal = temp;
		}else if(i==count){
			reVal += temp;
		}else{
			reVal += temp + ";";
		}
	}
	document.all(des).value=reVal;
}
