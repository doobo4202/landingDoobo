<%@ page language = "java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<script type="text/javascript">
  //<![CDATA[
  $(function() {
    fn_schProjectDetail();
  })

  function fn_schProjectDetail() {
    $("#projectSeq").val();

    var param = new Object();
    param.projectSeq = $("#projectSeq").val();

    var url = "/project/schProjectDetail";
    AJAX_COLL(url, param, "", "", fn_sucSchProjectDetail);
  }

  function fn_sucSchProjectDetail(data) {
    if (data.resultCd !== "FAIL") {
      var detail = data.detail;

      $("#projectNm").html(detail.PROJECT_NM);
      $("#projectCont").html(detail.DETAIL_CONT);

      var projectTag = detail.PROJECT_TAG.split("#").filter(v => v !== "");
      var tagHtml = "";
      projectTag.forEach(function(item, idx){
        tagHtml += "<span>#"+item+"</span>";
      });
      $("#projectTag").html(tagHtml);

    }
  }
  //]]>
</script>
<input type="hidden" id="projectSeq" value="<c:out value="${seq}" />" />
  <div class="project-popup-card">

    <h2 class="popup-header">프로젝트 상세</h2>

    <div class="popup-inner">
      <!-- LEFT : 이미지 -->
      <div class="popup-left">
        <div class="main-image">
          <img src="/images/landingDoobo/project/project1.png" alt="project image">
        </div>

        <div class="thumbnail-list">
          <img src="/images/landingDoobo/project/project1.png">
          <img src="/images/landingDoobo/project/project2.png">
          <img src="/images/landingDoobo/project/project3.png">
        </div>

        <div class="image-pagination">1 / 4</div>
      </div>

      <!-- RIGHT : 텍스트 -->
      <div class="popup-right">
        <h3 class="popup-title" id="projectNm">프로젝트 제목</h3>

        <div class="popup-tags" id="projectTag">
          <span>#React</span>
          <span>#Next.js</span>
          <span>#TeamProject</span>
        </div>

        <div class="popup-section">
          <h4>상세 설명</h4>
          <p id="projectCont">
            React와 Next.js를 활용하여 팀 프로젝트로 진행한 웹 서비스입니다.
            사용자 경험과 UI 구조 개선에 중점을 두었습니다.
          </p>
        </div>

        <div class="popup-section">
          <h4>사용 기술</h4>
          <div class="tech-stack">
            <span>React</span>
            <span>Next.js</span>
            <span>JavaScript</span>
            <span>Tailwind CSS</span>
          </div>
        </div>

        <div class="popup-section">
          <h4>추가 자료</h4>
          <div class="download-box">
            <span>📎 발표자료.pdf</span>
            <a href="#" class="download-btn">다운로드</a>
          </div>
        </div>
      </div>
    </div>

  </div>


