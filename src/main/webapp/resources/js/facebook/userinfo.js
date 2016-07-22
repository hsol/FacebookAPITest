/**
 * 이터럴로 변경한 스크립트
 * sdk를 스크립트 코드내에서 로드하지 않는다.
 * @author Kimtaeng
 */
var facebookManager = {
	elStatus : null,
	elTimeline : null,
	elStatusButton : null,
	elTimelineButton : null,

	init : function() {
		this.elStatus = $('#status');
		this.elTimeline = $('#timeline');
		this.elTimelineButton = $('#timeline_btn');
		this.elStatusButton = $('#status_btn');

		FB.init({
			appId : '614276418738617',
			cookie : true,
			xfbml : true,
			version : 'v2.7'
		});
		this.attachEvents();
	},

	/* 이벤트를 등록한다. */
	attachEvents : function() {
		this.elStatusButton.on('click', $.proxy(this.getUserInfo, this));
		this.elTimelineButton.on('click', $.proxy(this.getTimeline, this));
	},
	
	getUserInfo : function() {
		FB.api('/me', function(response) {
			this.facebookManager.elStatus
			.append('Thanks, ' + response.name+ '!');
		});
		/*
			this.elStatusButton.off();
			this.elStatusButton.hide();
		*/
	},
	
	getTimeline : function() {
		FB.api('/me/feed', 'GET', { /* feed 호출 */
			fields : "picture, story", /* 가져올 정보 */
			limit : 15 /* 개수 제한 */
		}, function(response) {
			var rawData = response.data;

			if (!rawData) {
				alert('로그인 버튼을 먼저 누르세요.');
				return;
			}

			rawData.forEach(function(data) {
				/* 체이닝으로 DOM을 생성한다. */
				$('<div></div>').append('<img src="' + data.picture + '">')
						.append('<br/>').append('Story : ' + data.story)
						.appendTo(this.facebookManager.elTimeline);
			})
		});
		/*
			this.elTimelineButton.off();
			this.elTimelineButton.hide();
		*/
	}
}