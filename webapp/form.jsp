<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../stylesheets/layout.css">
	<link rel="stylesheet" type="text/css" href="../stylesheets/bootstrap.min.css">
	<script src="http://www.google.com/jsapi"></script>
	<script language="javascript" src="../javascripts/main_font.js"></script>
	<title>Nextagram_web</title>
	<style>
		/* System Name, CSS Version_Creater_Date */
		/* Common */
		body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textare a,button,select{margin:0;padding:0} body,input,textarea,select,button,table{font-family:'�뗭�',Dotum,AppleGothic,sans- serif;font-size:1em} img,fieldset{border:0}
		ul,ol{list-style:none}
		em,address{font-style:normal} a{text-decoration:none} a:hover,a:active,a:focus{text-decoration:underline}
		
		#formArea textarea {
          width : 200px;
		}
	</style>
</head>

<body>
	<div id="wrap">
		<header>
			<h2> 글 쓰기 </h2>
		</header>
			<form action="/board" method="post" enctype="multipart/form-data">
				<input type="text" name="title" placeholder="제목을 입력해주세요" size=10> <br />
				<textarea name="contents" placeholder="내용을 입력해주세요" rows="10" cols="25"></textarea><br />
				<input type="file" name="file" size="50" /><br />
				<input class="btn" type="submit" value="보내기"/>
			</form>
	</div>
</body>
</html>