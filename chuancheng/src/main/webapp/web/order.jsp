<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/compiled/order.css"/>" media="screen" />
    <!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="new-user">
                <div class="row-fluid header">
                    <h3>填写鉴宝登记表</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form class="new_user_form inline-input" />
                                <div class="span12 field-box">
                                    <label>姓名:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>省份:</label>
                                    <div class="ui-select span5">
                                        <select>
                                            <option value="bj" />北京
                                            <option value="tj" />天津
                                            <option value="sh" />上海
                                            <option value="nj" />南京
                                        </select>
                                    </div>
                                </div>
                                <div class="span12 field-box">
                                    <label>邮箱:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>电话:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                       <label>上传文件</label>
                                        <input type="file" />
                                </div>
                                 
                                
                                <div class="span12 field-box">
                                    <label>地址:</label>
                                    <div class="address-fields">
                                        <input class="span12" type="text" placeholder="街道地址" />
                                        <input class="span12 small" type="text" placeholder="市" />
                                        <input class="span12 small" type="text" placeholder="县" />
                                        <input class="span12 small last" type="text" placeholder="邮编" />
                                    </div>
                                </div>
                                <div class="span12 field-box textarea">
                                    <label>宝贝描述：</label>
                                    <textarea class="span9"></textarea>
                                    <span class="charactersleft">宝贝描述不超过1000字！</span>
                                </div>
                                <div class="span11 field-box actions">
                                    <input type="button" class="btn-glow primary" value="提交预定" />
                                    <span>或</span>
                                    <input type="reset" value="取消" class="reset" />
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- side right column -->
                    <div class="span3 form-sidebar pull-right">
                        <div class="btn-group toggle-inputs hidden-tablet">
                            <button class="glow left active" data-input="inline">INLINE INPUTS</button>
                            <button class="glow right" data-input="normal">NORMAL INPUTS</button>
                        </div>
                        <div class="alert alert-info hidden-tablet">
                            <i class="icon-lightbulb pull-left"></i>
                            Click above to see difference between inline and normal inputs on a form
                        </div>                        
                        <h6>Sidebar text for instructions</h6>
                        <p>Add multiple users at once</p>
                        <p>Choose one of the following file types:</p>
                        <ul>
                            <li><a href="#">Upload a vCard file</a></li>
                            <li><a href="#">Import from a CSV file</a></li>
                            <li><a href="#">Import from an Excel file</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->
    <script type="text/javascript">
        $(function () {

            // toggle form between inline and normal inputs
            var $buttons = $(".toggle-inputs button");
            var $form = $("form.new_user_form");

            $buttons.click(function () {
                var mode = $(this).data("input");
                $buttons.removeClass("active");
                $(this).addClass("active");

                if (mode === "inline") {
                    $form.addClass("inline-input");
                } else {
                    $form.removeClass("inline-input");
                }
            });
        });
    </script>
