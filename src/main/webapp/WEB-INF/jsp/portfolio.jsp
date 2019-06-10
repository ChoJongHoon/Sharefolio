<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta charset="UTF-8">
<title>Sharefolio</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link type="text/css" rel="stylesheet" href="resource/res/css/portfolio.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	/* if(!window.sessionStorage.getItem("id")){
		window.location.assign("/login");
	} */
</script>

</head>
<body>
    <div class="header">
      <div class="title">Sharefolio</div>
      <button class="btnNewPost" onclick="location.href='/newPortfolio'">+ 새 글 작성</button>
      <div class="tabs">
        <div class="tab tabSelect">내 포트폴리오</div>
        <div class="tab">내 스케</div>
        <div class="tab">공유 게시판</div>
      </div>
    </div>
    <h2 class="boardTitle">내 포트폴리오</h2>

    <c:forEach var="result" items="${portfolioList}" varStatus="status">
    	<div class="cardPortfolio" onclick="location.href='/detailPortfolio.do?no=${result.portfolio_id}'">
	      <div
	        class="ptfCoverImg"
	        style="background-image: url('<c:out value="${result.img_url}" />')"
	      ></div>
	      <div class="ptfContent">
	        <div class="ptfTitle"><c:out value="${result.title}" /></div>
	        <c:out value="${result.content}" />
	      </div>
	      <ul class="ptfStack">
	      	<c:forEach var="item" items="${fn:split(result.tech, ',')}">
	      		<li class="ptfTech">
	      			<span class="techCircle" style="color: rgb(108,184,66);">●</span>
	      			<c:out value="${item}" />
	      		</li>
	      	</c:forEach>
	      </ul>
	      <div class="ptfFooter">
	        자세히
	      </div>
	    </div>
    </c:forEach>
</body>
</html>