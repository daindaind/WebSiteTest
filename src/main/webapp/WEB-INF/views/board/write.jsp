<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>

<div id="nav">
 	<%@ include file="../include/nav.jsp" %>
</div>

<form method="post">

<label>제목</label>
<input type="text" name="title" /><br />

<label>작성자</label>
<input type="text" name="writer" /><br />

<label>내용</label>
<textarea cols="50" rows="5" name="content"></textarea><br />

<button type="submit">작성</button>

</form>

</body>
</html>