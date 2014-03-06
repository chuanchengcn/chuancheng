
jQuery(document).ready(function() {
    /*
        Background slideshow
    */
    $.backstretch([
      "../resources/web/img/backgrounds/1.jpg"
    , "../resources/web/img/backgrounds/2.jpg"
    , "../resources/web/img/backgrounds/3.jpg"
    ], {duration: 3000, fade: 750});
    $('.register form').submit(function(){
        $(this).find("label[for='email']").html('邮箱或者电话号码:');
        $(this).find("label[for='password']").html('密码：');
        ////
        var email = $(this).find('input#email').val();
        var password = $(this).find('input#password').val();
        if(email == '') {
            $(this).find("label[for='email']").append("<span style='display:none' class='red'> - 请输入邮箱或者电话号码登陆！</span>");
            $(this).find("label[for='email'] span").fadeIn('medium');
            return false;
        }
        if(password == '') {
            $(this).find("label[for='password']").append("<span style='display:none' class='red'> -请输入你的密码！</span>");
            $(this).find("label[for='password'] span").fadeIn('medium');
            return false;
        }
    });
});


