/**
 * 유저 정보를 가져온다.
 */
function getUserInfo() {
	FB.api('/me', function(response) {
		$('#status').append('Thanks for logging in, ' + response.name + '!');
	});
}

/**
 * 유저의 타임라인 정보를 가져온다.
 */
function getUserTimeline() {
	FB.api('/me/feed', 'GET', { /* feed 호출 */
        fields: "picture, story", /* 가져올 정보 */
        limit: 15 /* 개수 제한 */
    }, function(response) {
    	var rawData = response.data;
    	if(!rawData) {
    		console.log('empty data');
    	}
    	
    	rawData.forEach(function(data) {
    		/* 체이닝으로 DOM을 생성한다. */
    		$('<div></div>').append('<img src="' + data.picture +'">')
    		.append('<br/>').append('Story : ' + data.story).appendTo('.timeline');
    	})
	});
}