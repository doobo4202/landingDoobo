<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/header.jsp" %>

<script type="text/javascript">
    // 스크롤 이벤트를 상단 네비 메뉴 클릭 시 이용하여 페이지 이동
    $('a[href^="#"]').on('click', function(e){
        e.preventDefault();

        const target = $(this.getAttribute('href'));
        if(target.length) {
            $('html, body').stop().animate({
                scrollTop: target.offset().top
            }, 500);     // 500 = 애니메이션 속도(ms)
        }
    });
</script>
        <div class="navDiv">
            <ul class="navUl">
                <li class="logoLi"><a herf="#"><img src="/images/landingDoobo/dooboLogo.png"></a></li>
                <li><a href="#devInfo">INFORMATION</a></li>
                <li><a href="#experience">EXPERIENCE</a></li>
                <li><a href="#project">PROJECT</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#contact">CONTACT</a></li>
            </ul>
        </div>
