//修正了validate 中值为非“required”也显示为必填项的问题
//by chenzy 080715

function cpcc_showtip(tips,required,maxLength,tipWidth){
			//tips--提示信息
			//required-- validate如果有 required 则是必填项
			//maxLength--输入长度限制
			//tipWidth--提示图层宽度

//判断validate 中是否有 "required"
	if (required){
		var required_ = required.indexOf('required');
			if (required_ > -1)	{
				isrequired = true;
			}
	}else{
				isrequired = false;
	}
//****
	
	var my_tips=document.all.mytips;
	if(tips){
		if(isrequired || maxLength){
			tips = tips + '<br>';
			}
		if(isrequired){
		   tips = tips + '<font color="red"><b>*</b>&nbsp必填项</font>&nbsp';
		   }
		if(maxLength){
		   tips = tips + '<font color="red">长度限制：'+maxLength+'字节(一个汉字等于2个字节)</font>&nbsp';
		   }
		my_tips.innerHTML=tips;
		my_tips.style.display="block";
		my_tips.style.width=tipWidth;
		my_tips.style.left=event.clientX+10+document.body.scrollLeft;
		my_tips.style.top=event.clientY+10+document.body.scrollTop;
	   }
	else {
	   my_tips.style.display="none";
	}
}