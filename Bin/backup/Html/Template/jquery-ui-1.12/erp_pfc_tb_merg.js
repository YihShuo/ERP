var StartTD = null;
var StartIndex = null;
var EndTD = null;
var EndIndex = null;
var CopyTD_StyleDisplay =new Array();
var CopyTD_Colspan =new Array();

$(this).ready(function () {
    $("td").unbind("mousedown").bind("mousedown", function () {
        $("table td").css("background-color", "");
        StartTD = $(this);
        var y = $(this).index();
        var x = $(this).parent().index();
		var tr_id=$("table tr").eq(x).attr('id');
		if(tr_id!=undefined){
		  if(tr_id.substr(0,3)=='erp'){
            StartIndex = { x: x, y: y };
		  }
		}
    });
    $("td").unbind("mouseup").bind("mouseup", function () {
        EndTD = $(this);
        var y = $(this).index();
        var x = $(this).parent().index();
        EndIndex = { x: x, y: y };
		var tr_id=$("table tr").eq(x).attr('id');
		if(tr_id!=undefined){
		  if(tr_id.substr(0,3)=='erp'){
            EndIndex = { x: x, y: y };
            SelectTD(StartIndex, EndIndex, "green");
		  }
		}
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
		if ((StartIndex!=null) && (EndIndex!=null)) {
          MergeCell(StartIndex, EndIndex);
		}
    }
}

function ClickCopyCell()
{
	if (ERP_Cell_Ismerge == 'Y') {
	  if ((StartIndex!=null) && (EndIndex!=null)) {	
	   CopyColspanCell(StartIndex, EndIndex);
	  }
	}
}
function ClickPastCell()
{
	if (ERP_Cell_Ismerge == 'Y') {
	  if ((StartIndex!=null) && (EndIndex!=null)) {	
	    PasteColspanCell(StartIndex, EndIndex);
	  }
	}
}

function PasteColspanCell(StartIndex, EndIndex)
{
    var Colspan = null;
    var Display = null;
	
    if ((StartIndex.x==EndIndex.x) && (EndIndex.y>=StartIndex.y) && (Math.abs(StartIndex.y-EndIndex.y)<=25) ) {
		var IndexTR = $("table tr").eq(StartIndex.x);
		var index=0;
		for (var j = StartIndex.y; j <=(StartIndex.y+CopyTD_Colspan.length); j++) {
			Colspan=CopyTD_Colspan[index];
			Display=CopyTD_StyleDisplay[index];


			if ($("td", IndexTR).eq(j)!=undefined){
				$("td", IndexTR).eq(j).attr({"colspan":Colspan});
				if (Display=="none"){
				  $("td", IndexTR).eq(j).css({"display":"none"});	
				}else{
				  $("td", IndexTR).eq(j).css({"display":""});	
				}
			}else{
				alert('undefined');
				break;
			}

			index=index+1;
            if (index>=CopyTD_Colspan.length){
				break;
			}				
		}			
	}	
	
}

function CopyColspanCell(StartIndex, EndIndex)
{
    var Colspan = null;
    var Rowspan = null;
	
    if ((StartIndex.x==EndIndex.x) && (EndIndex.y>=StartIndex.y) && (Math.abs(StartIndex.y-EndIndex.y)<=25) ) {
        //Save informaton
		CopyTD_Colspan.length=Math.abs(EndIndex.y-StartIndex.y)+1;
		CopyTD_StyleDisplay.length=Math.abs(EndIndex.y-StartIndex.y)+1;
		var index=0;
		var IndexTR = $("table tr").eq(StartIndex.x);
		for (var j = StartIndex.y; j <= EndIndex.y; j++) {
				End_Rowspan = parseInt($("td", IndexTR).eq(j).attr("rowspan"),10);
				End_Colspan = parseInt($("td", IndexTR).eq(j).attr("colspan"),10);
				if($.isNumeric(End_Rowspan)==false)
					End_Rowspan='1';
				if($.isNumeric(End_Colspan)==false)
					End_Colspan='1';
				CopyTD_Colspan[index]=End_Colspan;
				//
				if ($("td", IndexTR).eq(j).css("display")=="none") {
				  CopyTD_StyleDisplay[index]="none";
				  //alert($("td", IndexTR).eq(j).attr('id')+'=> '+CopyTD_Colspan[index]+':'+CopyTD_StyleDisplay[index]);
				}else {  //
				  CopyTD_StyleDisplay[index]="inline";
				  //back have other colspan is dispaly:none
				  if (j==EndIndex.y){
					  if (End_Colspan>1){
						  for(var i=1; i<End_Colspan;i++){
							  index=index+1;
							  CopyTD_Colspan[index]=1;
							  CopyTD_StyleDisplay[index]="none";
						  }
					  }
				  }
				  //
				}			
				index=index+1;
			//}			
		}
		
	}else{
      CopyTD_Colspan=[];
	  CopyTD_StyleDisplay=[];
	}		
		
}

function SelectTD(StartIndex, EndIndex, Color) {
	
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
    if ((StartIndex.x==EndIndex.x) && (EndIndex.y>StartIndex.y) && (Math.abs(StartIndex.y-EndIndex.y)<=10) ) {
        //Rowspan = EndIndex.x - StartIndex.x + 1;
        //Colspan = EndIndex.y - StartIndex.y + 1;
        var IndexTR = $("table tr").eq(StartIndex.x);
        Start_Rowspan = parseInt($("td", IndexTR).eq(StartIndex.y).attr("rowspan"),10);
        Start_Colspan = parseInt($("td", IndexTR).eq(StartIndex.y).attr("colspan"),10);
        if($.isNumeric(Start_Rowspan)==false)
            Start_Rowspan='1';
        if($.isNumeric(Start_Colspan)==false)
            Start_Colspan='1';
		//Sum(Colspan)
		var total_Colspan=0;
		for (var j = StartIndex.y+1; j <= EndIndex.y; j++) {
			if ($("td", IndexTR).eq(j).css("display")!="none"){ 
				End_Rowspan = parseInt($("td", IndexTR).eq(j).attr("rowspan"),10);
				End_Colspan = parseInt($("td", IndexTR).eq(j).attr("colspan"),10);
				if($.isNumeric(End_Rowspan)==false)
					End_Rowspan='1';
				if($.isNumeric(End_Colspan)==false)
					End_Colspan='1';
				total_Colspan=total_Colspan+parseInt(End_Colspan,10);	
			}			
		}
        //		
		Start_Colspan=parseInt(Start_Colspan,10)+parseInt(total_Colspan,10);
        $("td", IndexTR).eq(StartIndex.y).attr("colspan", Start_Colspan).attr("rowspan", Start_Rowspan);

        for (var i = StartIndex.x; i <= EndIndex.x; i++) {
            for (var j = StartIndex.y; j <= EndIndex.y; j++) {
                if (i == StartIndex.x && j == StartIndex.y) continue;
                var SelectTR = $("table tr").eq(i);
				//rmove td
                //$("td", SelectTR).eq(j).hide();
                //$("td", SelectTR).eq(j).remove();
				//change css style display:none
				$("td", SelectTR).eq(j).attr({"colspan":"1"});
				$("td", SelectTR).eq(j).css({"display":"none"});
				
            }
        }
    }
}
function ClickSplitCell(){

    if ((ERP_Cell_Ismerge == 'Y') && (StartIndex!=null) && (EndIndex!=null))  {
        var IndexTR = $("table tr").eq(StartIndex.x);
        Rowspan = $("td", IndexTR).eq(StartIndex.y).attr("rowspan");
		if ($("td", IndexTR).eq(StartIndex.y).attr("colspan")>=2){
		   Count =parseInt($("td", IndexTR).eq(StartIndex.y).attr("colspan"),10)-1;	
           Colspan = $("td", IndexTR).eq(StartIndex.y).attr("colspan")-1;
           $("td", IndexTR).eq(StartIndex.y).attr("colspan", Colspan).attr("rowspan", Rowspan);
		   //change td display
		   for(var j=(StartIndex.y+1)+Count-1; j>= (StartIndex.y+1); j--) {
			 if ($("td", IndexTR).eq(j).css("display")=="none"){ 
		       $("td", IndexTR).eq(j).attr("colspan", "1");
		       $("td", IndexTR).eq(j).css({"display":""});
			   break;
			 }
		   }
		}
        //
		/*
		//insert td
        var row = document.getElementsByTagName("tr")[StartIndex.x];
        var td =row.cells[StartIndex.y+1];
		var tdnew = row.insertCell(StartIndex.y+1);
        tdnew.className=td.className;
		*/
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