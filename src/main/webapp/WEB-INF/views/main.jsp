<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Facebook API Test</title>

<!-- JS & CSS 파일 import -->
<!-- jQuery '라이브러리' -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="http:////connect.facebook.net/en_US/sdk.js"></script>

<!-- 페이스북 로그인 관련 스크립트 -->
<script type="text/javascript" src="/resources/js/facebook/login.js"></script>

<!-- 페이스북에서 유저 정보 및 타임라인을 가져오는 스크립트 -->
<script type="text/javascript" src="/resources/js/facebook/userinfo.js"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/facebook.css">


</head>
<body>
	
	<!-- Controller에서 보낸 오브젝트를 이렇게 받아서 쓴다. -->
	Hello, ${name}
	
	<!-- 로그인 버튼 / Facebook API에서 제공한다. -->
	<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
	
	<!-- 로그인 결과값이 출력된다. -->
	<div id="status"></div>
	<div>
		<input type="button" id="status_btn" value="status_button"></input>
	</div>
	
	<!-- 가져온 타임라인의 결과를 뿌려줄 곳 -->
	<div id="timeline"></div>
	<div>
		<input type="button" id="timeline_btn" value="timeline_button"></input>
	</div>
		
</body>
<script>
$(function() {
	facebookManager.init();	
})
</script>
</html>
