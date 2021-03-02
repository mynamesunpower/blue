$(function () {
    // thumbtit로 시작하는 모든 id를 숨김
    $("[id^=thumbtit]").hide();
    
    // 클래스가 일치하는 썸네일이미지를 가지지만, float_l 클래스가 아닌 요소
    $(".sp-thumbnail").click(function (e) {
    e.stopPropagation();
    
    // index가 클릭한 것과 일치하는 요소를 찾음
    $("[id^=thumbtit]").eq($(this).index()).toggle();
    });
    });

    $(function () {
        // Hide all elements which id starts with thumbtit.
        $("[id^=thumbtit]").hide();
        
        $(".sp-thumbnail").click(function () {
        $("#thumbtit" + $(this).data("rel")).toggle();
        });
        });