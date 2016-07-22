<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Facebook API Test</title>

<!-- JS & CSS 파일 import -->
<!-- jQuery '라이브러리' -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript"
	src="http:////connect.facebook.net/en_US/sdk.js"></script>

<!-- 페이스북 로그인 관련 스크립트 -->
<script type="text/javascript" src="/resources/js/facebook/login.js"></script>

<!-- 페이스북에서 유저 정보 및 타임라인을 가져오는 스크립트 -->
<script type="text/javascript" src="/resources/js/facebook/userinfo.js"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/facebook.css">
<!-- bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- Controller에서 보낸 오브젝트를 이렇게 받아서 쓴다. -->
	Hello, ${name}

	<!-- 로그인 버튼 / Facebook API에서 제공한다. -->
	<fb:login-button scope="public_profile,email"
		onlogin="checkLoginState();"></fb:login-button>

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

	<div>
		<!-- Standard button -->
		<button type="button" class="btn btn-default">디폴트</button>
	</div>

</body>
<script>
	$(function() {
		facebookManager.init();
	})
</script>
</html>
