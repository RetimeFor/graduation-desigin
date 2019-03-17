<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/static/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>游客交流区</title>
    <link rel="stylesheet" type="text/css" href="font_Icon/iconfont.css">
    <link rel="stylesheet" type="text/css" href="css/chats/chat.css">
    <style type="text/css">
        div{
            width:100%;
        }
    </style>
</head>
<body background="img/chats/background.jpg">

<div class="chatContainer">
    <div class="chatBtn">
        <i class="iconfont icon-xiaoxi1"></i>
    </div>
    <div class="chatBox">
        <div class="chatBox-head">
            <div class="chatBox-head-one">
            <div class="chat-back" style="float:left;font-size:14px;margin-top: 10px;margin-left:10px">返回</div>
                游客评论区
                <div class="chat-close" style="margin: 10px 10px 0 0;font-size: 14px">关闭</div>
            </div>
           
        </div>
        <div class="chatBox-info">
            <div class="chatBox-kuang">
                <div class="chatBox-content">
                    <div class="chatBox-content-demo" id="chatBox-content-demo">

                        

                    </div>
                </div>
                <div class="chatBox-send">
                    <div class="div-textarea" contenteditable="true"></div>
                    <div style="float:right">
                        <button id="chat-biaoqing" class="btn-default-styles">
                            <i class="iconfont icon-biaoqing"></i>
                        </button>
                        <label id="chat-tuxiang" title="发送图片" for="inputImage" class="btn-default-styles">
                            <input type="file" onchange="selectImg(this)" accept="image/jpg,image/jpeg,image/png"
                                   name="file" id="inputImage" class="hidden">
                            <i class="iconfont icon-tuxiang"></i>
                        </label>
                        <button id="chat-fasong" class="btn-default-styles"><i class="iconfont icon-fasong"></i>
                        </button>
                    </div>
                    <div class="biaoqing-photo">
                        <ul>
                            <li><span class="emoji-picker-image" style="background-position: -9px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -40px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -71px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -102px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -133px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -164px -18px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -9px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -40px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -71px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -102px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -133px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -164px -52px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -9px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -40px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -71px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -102px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -133px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -164px -86px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -9px -120px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -40px -120px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -71px -120px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -102px -120px;"></span>
                            </li>
                            <li><span class="emoji-picker-image" style="background-position: -133px -120px;"></span>
                            </li>
                            <li><span class="emoji-picker-image" style="background-position: -164px -120px;"></span>
                            </li>
                            <li><span class="emoji-picker-image" style="background-position: -9px -154px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -40px -154px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -71px -154px;"></span></li>
                            <li><span class="emoji-picker-image" style="background-position: -102px -154px;"></span>
                            </li>
                            <li><span class="emoji-picker-image" style="background-position: -133px -154px;"></span>
                            </li>
                            <li><span class="emoji-picker-image" style="background-position: -164px -154px;"></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/tourist-chat.js"></script>
</body>
</html>
