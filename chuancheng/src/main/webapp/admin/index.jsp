<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/index.css"/>" type="text/css" media="screen" />
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <!-- upper main stats -->
            <div id="main-stats">
                <div class="row-fluid stats-row">
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number" id="todySessionSize">2457</span>
                         		    访问量
                        </div>
                        <span class="date">今天</span>
                    </div>
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number" id="allMemmberSize">3240</span>
                             注册会员
                        </div>
                        <span class="date">有效注册会员</span>
                    </div>
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number"id="allSessionSize">322</span>
                            鉴宝专家
                        </div>
                        <span class="date">鉴宝专家</span>
                    </div>
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number" id="totalOrderSize">322</span>
                            订单数
                        </div>
                        <span class="date">今日订单</span>
                    </div>
                    <div class="span3 stat last">
                        <div class="data">
                            <span class="number" id="totalConsumer">$2,340</span>
                            营收
                        </div>
                        <span class="date">本月收益</span>
                    </div>
                </div>
            </div>
            <!-- end upper main stats -->

            <div id="pad-wrapper">

                <!-- statistics chart built with jQuery Flot -->
                <div class="row-fluid chart">
                    <h4>
                        统计
                         <div class="btn-group pull-right">
                            <button class="glow left">DAY</button>
                            <button class="glow middle active">MONTH</button>
                            <button class="glow right">YEAR</button>
                        </div>
                    </h4>
                    <div class="span12">
                        <div id="statsChart"></div>
                    </div>
                </div>
                <!-- end statistics chart -->

                <!-- UI Elements section -->
                <div class="row-fluid section ui-elements">
                    <h4>UI Elements</h4>
                    <div class="span5 knobs">
                        <div class="knob-wrapper">
                            <input type="text" value="50" class="knob" data-thickness=".3" data-inputcolor="#333" data-fgcolor="#30a1ec" data-bgcolor="#d4ecfd" data-width="150" />
                            <div class="info">
                                <div class="param">
                                    <span class="line blue"></span>
                                    Active users
                                </div>
                            </div>
                        </div>
                        <div class="knob-wrapper">
                            <input type="text" value="75" class="knob second" data-thickness=".3" data-inputcolor="#333" data-fgcolor="#3d88ba" data-bgcolor="#d4ecfd" data-width="150" />
                            <div class="info">
                                <div class="param">
                                    <span class="line blue"></span>
                                    % disk space usage
                                </div>
                            </div>
                        </div>                        
                    </div>
                    <div class="span6 showcase">
                        <div class="ui-sliders">
                            <div class="slider slider-sample1 vertical-handler"></div>
                            <div class="slider slider-sample2"></div>
                            <div class="slider slider-sample3"></div>
                        </div>
                        <div class="ui-group">
                            <a class="btn-flat inverse">Large Button</a>
                            <a class="btn-flat gray">Large Button</a>
                            <a class="btn-flat default">Large Button</a>
                            <a class="btn-flat primary">Large Button</a>
                        </div>                        

                        <div class="ui-group">
                            <a class="btn-flat icon">
                                <i class="tool"></i> Icon button
                            </a>
                            <a class="btn-glow small inverse">
                                <i class="shuffle"></i>
                            </a>
                            <a class="btn-glow small primary">
                                <i class="setting"></i>
                            </a>
                            <a class="btn-glow small default">
                                <i class="attach"></i>
                            </a>
                            <div class="ui-select">
                                <select>
                                    <option selected="" />Dropdown
                                    <option />Custom selects
                                    <option />Pure css styles
                                </select>
                            </div>

                            <div class="btn-group">
                                <button class="glow left">LEFT</button>
                                <button class="glow right">RIGHT</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end UI elements section -->

            </div>
        </div>
</div>

   <!-- flot charts -->
    <script src="<c:url value="/resources/admin/js/jquery.flot.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/jquery.flot.stack.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/jquery.flot.resize.js"/>"></script>
<script type="text/javascript">
$(document).ready(function(){
		$.ajax( {
		    url :Init.webUrl+"/admin/webCommon/sessionSysStateList",
		    type :"post",
		    dataType :"json",
		   // data :params,
		    contentType: "application/x-www-form-urlencoded; charset=utf-8",
		    success :function(resultData){
		    	//alert(resultData.data.sessions.A23970F3695A74436BFD35297715C8DC);
		    	//$.each(resultData.data.sessions,function(key,value){
			           //$("#mapinfo").append(key+"----"+value+"<br/><hr/>");
			    //       alert(key);
			  // });
		    	$("#currentSessionSize").text(resultData.data.onlineSize);
		    	$("#todySessionSize").text(resultData.data.todaySize);
		    	$("#allMemmberSize").text(resultData.data.allMemberSize);
		    	$("#allSessionSize").text(resultData.data.allSize);
		     }
		});
		
		$("#sessionCounterId").click(function(){
			location.href =Init.webUrl+"/admin/webCommon/sessionList";
	     });
		
		
});
</script>


    <script type="text/javascript">
        $(function () {

            // jQuery Knobs
            $(".knob").knob();



            // jQuery UI Sliders
            $(".slider-sample1").slider({
                value: 100,
                min: 1,
                max: 500
            });
            $(".slider-sample2").slider({
                range: "min",
                value: 130,
                min: 1,
                max: 500
            });
            $(".slider-sample3").slider({
                range: true,
                min: 0,
                max: 500,
                values: [ 40, 170 ],
            });

            

            // jQuery Flot Chart
            var xpoint=[[1, "JAN"], [2, "FEB"], [3, "MAR"], [4,"APR"], [5,"MAY"], [6,"JUN"], 
                        [7,"JUL"], [8,"AUG"], [9,"SEP"], [10,"OCT"], [11,"NOV"], [12,"DEC"]];
            var visits = [[1, 1150],[10, 75],[11, 57]];
            var visitors = [[1, 25], [2, 50], [3, 23], [4, 48],[5, 38],[6, 40],[7, 47],[8, 55],[9, 43],[10,50],[11,47],[12, 39]];

            var plot = $.plot($("#statsChart"),
                [ { data: visits, label: "Signups"},
                 { data: visitors, label: "Visits" }], {
                    series: {
                        lines: { show: true,
                                lineWidth: 1,
                                fill: true, 
                                fillColor: { colors: [ { opacity: 0.1 }, { opacity: 0.13 } ] }
                             },
                        points: { show: true, 
                                 lineWidth: 2,
                                 radius: 3
                             },
                        shadowSize: 0,
                        stack: true
                    },
                    grid: { hoverable: true, 
                           clickable: true, 
                           tickColor: "#f9f9f9",
                           borderWidth: 0
                        },
                    legend: {
                            // show: false
                            labelBoxBorderColor: "#fff"
                        },  
                    colors: ["#a7b5c5", "#30a0eb"],
                    xaxis: {
                        ticks: xpoint ,
                        font: {
                            size: 12,
                            family: "Open Sans, Arial",
                            variant: "small-caps",
                            color: "#697695"
                        }
                    },
                    yaxis: {
                        ticks:4, 
                        tickDecimals: 0,
                        font: {size:12, color: "#9da3a9"}
                    }
                 });

            function showTooltip(x, y, contents) {
                $('<div id="tooltip">' + contents + '</div>').css( {
                    position: 'absolute',
                    display: 'none',
                    top: y - 30,
                    left: x - 50,
                    color: "#fff",
                    padding: '2px 5px',
                    'border-radius': '6px',
                    'background-color': '#000',
                    opacity: 0.80
                }).appendTo("body").fadeIn(200);
            }

            var previousPoint = null;
            $("#statsChart").bind("plothover", function (event, pos, item) {
                if (item) {
                    if (previousPoint != item.dataIndex) {
                        previousPoint = item.dataIndex;

                        $("#tooltip").remove();
                        var x = item.datapoint[0].toFixed(0),
                            y = item.datapoint[1].toFixed(0);

                        var month = item.series.xaxis.ticks[item.dataIndex].label;

                        showTooltip(item.pageX, item.pageY,
                                    item.series.label + " of " + month + ": " + y);
                    }
                }
                else {
                    $("#tooltip").remove();
                    previousPoint = null;
                }
            });
        });
    </script>
    
    
    
    
    <script type="text/javascript">
$(document).ready(function(){
		$.ajax( {
		    url :Init.webUrl+"/admin/webCommon/sessionSysStateList",
		    type :"post",
		    dataType :"json",
		   // data :params,
		    contentType: "application/json; charset=utf-8",
		    success :function(resultData){
		    	$("#currentSessionSize").text(resultData.data.onlineSize);
		    	$("#todySessionSize").text(resultData.data.todaySize);
		    	$("#allMemmberSize").text(resultData.data.allMemberSize);
		    	$("#allSessionSize").text(resultData.data.allSize);
		     }
		});
		
		$("#sessionCounterId").click(function(){
			location.href =Init.webUrl+"/admin/webCommon/sessionList";
	     });
		
		
});


</script>




