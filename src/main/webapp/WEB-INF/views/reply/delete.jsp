<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 삭제</title>
</head>
<body>


<div>

    <form method="post" action="/reply/delete">
    
	    <p>
	        <label>댓글을 삭제하시겠습니까?</label>
	        <button type="submit">댓글 삭제</button>
	        <button type="submit">취소</button>
	    </p>
	</form>
    
</div>
<!-- 댓글 끝 -->

</body>
</html>