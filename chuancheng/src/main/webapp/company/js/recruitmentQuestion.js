/**
 * @author dell
 */
$("#content_ul li").click(function(){
		$(this).next(".answer").slideToggle("slow").siblings();
	})
