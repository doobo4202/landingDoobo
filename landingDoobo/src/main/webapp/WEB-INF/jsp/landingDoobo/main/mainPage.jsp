<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/navigationBar.jsp" %>
<script>
    $(document).ready(function () {
        // 메인 기초정보 조회
        fn_schBaseMain();

        // FAQ 토글 버튼 클릭 시 FAQ 내용을 보여주는 함수
        fn_toggleFAQ();
    });


    /*
    *   fn_toggleFAQ - FAQ 토글 버튼 클릭 시 FAQ 내용을 보여주는 함수
    */
    function fn_toggleFAQ() {
        $(document).on("click", ".faqTitle", function () {
            var content = $(this).next(".faqContent");
            if (content.is(":visible")) {
                content.slideUp();
            } else {
                content.slideDown();
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

            // banner 정보
            var bannerInfo = data.bannerInfo;
            $("#commentText").text(bannerInfo.MAIN_TEXT);

            // 개발자 정보
            var devInfo = data.devInfo;
            $("#devPhoto").attr("src", devInfo.DEV_IMG);
            $("#devNm").text(devInfo.DEV_NM);
            $("#devPosition").text(devInfo.DEV_PART);
            $("#infoMiddleText").html(devInfo.DEV_TEXT);
            $("#infoEndText").text("\"" + devInfo.DEV_MSG + "\"");

            var tag = devInfo.DEV_TAG.split("#").filter(v => v !== "");
            var tagHtml = "";
            tag.forEach(function(item, idx){
                tagHtml += "<span>#"+item+"</span>";
            });
            $("#tag").html(tagHtml);

            // 경력 정보
            var expList = data.expList;
            var expCnt = expList.length;

            var expHtml = "";
            var COMPANY_NM = "";
            var START_DY = "";
            var END_DY = "";
            var GRADE_NM = "";
            var SMALL_CONT = "";
            var EXP_DETAIL = "";

            for (i = 0 ; i < expCnt; i++) {
                COMPANY_NM = expList[i].COMPANY_NM;
                START_DY = expList[i].START_DY;
                END_DY = expList[i].END_DY;
                GRADE_NM = expList[i].GRADE_NM;
                SMALL_CONT = expList[i].SMALL_CONT;
                EXP_DETAIL = expList[i].EXP_DETAIL;

                expHtml += "<div class=\"expBlock\">";
                expHtml += "<div class=\"expLeftDiv\">";
                expHtml += "<span class=\"expYear\">" + START_DY + " ~ " + END_DY + "</span>";
                expHtml += "</div>";
                expHtml += "<div class=\"expRightDiv\">";
                expHtml += "<span class=\"expCompany\">" + COMPANY_NM + "</span>";
                expHtml += "<span class=\"expPart\">" + SMALL_CONT + " / " + GRADE_NM + "</span>";
                expHtml += "<span class=\"expContent\">" + EXP_DETAIL + "</span>";
                expHtml += "</div>";
                expHtml += "</div>";
            }
            $("#expDiv").html(expHtml);

            // 포트폴리오 정보

            // FAQ 정보 조회
            var faqList = data.faqList;
            var faqCnt = faqList.length;

            var faqHtml = "";
            var FAQ_QUESTION = "";
            var FAQ_ANSWER = "";

            for (i = 0 ; i < faqCnt; i++) {
                FAQ_QUESTION = faqList[i].FAQ_QUESTION;
                FAQ_ANSWER = faqList[i].FAQ_ANSWER;

                faqHtml +="<div class=\"faqBlock\">";
                faqHtml +="<div class=\"faqTitle\">";
                faqHtml +="<span>Q. " + FAQ_QUESTION + "</span>";
                faqHtml +="<button>▼</button>";
                faqHtml +="</div>";
                faqHtml +="<div class=\"faqContent\">";
                faqHtml +="<span>" + FAQ_ANSWER + "</span>";
                faqHtml +="</div>";
                faqHtml +="</div>";
            }
            $("#faqDiv").html(faqHtml);

            // 연락처 정보
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
                        <div id="tag" class="keywords"></div>
                        <p id="infoMiddleText" class="infoMiddleText"></p>
                        <div class="infoEndDiv">
                            <p id="infoEndText" class="infoEndText"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="experience" class="expBg">
                <h1>경력 <span>EXPERIENCE</span></h1>
                <div id="expDiv" class="expDiv"></div>
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
                <div id="faqDiv" class="faqDiv"></div>
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

    <button id="btnTop">▲</button>
<%@ include file="/WEB-INF/jsp/landingDoobo/include/footer.jsp" %>
