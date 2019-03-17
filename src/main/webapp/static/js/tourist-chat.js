var arr;
var MyCookie = document.cookie,//数据格式是  username = xxxxxxx;password = xxxxxxxx;
	cookies = MyCookie.split(";"),
	userinfos = cookies[0],
	userinfo = userinfos.split("=");
if(userinfo != null && userinfo != "" && userinfo[0] == "username"){
		var username = userinfo[1];//获取到用户名
}else if(userinfo != null && userinfo != "" && userinfo[0] != "username"){
	userinfos = cookies[1];
	userinfo = userinfos.split("=");
	var username = userinfo[1];
}
$.ajax({
	async:false,
	cache:false,
	url: "../findChats",//访问后台接口取数据
	dataType : "json",
	type: 'get',
	success: function(data){
		arr = data;
		function loadChats(){
	    	var str = "";
			arr.forEach(function (ele, index) {
				
				str += '<div class="clearfloat"><div class="'+ele.username+'" style="display:none;"></div><div class="author-name">\
					<small class="chat-date">'+ele.date+'</small></div>';
					if(ele.username != username){
						str += '<div class="left">';
						if(fileExists()){
							str += '<div class="chat-avatars"><img src="img/chats/icon01.png" alt="头像"/></div>\
								<div class="chat-message"><img src="'+ele.content+'"</div></div></div>'
						}else{
							str += '<div class="chat-avatars"><img src="img/chats/icon01.png" alt="头像"/></div>\
								<div class="chat-message">'+ele.content+'</div></div></div>';
						}
					}else{
						str += '<div class="right">';
						if(fileExists()){
							str += '<div class="chat-message"><img src="'+ele.content+'"></div>\
									<div class="chat-avatars"><img src="img/chats/icon01.png" alt="头像"/></div></div></div>';
						}else{
							str += '<div class="chat-message">'+ele.content+'</div>\
							<div class="chat-avatars"><img src="img/chats/icon01.png" alt="头像"/></div></div></div>';
						}
					}
					function fileExists(){
						var isExists;
						$.ajax({//判断路径下的图片是否存在，如果存在返回图片，否则返回文字
							url:ele.content,
							async:false,
							error:function(){
								isExists=0;
							},
							success:function(){
								isExists=1;
							}
						});
						if(isExists==1){
							return true;
						}else{
							return false;
						}
					}
			});
			$('#chatBox-content-demo').append(str);
	    }
		loadChats();
	}
	});
screenFuc();
    function screenFuc() {
        var topHeight = $(".chatBox-head").innerHeight();//聊天头部高度
        //屏幕小于768px时候,布局change
        var winWidth = $(window).innerWidth();
        if (winWidth >= 1920) {
            var totalHeight = $(window).height(); //页面整体高度
            $(".chatBox-info").css("height", totalHeight - topHeight);
            var infoHeight = $(".chatBox-info").innerHeight();//聊天头部以下高度
            //中间内容高度
            $(".chatBox-content").css("height", infoHeight - 46);
            $(".chatBox-content-demo").css("height", infoHeight - 46);

            $(".chatBox-list").css("height", totalHeight - topHeight);
            $(".chatBox-kuang").css("height", totalHeight - topHeight);
            $(".div-textarea").css("width", winWidth - 106);
        } else {
            $(".chatBox-content").css("height", 548);
            $(".chatBox-content-demo").css("height", 548);
            $(".chatBox-list").css("height", 595);
            $(".chatBox-kuang").css("height", 548);
            $(".div-textarea").css("width", 260);
        }
    }
    (window.onresize = function () {
        screenFuc();
    })();
    //未读信息数量为空时
    var totalNum = $(".chat-message-num").html();
    if (totalNum == "") {
        $(".chat-message-num").css("padding", 0);
    }
    $(".message-num").each(function () {
        var wdNum = $(this).html();
        if (wdNum == "") {
            $(this).css("padding", 0);
        }
    });


    //打开/关闭聊天框
    $(".chatBtn").click(function () {
        $(".chatBox").toggle(10);
    })
    $(".chat-close").click(function () {
        $(".chatBox").toggle(10);
    })
    //进聊天页面
    $(".chatBox-kuang").fadeToggle();
    $(document).ready(function () {
        $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
    });
    //返回列表
    $(".chat-return").click(function () {
        $(".chatBox-list").fadeToggle(1);
        $(".chatBox-kuang").fadeToggle(1);
    });

    //      发送信息
    $("#chat-fasong").click(function () {
        var mydate = new Date();
        var date=mydate.toLocaleString();
        var textContent = $(".div-textarea").html().replace(/[\n\r]/g, '<br>')
        if (textContent != "") {
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">"+date+"</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"> " + textContent + " </div> " +
                "<div class=\"chat-avatars\"><img src=\"img/chats/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //发送后清空输入框
            $(".div-textarea").html("");
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
            ajaxChat();
        }
        function ajaxChat(){
            $.ajax({
                type: 'post',
                url: '../addChats',
                data: {username: username, date:date, content: textContent},
                success: function(){
                    
                }
            });
        };
    });

    //      发送表情
    $("#chat-biaoqing").click(function () {
        $(".biaoqing-photo").toggle();
    });
    $(document).click(function () {
        $(".biaoqing-photo").css("display", "none");
    });
    $("#chat-biaoqing").click(function (event) {
        event.stopPropagation();//阻止事件
    });

    $(".emoji-picker-image").each(function () {
        $(this).click(function () {
            var bq = $(this).parent().html();
            console.log(bq);
            var mydate = new Date();
            var date=mydate.toLocaleString();
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">"+date+"</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"> " + bq + " </div> " +
                "<div class=\"chat-avatars\"><img src=\"img/chats/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //发送后关闭表情框
            $(".biaoqing-photo").toggle();
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
            function ajaxChat(){
                $.ajax({
                    type: 'post',
                    url: '../addChats',
                    data: {username: username, date:date, content: bq},
                    success: function(){
                        
                    }
                });
            };
           ajaxChat();
        })
    });

    //      发送图片
    function selectImg(pic) {
    	var mydate = new Date();
        var date=mydate.toLocaleString();
        if (!pic.files || !pic.files[0]) {
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var images = evt.target.result;
            $(".chatBox-content-demo").append("<div class=\"clearfloat\">" +
                "<div class=\"author-name\"><small class=\"chat-date\">"+date+"</small> </div> " +
                "<div class=\"right\"> <div class=\"chat-message\"><img src=" + images + "></div> " +
                "<div class=\"chat-avatars\"><img src=\"img/chats/icon01.png\" alt=\"头像\" /></div> </div> </div>");
            //聊天框默认最底部
            $(document).ready(function () {
                $("#chatBox-content-demo").scrollTop($("#chatBox-content-demo")[0].scrollHeight);
            });
            function ajaxChat(){
                $.ajax({
                    type: 'post',
                    url: '../addChats',
                    data: {username: username, date:date, content: images},
                    success: function(){
                        
                    },
                    error:function(){
                    	alert("您放入的图片过大或格式不正确");
                    }
                });
            };
           ajaxChat();
        };
        reader.readAsDataURL(pic.files[0]);

    }
    $('.chat-back').click(function(){
    	window.history.back(-1);
    })