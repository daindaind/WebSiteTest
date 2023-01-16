<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	
	 	
<head>
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
 	
	<style type="text/css">
	body {
		background-color: #CBC0D3;
	}
	
	  /* 입력폼 버튼 및 텍스트 크기 */
	  button {
	       width: 180px !important; /* 버튼 가로 크기 */
	       height: 64px !important; /* 버튼 세로 크기 */
	       font-size: 20px !important; /* 버튼 텍스트 크기 */
	       line-height: 1.8 !important; /* 세로 정렬 */
	       text-align: center;
	       margin: 0 auto;
	  }
	  
	  input {
	  	max-width: 1000px;
	    width:150px;
	    text-align: center;
        margin: 0 auto;
	  }
	  
	  a {
	  	max-width: 1000px;
	  	font-size: 20px !important;
	  	text-align: center;
	  	margin: 0 auto;
	  }
	  
	  #wrapper {
	  	max-width: 1000px;
	  	margin: 0 auto;
	  	font-family: 'Noto Serif KR', serif;;
	  }
	  
	  #outer {
	    width: 300px;
	    height: 100px;
	
	    text-align: center;
	}
	  

	</style>
	<title>Home</title>
</head>


<body>

<div id="wrapper">
	<a href="/board/list">차다인의 게시판</a><br />
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#logoutBtn").on("click", function(){
				location.href="member/logout";
			})
			
		})
	</script>

<!--  
<body>
<h1>
	환영합니다! 
</h1>

<P> 현재 서버 시간은  ${serverTime} 입니다.</P>


<p>
<a href="/board/list">게시물 목록</a><br />
<a href="/board/write">게시물 작성</a>
</p>
-->

<form name='homeForm' method="post" action="/member/login">

		<c:if test="${member == null}">
			<div>
				<label for="userId"></label>
				<input type="text" id="userId" name="userId">
			</div>
			<div>
				<label for="userPass"></label>
				<input type="password" id="userPass" name="userPass">
			</div>
			<div>
				<button type="submit">로그인</button>
				<button type="button">회원가입</button>
			</div>

		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>

</form>
</div>
</body>
</html>
