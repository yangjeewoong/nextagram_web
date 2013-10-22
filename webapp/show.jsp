<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
제목 : ${board.title}<br/>
내용 : ${board.contents}<br/>
<c:if test="${not empty board.imagename}"> 이미지 <br/> <img src="../images/${board.imagename}"> </c:if>
<c:if test="${empty board.imagename}"> 이미지 없음 <br/> </c:if>

<c:forEach items="${comments}" var="comment">
	${comment.id} | ${comment.contents}<br/>
<hr/>
</c:forEach>

<form action="/board/${board.id}/comments" method="post">
	<textarea name="contents" rows="5" cols="50"></textarea><br />
	<input type="submit" value="댓글 등록"/>
</form>

</body>
</html>