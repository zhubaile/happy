/**
 * Created by lenovo on 2017/11/22.
 */
/**
 * Created by lenovo on 2017/11/22.
 */
var $touch=$("#touch");
$touch.on("click",function(){
    $(".hide").toggle();
});

var $name = $("#name")
    , $call = $("#call")
    , $postbox = $("#postbox")
    ,$sub=$("#sub")
    ;
//事件绑定 当用户名输入框改变时触发
$name.on("change", function(){
    $name.closest(".box-tr").removeClass("error")
});
$call.on("change", function(){
    $call.closest(".box-tr").removeClass("error")
});
$postbox.on("change", function(){
    $postbox.closest(".box-tr").removeClass("error")
});
$sub.on("click",function(){
    //其实你在这个下面 做验证就行，你主要操作这个地方
    if(!$name.val()){
        //这里控制用户名显示错误信息，显示用户名不能为空。
        $name.closest('.box-tr').addClass("error").find(".sky").text("您的姓名不能为空！")
        // return 意思为返回，及如果用户名为空，则后面的发送ajax提交则不执行
        return
    }
    if(!$call.val()){
        $call.closest('.box-tr').addClass("error").find(".sky").text("您的电话不能为空！")
        return
    }
    if(!$postbox.val()){
        $postbox.closest('.box-tr').addClass("error").find(".sky").text("您的邮箱不能为空！")
        return
    }
    alert("提交成功,请耐心等待");
    window.location.reload();
});