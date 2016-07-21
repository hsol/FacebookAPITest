/**
 * 페이스북 로그인
 * @see https://developers.facebook.com/docs/facebook-login/web/
 */
window.fbAsyncInit = function() {
	FB.init({
		appId : '614276418738617',
		cookie : true,
		xfbml : true,
		version : 'v2.7'
	});

	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});

};

/**
 * user status 체크
 * @param response
 * 	로그인 status 결과값
 */
function statusChangeCallback(response) {

	if (response.status === 'connected') {
		/* 로그인 성공 */
		getUserInfo();
		getUserTimeline();
	} else if (response.status === 'not_authorized') {
		/* 로그인 권한 없음 */
	} else {
		/* 그 외의 상태 */
	}
}

/**
 * 로그인 상태 검사
 */
function checkLoginState() {
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
}

/**
 * SDK 로드
 */
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id))
		return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
