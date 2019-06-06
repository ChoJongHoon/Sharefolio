<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sharefolio</title>
<link type="text/css" rel="stylesheet" href="resource/res/css/portfolio.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	if(!window.sessionStorage.getItem("id")){
		window.location.assign("/login");
	}
</script>

</head>
<body>
    <div class="header">
      <div class="title">Sharefolio</div>
      <button class="btnNewPost">+ 새 글 작성</button>
      <div class="tabs">
        <div class="tab tabSelect">내 포트폴리오</div>
        <div class="tab">공유 게시판</div>
      </div>
    </div>
    <h2 class="boardTitle">내 포트폴리오</h2>

    <div class="cardPortfolio">
      <div
        class="ptfCoverImg"
        style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png')"
      ></div>
      <div class="ptfContent">
        <div class="ptfTitle">리액트 메신저</div>
        리액트 메신저는 리액트를 기반으로 제작된 메신저 웹 애플리케이션 입니다.
        node.js, graphql-yoga 를 통해 서버를 구동하며 데이터베이스는 몽고디비를
        사용합니다. Button, TextField 등 UI 는 material-ui를 사용하였습니다.
      </div>
      <ul class="ptfStack">
        <li class="ptfTech">
          <span class="techCircle" style="color: rgb(108,184,66);">●</span>
          React
        </li>
        <li class="ptfTech">
          <span class="techCircle" style="color: rgb(108,184,66);">●</span>
          node.js
        </li>
        <li class="ptfTech">
          <span class="techCircle" style="color: rgb(108,184,66);">●</span>
          GraphQL
        </li>
        <li class="ptfTech">
          <span class="techCircle" style="color: rgb(108,184,66);">●</span>
          MongoDB
        </li>
      </ul>
      <div class="ptfFooter">
        자세히
      </div>
    </div>
</body>
</html>