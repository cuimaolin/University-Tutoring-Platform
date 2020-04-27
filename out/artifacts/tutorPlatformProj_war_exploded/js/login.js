layui.config({
    base : "js/"
}).use(['form','layer'],function(){
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        $ = layui.jquery;
    //video鑳屾櫙
    $(window).resize(function(){
        if($(".video-player").width() > $(window).width()){
            $(".video-player").css({"height":$(window).height(),"width":"auto","left":-($(".video-player").width()-$(window).width())/2});
        }else{
            $(".video-player").css({"width":$(window).width(),"height":"auto","left":-($(".video-player").width()-$(window).width())/2});
        }
    }).resize();

    //鐧诲綍鎸夐挳浜嬩欢
    form.on("submit(login)",function(data){
        window.location.href = "../../login.jsp";
        return false;
    })
})