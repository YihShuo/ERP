document.oncontextmenu=function(e){return false;}
//Delphi Call Addimg
function PFCObj_AddImg(FName)
{
    var PFCObj=new PFCimg('img',false);
    PFCObj.num=Create_PFCObj('img',false);
    PFCObj.left=event.clientX+document.body.scrollLeft  ;
    PFCObj.top=event.clientY+document.body.scrollTop  ;
    if(FName!=''){
        PFCObj.src='images/'+FName;
    }
    PFCObj.CreateImg();
    ERP_PFCObj.push(PFCObj);
}
function PFCObj_AddTxt()
{

    var PFCObj=new PFCtxt('txt',false);
    PFCObj.num=Create_PFCObj('txt',false);
    PFCObj.left=event.clientX+document.body.scrollLeft  ;
    PFCObj.top=event.clientY+document.body.scrollTop  ;
    if(ERP_Clipboard_Text!=''){
        PFCObj.text=ERP_Clipboard_Text;
    }
    PFCObj.CreateTxt();
    ERP_PFCObj.push(PFCObj);
}
//
$(function () {
    //table contextMenu
    var bodymenu = [{
        name: 'img',
        id:'PFCimg_mnC'+this.num,
        img: 'images/img.png',
        title: 'img button',
        PFC: null,
        fun: function (para,event,PFC) {
            //
            external.ShowERP("<AddImg>,Clipboard");
        }
    }, {
        name: 'txt',
        id:'PFCimg_mnU'+this.num,
        img: 'images/txt.png',
        title: 'txt button',
        PFC: null,
        fun: function (para,event,PFC) {
            //
            external.ShowERP("<AddTxt>,Clipboard");
        }
    }, {
        name: 'arr',
        id:'PFCimg_mnD'+this.num,
        img: 'images/arr.png',
        title: 'arr button',
        PFC: null,
        fun: function (para,event,PFC) {
            //
            var PFCObj=new PFClie('lie',false);
            PFCObj.num=Create_PFCObj('lie',false);
            PFCObj.left=event.clientX+document.body.scrollLeft  ;
            PFCObj.top=event.clientY+document.body.scrollTop  ;
            PFCObj.right=event.clientX+document.body.scrollLeft+100  ;
            PFCObj.bottom=event.clientY+document.body.scrollTop  ;
            PFCObj.CreateLie();
            ERP_PFCObj.push(PFCObj);
        }
    }];
    //Calling context menu
    $('table').contextMenu('menu',bodymenu ,{
        displayAround:'cursor',
        triggerOn:'click',
        mouseClick:'right'
    });

    //var h = [];
    //加上點選進入編輯模式的事件
    $("td").dblclick(function(){

      if(ERP_Cell_IsEdit=='Y') {
          //若已有其他欄位在編輯中，強制結束
          if (window.$currEditing)
              finishEditing($currEditing);
          var $cell = $(this);
          var fontsize = $(this).css('font-size');
          //var $inp = $("<input type='text' style='width: 100%;font-size:"+fontsize+"'/>");
          var $inp = $("<textarea   style='width:100%;height:100%;font-size:" + fontsize + "' ></textarea>");
          $inp.val($cell.text());
          $cell.addClass("editor").html("").append($inp);
          $inp[0].select();
          window.$currEditing = $inp;
      }
    }).click(function () {
        if(ERP_Cell_IsEdit=='Y') {
            //點選其他格子，強制結束目前的編輯欄
            if (window.$currEditing
                //排除點選目前編輯欄位的情況
                && $currEditing.parent()[0] != this)
                finishEditing($currEditing);
        }
    });
    //加上按Enter/Tab切回原來Text的事件
    $("td.editor input").keydown( function (e) {
        if(ERP_Cell_IsEdit=='Y') {
            if (e.which == 13 || e.which == 9)
                finishEditing($(this));
        }
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