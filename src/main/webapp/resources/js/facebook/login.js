
/**
 * user status 체크
 * @param response
 * 	로그인 status 결과값
 */
function statusChangeCallback(response) {

	if (response.status === 'connected') {
		/* 로그인 성공 */
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