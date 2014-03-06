<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/professors.css"/>" />
<script src="<c:url value="/resources/web/js/jquery.countdown.js"/>" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	 var rootPath='<c:url value="/"/>';
      $(function(){
        $('#counter').countdown({
          image: rootPath+'resources/web/img/time/digits.png',
          startTime: '01:12:12:00'
        });

        $('#counter_2').countdown({
          image: rootPath+'resources/web/img/time/digits.png',
          startTime: '00:10',
          timerEnd: function(){ 
        	 // alert('end!'); 
        	  },
          format: 'mm:ss'
        });
      });
    </script>
    <style type="text/css">
      br { clear: both; }
      .cntSeparator {
        font-size: 54px;
        margin: 10px 7px;
        color: #000;
      }
      .desc { margin: 7px 3px; }
      .desc div {
        float: left;
        font-family: Arial;
        width: 70px;
        margin-right: 65px;
        font-size: 13px;
        font-weight: bold;
        color: #000;
      }
    </style>


<!-- main container -->
    <div class="content">
		<div class="row-fluid flow list">
			<div class="header">
				<h2 class="tab">拍卖</h2>
			</div>
			<div class="list_box">
			
			
		
  <div id="counter"></div>
  <div class="desc">
    <div>Días</div>
    <div>Horas</div>
    <div>Minutos</div>
    <div>Segundos</div>
  </div>
  <a href="" onclick="$('#counter').countdown('pause');return false">Pause</a> | <a href="" onclick="$('#counter').countdown('start');return false">Start</a>
  <br />
  <br />
  <br />
  <div id="counter_2"></div>
  <div class="desc">
    <div>Minutos</div>
    <div>Segundos</div>
  </div>
			
			
             </div>
        </div>
	
    </div>
    <!-- end main container -->