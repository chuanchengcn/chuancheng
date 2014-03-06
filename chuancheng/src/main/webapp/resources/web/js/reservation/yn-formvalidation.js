 /***�?js��֤���**************************************************************************\ 
 | 2012-11-06 
 |
 | <!--��ȷ����ʹ�øú���ʱ ������jQuery�ļ� -->
 | �ð汾�������ڸ�ʽΪ��yyyy-mm-dd) 
 |
 | ������ƣ�jsoncheckform 
 | �������formID (�?ID) 
 | ����ֵ��boolean�� (ͨ����֤����true,����֮)
 | �����ܣ��Զ���֤�?������ֵ���ڿؼ��������֤���Լ��ɣ�����Ҫ�޸��κδ��롣 
 | ���÷�ʽ��
 		1, ajax�?�ύ��ʽ�� if($("#form�?Id").jsoncheckform({formid:"form�?Id"})){...};
 | ��֤���Ը�ʽ��
 		<input ... checkStr="�ؼ����" checkType="��֤����" isEmpty="Y" [equal="��һ���ؼ���ID"]>
 		<select ...  checkStr="�ؼ����" checkType="��֤����" isEmpty="N" >
 		<textarea ... checkStr="�ؼ����" checkType="��֤����" isEmpty="N">
 | ���ʹ��equal����ȷ�� ��һ���ؼ���checkStr��ֵ��
 | ���ͣ� 
 | �ַ�string,10,20 (��������Ϊ10�����Ϊ20���ַ�) 
 | ���֣� number,-1,10000 (����-1��С��10000������) 
 | �� ����email ��������Ƚϣ�Ϊһ����ʲ���ʽ���ַ�(admin@163.com) 
 | ���֤��idcard  ���ж���15λ��18λ������
 | QQ��qq  ���ж��ǳ��ȴ���5λ������
 | �绰��phone ���ж��Ƿ���(���)-�绰�����ʽ���ַ�
 | �ֻ�mphone 	�ж��Ƿ��Գ�����ֻ��ͷ��λ��ͷ�������ַ�
 | URL: url   �ж��Ƿ���url��ʽ���ַ�
 | IP: ip  �ж��Ƿ�ip
 | �ļ���׺��file, Ҫ����һ������ΪfileExt,��fileExt="gif,GIF,jpg,JPG,bmp,BMP" Ϊֻ����ʹ��gif,jpg,bmp�����ļ���ʽ 
 | ��֤���Դ�ŵı�ʾ��Сֵ�����ֵ�����ָ����д�������Ų���ʡ�� 
 | ����������Ͳ�����λ�����ƣ�number,0,14 
 | isEmpty="Y": �Ƿ����Ϊ�� ΪNʱ����Ϊ��
 \******************************************************************************/

$(function () {
	$.fn.jsoncheckform = function(options){
		var defaults = {
			formid : "formid"	
		};
		var options = $.extend(defaults,options);
		var inputs = $("#" + options.formid).find(":input");	//�?������inputԪ�ؼ���
		var obj = null;											//inputԪ��
		var isSuccess = false;									//�Ƿ���֤�ɹ�
		_cleanErrorMsg(options.formid);
		for(i=0; i<inputs.length; i++){
			obj = inputs[i];
			if(obj.type == "hidden" || obj.type == "button") continue;
			isSuccess = false; // �����;�����isSuccess��ֵ��������Ϊfalse,��ʾ��֤δͨ��
			var checkStr = $(obj).attr("checkStr");
			var checkType = $(obj).attr("checkType");
			if(_isNotEmpty(checkStr)){
				//���Ԫ��ֵΪ�ղ���isEmptyԪ��ֵ��ΪYʱ������������ʾ��
				if (_isEmpty($(obj).attr("value")) && $(obj).attr("isEmpty") != "Y") {
					_showErrorMsg("『用户名』不能为空,请重新输入!",obj); 
					break;
				}
				//����ַ��Ƿ�Ϸ�
				if(checkType.indexOf("string") > -1 && $(obj).attr("isEmpty") != "Y"){
					var strArray = checkType.split(",");
					if(strArray.length < 3) {
						_showErrorMsg( "��������͸�ʽ����!(string,���ٳ���ֵ,��󳤶�ֵ)",obj);
						break;
					}
					var length = parseInt(obj.value.length);
					var minLength = parseInt(strArray[1]);
					var maxLength = parseInt(strArray[2]);
					if(length < minLength){
						_showErrorMsg("『用户名』长度不能小于6,请重新输入",obj);
						break;
					}
					if(length > maxLength){
						_showErrorMsg("��" + checkStr + "�����Ȳ��ܴ���" + maxLength + ",����������",obj);
						break;
					}
					if(_isNotEmpty($(obj).attr("equal")) && $(obj).attr("equal").length > 0){
						var obj2 = $("#"+$(obj).attr("equal"));
						if (obj2 != null) { 
							if (!_compare($(obj),obj2)) {
								_showErrorMsg("��" + $(obj2).attr("checkStr") + "�������롺" + checkStr + "�����",obj);
								break;
							}
						}
					}
				}
				//���url�Ƿ�Ϸ�
				if (checkType == "url") {
					if (!_checkUrl(obj)) {
						_showErrorMsg("����ġ�" + checkStr + "�����ǺϷ�����ַ��ʽ",obj);
						break;
					}
				}
				//����������Ƿ���ѡ��ֵ
				if (checkType == "select") {
					var id = "#"+formId+" #"+obj.id;
					var val = $(id).val();
					if(_isEmpty(val) || val == "-1"){
						_showErrorMsg("��" + checkStr + "��û��ѡ����ѡ��!",obj);
						break;
					}
				}
				//��鵥ѡ��ť�Ƿ���ѡ��
				if (checkType == "radio") {  
					var val = $("#"+formId+" input[name='"+obj.name+"'][type='radio']:checked").val(); 
					if(_isEmpty(val)){
						_showErrorMsg("��" + checkStr + "��û��ѡ�У���ѡ��!",obj);
						break;
					}
				}
				//��������Ƿ�Ϸ�
				if (/^number/.test(checkType)) {
					var tempArr = _checkNumber(obj);
					if (!tempArr[0]) {
						_showErrorMsg(tempArr[1],obj);
						break;
					}
				}
				//���email�Ƿ�Ϸ�
				if (checkType == "email") {
					if (!_checkEmail(obj)) {
						_showErrorMsg("����ġ�" + checkStr + "�����ǺϷ����ʼ���ʽ",obj);
						break;
					}
				}
				//������֤���Ƿ�Ϸ�
				if (checkType == "idcard") {
					if (!_checkIDCard(obj)) {
						_showErrorMsg("����ġ�" + checkStr + "�����ǺϷ������֤",obj);
						break;
					}
				}
				//����ǹ̶��绰�����Ƿ�Ϸ�
				if (checkType == "phone") {
					if (!_checkPhone(obj)) {
						_showErrorMsg("������ġ�" + checkStr	+ "�����ǺϷ��ĵ绰�����ʽ,�밴�˸�ʽ����(���-�绰����[-�ֻ��])",obj);
						break;
					}
				}
				//������ֻ�����Ƿ�Ϸ�
				if (checkType == "mphone") {
					if (!_checkMobilePhone(obj)) {
						_showErrorMsg("������ġ�" + checkStr+ "�����ǺϷ����ֻ����",obj);
						break;
					}
				}
				//���QQ�����Ƿ�Ϸ�
				if (checkType == "qq") {
					if (obj.value != "") {
						if (isNaN(obj.value) || obj.value.length < 5) {
							_showErrorMsg("������ġ�" + checkStr + "�����ǺϷ���QQ����",obj);
							break;
						}
					}
				}
				//���IP��ַ�Ƿ�Ϸ�
				if (checkType == "ip") {
					if (!_checkIP(obj)) {
						_showErrorMsg("������ġ�" + checkStr + "�����ǺϷ���IP��ַ",obj);
						break;
					}
				}
				//����ϴ����ļ���չ���Ƿ�Ϸ�
				if (checkType == "file") {
					if (!_checkfilext(obj, $(obj).attr("fileExt"))) {
						_showErrorMsg("��ѡ��ġ�" + checkStr + "�����ǺϷ����ļ���ʽ",obj);
						break;
					}
				}
				//���ڱȽ�
				if (checkType == "date") {
					if (_isNotEmpty($(obj).attr("equal")) && $(obj).attr("equal").length > 0) {
						var id = $(obj).attr("equal");
						var obj2 = $("#"+id);
						if (obj2 != null) { 
							if (!_compareDate($(obj),obj2)) {
								_showErrorMsg("��" + checkStr + "��������ڡ�"	+ $(obj2).attr("checkStr") + "��",obj);
								break;
							}
						}
					}
				}
			}
			isSuccess = true; // ѭ�������δ��ѭ�������,��֤���ȫ������Ҫ��
		}
		if (!isSuccess) return false;
		return true;
	}
});

 //�Ƿ�Ϊ��(true:��)
function _isEmpty(obj){
	if(obj==null  || typeof(obj) =="undefined" || obj=="undefined" || obj=="" || obj.length == 0 || obj=="null") 
		return true;
	else
	 	return false;
}
//�Ƿ�Ϊ��(true:��)
function _isNotEmpty(obj){
	return !_isEmpty(obj);
}
//ȥ�����˿ո�
function trim(str)
{
	return str.replace(/(^\s*)|(\s*$)/g, '');
}
//�Ƚ��ַ��Ƿ����
function _compare(obj, obj1){
	return trim($(obj).val()) == trim($(obj1).val()) ? true : false;
}
//�Ƚ�����(obj1��ʼ���ڣ�obj��������)
function _compareDate(obj, obj1) {
	var date1 = obj.attr("value");  //��������
	var date2 = $(obj1).attr("value");	//��ʼ����
	return date1 >= date2 ? true : false;
}
//���url�Ƿ�Ϸ�
function _checkUrl(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
			+ "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" // ftp��user@
			+ "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP��ʽ��URL- 199.194.52.184
			+ "|" // ����IP��DOMAIN������
			+ "([0-9a-z_!~*'()-]+\.)*" // ����- www.
			+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // ��������
			+ "[a-z]{2,6})" // first level domain- .com or .museum
			+ "(:[0-9]{1,4})?" // �˿�- :80
			+ "((/?)|" // a slash isn't required if there is no file name
			+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
	var re = new RegExp(strRegex);
	var val = obj.value.toLowerCase();
	return re.test(val) ? (true) : (false);
}
//���email
function _checkEmail(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	return (/^.*@([\w-]){1,}(\.([\w]){1,}){1,3}$/.test(obj.value));
}
//���IP��ַ�Ƿ�Ϸ�
function _checkIP(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	return (/^(((2[0-5][0-5])|([01]\d\d)|(\d\d?))\.){3}((2[0-5][0-5])|([01]\d\d)|(\d\d?))$/.test(obj.value));
}
//������֤�����Ƿ�Ϸ�
function _checkIDCard(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	if (obj.value.length == 15)
		return (/^([0-9]){15,15}$/.test(obj.value));
	if (obj.value.length == 18)
		return (/^([0-9]){17,17}([0-9xX]){1,1}$/.test(obj.value));
	return false;
}
//���̶��绰�����Ƿ�Ϸ�
function _checkPhone(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	return (/^([0-9]{3,5}\-[0-9]{7,10})$/.test(obj.value));
}
//����ֻ�����Ƿ�Ϸ�
function _checkMobilePhone(obj) {
	if (jQuery(obj).attr("isEmpty") == "Y" && obj.value.length == 0) return true;
	return (/^((13[0-9]|15[0-9]|18[0-9])\d{8})$/.test(obj.value));
}
//����Ƿ��ǺϷ�������
function _checkNumber(obj) {
	var tempArr = new Array(true, "");
	var val = obj.value;
	if ($(obj).attr("isEmpty") == "Y" && obj.value.length == 0)
		return tempArr;
	if (isNaN(val)) {
		tempArr[0] = false;
		tempArr[1] = "���ǺϷ������֣����������롺" + $(obj).attr("checkStr") + "��";
	}
	var numberArr = $(obj).attr("checkType").split(",");
	if(numberArr.length < 2){
		tempArr[0] = false;
		tempArr[1] = "��������ȷ����ֵ��֤��ʽ����number,��Сֵ,���ֵ��";
	}
	var minNumber = parseFloat(numberArr[1]);
	var maxNumber = parseFloat(numberArr[2]);
	if (val < minNumber) {
		tempArr[0] = false;
		tempArr[1] = "����С��" + minNumber + ",���������롺" + $(obj).attr("checkStr") + "��,ȡֵ��Χ��"+minNumber+"~"+maxNumber+"֮�䣡";
	}
	if (val > maxNumber) {
		tempArr[0] = false;
		tempArr[1] = "���ܴ���" + maxNumber + ",���������롺" + $(obj).attr("checkStr") + "��,ȡֵ��Χ��"+minNumber+"~"+maxNumber+"֮�䣡";
	}
	return tempArr;
}
function _showErrorMsg(msg,obj){
	if(_isNotEmpty(obj)){
		var id = obj.id+"Tip"
		var obj2 = $("#"+obj.id+"Tip2");
		if(_isNotEmpty(obj2))	$(obj2).remove();
		$(obj).parent().append("<div id='"+id+"' class='onShow'>"+msg+"</div>");
		$(obj).focus();
		$(obj).select();
	}
}
function _cleanErrorMsg(formId){
	var form = $("#"+formId);							//��ݴ�������formIdʵ��һ��jquery����
 	var inputs = $(form).find(":input");				//�?�µ�����inputԪ�ؼ���
	var obj = null;										//inputԪ��
	for (i = 0; i < inputs.length; i++) {
		obj = inputs[i];
		if(obj.type == "hidden" || obj.type == "button") continue;
		if(_isNotEmpty(obj)){
			var id = "#"+obj.id+"Tip"
			$(id).remove();
		}
	}
}