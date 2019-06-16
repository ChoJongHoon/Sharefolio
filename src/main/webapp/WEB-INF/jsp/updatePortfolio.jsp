<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="resource/res/css/newPortfolio.css" />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="resource/res/js/newPortfolio.js"></script>
    <script>
		$(document).ready(function() {
			/* $(".optionSubTitle").each(function(index, item){
				alert($(item).text())
			}) */
		})
		function newPortfolioSubmit(){
			var strTech = "";
			var strImg = ""
				
			$(".tech").each(function(index, item){
				strTech += $(item).text() + ",";
			});
			$("#tech").val(strTech);
			
			$(".image").each(function(index, item){
				strImg += $(item).attr("src") + ",";
			});
			$("#img_url").val(strImg);
			$("#newPortfolioForm").submit();
		}
    </script>
</head>
<body>
    <div class="header">
      <div class="title">Sharefolio</div>
    </div>

<form id="newPortfolioForm" method="POST" action="/updatePortfolio.do">
<input type="text" name="portfolio_id" value="${portfolio.portfolio_id}" readonly style="display: none;" />
    <h2 class="newTitle">포트폴리오 수정하기</h2>
    <div class="inputWrapper">
      <div class="inputTitle">*제목</div>
      <div class="inputContent">
        <input
          type="text"
          name="title"
          aria-required="true"
          aria-invalid="false"
          value="${portfolio.title}"
        />
      </div>
    </div>
    <div class="inputWrapper">
      <div class="inputTitle">요약</div>
      <div class="inputContent">
        <textarea rows="3" name="content"><c:out value="${portfolio.content}" /></textarea>
      </div>
    </div>

    <ul class="options">
      <li class="option">
        <div class="optionSubject">
          <i class="fas fa-keyboard"></i>
          Tech Stack
        </div>
        <div class="optionContent">
          <div class="optionSubTitle">
            어떤 Tech Stack을 사용하셨나요?
          </div>
          <div class="techWrapper">
          	<c:forEach var="item" items="${fn:split(portfolio.tech, ',') }" >
      			<span class="tech"><c:out value="${item}" /></span>
      		</c:forEach>
          </div>
          <input type="text" name="tech" id="tech" readonly style="display: none;" />
          <div class="optionInputWrapper">
            <input
              type="text"
              class="optionInput"
              id="techInput"
              placeholder="...Tech Stack"
            />
          </div>
        </div>
      </li>
      <li class="option">
        <div class="optionSubject">
          <i class="far fa-images"></i>
          관련 이미지
        </div>
        <div class="optionContent">
          <div class="optionSubTitle">
            프로젝트를 설명하는 이미지가 있나요?
          </div>
          <div class="imageWrapper">
          	<c:forEach var="item" items="${fn:split(portfolio.img_url, ',') }" >
      			<image src="${item}" alt="project image" class="image" />
      		</c:forEach>
          </div>
          <input type="text" name="img_url" id="img_url" readonly style="display: none;" />
          <div class="optionInputWrapper">
            <input
              type="text"
              class="optionInput"
              id="imageInput"
              placeholder="...Image URL"
            />
          </div>
        </div>
      </li>
      <li class="option">
        <div class="optionSubject">
          <i class="fab fa-github"></i>
          GitHub
        </div>
        <div class="optionContent">
          <div class="optionSubTitle">
            GitHub 링크를 추가하시겠습니까?
          </div>
          <div class="optionInputWrapper">
            <input
              type="text"
              name="github_url"
              class="optionInput"
              id="githubInput"
              placeholder="...GitHub URL"
              value="${portfolio.github_url}"
            />
          </div>
        </div>
      </li>
    </ul>
</form>
    <button class="btnCreate" onclick="newPortfolioSubmit()">포트폴리오 수정</button>
  </body>
</html>