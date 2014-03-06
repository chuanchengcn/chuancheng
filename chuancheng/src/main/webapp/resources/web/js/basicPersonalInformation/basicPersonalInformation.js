/**
 * @author dell
 */
//表单验证
$(document).ready(function(){
$.formValidator.initConfig({formID:"form1",autoTip:true,onError:function(msg){alert(msg)},inIframe:true});

	$("#password1").formValidator({onShow:"请输入密码",onFocus:"密码不能为空",onCorrect:"密码合法"}).inputValidator({min:1,onError:"密码不能为空,请确认"});
	$("#password2").formValidator({onShow:"请输入重复密码",onFocus:"两次密码必须一致哦",onCorrect:"密码一致"}).inputValidator({min:1,onError:"重复密码不能为空,请确认"}).compareValidator({desid:"password1",operateor:"=",onError:"2次密码不一致,请确认"});
	$(":radio[name='sex']").formValidator({relativeID:"sex1",tipID:"sexTip",tipCss:{"left":"60px"},onShow:"请选择你的性别",onFocus:"没有第三种性别了，你选一个吧",onCorrect:"输入正确",defaultValue:["2"]}).inputValidator({min:1,max:1,onError:"性别忘记选了,请确认"}).defaultPassed();
	$("#email").formValidator({onShow:"请输入邮箱",onFocus:"邮箱至少6个字符,最多100个字符",onCorrect:"恭喜你,你输对了",defaultValue:"@"}).inputValidator({min:6,max:100,onError:"你输入的邮箱长度非法,请确认"}).regexValidator({regExp:"^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",onError:"你输入的邮箱格式不正确"});
	
	$(":radio[name='radio']").formValidator({relativeID:"nn4",tipID:"aiguoTip",tipCss :{"left":"60px"},onShow:"爱国的人一定要选哦",onFocus:"你得认真思考哦",onCorrect:"不知道你爱不爱，反正你是选了",defaultValue:["4"]}).inputValidator({min:1,max:1,onError:"难道你不爱国？你给我选！！！！"}).defaultPassed();
	$("#shouji").formValidator({empty:true,onShow:"请输入你的手机号码，可以为空哦",onFocus:"你要是输入了，必须输入正确",onCorrect:"谢谢你的合作",onEmpty:"你真的不想留手机号码啊？"}).inputValidator({min:11,max:11,onError:"手机号码必须是11位的,请确认"}).regexValidator({regExp:"mobile",dataType:"enum",onError:"你输入的手机号码格式不正确"});;
	$("#lxdh").formValidator({empty:true,onShow:"请输入你的联系电话，可以为空哦",onFocus:"格式例如：0577-88888888",onCorrect:"谢谢你的合作",onEmpty:"你真的不想留联系电话了吗？"}).regexValidator({regExp:"^[[0-9]{3}-|\[0-9]{4}-]?([0-9]{8}|[0-9]{7})?$",onError:"你输入的联系电话格式不正确"});
	$("#sjdh").formValidator({empty:true,onShow:"请输入你的手机或电话，可以为空哦",onFocus:"格式例如：0577-88888888或11位手机号码",onCorrect:"谢谢你的合作",onEmpty:"你真的不想留手机或电话了吗？"}).regexValidator({regExp:["tel","mobile"],dataType:"enum",onError:"你输入的手机或电话格式不正确"});
	$("#selectmore").formValidator({tipCss :{"left":"68px"},onShow:"按住CTRL可以多选",onFocus:"按住CTRL可以多选,至少选择2个",onCorrect:"谢谢你的合作",defaultValue:["0","1","2"]}).inputValidator({min:2,onError:"至少选择2个"});
	$("#ms").formValidator({onShow:"请输入你的描述",onFocus:"描述至少要输入10个汉字或20个字符",onCorrect:"恭喜你,你输对了",defaultValue:"这家伙很懒，什么都没有留下。"}).inputValidator({min:20,onError:"你输入的描述长度不正确,请确认"});
	$.formValidator.reloadAutoTip();
});
function test(obj)
{
	if(obj.value=="不校验身份证")
	{
		$("#sfzh").attr("disabled",true).unFormValidator(true);
		obj.value = "校验身份证";
	}
	else
	{
		$("#sfzh").attr("disabled",false).unFormValidator(false);
		obj.value = "不校验身份证";
	}
}
function test1(obj)
{
	var initConfig = $('body').data('1');
	if(obj.value=="全角字符当做1个长度")
	{
		initConfig.wideword = false;
		obj.value = "全角字符当做2个长度";
	}
	else
	{
		initConfig.wideword = true;
		obj.value = "全角字符当做1个长度";
	}
	$('body').data(obj.validatorgroup,initConfig);
}
function reloadAutoTip()
{
	$.formValidator.reloadAutoTip();
}

//确定click按钮判断
function buttonClick(){
	$('#button').click(function(){
		var uss=$('#uss').val(),
			password1=$('#password1').val(),
			password2=$('#password2').val(),
			email=$('#email').val(),
			shouji=$('#shouji').val(),
			lxdh=$('#lxdh').val(),
			sjdh=$('#sjdh').val(),
			ms=$('#ms').val();
			
		if(uss==''||password1==''||password2==''||email==''||ms==''){
			alert('请将信息填写完整')
	}else{
		var timer=function(){
			alert('信息保存成功！');
			$('#modify').show();
			$('tbody td input').attr("disabled",true);
		}
		setTimeout(timer,2000);
		
	}
})
}
	buttonClick();