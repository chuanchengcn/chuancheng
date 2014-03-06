<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/form-showcase.css"/>" type="text/css" media="screen" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="form-page">
                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span8 column">
                        <form action="<c:url value="/admin/addProfessor"/>" method="post"  enctype="multipart/form-data"/>
                            <div class="field-box">
                                <label>专家名称</label>
                                <input class="span8" type="text" name="name"/>
                            </div>
                             <div class="field-box">
                                <label>昵称（别名）</label>
                                <input class="span8" type="text" name="nickName"/>
                            </div>
                            <div class="field-box">
                                <label>头像</label>
                                 <input type="file" class="span8 inline-input" name="file"/>
                            </div>                            
                            <div class="field-box">
                                <label>座机</label>
                                <input class="span8 inline-input" type="text" value="010-58737838" name="telephone"/>
                            </div>
                            <div class="field-box">
                                <label>手机</label>
                                <input class="span8 inline-input" type="text"  name="iphone"/>
                            </div>
                            <div class="field-box">
                                <label>性别</label>
                                <div class="span8">
                                    <label class="radio">
                                        <input type="radio" name="sex" id="optionsRadios1" value="男" checked="" />
                                        男
                                    </label>
                                    <label class="radio">
                                        <input type="radio" name="sex" id="optionsRadios2" value="女" />
                                        女
                                    </label>
                                </div>                                
                            </div>
                             <div class="field-box">
                                <label>生日:</label>
                                <input type="text" value="03/29/2013" class="input-large datepicker"  name="birthday"/>
                             </div>
                            <div class="field-box">
                                    <label>联系地址:</label>
                                    <div class="predefined">
                                        <input class="span8 small inline-input" type="text" placeholder="街道"  name="address"/>
                                        <input class="span3 small inline-input" type="hidden" placeholder="国家"  name="nation" value="中国"/>
                                        <input class="span3 small inline-input" type="text" placeholder="城市" name="city"/>
                                        <input class="span3 small inline-input" type="text" placeholder="县" name="country"/>
                                        <input class="span3 small inline-input last" type="text" placeholder="邮编" name="province"/>
                                        
							                                         省：<select id="cmbProvince" class="select2" name="province"></select>
										市：<select id="cmbCity" class="select2" name="city"></select>
										区：<select id="cmbArea" class="select2" name="country"></select>

                                
                                    </div>
                             </div>
                            <div class="field-box">
                                <label>简介：</label>
                                <div class="wysi-column">
                                    <textarea id="wysi" class="span10 wysihtml5" rows="5" name="introduce"></textarea>
                                </div>
                            </div>
                            <div class="field-box">
                                <label></label>
                                    <input type="submit" class="span2 btn-glow primary" value="提交">
                            </div>
                        </form>
                    </div>

                    
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts for this page -->
    <script src="<c:url value="/resources/admin/js/wysihtml5-0.3.0.js"/>" type="text/javascript"></script> 
    <script src="<c:url value="/resources/admin/js/bootstrap-wysihtml5-0.0.2.js"/>" type="text/javascript"></script> 
    <script src="<c:url value="/resources/admin/js/bootstrap.datepicker.js"/>" type="text/javascript"></script> 
    <script src="<c:url value="/resources/admin/js/jquery.uniform.min.js"/>" type="text/javascript"></script> 
    <script src="<c:url value="/resources/admin/js/select2.min.js"/>" type="text/javascript"></script> 
    
    <script src="<c:url value="/resources/admin/js/compiled/jsAddress.js"/>" type="text/javascript"></script> 

    <!-- call this page plugins -->
    <script type="text/javascript">
        $(function () {

            // add uniform plugin styles to html elements
            $("input:checkbox, input:radio").uniform();

            // select2 plugin for select elements
            $(".select2").select2({
                placeholder: "Select a State"
            });

            // datepicker plugin
            $('.datepicker').datepicker().on('changeDate', function (ev) {
                $(this).datepicker('hide');
            });
            // wysihtml5 plugin on textarea
            $(".wysihtml5").wysihtml5({
                "font-styles": false
            });
        });
    </script>
    <script type="text/javascript">
	//addressInit('cmbProvince', 'cmbCity', 'cmbArea', '陕西', '宝鸡市', '金台区');
	addressInit('cmbProvince', 'cmbCity', 'cmbArea');
   </script>
        