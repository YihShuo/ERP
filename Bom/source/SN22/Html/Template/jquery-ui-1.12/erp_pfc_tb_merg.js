var StartTD = null;
var StartIndex = null;
var EndTD = null;
var EndIndex = null;
var ERP_Cell_Ismerge='N';

$(this).ready(function () {
    $("td").unbind("mousedown").bind("mousedown", function () {
        $("table td").css("background-color", "");
        StartTD = $(this);
        var y = $(this).index();
        var x = $(this).parent().index();
        StartIndex = { x: x, y: y };
    });
    $("td").unbind("mouseup").bind("mouseup", function () {
        EndTD = $(this);
        var y = $(this).index();
        var x = $(this).parent().index();
        EndIndex = { x: x, y: y };
        SelectTD(StartIndex, EndIndex, "green");
    });
    /*
    $("#btMerge").click(function () {
        MergeCell(StartIndex, EndIndex);
        MergeCell(EndIndex,StartIndex);
    });
    */
});
function ClickMergeCell()
{
    if (ERP_Cell_Ismerge == 'Y') {
        MergeCell(StartIndex, EndIndex);
        //MergeCell(EndIndex,StartIndex);
    }
}
function SelectTD(StartIndex, EndIndex,Color) {
    if (ERP_Cell_Ismerge == 'Y') {
        var MinX = null;
        var MaxX = null;
        var MinY = null;
        var MaxY = null;
        if (StartIndex.x < EndIndex.x) {
            MinX = StartIndex.x;
            MaxX = EndIndex.x;

        } else {
            MinX = EndIndex.x;
            MaxX = StartIndex.x;
        }
        ;
        if (StartIndex.y < EndIndex.y) {
            MinY = StartIndex.y;
            MaxY = EndIndex.y;
        } else {
            MinY = EndIndex.y;
            MaxY = StartIndex.y;
        }
        ;
        StartIndex = {x: MinX, y: MinY};
        EndIndex = {x: MaxX, y: MaxY};

        for (var i = MinX; i <= MaxX; i++) {
            for (var j = MinY; j <= MaxY; j++) {
                var SelectTR = $("table tr").eq(i);
                $("td", SelectTR).eq(j).css("background-color", Color);
            }
        }
    }

}

function MergeCell(StartIndex, EndIndex) {
    var Colspan = null;
    var Rowspan = null;
    if ((StartIndex.x==EndIndex.x) && (Math.abs(StartIndex.y-EndIndex.y)==1) ) {
        //Rowspan = EndIndex.x - StartIndex.x + 1;
        //Colspan = EndIndex.y - StartIndex.y + 1;
        var IndexTR = $("table tr").eq(StartIndex.x);
        Rowspan = parseInt($("td", IndexTR).eq(StartIndex.y).attr("rowspan"),10);
        Colspan = parseInt($("td", IndexTR).eq(StartIndex.y).attr("colspan"),10)+1;

        if($.isNumeric(Rowspan)==false)
            Rowspan='1';
        if($.isNumeric(Colspan)==false)
            Colspan='2';
        $("td", IndexTR).eq(StartIndex.y).attr("colspan", Colspan).attr("rowspan", Rowspan);

        for (var i = StartIndex.x; i <= EndIndex.x; i++) {
            for (var j = StartIndex.y; j <= EndIndex.y; j++) {
                if (i == StartIndex.x && j == StartIndex.y) continue;
                var SelectTR = $("table tr").eq(i);
                //$("td", SelectTR).eq(j).hide();
                $("td", SelectTR).eq(j).remove();
            }
        }
    }
}
function ClickSplitCell(){

    if (ERP_Cell_Ismerge == 'Y') {
        var IndexTR = $("table tr").eq(StartIndex.x);
        Rowspan = $("td", IndexTR).eq(StartIndex.y).attr("rowspan");
        Colspan = $("td", IndexTR).eq(StartIndex.y).attr("colspan")-1;
        $("td", IndexTR).eq(StartIndex.y).attr("colspan", Colspan).attr("rowspan", Rowspan);
        //
        var row = document.getElementsByTagName("tr")[StartIndex.x];
        var td =row.cells[StartIndex.y];
        var tdnew = row.insertCell(StartIndex.y+1);
        tdnew.className=td.className;
        //ondbclick
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

            var reStr = '';
            for (var i = 0; i < $inp.val().length; i++) {
                var Str = $inp.val()[i];
                if (Str.charCodeAt(0).toString(10) == 10) {
                    reStr = reStr + Str + '<br>';
                } else {
                    reStr = reStr + Str;
                }
            }
            //PFCObj_WriteToFile($inp.val());
            $inp.parent().removeClass("editor").html(reStr);
            //$inp.parent().removeClass("editor").text($inp.val());
            window.$currEditing = null;
        }
    }
}