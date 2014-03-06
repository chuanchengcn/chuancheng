	$(function() {
			onmouse();
			onmouseout();
		});
		function onmouse() {

			$(".img_box").mouseover(function() {

				$(this).addClass("css1");
			});

			$(".img_box0").mouseover(function() {
				$(this).addClass("css2");
			});
			$(".img_box1").mouseover(function() {
				$(this).addClass("css3");
			});
			$(".img_box2").mouseover(function() {
				$(this).addClass("css4");
			});
		}
		function onmouseout() {
			$(".img_box").mouseout(function() {
				$(this).removeClass("css1");
			});
			$(".img_box0").mouseout(function() {
				$(this).removeClass("css2");
			});
			$(".img_box1").mouseout(function() {
				$(this).removeClass("css3");
			});
			$(".img_box2").mouseout(function() {
				$(this).removeClass("css4");
			});
		}