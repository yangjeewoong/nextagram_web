<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="stylesheets/index_page.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/layout.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">
	<script src="http://www.google.com/jsapi"></script>
	<script language="javascript" src="javascripts/main_font.js"></script>
	<title>Nextagram_web</title>
</head>

<body>
	<div id="nav"> <!-- Nav Start -->
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="tabbed.html">Tabbed</a>
                <ul>
                    <li><a href="tab-colour.html">Colourful</a></li>
                    <li><a href="tab-elegant.html">Elegant</a></li>
                    <li><a href="tab-complex.html">Complex</a></li>
                </ul>
            </li>
            <li><a href="regular.html">Regular</a>
                <ul>
                    <li><a href="reg-colour.html">Colourful</a></li>
                    <li><a href="reg-elegant.html">Elegant</a></li>
                    <li><a href="reg-complex.html">Complex</a></li>
                </ul>
            </li>
            <li><a href="wild.html">Wild</a></li>
        </ul>
    </div>
	<div id="wrap">
		<h1> NEXTAGRAM </h1>
		<br/>
		<hr class="borderline">
		<br/>
		<div id="button_list">
			<a href="/login" class="btn btn-inverse" type="button">로그인</a><br/><br/>	
			<a href="/board/form" class="btn" type="button">사진 업로드</a><br/><br/>
			<a href="/board" class="btn btn-inverse" type="button">사진 목록 보기</a><br/><br/>
		</div>
	</div>
</body>
</html>