<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
	
	<style type="text/css">
	
	#wrapper {
	  	max-width: 1000px;
	  	margin: 0 auto;
	  	font-family: 'Noto Serif KR', serif;;
	  }
	
	</style>
</head> 	
	 	
<div id = "wrapper">
	<ul> 
		<li>
		 	<a href="/board/listPageSearch?num=1">글 목록(페이징 + 검색)</a> 
		</li>
		
		<!-- 
		<li>
		 	<a href="/board/listPage?num=1">글 목록(페이징)</a> 
		</li>
		 -->
		 
		<li>
		  	<a href="/board/list">글 목록</a> 
		</li>
		 
		<li>
		  	<a href="/board/write">글 작성</a> 
		</li>
		
		<li>
			<c:if test="${member != null}"><a href="/member/logout">로그아웃</a></c:if>
			<c:if test="${member == null}"><a href="/">로그인</a></c:if>
		</li>
			<li>
			<c:if test="${member != null}"><a href="/member/memberDeleteView">회원 탈퇴</a></c:if>
			<c:if test="${member == null}"><a href="/member/register">회원가입</a></c:if>
		</li>
		<li>
			<c:if test="${member != null}">
				<p>${member.userId}님 안녕하세요.</p>
			</c:if>
		</li>
		
	</ul>
</div>
</html>