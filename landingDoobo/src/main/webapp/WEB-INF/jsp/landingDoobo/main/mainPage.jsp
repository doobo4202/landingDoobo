<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/navigationBar.jsp" %>
<script>
    $(document).ready(function () {
        // FAQ 토글 버튼 클릭 시 FAQ 내용을 보여주는 함수
        fn_toggleFAQ();

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

        fn_schBaseMain();
    });


    /*
    *   fn_toggleFAQ - FAQ 토글 버튼 클릭 시 FAQ 내용을 보여주는 함수
    */
    function fn_toggleFAQ() {
        $('.faqTitle').click(function() {
            if ($(this).next(".faqContent").css("display") === "none") {
                $(this).next(".faqContent").slideDown();
            } else {
                $(this).next(".faqContent").slideUp();
            }
        });
    }

    /*
    *   fn_schBaseMain - 메인 기초정보 조회
    */
    function fn_schBaseMain() {
        var param = new Object();
        var url = "/ld/main/schBaseMain";

        AJAX_COLL(url, param, "", "", fn_sucSchBaseMain);
    }

    /*
    *   fn_sucSchBaseMain - 메인 기초정보 조회 성공 시 호출되는 함수
    */
    function fn_sucSchBaseMain(data) {
        if (data.resultCd !== "FAIL") {
            var bannerInfo = data.bannerInfo;
            $("#commentText").text(bannerInfo.MAIN_TEXT);

            var devInfo = data.devInfo;
            $("#devPhoto").attr("src", devInfo.DEV_IMG);
            $("#devNm").text(devInfo.DEV_NM);
            $("#devPosition").text(devInfo.DEV_PART);
            $("#tag").text(devInfo.DEV_TAG);
            $("#infoMiddleText").text(devInfo.DEV_TEXT);
            $("#infoEndText").text("\"" + devInfo.DEV_MSG + "\"");

            var contectInfo = data.contectInfo;
            $("#contactEmail").text(contectInfo.CONTACT_MAIL);
            $("#contactCall").text(contectInfo.CONTACT_CALL);
            $("#contactTalk").text(contectInfo.CONTACT_TALK);
        } else {

        }
    }
</script>

        <div class="mainContent">
            <div class="comment">
                <span id="commentText" class="commentText"></span>
            </div>
            <div id="devInfo" class="devInfoBg">
                <h1>개발자 정보 <span>INFORMATION</span></h1>
                <div class="devInfo">
                    <div class="devPhotoDiv">
                        <img src="/images/landingDoobo/photo.jpg" id="devPhoto" class="devPhoto">
                    </div>
                    <div class="devInfoText">
                        <div class="infoHeader">
                            <h1><span id="devNm" class="devNm"></span> | <span id="devPosition" class="devPosition"></span></h1>
                        </div>
                        <div id="tag" class="keywords">
                            <span>#긍정적</span>
                            <span>#신뢰성</span>
                            <span>#성실성</span>
                            <span>#변수대응</span>
                            <span>#책임감</span>
                        </div>
                        <p id="infoMiddleText" class="infoMiddleText"></p>
                        <div class="infoEndDiv">
                            <p id="infoEndText" class="infoEndText"></p>
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
                            <span id="contactEmail" class="contactInfo"></span>
                        </div>
                    </div>

                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_call.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">전화번호</span>
                            <span id="contactCall" class="contactInfo"></span>
                        </div>
                    </div>

                    <div class="contactBlock">
                        <div class="contactLeftDiv">
                            <img src="/images/landingDoobo/icon/icon_talk.png" class="contactImg">
                        </div>
                        <div class="contactRightDiv">
                            <span class="contactNm">카카오톡</span>
                            <span id="contactTalk" class="contactInfo"></span>
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
