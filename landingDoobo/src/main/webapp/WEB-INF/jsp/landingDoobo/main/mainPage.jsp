<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/navigationBar.jsp" %>
<script>
    $(document).ready(function () {
        toggleFAQ();

        $('a[href^="#"]').on('click', function(e){
            e.preventDefault();

            const target = $(this.getAttribute('href'));
            if(target.length) {
                $('html, body').stop().animate({
                    scrollTop: target.offset().top
                }, 500);     // 500 = 애니메이션 속도(ms)
            }
        });
    });

    function toggleFAQ() {
        $('.faqTitle').click(function() {
            if ($(this).next(".faqContent").css("display") === "none") {
                $(this).next(".faqContent").slideDown();
            } else {
                $(this).next(".faqContent").slideUp();
            }
        });
    }
</script>

        <div class="mainContent">
            <div class="comment">
                <span class="commentText">DON'T STOP THINKING</span>
            </div>
            <div id="devInfo" class="devInfoBg">
                <h1>개발자 정보 <span>INFORMATION</span></h1>
                <div class="devInfo">
                    <div class="devPhotoDiv">
                        <img src="/images/landingDoobo/photo.jpg" class="devPhoto">
                    </div>
                    <div class="devInfoText">
                        <div class="infoHeader">
                            <h1><span class="devNm">김두한</span> | <span class="devPosition">Backend Developer</span></h1>
                        </div>
                        <div class="keywords">
                            <span>#긍정적</span>
                            <span>#신뢰성</span>
                            <span>#성실성</span>
                            <span>#변수대응</span>
                            <span>#책임감</span>
                        </div>
                        <p class="infoMiddleText">안정적인 문재 해결과 변수와 예외 상황을 고려하여</p>
                        <p class="infoMiddleText">서비스에 미치는 영향을 최소화하는 개발을 지향합니다.</p>
                        <div class="infoEndDiv">
                            <p class="infoEndText">"복잡한 문제 속에서도 끝까지 답을 찾아내는 개발자"</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="experience" class="expBg">
                <h1>경력 <span>EXPERIENCE</span></h1>
                <div class="expDiv">
                    <div class="expBlock">
                        <div class="expLeftDiv">
                            <span class="expYear">2022.02 ~ 현재</span>
                        </div>
                        <div class="expRightDiv">
                            <span class="expCompany">비아이플랫폼</span>
                            <span class="expPart">웹서비스 유지보수 및 기능 개발 / SW개발팀</span>
                            <span class="expContent"> KSPO 전자카드 투표시스템 유지보수, 차세대 개발, 발매기 관제시스템 개발</span>
                        </div>
                    </div>




                    <div class="expBlock">
                        <div class="expLeftDiv">
                            <span class="expYear">2022.02 ~ 현재</span>
                        </div>
                        <div class="expRightDiv">
                            <span class="expCompany">비아이플랫폼</span>
                            <span class="expPart">웹서비스 유지보수 및 기능 개발 / SW개발팀</span>
                            <span class="expContent"> KSPO 전자카드 투표시스템 유지보수, 차세대 개발, 발매기 관제시스템 개발</span>
                        </div>
                    </div>
                    <div class="expBlock">
                        <div class="expLeftDiv">
                            <span class="expYear">2022.02 ~ 현재</span>
                        </div>
                        <div class="expRightDiv">
                            <span class="expCompany">비아이플랫폼</span>
                            <span class="expPart">웹서비스 유지보수 및 기능 개발 / SW개발팀</span>
                            <span class="expContent"> KSPO 전자카드 투표시스템 유지보수, 차세대 개발, 발매기 관제시스템 개발</span>
                        </div>
                    </div>
                </div>
            </div>

            <div id="project" class="projectBg">
                <h1>프로젝트 <span>PROJECT</span></h1>
                <div class="projectDiv">
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>



                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>
                    <div class="projectBlock">
                        <div class="projectTop">
                            <img src="/images/landingDoobo/projectTest.png" class="projectImg">
                        </div>
                        <div class="projectBottom">
                            <span class="projectTitle">프로젝트명</span>
                            <span class="projectTagDiv">
                                <span class="projectTag">#관제</span>
                                <span class="projectTag">#Spring</span>
                                <span class="projectTag">#Java</span>
                                <span class="projectTag">#회사</span>
                                <span class="projectTag">#풀스택</span>
                            </span>
                        </div>
                    </div>

                </div>
            </div>

            <div id="faq" class="faqBg">
                <h1>FAQ <span>FAQ</span></h1>
                <div class="faqDiv">
                    <div class="faqBlock">
                        <div class="faqTitle">
                            <span>Q. 어떤 개발자가 되고 싶은가요?</span><button>▼</button>
                        </div>
                        <div class="faqContent">
                            <span>침착하게 문제를 대응하고 사용자의 입장을 충분히 고려할 줄 알며, 변수와 예외처리에 능한 개발자가 되고 싶습니다.</span>
                        </div>
                    </div>


                    <div class="faqBlock">
                        <div class="faqTitle">
                            <span>Q. 어떤 개발자가 되고 싶은가요?</span><button>▼</button>
                        </div>
                        <div class="faqContent">
                            <span>침착하게 문제를 대응하고 사용자의 입장을 충분히 고려할 줄 알며, 변수와 예외처리에 능한 개발자가 되고 싶습니다.</span>
                        </div>
                    </div>
                    <div class="faqBlock">
                        <div class="faqTitle">
                            <span>Q. 어떤 개발자가 되고 싶은가요?</span><button>▼</button>
                        </div>
                        <div class="faqContent">
                            <span>침착하게 문제를 대응하고 사용자의 입장을 충분히 고려할 줄 알며, 변수와 예외처리에 능한 개발자가 되고 싶습니다.</span>
                        </div>
                    </div>
                    <div class="faqBlock">
                        <div class="faqTitle">
                            <span>Q. 어떤 개발자가 되고 싶은가요?</span><button>▼</button>
                        </div>
                        <div class="faqContent">
                            <span>침착하게 문제를 대응하고 사용자의 입장을 충분히 고려할 줄 알며, 변수와 예외처리에 능한 개발자가 되고 싶습니다.</span>
                        </div>
                    </div>
                </div>
            </div>

            <div id="contact" class="contactBg">
                <h1>연락처 <span>CONTACT</span></h1>
                <div class="contactDiv">
                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_email.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">이메일</span>
                            <span class="contactInfo">kjo4202@naver.com</span>
                        </div>
                    </div>

                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_call.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">전화번호</span>
                            <span class="contactInfo">010-2626-8072</span>
                        </div>
                    </div>

                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_talk.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">카카오톡</span>
                            <span class="contactInfo">https://open.kakao.com/o/svQjXT8h</span>
                        </div>
                    </div>

                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_etc.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">기타</span>
                            <span class="contactInfo">https://open.kakao.com/o/svQjXT8h</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/footer.jsp" %>
