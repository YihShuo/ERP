document.oncontextmenu=function(e){return false;}
$(function () {
    //var h = [];
    //加上點選進入編輯模式的事件 $("td").dblclick(function(){
    $("td").dblclick(function(){
    //$("td").on("dblclick", function () {
        //若已有其他欄位在編輯中，強制結束
        if (window.$currEditing)
            finishEditing($currEditing);
        var $cell = $(this);
        var fontsize=$(this).css('font-size');
        //var $inp = $("<input type='text' style='width: 100%;font-size:"+fontsize+"'/>");
        var $inp = $("<textarea   style='width:100%;height:100%;font-size:"+fontsize+"' ></textarea>");
        $inp.val($cell.text());
        $cell.addClass("editor").html("").append($inp);
        $inp[0].select();
        window.$currEditing = $inp;
    }).click(function () {
    //}).live("click", function () {
        //點選其他格子，強制結束目前的編輯欄
        if (window.$currEditing
            //排除點選目前編輯欄位的情況
            && $currEditing.parent()[0] != this)
            finishEditing($currEditing);
    });
    //加上按Enter/Tab切回原來Text的事件
    $("td.editor input").keydown( function (e) {
    //$("td.editor input").live("keydown", function (e) {

        if (e.which == 13 || e.which == 9)
            finishEditing($(this));
    });
    //結束編輯模式
    function finishEditing($inp) {

        var reStr='';
        for(var i=0;i<$inp.val().length;i++){
            var Str=$inp.val()[i];
            if(Str.charCodeAt(0).toString(10)==10)
            {
                reStr=reStr+Str+'<br>';
            }else{
                reStr=reStr+Str;
            }
        }
        //PFCObj_WriteToFile($inp.val());
        $inp.parent().removeClass("editor").html(reStr);
        //$inp.parent().removeClass("editor").text($inp.val());
        window.$currEditing = null;
    }
});