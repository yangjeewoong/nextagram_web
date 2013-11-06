<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/stylesheets/layout.css">
<link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap.min.css">
<script src="http://www.google.com/jsapi"></script>
<script language="javascript" src="/javascripts/main_font.js"></script>
<script language="javascript" src="/javascripts/show.js"></script>
<title>Insert title here</title>
</head>
<body>
제목 : ${board.title}<br/>
내용 : ${board.contents}<br/>
<br/>
<c:if test="${not empty board.imagename}"> 이미지 <br/> <img src="../images/${board.imagename}"> </c:if>
<c:if test="${empty board.imagename}"> 이미지 없음 <br/> </c:if>
<br/>

<a href="#" class="reply_opener" style="float: right;">댓글 목록 접기</a>

<div class="reply_list">
	<div class="commentNum"></div>
	<div class="commentList">
		<c:forEach items="${comments}" var="comment">
			<hr>
			<p>${comment.contents}</p>
		</c:forEach>
	</div>

<hr>
<form action="/board/${board.id}/comments" method="post">
	<input type="hidden" name="id" value="${board.id}">
	<textarea name="contents" rows="3" cols="50"></textarea><br />
	<input type="submit" value="댓글 등록"/>
</form>

</div>

</body>
</html>