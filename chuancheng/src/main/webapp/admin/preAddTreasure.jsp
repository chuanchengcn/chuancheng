<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/form-showcase.css"/>" type="text/css" media="screen" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
        
            <div id="pad-wrapper" class="form-page">
              <div class="row-fluid header">
                    <h3>添加系统宝贝</h3>
                </div>
                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span8 column">
                        <form action="<c:url value="/admin/addTreasure"/>" method="post"  enctype="multipart/form-data"/>
                           <div class="field-box">
                                    <label>宝贝类型:</label>
                                    <div class="predefined">
                                        <input class="span8 small inline-input" type="text" placeholder="街道"  name="address"/>
                                        <input class="span3 small inline-input" type="text" placeholder="国家"  name="nation"/>
                                        <input class="span3 small inline-input" type="text" placeholder="城市" name="city"/>
                                        <input class="span3 small inline-input" type="text" placeholder="县" name="country"/>
                                        <input class="span3 small inline-input last" type="text" placeholder="邮编" name="province"/>
                                    </div>
                             </div>
                            <div class="field-box">
                                <label>宝贝名称</label>
                                <input class="span8" type="text" name="name"/>
                            </div>
                             <div class="field-box">
                                <label>创造人</label>
                                <input class="span8" type="text" name="author"/>
                            </div>
                             <div class="field-box">
                                <label>宝贝年代:</label>
                                <input type="text" value="2013-12-12" class="input-large datepicker"  name="historyTime"/>
                             </div>
                            <div class="field-box">
                                <label>联系电话：</label>
                                <input class="span8 inline-input" type="text" value="010-58737838" name="telephone"/>
                            </div>
                            
                            <div class="field-box">
                                <label>简介：</label>
                                <div class="wysi-column">
                                    <textarea id="wysi" class="span12 wysihtml5" rows="5" name="description"></textarea>
                                </div>
                            </div>
                             <div class="field-box">
                                <label>宝贝背后的故事：</label>
                                <div class="wysi-column">
                                    <textarea id="story" class="span12 wysihtml5" rows="5" name="story"></textarea>
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
           // $('.datepicker').datepicker().on('changeDate', function (ev) {
             //   $(this).datepicker('hide');
            //});
            
            $('.datepicker').datepicker({
            	  format: 'yyyy-mm-dd',
            	        weekStart: 1,
            	        autoclose: true,
            	        todayBtn: 'linked',
            	        language: 'zh-CN'
            	 }).on('changeDate',function(ev){
            	   $(this).datepicker('hide');
            	   var startTime = ev.date.valueOf();
            	   });
            	
            
            
            
            // wysihtml5 plugin on textarea
            $(".wysihtml5").wysihtml5({
                "font-styles": true
            });
            
        });
    </script>