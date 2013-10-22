<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../stylesheets/layout.css">
	<link rel="stylesheet" type="text/css" href="../stylesheets/bootstrap.min.css">
	<script src="http://www.google.com/jsapi"></script>
	<script language="javascript" src="../javascripts/main_font.js"></script>
	<title>Nextagram_web</title>
</head>

<body>
	<center>
		<div class="line">
			<div class="grasp">
				<h2> 글 쓰기 </h2>
				<form action="/board" method="post" enctype="multipart/form-data">
					<input type="text" name="title" placeholder="제목을 입력해주세요" size=10> <br />
					<textarea name="contents" placeholder="내용을 입력해주세요" rows="10" cols="25"></textarea><br />
					<input type="file" name="file" size="50" /><br />
					<input class="btn" type="submit" value="보내기"/>
				</form>
			</div>
		</div>
	</center>
</body>
</html>