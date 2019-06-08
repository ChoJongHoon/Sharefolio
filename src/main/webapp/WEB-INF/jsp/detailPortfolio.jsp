<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resource/res/css/detailPortfolio.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
      crossorigin="anonymous"
    />
</head>
<body>
    <div class="header">
      <div class="title">Sharefolio</div>
    </div>
    <div class="postHeader">
      <div class="postHeaderHost"><c:out value="${portfolio.user_name }" /></div>
      <b>&nbsp;/&nbsp;</b>
      <div class="postHeaderTitle">
        <c:out value="${portfolio.title}" />
      </div>
      <div class="postHeaderButtons">
        <button class="btnUpdate" onclick="location.href='/updatePortfolio?no=${portfolio.portfolio_id}'">수정</button>
        <button class="btnDelete">삭제</button>
      </div>
      <br />
      <div class="postGitHub">
        <i class="fab fa-github"></i>
        <c:out value="${portfolio.github_url}" />
      </div>
    </div>
    <div class="techStackWrapper">
      <b>이 프로젝트의 Tech Stack</b>
      <br />
      <c:forEach var="item" items="${fn:split(portfolio.tech, ',') }" >
      	<span class="tech"><c:out value="${item}" /></span>
      </c:forEach>
    </div>
    <div class="postCard">
      <div class="postCardTitle">
        <c:out value="${portfolio.title}" />
      </div>
      <div class="postCardContent">
        <c:out value="${portfolio.content}" />
      </div>
      <div class="postCardDate">
        2019년 6월 2일
      </div>
      <ul class="postCardImages">
      	<c:forEach var="item" items="${fn:split(portfolio.img_url, ',') }">
      		<li>
      			<img
      				src="${item}"
      				alt="project image"
      				class="postCardImage"
      			/>
      		</li>
      	</c:forEach>
      </ul>
    </div>
  </body>
</html>