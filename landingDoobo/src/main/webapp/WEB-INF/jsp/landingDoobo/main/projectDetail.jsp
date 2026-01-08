<%@ page language = "java"
        contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<script type="text/javascript">
//<![CDATA[
$(function() {
    // alert($("#projectSeq").val());
})
//]]>
</script>
    <input type="hidden" id="projectSeq" value="<c:out value="${seq}" />" />
<div class="project-popup-container">
  <div class="popup-inner">
    <!-- 좌: 이미지 / 모바일 시 아래 -->
    <div class="popup-left">
      <div class="main-image">
        <img src="img1.jpg" alt="대표 이미지" />
      </div>
      <div class="thumbnail-list">
        <img src="img1.jpg" />
        <img src="img2.jpg" />
        <img src="img3.jpg" />
      </div>
      <div class="image-pagination">1 / 4</div>
    </div>

    <!-- 우: 설명 / 모바일 시 위 -->
    <div class="popup-right">
      <h2 class="popup-title">프로젝트 제목</h2>

      <div class="popup-tags">
        <span>#React</span>
        <span>#Next.js</span>
        <span>#TeamProject</span>
      </div>

      <div class="popup-section">
        <h3>상세 설명</h3>
        <p>
          이 프로젝트는 000을 허접하기 위해 React와 Next.js를 활용하여 팀 프로젝트로 진행한 것입니다. ...
        </p>
      </div>

      <div class="popup-section">
        <h3>사용 기술</h3>
        <div class="tech-stack">
          <span>React</span>
          <span>Next.js</span>
          <span>JavaScript</span>
          <span>Tailwind CSS</span>
        </div>
      </div>

      <div class="popup-section">
        <h3>추가 자료</h3>
        <div class="download-box">
          <span>📎 발표자료.pdf</span>
          <a href="#" class="download-btn">다운로드</a>
        </div>
      </div>
    </div>
  </div>
</div>


