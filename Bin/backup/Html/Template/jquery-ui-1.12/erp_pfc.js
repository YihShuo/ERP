
function IEVersion() {
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1; //判断是否IE<11浏览器
    var isEdge = userAgent.indexOf("Edge") > -1 && !isIE; //判断是否IE的Edge浏览器
    var isIE11 = userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1;
    if(isIE) {
        var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
        reIE.test(userAgent);
        var fIEVersion = parseFloat(RegExp["$1"]);
        if(fIEVersion == 7) {
            return 7;
        } else if(fIEVersion == 8) {
            return 8;
        } else if(fIEVersion == 9) {
            return 9;
        } else if(fIEVersion == 10) {
            return 10;
        } else {
            return 6;//IE版本<=7
        }
    } else if(isEdge) {
        return 0;//edge
    } else if(isIE11) {
        return 11; //IE11
    }else{
        return -1;//不是ie浏览器
    }
}

if (parseInt(IEVersion(),10)!=11){
  alert('Only Support IE Browser Version 11');
}




//
/* 說明：ERP_PFCObj
 * 作者：weston
 * email：
 * 主頁：
 * 申明：20180514
 *注意 裡面有一個語法錯誤會整各都無法使用
*/
var ERP_Clipboard_Text='';
var ERP_Cell_Ismerge='N';
var ERP_Cell_IsEdit='N';
//
var ERP_Value_XML_Err;
var ERP_Value_XML;
var ERP_PFCOBJ_XML;
var ERP_PFCinnerHTML;
var ERP_PFCObj=new Array();

Number.prototype.pad = function(size) {
    var s = String(this);
    while (s.length < (size || 2)) {s = '0' + s;}
    return s;
}
//Delphi Call get InnerHTML
function GetinnerHTML()
{
	Set_ERP_BWBH_SizeValue();
    ERP_PFCinnerHTML=document.body.innerHTML;
}
//ERP部位更新SOP Web頁面value
function SetERPparamValue(id,value)
{
    var inputObj = document.getElementById(id);
    if(inputObj!=null){
        inputObj.value=value;
    }
}
//ERP部位更新SOP Web頁面Text
function SetERPparamText(id,value,override)
{
    var inputObj = document.getElementById(id);
    if(inputObj!=null){
		if(override=='1'){ 
          inputObj.innerText=value;
		}else{
		  if (inputObj.innerText.trim()==''){
			inputObj.innerText=value;   
		  }			  
		}
			
    }
}
//更新左右腳共用
function SetERPparamText_LRcom(id,value)
{
    var inputObj = document.getElementById(id);
    if(inputObj!=null){
		if(value=='1'){
		  inputObj.innerHTML='<center>Trái phải dùng chung <br> 左右脚共用 <br> Left & Right are same</center>';
		}else{
		  inputObj.innerHTML='<center>Trái phải không dùng chung <br> 左右脚不共用 <br> Left & Right are not same</center>';
		}
    }
}
//刪除Display:None
function Clear_TableDispayNone()
{   
	jQuery( document ).ready(function() {
      jQuery( "td" ).each(function( index ) {
        if (jQuery( this ).css('display') == 'none'){
            jQuery(this).remove();
        }
      });
    });
}
//取得部位size分段
function Set_ERP_BWBH_SizeValue()
{
  var td_XX;
  var td_CC;  
  var resStr="";
  var strXX="";
  var strCC="";
  var erpCCid_array=['erp14','erp24','erp34','erp44','erp54','erp64','erp74','erp84','erp94'];
  for(var j=0;j<erpCCid_array.length;j++){
	if(document.getElementById(erpCCid_array[j])!=null){
	resStr="";	
	  for(var i=1;i<=25;i++)
	  {
		 td_XX =document.getElementById(erpCCid_array[j]+"x"+i); 
		 td_CC =document.getElementById(erpCCid_array[j]+"c"+i); 
		 if((td_XX!=undefined) && (td_CC!=undefined)) {
		   strXX=td_XX.innerText.trim();
		   if(strXX.length>0){
			   if(strCC=="") {strCC=strXX;}
			   if (td_CC.style.display=="none"){
				 //
			   }else{
				 strCC=strXX;
			   }
			   resStr=resStr+strXX+":"+strCC+","; 
		   }
		 }
	  }
	  if(resStr.length>0){
		resStr=resStr.substr(0,resStr.length-1);
	  }
	  var inputObj = document.getElementById(erpCCid_array[j]);
	  if(inputObj!=null){
			inputObj.value=resStr;
	  }
	}
  }
}
//Delphi Call
function GetERPParamValue_Sub(tmpNode1)
{
    var id,hid,kerp,ERP_Value;
    var inputobj,tdobj;
    var tmpNode3;
    //Sub field column
    for (var j = 0; j < tmpNode1.getElementsByTagName('sub').length; j++) {
        tmpNode2 = tmpNode1.getElementsByTagName('sub')[j];
        id = tmpNode2.getElementsByTagName('id')[0].childNodes[0].nodeValue;
        hid = tmpNode2.getElementsByTagName('hidden')[0].childNodes[0].nodeValue;
        kerp = tmpNode2.getElementsByTagName('erp')[0].childNodes[0].nodeValue;
        //
        if (hid != "nil") {
            inputObj = document.getElementById(hid);
            tdObj = document.getElementById(id);
            if (inputObj != null) {
                ERP_Value = inputObj.value;
                if(inputObj.value== undefined){
                    ERP_Value="";
                }
                if (ERP_Value.length>0) {
                    ERP_Value_XML = ERP_Value_XML + "<sub><erp>" + kerp + "</erp>";
                    ERP_Value_XML = ERP_Value_XML + "<value>" + ERP_Value + "</value></sub>";
                    if (tdObj != null) {
                        tdObj.style.backgroundColor = '';
                    }
                } else {
                    ERP_Value = '';
                    if (tdObj != null) {
                        tdObj.style.backgroundColor = '#FF0000';
                        ERP_Value_XML_Err=true;
                    }
                }
            } else {
                ERP_Value = '';
                if (tdObj != null) {
                    tdObj.style.backgroundColor = '#FF0000';
                    ERP_Value_XML_Err=true;
                }
            }
        } else {
            tdObj = document.getElementById(id);
            if (tdObj != null) {
                ERP_Value = tdObj.innerText;

                if (ERP_Value.length>0) {
                    ERP_Value_XML = ERP_Value_XML + "<sub><erp>" + kerp + "</erp>";
                    ERP_Value_XML = ERP_Value_XML + "<value>" + ERP_Value + "</value></sub>";
                    tdObj.style.backgroundColor = '';
                } else {
                    ERP_Value = '';
                    tdObj.style.backgroundColor = '#FF0000';
                    ERP_Value_XML_Err=true;
                }
            }
        }
    }
}
//Delphi Call get ERPData
function GetERPParamValue()
{
    var xmlDoc=new ActiveXObject('Microsoft.XMLDOM');
    var XMLStr;
    ERP_Value_XML_Err=false;
    if (document.getElementById('erpdata')!=null) {
        XMLStr = document.getElementById('erpdata').value;
        /*
        XMLStr='<?xml version="1.0" encoding="UTF-8"?><data>'+
               '<para><kid>erp1</kid><kerp>BWBH</kerp><khidden>nil</khidden>'+
               '<sub><id>erp12</id><erp>Layer</erp><hidden>nil</hidden></sub>'+
               '<sub><id>erp13</id><erp>piece</erp><hidden>nil</hidden></sub>'+
               '</para>'+
               '<para><kid>erp2</kid><kerp>BWBH</kerp><khidden>nil</khidden>'+
               '<sub><id>erp22</id><erp>Layer</erp><hidden>nil</hidden></sub>'+
               '<sub><id>erp23</id><erp>piece</erp><hidden>nil</hidden></sub>'+
               '</para>'+
               '</data>';
        */
        xmlDoc.async = false;
        ERP_Value_XML = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><data>";
        xmlDoc.loadXML(XMLStr);
        var id, hid, kerp, ERP_Value;
        var inputobj, tdobj;
        var tmpNode, tmpNode1, tmpNode2, tmpNode3;
        tmpNode = xmlDoc.getElementsByTagName('data')[0];
        //
        if (tmpNode.childNodes.length > 0) {
            for (var i = 0; i < tmpNode.childNodes.length; i++) { //
                tmpNode1 = tmpNode.childNodes[i];//para
                id = tmpNode1.getElementsByTagName('kid')[0].childNodes[0].nodeValue;
                hid = tmpNode1.getElementsByTagName('khidden')[0].childNodes[0].nodeValue;
                kerp = tmpNode1.getElementsByTagName('kerp')[0].childNodes[0].nodeValue;
                //
                if (hid != "nil") {
                    inputObj = document.getElementById(hid);
                    tdObj = document.getElementById(id);
                    if (inputObj != null) {
                        ERP_Value = inputObj.value;
                        if(inputObj.value== undefined){
                            ERP_Value="";
                        }
                        if (ERP_Value.length>0) {
                            ERP_Value_XML = ERP_Value_XML + "<para><kerp>" + kerp + "</kerp>";
                            ERP_Value_XML = ERP_Value_XML + "<kvalue>" + ERP_Value + "</kvalue>";
                            if (tdObj != null) {
                                tdObj.style.backgroundColor = '';
                            }
                            //Child Filed
                            ERP_Value_XML = ERP_Value_XML + "<d>";
                            GetERPParamValue_Sub(tmpNode1);
                            ERP_Value_XML = ERP_Value_XML + "</d>";
                            //
                            ERP_Value_XML = ERP_Value_XML + "</para>";
                        } else {
                            ERP_Value = '';
                            if (tdObj != null) {
                                if(tdObj.innerText.length>0) {
                                    tdObj.style.backgroundColor = '#FF0000';
                                    ERP_Value_XML_Err=true;
                                }else{
                                    tdObj.style.backgroundColor = '';
                                }
                            }
                        }

                    } else {
                        ERP_Value = '';
                        if (tdObj != null) {
                            tdObj.style.backgroundColor = '#FF0000';
                            ERP_Value_XML_Err=true;
                        }
                    }
                } else {
                    tdObj = document.getElementById(id);
                    if (tdObj != null) {
                        ERP_Value = tdObj.innerText;
                        if (ERP_Value.length>0) {
                            ERP_Value_XML = ERP_Value_XML + "<para><kerp>" + kerp + "</kerp>";
                            ERP_Value_XML = ERP_Value_XML + "<kvalue>" + ERP_Value + "</kvalue>";
                            tdObj.style.backgroundColor = '';
                            //Sub field column
                            ERP_Value_XML = ERP_Value_XML + "<d>";
                            GetERPParamValue_Sub(tmpNode1);
                            ERP_Value_XML = ERP_Value_XML + "</d>";
                            //
                            ERP_Value_XML = ERP_Value_XML + "</para>";
                        } else {
                            ERP_Value = '';
                            tdObj.style.backgroundColor = '';
                        }
                        //
                    } else {
                        ERP_Value = '';

                    }
                }
            }
        }
        ERP_Value_XML = ERP_Value_XML + "</data>";
        //alert(ERP_Value_XML);
    }
}

//Delphi Call  Save PFCObj
function Save_PFCObj(){
    var ReTotalStr="";
    var div=null
    var img=null;
    var txt=null;
    var lie=null;
    var rgb;
    var hex;
    var rotation;
    //
    var liestrokedasharray;
    var liestrokeWid;
    var arrowS;
    var arrowE;
    ReTotalStr=ReTotalStr+"<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
    ReTotalStr=ReTotalStr+"<PFCObj>";
    for(var i=0;i<ERP_PFCObj.length;i++)
    {
        if(ERP_PFCObj[i].type=="img"){
            div=document.getElementById('PFCimg_div' +ERP_PFCObj[i].num);
            img=document.getElementById('PFCimg_img' +ERP_PFCObj[i].num);
            rotation=parseInt($('#PFCimg_div'+ERP_PFCObj[i].num ).attr('style').split('rotate(')[1].split('deg)')[0]);
            ReTotalStr=ReTotalStr+"<Object>";
            ReTotalStr=ReTotalStr+"<type>img</type>";
            ReTotalStr=ReTotalStr+"<num>"+ERP_PFCObj[i].num+"</num>";
            ReTotalStr=ReTotalStr+"<src>"+img.src+"</src>";
            ReTotalStr=ReTotalStr+"<rotation>"+rotation+"</rotation>";
            ReTotalStr=ReTotalStr+"<left>"+parseInt(div.style.left,10)+"</left>";
            ReTotalStr=ReTotalStr+"<top>"+parseInt(div.style.top,10)+"</top>";
            ReTotalStr=ReTotalStr+"<width>"+parseInt(div.style.width,10)+"</width>";
            ReTotalStr=ReTotalStr+"<height>"+parseInt(div.style.height,10)+"</height>";
            ReTotalStr=ReTotalStr+"</Object>";
        }
        if(ERP_PFCObj[i].type=="txt") {
            div = document.getElementById('PFCtxt_div' + ERP_PFCObj[i].num);
            txt = document.getElementById('PFCtxt_tar' + ERP_PFCObj[i].num);
            //
            ReTotalStr = ReTotalStr + "<Object>";
            ReTotalStr = ReTotalStr + "<type>txt</type>";
            ReTotalStr = ReTotalStr + "<num>" + ERP_PFCObj[i].num + "</num>";
            ReTotalStr = ReTotalStr + "<text>" + txt.value + "</text>";
            ReTotalStr = ReTotalStr + "<fsize>" + parseInt(txt.style.fontSize, 0) + "</fsize>";
            rgb = txt.style.color.match(/\d+/g);
            hex = "#" + ((1 << 24) + (Number(rgb[0]) << 16) + (Number(rgb[1]) << 8) + Number(rgb[2])).toString(16).slice(1);
            ReTotalStr = ReTotalStr + "<color>" + hex + "</color>";
            if (txt.style.backgroundColor != 'transparent') {
              rgb = txt.style.backgroundColor.match(/\d+/g);
              hex = "#" + ((1 << 24) + (Number(rgb[0]) << 16) + (Number(rgb[1]) << 8) + Number(rgb[2])).toString(16).slice(1);
            }else{
              hex='transparent';
            }
            ReTotalStr=ReTotalStr+"<bgcolor>"+hex+"</bgcolor>";
            ReTotalStr=ReTotalStr+"<border>"+txt.style.border+"</border>";
            ReTotalStr=ReTotalStr+"<left>"+parseInt(div.style.left,10)+"</left>";
            ReTotalStr=ReTotalStr+"<top>"+parseInt(div.style.top,10)+"</top>";
            ReTotalStr=ReTotalStr+"<width>"+parseInt(div.style.width,10)+"</width>";
            ReTotalStr=ReTotalStr+"<height>"+parseInt(div.style.height,10)+"</height>";
            ReTotalStr=ReTotalStr+"</Object>";
        }
        if(ERP_PFCObj[i].type=="lie"){
            lie=document.getElementById('PFClie_lie' +ERP_PFCObj[i].num);
            ReTotalStr=ReTotalStr+"<Object>";
            ReTotalStr=ReTotalStr+"<type>lie</type>";
            ReTotalStr=ReTotalStr+"<num>"+ERP_PFCObj[i].num+"</num>";
            var liestrokedasharray=lie.getAttribute('stroke-dasharray');
            var liestrokeWid=lie.getAttribute('stroke-width');
            var arrowS=lie.getAttribute('marker-start');
            var arrowE=lie.getAttribute('marker-end');
            if (liestrokeWid==null) liestrokeWid="1";
            if (liestrokedasharray==null) liestrokedasharray="";
            if (arrowS==null) arrowS="";
            if (arrowE==null) arrowE="";
            ReTotalStr=ReTotalStr+"<strokeWidth>"+liestrokeWid+"</strokeWidth>";
            ReTotalStr=ReTotalStr+"<stroke>"+lie.getAttribute('stroke')+"</stroke>";
            ReTotalStr=ReTotalStr+"<strokeDasharray>"+liestrokedasharray+"</strokeDasharray>";
            ReTotalStr=ReTotalStr+"<arrowS>"+arrowS+"</arrowS>";
            ReTotalStr=ReTotalStr+"<arrowE>"+arrowE+"</arrowE>";
            ReTotalStr=ReTotalStr+"<x1>"+parseInt(lie.getAttribute('x1'),10)+"</x1>";
            ReTotalStr=ReTotalStr+"<y1>"+parseInt(lie.getAttribute('y1'),10)+"</y1>";
            ReTotalStr=ReTotalStr+"<x2>"+parseInt(lie.getAttribute('x2'),10)+"</x2>";
            ReTotalStr=ReTotalStr+"<y2>"+parseInt(lie.getAttribute('y2'),10)+"</y2>";
            ReTotalStr=ReTotalStr+"</Object>";
        }
    }
    ReTotalStr=ReTotalStr+"</PFCObj>";
    ERP_PFCOBJ_XML=ReTotalStr;
    //PFCObj_WriteToFile(ReTotalStr);
}
//Delphi Call  Load PFCObj
function Load_PFCObj(){
    //Clean DOM
    Clean_PFCObj();
    //XML解析
    var xmlDoc=new ActiveXObject('Microsoft.XMLDOM');
    xmlDoc.async=false;
    xmlDoc.loadXML(ERP_PFCOBJ_XML);
    //xmlDoc.load("C:\\Users\\weda\\Desktop\\JQuery\\test.txt");
    //
    var tmpNode,tmpNode1,tmpNode2;
    tmpNode=xmlDoc.getElementsByTagName('PFCObj')[0];
    if (tmpNode.childNodes.length>0){
        for(var i=0;i<tmpNode.childNodes.length;i++){
            tmpNode1=tmpNode.childNodes[i];

            if(tmpNode1.getElementsByTagName('type')[0].childNodes[0].nodeValue=='img'){
                var PFCObj=new PFCimg('img',false);
                PFCObj.num= tmpNode1.getElementsByTagName('num')[0].childNodes[0].nodeValue;
                PFCObj.src= tmpNode1.getElementsByTagName('src')[0].childNodes[0].nodeValue;
                if(tmpNode1.getElementsByTagName('rotation')[0]!=null)
                PFCObj.rotation=tmpNode1.getElementsByTagName('rotation')[0].childNodes[0].nodeValue;
                PFCObj.left= tmpNode1.getElementsByTagName('left')[0].childNodes[0].nodeValue;
                PFCObj.top= tmpNode1.getElementsByTagName('top')[0].childNodes[0].nodeValue;
                PFCObj.width= tmpNode1.getElementsByTagName('width')[0].childNodes[0].nodeValue;
                PFCObj.height= tmpNode1.getElementsByTagName('height')[0].childNodes[0].nodeValue;
                PFCObj.CreateImg();
                ERP_PFCObj.push(PFCObj);
            }

            if(tmpNode1.getElementsByTagName('type')[0].childNodes[0].nodeValue=='txt'){
                var PFCObj=new PFCtxt('txt',false);
                PFCObj.num= tmpNode1.getElementsByTagName('num')[0].childNodes[0].nodeValue;
                PFCObj.fsize= tmpNode1.getElementsByTagName('fsize')[0].childNodes[0].nodeValue;
                PFCObj.color= tmpNode1.getElementsByTagName('color')[0].childNodes[0].nodeValue;
                PFCObj.bgcolor= tmpNode1.getElementsByTagName('bgcolor')[0].childNodes[0].nodeValue;
                if(tmpNode1.getElementsByTagName('text')[0].childNodes[0]!=null)
                PFCObj.text= tmpNode1.getElementsByTagName('text')[0].childNodes[0].nodeValue;
                PFCObj.border= tmpNode1.getElementsByTagName('border')[0].childNodes[0].nodeValue;
                PFCObj.left= tmpNode1.getElementsByTagName('left')[0].childNodes[0].nodeValue;
                PFCObj.top= tmpNode1.getElementsByTagName('top')[0].childNodes[0].nodeValue;
                PFCObj.width= tmpNode1.getElementsByTagName('width')[0].childNodes[0].nodeValue;
                PFCObj.height= tmpNode1.getElementsByTagName('height')[0].childNodes[0].nodeValue;
                PFCObj.CreateTxt();
                ERP_PFCObj.push(PFCObj);
            }
            if(tmpNode1.getElementsByTagName('type')[0].childNodes[0].nodeValue=='lie'){
                var PFCObj=new PFClie('lie',false);
                PFCObj.num= tmpNode1.getElementsByTagName('num')[0].childNodes[0].nodeValue;
                PFCObj.strokeWidth= tmpNode1.getElementsByTagName('strokeWidth')[0].childNodes[0].nodeValue;
                PFCObj.stroke= tmpNode1.getElementsByTagName('stroke')[0].childNodes[0].nodeValue;
                if(tmpNode1.getElementsByTagName('strokeDasharray')[0].childNodes[0]==null)
                    PFCObj.strokeDasharray= '';
                if(tmpNode1.getElementsByTagName('arrowS')[0].childNodes[0]==null)
                    PFCObj.arrowS= 'N';
                if(tmpNode1.getElementsByTagName('arrowE')[0].childNodes[0]==null)
                    PFCObj.arrowE= 'N';
                PFCObj.left= tmpNode1.getElementsByTagName('x1')[0].childNodes[0].nodeValue;
                PFCObj.top= tmpNode1.getElementsByTagName('y1')[0].childNodes[0].nodeValue;
                PFCObj.right= tmpNode1.getElementsByTagName('x2')[0].childNodes[0].nodeValue;
                PFCObj.bottom= tmpNode1.getElementsByTagName('y2')[0].childNodes[0].nodeValue;
                PFCObj.CreateLie();
                ERP_PFCObj.push(PFCObj);
            }

        }
    }
    //
}
//Before Loading PFCOBj , it need to Clean PFCObj
function Clean_PFCObj(){
    //Clean Array
    var num;
    var type;
    for(var i=0;i<ERP_PFCObj.length;i++)
    {
        num=ERP_PFCObj[i].num;
        type=ERP_PFCObj[i].type;
        //PFCimg_mnD
        var divobj = document.getElementById('PFC'+type+'_div' + num);
        var mnubj = document.getElementById('PFC'+type+'_mnD' + num);
        //
        var divdrag1 = document.getElementById('PFC'+type+'_d1v' + num);
        var divdrag2 = document.getElementById('PFC'+type+'_d2v' + num);
        var svgobj = document.getElementById('PFC'+type+'_svg' + num);
        //free div img
        if(divobj != null) {
            var parent = divobj.parentNode;
            parent.removeChild(divobj);
        }
        //lie
        if(svgobj != null) {
            var parent = svgobj.parentNode;
            parent.removeChild(svgobj);
        }
        if(divdrag1 != null) {
            var parent = divdrag1.parentNode;
            parent.removeChild(divdrag1);
        }
        if(divdrag2 != null) {
            var parent = divdrag2.parentNode;
            parent.removeChild(divdrag2);
        }
        if(mnubj !=null) {
            var parent = mnubj.parentNode.parentNode;
            parent.removeChild(mnubj.parentNode);
        }
        //
    }
    for(var i=0;i<ERP_PFCObj.length;i++)
    {
        ERP_PFCObj[i]=null;
        ERP_PFCObj.splice(i, 1);
    }
    //Clean DOM
}
//Log debug and test write2File
function PFCObj_WriteToFile(Text) {

    var FSObj = new ActiveXObject('Scripting.FileSystemObject');
    //var utf8Enc = new ActiveXObject("Utf8Lib.Utf8Enc");
    var FileName='D:\\test.txt';
    var TxtFile = FSObj.CreateTextFile(FileName, true);
   // TxtFile.BinaryWrite(utf8Enc.UnicodeToUtf8(Text));
    TxtFile.WriteLine(Text);
    TxtFile.Close();
}
//Web Javascript call
function Create_PFCObj(objtye,IsCreate)
{
    var num='';
    var count=0;
    var IsBreak=false;
    var divs = document.getElementsByTagName('div');
    var svgs = document.getElementsByTagName('svg');
    var divobj;
    //圖像物件
    if(objtye=='img'){
        for(var i = 0; i < divs.length; i++){
            if(divs[i].id.substr(0,10)=='PFCimg_div')
            {
                num=(parseInt(divs[i].id.substr(10,3))+1).pad(3);
                count=0;
                while(IsBreak==false) {
                    divobj=document.getElementById('PFCimg_div'+num);
                    if((typeof(divobj) == 'undefined') || (divobj == null)){
                        IsBreak=true;
                        break;
                    }else{
                        num=(parseInt(num)+1).pad(3);
                    }
                    count++;
                    if(count>=99){
                        IsBreak=true;
                    }
                }
                if(IsCreate==null) {
                    ERP_PFCObj.push(new PFCimg(num, true));
                }
                return num;
                break;
            }
        }
        if(num==''){
            num='001';
            if(IsCreate==null) {
                ERP_PFCObj.push(new PFCimg(num, true));
            }
            return num;
        }
    }
    if(objtye=='txt'){
        for(var i = 0; i < divs.length; i++){
            if(divs[i].id.substr(0,10)=='PFCtxt_div')
            {
                num=(parseInt(divs[i].id.substr(10,3))+1).pad(3);
                count=0;
                while(IsBreak==false) {
                    divobj=document.getElementById('PFCtxt_div'+num);
                    if((typeof(divobj) == "undefined") || (divobj == null)){
                        IsBreak=true;
                        break;
                    }else{
                        num=(parseInt(num)+1).pad(3);
                    }
                    count++;
                    if(count>=99){
                        IsBreak=true;
                    }
                }
                if(IsCreate==null) {
                    ERP_PFCObj.push(new PFCtxt(num, true));
                }
                return num;
                break;
            }
        }
        if(num==''){
            num='001';
            if(IsCreate==null) {
                ERP_PFCObj.push(new PFCtxt(num, true));
            }
            return num;
        }
    }
    if(objtye=='lie'){
        for(var i = 0; i < svgs.length; i++){
            if(svgs[i].id.substr(0,10)=='PFClie_svg')
            {
                num=(parseInt(svgs[i].id.substr(10,3))+1).pad(3);
                count=0;
                while(IsBreak==false) {
                    divobj=document.getElementById('PFCLie_svg'+num);
                    if((typeof(divobj) == "undefined") || (divobj == null)){
                        IsBreak=true;
                        break;
                    }else{
                        num=(parseInt(num)+1).pad(3);
                    }
                    count++;
                    if(count>=99){
                        IsBreak=true;
                    }
                }
                if(IsCreate==null) {
                    ERP_PFCObj.push(new PFClie(num, true));
                }
                return num;
                break;
            }
        }
        if(num==''){
            num='001';
            if(IsCreate==null) {
                ERP_PFCObj.push(new PFClie(num, true));
            }
            return num;
        }
    }
}
//======================================================================================================================
//PFC image Object  物件
var PFCimg=function PFCimg(num,IsCreate)
{
    this.num=num;
    this.type='img';
    this.src='images/vai.png';
    this.left=parseInt(document.body.clientWidth,10)/2;
    this.top=parseInt(document.body.clientHeight,10)/2;
    this.right='200';
    this.bottom='200';
    this.width='100';
    this.height='100';
    this.rotation=0;
    if(IsCreate==true){this.CreateImg();}
};

PFCimg.prototype.CreateImg=function(){

    $('<div/>', {
        'class': 'PFCDiv',
        'id': 'PFCimg_div'+this.num,
        'text': ''
    }).appendTo('#bodydiv');
    $('#PFCimg_div'+this.num).css({width:this.width+'px',height:this.height+'px',top: this.top+'px', left: this.left+'px', position:'absolute'});
    $('#PFCimg_div'+this.num ).draggable();
    $('#PFCimg_div'+this.num ).resizable({animate: false});
    $('#PFCimg_div'+this.num).css({'transform' : 'rotate('+this.rotation+'deg)'});
    /*
    //rotate
    $('#PFCimg_div'+this.num).click(function() {

        var degree=parseInt($(this ).attr('style').split('rotate(')[1].split('deg)')[0]);
        degree=degree+45;
        $(this).css({'transform' : 'rotate('+degree+'deg)'});
    });
    */
    var $img = $("<img id='PFCimg_img"+this.num+"' class='PFCimgCSS'>");
    $img.attr('src', this.src);
    //$img2.attr("width", "100%");
    //$img2.attr("height", "100%");
    $img.appendTo('#PFCimg_div'+this.num);
    //type File
    var input = document.createElement("input");
    input.setAttribute('type', 'file');
    input.setAttribute('id', 'PFCimg_fil'+this.num);
    input.setAttribute('style', 'display:none');
    document.getElementById("PFCimg_div"+this.num).appendChild(input);
    //
    $("#PFCimg_fil"+this.num).change(function(event) {
        var obj = event.target;
        var file = document.getElementById("PFCimg_fil"+obj.id.substr(10, 3)).files[0];
        var fileReader = new FileReader();
        var num=obj.id.substr(10, 3);
        /*
        fileReader.addEventListener("load", function () {
            $("#PFCimg_img01").attr("src", fileReader.result);
        }, false);
        */
        fileReader.onloadstart = function() {
            //$('#info1').text('onloadstart');
        };
        fileReader.onloadend  = function() {
            //$('#info1').text('onloadend');
        };
        fileReader.onload = (function(theFile,filename){
            var num=theFile;
            //$('#info1').text('onload');
            $("#PFCimg_img"+num).attr("src", filename);
            return function(e){
                //Base64 Src
                //$("#PFCimg_img"+parseInt(num).pad(3)).attr("src", fileReader.result);
            };
        })(num,this.value);
        if (file) {
            fileReader.readAsDataURL(file);
        }

    });
    //

    var menu = [{
        name: 'copy',
        id:'PFCimg_mnC'+this.num,
        img: 'images/copy.png',
        title: 'copy button',
        PFC: this,
        fun: function (para,event,PFC) {
            //
            //Copy image
            var PFCObj=new PFCimg('img',false);
            PFCObj.num=Create_PFCObj('img',false);
            PFCObj.src=$("#PFCimg_img"+PFC.num).attr('src');
            PFCObj.left=parseInt($("#PFCimg_div"+PFC.num).css('left'),10)+parseInt($("#PFCimg_div"+PFC.num).css('width'),10)+20;
            PFCObj.top=parseInt($("#PFCimg_div"+PFC.num).css('top'),10);
            PFCObj.width=parseInt($("#PFCimg_div"+PFC.num).css('width'),10);
            PFCObj.height=parseInt($("#PFCimg_div"+PFC.num).css('height'),10);
            PFCObj.CreateImg();
            ERP_PFCObj.push(PFCObj);
            //
        }
    }, {
        name: 'image',
        id:'PFCimg_mnU'+this.num,
        img: 'images/update.png',
        title: 'update button',
        PFC: this,
        fun: function (para,event,PFC) {
            //
            $("#PFCimg_fil"+PFC.num).trigger('click');
            //
        }
    }, {
        name: 'picture',
        id:'PFCimg_mnP'+this.num,
        img: 'images/update.png',
        title: 'update button',
        PFC: this,
        subMenu: [{  // 子選單
            name: 'Vai',
            id:'PFCimg_mP1'+this.num,
            title: 'Da',
            img:'images/vai.png',
            PFC: this,
            fun: function (para,event,PFC) {
                $("#PFCimg_img"+PFC.num).attr("src", 'images/vai.png');
            }
        }, {
            name: 'Da',
            id:'PFCimg_mP2'+this.num,
            title: 'Da',
            img:'images/da.png',
            PFC: this,
            fun: function (para,event,PFC) {
                $("#PFCimg_img"+PFC.num).attr("src", 'images/da.png');
            }
        }, {
            name: 'arrow',
            id:'PFCimg_mP3'+this.num,
            title: 'arrow',
            img:'images/arrow.png',
            PFC: this,
            fun: function (para,event,PFC) {
                $("#PFCimg_img"+PFC.num).attr("src", 'images/arrow.png');
            }
        }, {
            name: 'arrow1',
            id:'PFCimg_mP4'+this.num,
            title: 'arrow1',
            img:'images/arrow1.png',
            PFC: this,
            fun: function (para,event,PFC) {
                $("#PFCimg_img"+PFC.num).attr("src", 'images/arrow1.png');
            }
        }, {
            name: 'arrow2',
            id:'PFCimg_mP5'+this.num,
            title: 'arrow2',
            img:'images/arrow2.png',
            PFC: this,
            fun: function (para,event,PFC) {
                $("#PFCimg_img"+PFC.num).attr("src", 'images/arrow2.png');
            }
        }]
    }, {
        name: 'rotate',
        id:'PFCimg_mnR'+this.num,
        img: 'images/rotate.png',
        title: 'update button',
        PFC: this,
        fun: function (para,event,PFC) {
            var degree=parseInt($('#PFCimg_div'+PFC.num ).attr('style').split('rotate(')[1].split('deg)')[0]);
            degree=degree+45;
            $('#PFCimg_div'+PFC.num).css({'transform' : 'rotate('+degree+'deg)'});
        }
    }, {
        name: 'delete',
        id:'PFCimg_mnD'+this.num,
        img: 'images/delete.png',
        title: 'delete button',
        PFC: this,
        fun: function (para,event,PFC) {

            var divobj = document.getElementById('PFCimg_div' +PFC.num);
            //free DOM div img
            if (divobj != null) {
                var parent = divobj.parentNode;
                parent.removeChild(divobj);
                //free Ul
                var ulobj=event.target.parentNode;
                if(ulobj!=null){
                    parent = ulobj.parentNode;
                    parent.removeChild(ulobj);
                }
            }
            //free ERP_PFCObj Class
            var PFCObj=null;
            for(var i=0;i<ERP_PFCObj.length;i++){
                PFCObj=ERP_PFCObj[i];
                if((PFCObj.num==PFC.num) && (PFCObj.type=='img'))
                {
                    ERP_PFCObj[i]=null;
                    ERP_PFCObj.splice(i, 1);
                    break;
                }
            }
            alert('delete OK');
        }
    }];
    //Calling context menu

    $('#PFCimg_img'+this.num).contextMenu('menu',menu ,{
        displayAround:'trigger',
        triggerOn:'click',
        mouseClick:'right'
    });


};
//
var PFCtxt=function PFCtxt(num,IsCreate)
{
    this.num=num;
    this.type='txt';
    this.left=parseInt(document.body.clientWidth,10)/2;
    this.top=parseInt(document.body.clientHeight,10)/2;
    this.right='200';
    this.bottom='200';
    this.width='100';
    this.height='100';
    this.fsize='18';
    this.color='#000000';
    this.border='0px solid #000000';
    this.bgcolor='transparent';//'#99FFFF';
    this.text='noi dung';
    if(IsCreate==true){this.CreateTxt();}
};
//
PFCtxt.prototype.CreateTxt=function(){
    $('<div/>', {
        'class': 'PFCDiv',
        'id': 'PFCtxt_div'+this.num,
        'text': ''
    }).appendTo('#bodydiv');
    $('#PFCtxt_div'+this.num).css({width:this.width+'px',height:this.height+'px',top:this.top+'px', left: this.left+'px', position:'absolute'});
    $('#PFCtxt_div'+this.num ).draggable();
    $('#PFCtxt_div'+this.num ).resizable({
        resize: function(e, ui) {
        },
        stop: function(e, ui) {
            //alert(ui.position.top);
            var obj = e.target;
            $('#PFCtxt_tar'+obj.id.substr(10, 3)).css("height","90%");
        }
    });

    var $textarea = $("<textarea id='PFCtxt_tar"+this.num+"' class='PFCtxtClass' style='font-family:Arial;font-size:"+this.fsize+"px;color:"+this.color+";background-color:"+this.bgcolor+";border:"+this.border+";line-height:auto;overflow:hidden' >"+this.text+"</textarea>");
    $textarea.appendTo("#PFCtxt_div"+this.num);
    $('#PFCtxt_tar'+this.num).css("height","90%");

    var menu = [ {
        name: 'Setting',
        id:'PFCtxt_mnU'+this.num,
        img: 'images/update.png',
        title: 'update button',
        PFC: this,
        fun: function (para,event,PFC) {

            var tar=document.getElementById('PFCtxt_tar'+PFC.num);
            var ftsize=parseInt(tar.style.fontSize, 10);
            var ftcolor=tar.style.color;
            var bgcolor=tar.style.backgroundColor;
            var Istransparent="checked='checked'";
            if (bgcolor!="transparent"){Istransparent="";}
            var border=tar.style.border;
            var Isborder="checked='checked'";
            if (border.substr(0,1)=='0'){Isborder="";}
            //
            var DialogHTml="<form id='PFCtxt_dlg"+PFC.num+"'>"+"\r\n"+
                "<table width='220' border='1' cellspacing='0'  >"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td width='68' align='right'>Color</td>"+"\r\n"+
                "    <td><a href='javascript:void(0)' id='PFCtxt_fcp"+PFC.num+"' class='colorpicker' style='background-color:"+ftcolor+"'></a></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td width='130' align='right'>Backgroud Color</td>"+"\r\n"+
                "    <td><a href='javascript:void(0)' id='PFCtxt_fbp"+PFC.num+"' class='colorpicker' style='background-color:"+bgcolor+"'></a></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td align='right'>Font Size</td>"+"\r\n"+
                "    <td><input  type='text' id='PFCtxt_fts"+PFC.num+"' size='1' value='"+ftsize+"' style='width:50px' onkeyup=\"javascript:event.target.setAttribute('value',event.target.value);\" /></td>"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td align='right'>Transparent</td>"+"\r\n"+
                "    <td><input  type='checkbox' id='PFCtxt_ftr"+PFC.num+"' "+Istransparent+" />Border:<input  type='checkbox' id='PFCtxt_ftb"+PFC.num+"' "+Isborder+" /></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td colspan='2'><div align='center'>"+"\r\n"+
                "      <label>"+"\r\n"+
                "      <input type='Button' name='OK' id='PFCtxt_fb1"+PFC.num+"' value='OK'  />"+"\r\n"+
                "      </label>"+"\r\n"+
                "      <label>"+"\r\n"+
                "      <input type='Button' name='Cancel' id='PFCtxt_fb2"+PFC.num+"' value='Cancel'  />"+"\r\n"+
                "      </label>"+"\r\n"+
                "    </div></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "</table>"+"\r\n"+
                "</form>";

            //PFCObj_WriteToFile(DialogHTml);
            var $dialogform =$(DialogHTml);
            $dialogform.appendTo('body');
            //
            $('#PFCtxt_fb1'+PFC.num).button().on("click",function(event){

                var tar=document.getElementById('PFCtxt_tar'+PFC.num);
                //font color & backgroud color
                var rgb;
                var hex;
                rgb = $("#PFCtxt_fcp"+event.target.id.substr(10,3)).css("background-color").match(/\d+/g);
                if(rgb!=null) {
                    hex = "#" + ((1 << 24) + (Number(rgb[0]) << 16) + (Number(rgb[1]) << 8) + Number(rgb[2])).toString(16).slice(1);
                    tar.style.color = hex;
                }
                if ($('#PFCtxt_ftr'+event.target.id.substr(10,3) ).prop('checked')==true){
                    tar.style.backgroundColor = 'transparent';
                }else{
                  rgb = $("#PFCtxt_fbp"+event.target.id.substr(10,3)).css("background-color").match(/\d+/g);
                  if(rgb!=null) {
                    hex = "#" + ((1 << 24) + (Number(rgb[0]) << 16) + (Number(rgb[1]) << 8) + Number(rgb[2])).toString(16).slice(1);
                    tar.style.backgroundColor = hex;
                  }
                }
                //border
                if ($('#PFCtxt_ftb'+event.target.id.substr(10,3) ).prop('checked')==true){
                    tar.style.border = '1px solid #000000';
                }else{
                    tar.style.border = '0px solid #000000';
                }
                //
                var strokeWid=$("#PFCtxt_fts"+event.target.id.substr(10,3)).val();
                if($.isNumeric(strokeWid)==true){
                    tar.style.fontSize=strokeWid;
                }
                $("#bigpicker").remove();
                //close
                $('#PFCtxt_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            $('#PFCtxt_fb2'+PFC.num).button().on("click",function(event){
                $('#PFCtxt_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            //bigcolorpicker init
            $("#PFCtxt_fcp"+PFC.num).bigColorpicker(function(el,color){
                $(el).css("background-color",color);
            });
            $("#PFCtxt_fbp"+PFC.num).bigColorpicker(function(el,color){
                $(el).css("background-color",color);
            });
            //dialog
            var $dialog = $('#PFCtxt_dlg'+PFC.num ).dialog({
                autoOpen: false,
                height: 220,
                width: 250,
                modal: true
            });

            $('#PFCtxt_dlg'+PFC.num).on('dialogclose', function(event) {
                $('#PFCtxt_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            $dialog.dialog( "open" );

        }
    }, {
        name: 'delete',
        id:'PFCtxt_mnD'+this.num,
        img: 'images/delete.png',
        title: 'delete button',
        PFC: this,
        fun: function (para,event,PFC) {
            var divobj = document.getElementById('PFCtxt_div' + PFC.num);
            //free div img
            if (divobj != null) {
                var parent = divobj.parentNode;
                parent.removeChild(divobj);
                //free Ul
                var ulobj=event.target.parentNode;
                if(ulobj!=null){
                    parent = ulobj.parentNode;
                    parent.removeChild(ulobj);
                }
            }
            //free ERP_PFCObj Class
            var PFCObj=null;
            for(var i=0;i<ERP_PFCObj.length;i++){
                PFCObj=ERP_PFCObj[i];
                if((PFCObj.num==PFC.num) && (PFCObj.type=='txt'))
                {
                    ERP_PFCObj[i]=null;
                    ERP_PFCObj.splice(i, 1);
                    break;
                }
            }
            alert('delete OK');
        }
    }];
    //Calling context menu
    $('#PFCtxt_tar'+this.num).contextMenu('menu',menu ,{
        displayAround:'trigger',
        triggerOn:'click',
        mouseClick:'right'
    });

}
var PFClie=function PFClie(num,IsCreate)
{
    this.num=num;
    this.type='lie';
    //line drag
    this.lineObj=null;
    this.draglineObj=null;
    this.currentX = 0;
    this.currentY = 0;
    this.lineMatrix=0;
    //
    this.left=parseInt(document.body.clientWidth,10)/2;
    this.top=parseInt(document.body.clientHeight,10)/2;
    this.right=parseInt(document.body.clientWidth,10)/2+100;
    this.bottom=parseInt(document.body.clientHeight,10)/2;
    this.width='0';
    this.height='0';
    this.stroke='#000000';
    this.strokeWidth='2';
    this.strokeDasharray='2,2';
    this.arrowS='N';
    this.arrowE='Y';
    if(IsCreate==true){this.CreateLie();}
};
PFClie.prototype.CreateLie=function() {

    var svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
    svg.setAttribute('id', 'PFClie_svg' + this.num);
    svg.setAttribute('width', this.width);
    svg.setAttribute('height', this.height);

    //mark-satrt
    var defs1 = document.createElementNS('http://www.w3.org/2000/svg', 'defs');
    var marker1 = document.createElementNS('http://www.w3.org/2000/svg', 'marker');
    marker1.setAttribute('id', 'PFClie_m1a' + this.num);
    marker1.setAttribute('refX', '8');
    marker1.setAttribute('refY', '6');
    marker1.setAttribute('markerUnits', 'strokeWidth');
    marker1.setAttribute('markerWidth', '14');
    marker1.setAttribute('markerHeight', '14');
    marker1.setAttribute('orient', 'auto');
    var path1 = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    path1.setAttribute('d', 'M10,2 L10,11 L2,6 L10,2 z');
    path1.setAttribute('id', 'PFClie_p1h' + this.num);
    path1.setAttribute('style', 'fill: '+this.stroke+';');
    path1.setAttribute('stroke-width', '0');
    marker1.appendChild(path1);
    defs1.appendChild(marker1);
    svg.appendChild(defs1);
    //mark-end
    var defs2 = document.createElementNS('http://www.w3.org/2000/svg', 'defs');
    var marker2 = document.createElementNS('http://www.w3.org/2000/svg', 'marker');
    marker2.setAttribute('id', 'PFClie_m2a' + this.num);
    marker2.setAttribute('refX', '4');
    marker2.setAttribute('refY', '6');
    marker2.setAttribute('markerUnits', 'strokeWidth');
    marker2.setAttribute('markerWidth', '14');
    marker2.setAttribute('markerHeight', '14');
    marker2.setAttribute('orient', 'auto');
    var path2 = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    path2.setAttribute('d', 'M2,2 L2,11 L10,6 L2,2 z');
    path2.setAttribute('id', 'PFClie_p2h' + this.num);
    path2.setAttribute('style', 'fill: '+this.stroke+';');
    path2.setAttribute('stroke-width', '0');
    marker2.appendChild(path2);
    defs2.appendChild(marker2);
    svg.appendChild(defs2);
    //
    var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
    //line
    line.setAttribute('id', 'PFClie_lie' + this.num);
    line.setAttribute('width', this.width);
    line.setAttribute('height', this.height);
    line.setAttribute('x1', this.left);
    line.setAttribute('y1', this.top);
    line.setAttribute('x2', this.right);
    line.setAttribute('y2', this.bottom);
    line.setAttribute('transform', 'matrix(1 0 0 1 0 0)');
    if(this.strokeDasharray!='')
    line.setAttribute('stroke-dasharray', this.strokeDasharray);
    line.setAttribute('stroke', this.stroke);
    line.setAttribute('stroke-width', this.strokeWidth);
    line.setAttribute('cursor', 'move');
    //drag line
    var dragline = document.createElementNS('http://www.w3.org/2000/svg', 'line');
    dragline.setAttribute('id', 'PFClie_lid' + this.num);
    dragline.setAttribute('x1', this.left);
    dragline.setAttribute('y1', this.top);
    dragline.setAttribute('x2', this.right);
    dragline.setAttribute('y2', this.bottom);
    dragline.setAttribute('transform', 'matrix(1 0 0 1 0 0)');
    dragline.setAttribute('stroke', this.stroke);
    dragline.setAttribute('stroke-width', '30');
    dragline.setAttribute('stroke-opacity', '0'); //opacity invisible
    dragline.setAttribute('cursor', 'move');
    svg.appendChild(dragline);
    //
    if (this.arrowS == 'Y')
        line.setAttribute('marker-start', 'url(#PFClie_m1a' + this.num + ')');
    if (this.arrowE == 'Y')
        line.setAttribute('marker-end', 'url(#PFClie_m2a' + this.num + ')');
    svg.appendChild(line);
    var bodydiv = document.getElementById('bodydiv');
    bodydiv.appendChild(svg);
    //Drag Div
    $('<div/>', {
        'class': 'PFCDiv',
        'id': 'PFClie_d1v'+this.num,
        'text': '',
        'arrowS': this.arrowS,
        'arrowE': this.arrowE
    }).appendTo('#bodydiv');
    $('#PFClie_d1v'+this.num).css('margin-left',0);
    $('#PFClie_d1v'+this.num).css({width:'14px',height:'14px',top: parseInt(this.top)+'px', left: parseInt(this.left)+'px', position:'absolute'});
    $('#PFClie_d1v'+this.num).draggable({
        start: function() {
            var $element =  $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie=document.getElementById('PFClie_lie'+this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.removeAttribute('marker-start');
            lie.removeAttribute('marker-end');
            lie.setAttribute('x1',left);
            lie.setAttribute('y1',top);
            draglie.setAttribute('x1',left);
            draglie.setAttribute('y1',top);
        },
        drag: function() {
            var $element =  $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie=document.getElementById('PFClie_lie'+this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.setAttribute('x1',left);
            lie.setAttribute('y1',top);
            draglie.setAttribute('x1',left);
            draglie.setAttribute('y1',top);
        },
        stop: function() {
            var $element =  $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie=document.getElementById('PFClie_lie'+this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.setAttribute('x1',left);
            lie.setAttribute('y1',top);
            draglie.setAttribute('x1',left);
            draglie.setAttribute('y1',top);
            var arrowS=$element.attr('arrowS');
            var arrowE=$element.attr('arrowE');
            if(arrowS=='Y'){
                lie.setAttribute('marker-start', 'url(#PFClie_m1a' + this.id.substr(10, 3) + ')');
            }
            if(arrowE=='Y'){
                lie.setAttribute('marker-end', 'url(#PFClie_m2a' + this.id.substr(10, 3) + ')');
            }

        }
    });

    $('<div/>', {
        'class': 'PFCDiv',
        'id': 'PFClie_d2v'+this.num,
        'text': '',
        'arrowS': this.arrowS,
        'arrowE': this.arrowE
    }).appendTo('#bodydiv');
    $('#PFClie_d2v'+this.num).css('margin-left',0);
    $('#PFClie_d2v'+this.num).css({width:'14px',height:'14px',top: parseInt(this.bottom)+'px', left: parseInt(this.right)+'px', position:'absolute'});
    $('#PFClie_d2v'+this.num).draggable({
        start: function() {
            var $element =  $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie=document.getElementById('PFClie_lie'+this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.removeAttribute('marker-start');
            lie.removeAttribute('marker-end');
            lie.setAttribute('x2',left);
            lie.setAttribute('y2',top);
            draglie.setAttribute('x2',left);
            draglie.setAttribute('y2',top);
        },
        drag: function() {
            var $element =  $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie=document.getElementById('PFClie_lie'+this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.setAttribute('x2',left);
            lie.setAttribute('y2',top);
            draglie.setAttribute('x2',left);
            draglie.setAttribute('y2',top);
        },
        stop: function() {
            var $element = $(this);
            var top = $element.position().top;
            var left = $element.position().left;
            //
            var lie = document.getElementById('PFClie_lie' + this.id.substr(10, 3));
            var draglie=document.getElementById('PFClie_lid'+this.id.substr(10, 3));
            lie.setAttribute('x2', left);
            lie.setAttribute('y2', top);
            draglie.setAttribute('x2',left);
            draglie.setAttribute('y2',top);
            var arrowS = $element.attr('arrowS');
            var arrowE = $element.attr('arrowE');
            if (arrowS == 'Y') {
                lie.setAttribute('marker-start', 'url(#PFClie_m1a' + this.id.substr(10, 3) + ')');
            }
            if (arrowE == 'Y') {
                lie.setAttribute('marker-end', 'url(#PFClie_m2a' + this.id.substr(10, 3) + ')');
            }


        }
    });
    //line.addEventListener('mousedown', this, false);
    dragline.addEventListener('mousedown', this, false);
    //menu
    var menu = [ {
        name: 'Setting',
        id:'PFClie_mnU'+this.num,
        img: 'images/update.png',
        title: 'update button',
        PFC: this,
        fun: function (para,event,PFC) {
            var lie=document.getElementById('PFClie_lie'+PFC.num);
            var divobj1=document.getElementById('PFClie_d1v'+PFC.num);
            var arrowS=divobj1.getAttribute('arrowS');
            var arrowE=divobj1.getAttribute('arrowE');
            var lieStyle=lie.getAttribute('stroke-dasharray');
            var lieStroke=lie.getAttribute('stroke');
            var liestrokeWid=lie.getAttribute('stroke-width');

            if(arrowS=='Y') var fc1_check="checked='checked'";
            if(arrowE=='Y') var fc2_check="checked='checked'";
            if(lieStyle==null) { var fr1_check="checked='checked'";} else { var fr2_check="checked='checked'"; }

            var DialogHTml="<form id='PFClie_dlg"+PFC.num+"'>"+"\r\n"+
                "<table width='220' border='1' cellspacing='0'  >"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td width='68' align='right'>Arrow</td>"+"\r\n"+
                "    <td width='114'>"+"\r\n"+
                "      Left"+"\r\n"+
                "      <input type='checkbox' name='arrowL' id='PFClie_fc1"+PFC.num+"' "+fc1_check+"/>"+"\r\n"+
                "      Right"+"\r\n"+
                "      <input type='checkbox' name='arrowR' id='PFClie_fc2"+PFC.num+"' "+fc2_check+" />"+"\r\n"+
                "      </td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td align='right'>Line Style</td>"+"\r\n"+
                "    <td>"+"\r\n"+
                "     Solid<input type='radio' name='radio' id='PFClie_fr1"+PFC.num+"' value='radio' "+fr1_check+" />"+"\r\n"+
                "     Dash<input type='radio' name='radio' id='PFClie_fr2"+PFC.num+"' value='radio' "+fr2_check+" />"+"\r\n"+
                "    </td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td align='right'>Color</td>"+"\r\n"+
                "    <td><a href='javascript:void(0)' id='PFClie_fcp"+PFC.num+"' class='colorpicker' style='background-color:"+lieStroke+"'></a></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td align='right'>Line Size</td>"+"\r\n"+
                "    <td><input  type='text' id='PFClie_fws"+PFC.num+"' size='1' value='"+liestrokeWid+"' style='width:50px' onkeyup='javascript:event.target.setAttribute(\"value\",event.target.value);' /></td>"+
                "  </tr>"+"\r\n"+
                "  <tr>"+"\r\n"+
                "    <td colspan='2'><div align='center'>"+"\r\n"+
                "      <label>"+"\r\n"+
                "      <input type='Button' name='OK' id='PFClie_fb1"+PFC.num+"' value='OK'  />"+"\r\n"+
                "      </label>"+"\r\n"+
                "      <label>"+"\r\n"+
                "      <input type='Button' name='Cancel' id='PFClie_fb2"+PFC.num+"' value='Cancel'  />"+"\r\n"+
                "      </label>"+"\r\n"+
                "    </div></td>"+"\r\n"+
                "  </tr>"+"\r\n"+
                "</table>"+"\r\n"+
                "</form>";

            //PFCObj_WriteToFile(DialogHTml);
            var $dialogform =$(DialogHTml);
            $dialogform.appendTo('body');
            //
            $('#PFClie_fb1'+PFC.num).button().on("click",function(event){

                var lie=document.getElementById('PFClie_lie'+event.target.id.substr(10, 3));
                var liepath1=document.getElementById('PFClie_p1h'+event.target.id.substr(10, 3));
                var liepath2=document.getElementById('PFClie_p2h'+event.target.id.substr(10, 3));
                var divobj1=document.getElementById('PFClie_d1v'+event.target.id.substr(10, 3));
                var divobj2=document.getElementById('PFClie_d2v'+event.target.id.substr(10, 3));
                //Arrow show
                if ($('#PFClie_fc1'+event.target.id.substr(10,3) ).prop('checked')==true){
                    divobj1.setAttribute('arrowS','Y');
                    divobj2.setAttribute('arrowS','Y');
                    lie.setAttribute('marker-start', 'url(#PFClie_m1a' + this.id.substr(10, 3) + ')');
                }else{
                    divobj1.setAttribute('arrowS','N');
                    divobj2.setAttribute('arrowS','N');
                    lie.removeAttribute('marker-start');
                }
                if ($('#PFClie_fc2'+event.target.id.substr(10,3) ).prop('checked')==true){
                    divobj1.setAttribute('arrowE','Y');
                    divobj2.setAttribute('arrowE','Y');
                    lie.setAttribute('marker-end', 'url(#PFClie_m2a' + this.id.substr(10, 3) + ')');
                }else{
                    divobj1.setAttribute('arrowE','N');
                    divobj2.setAttribute('arrowE','N');
                    lie.removeAttribute('marker-end');
                }
                //Line style
                if ($('#PFClie_fr1'+event.target.id.substr(10,3) ).prop('checked')==true){
                    lie.removeAttribute('stroke-dasharray');
                }else if ($('#PFClie_fr2'+event.target.id.substr(10,3) ).prop('checked')==true){
                    line.setAttribute('stroke-dasharray', '2,2');
                }
                //Stroke Width color
                var rgb = $("#PFClie_fcp"+event.target.id.substr(10,3)).css("background-color").match(/\d+/g);
                var hex= "#" + ((1 << 24) + (Number(rgb[0]) << 16) + (Number(rgb[1]) << 8) + Number(rgb[2])).toString(16).slice(1);
                line.setAttribute('stroke', hex);
                liepath1.setAttribute('style', 'fill: '+hex+';');
                liepath2.setAttribute('style', 'fill: '+hex+';');
                var strokeWid=$("#PFClie_fws"+event.target.id.substr(10,3)).val();
                if($.isNumeric(strokeWid)==true){
                    line.setAttribute('stroke-width', strokeWid);
                }
                $("#bigpicker").remove();
                //close
                $('#PFClie_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            $('#PFClie_fb2'+PFC.num).button().on("click",function(event){
                $('#PFClie_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            //bigcolorpicker init
            $("#PFClie_fcp"+PFC.num).bigColorpicker(function(el,color){
                    $(el).css("background-color",color);
            });
            //dialog
            var $dialog = $('#PFClie_dlg'+PFC.num ).dialog({
                autoOpen: false,
                height: 220,
                width: 250,
                modal: true
            });

            $('#PFClie_dlg'+PFC.num).on('dialogclose', function(event) {
                $('#PFClie_dlg'+event.target.id.substr(10,3)  ).remove();
            });
            $dialog.dialog( "open" );
        }
    }, {
        name: 'delete',
        id:'PFClie_mnD'+this.num,
        img: 'images/delete.png',
        title: 'delete button',
        PFC: this,
        fun: function (para,event,PFC) {
            var svgobj = document.getElementById('PFClie_svg' + PFC.num);
            //free svgobj
            if (svgobj != null) {
                var parent = svgobj.parentNode;
                parent.removeChild(svgobj);
                var divobj1 = document.getElementById('PFClie_d1v' + PFC.num);
                parent.removeChild(divobj1);
                var divobj2 = document.getElementById('PFClie_d2v' + PFC.num);
                parent.removeChild(divobj2);
                //free Ul
                var ulobj=event.target.parentNode;
                if(ulobj!=null){
                    parent = ulobj.parentNode;
                    parent.removeChild(ulobj);
                }
            }
            //free ERP_PFCObj Class
            var PFCObj=null;
            for(var i=0;i<ERP_PFCObj.length;i++){
                PFCObj=ERP_PFCObj[i];
                if((PFCObj.num==PFC.num) && (PFCObj.type=='lie'))
                {
                    ERP_PFCObj[i]=null;
                    ERP_PFCObj.splice(i, 1);
                    break;
                }
            }
            alert('delete OK');
        }
    }];
    //Calling context menu
    $('#PFClie_d1v'+this.num).contextMenu('menu',menu ,{
        displayAround:'trigger',
        triggerOn:'click',
        mouseClick:'right'
    });
    $('#PFClie_d2v'+this.num).contextMenu('menu',menu ,{
        displayAround:'trigger',
        triggerOn:'click',
        mouseClick:'right'
    });
}

PFClie.prototype.handleEvent = function(e) {
    switch (e.type) {
        case 'mousedown':
            this.lineMouseDown(e);
            break;
        case 'mousemove':
            this.lineMouseMove(e);
            break;
        case 'mouseup':
            this.lineMouseUp(e);
            break;
    }
}

PFClie.prototype.lineMouseDown = function(evt) {

    this.draglineObj= evt.target;
    this.lineObj = document.getElementById('PFClie_lie'+this.num);
    //
    this.currentX = evt.clientX;
    this.currentY = evt.clientY;
    this.lineMatrix = this.draglineObj.getAttributeNS(null, "transform").slice(7,-1).split(' ');
    for(var i=0; i<this.lineMatrix.length; i++) {
        this.lineMatrix[i] = parseFloat(this.lineMatrix[i]);
    }
    this.lineObj.removeAttribute('marker-start');
    this.lineObj.removeAttribute('marker-end');
    //
    document.addEventListener('mouseup', this, false);
    document.addEventListener('mousemove', this, false);
}
PFClie.prototype.lineMouseMove = function(evt) {

    var dx = evt.clientX - this.currentX;
    var dy = evt.clientY - this.currentY;
    this.lineMatrix[4] += Math.round(dx);
    this.lineMatrix[5] += Math.round(dy);
    var newMatrix = "matrix(" + this.lineMatrix.join(' ') + ")";
    this.lineObj.setAttributeNS(null, "transform", newMatrix);
    this.draglineObj.setAttributeNS(null, "transform", newMatrix);
    this.currentX = evt.clientX;
    this.currentY = evt.clientY;
}

PFClie.prototype.lineMouseUp = function(evt) {

    if(this.lineObj != null){

        var x1=this.draglineObj.getAttribute('x1');
        var y1=this.draglineObj.getAttribute('y1');
        var x2=this.draglineObj.getAttribute('x2');
        var y2=this.draglineObj.getAttribute('y2');
        //$('#info1').text('x1:'+x1+' y1:'+y1+' x2:'+x2+' y2:'+y2+' dx:'+dx+' dy:'+dy+' currentX:'+this.currentX+' currentY:'+this.currentY);
        this.lineObj.setAttribute('x1',parseInt(x1)+this.lineMatrix[4]);
        this.lineObj.setAttribute('y1',parseInt(y1)+this.lineMatrix[5]);
        this.lineObj.setAttribute('x2',parseInt(x2)+this.lineMatrix[4]);
        this.lineObj.setAttribute('y2',parseInt(y2)+this.lineMatrix[5]);
        this.draglineObj.setAttribute('x1',parseInt(x1)+this.lineMatrix[4]);
        this.draglineObj.setAttribute('y1',parseInt(y1)+this.lineMatrix[5]);
        this.draglineObj.setAttribute('x2',parseInt(x2)+this.lineMatrix[4]);
        this.draglineObj.setAttribute('y2',parseInt(y2)+this.lineMatrix[5]);
        var newMatrix = 'matrix(1 0 0 1 0 0)';
        //
        this.lineObj.setAttributeNS(null, "transform", newMatrix);
        this.draglineObj.setAttributeNS(null, "transform", newMatrix);
        var divobj1=document.getElementById('PFClie_d1v'+this.num);
        var arrowS=divobj1.getAttribute('arrowS');
        var arrowE=divobj1.getAttribute('arrowE');
        if(arrowS=='Y')
          this.lineObj.setAttribute('marker-start', 'url(#PFClie_m1a'+this.num+')');
        if(arrowE=='Y')
          this.lineObj.setAttribute('marker-end', 'url(#PFClie_m2a'+this.num+')');
        //
        var x1=this.lineObj.getAttribute('x1');
        var y1=this.lineObj.getAttribute('y1');
        var x2=this.lineObj.getAttribute('x2');
        var y2=this.lineObj.getAttribute('y2');
        $('#PFClie_d1v'+this.num).css({top: parseInt(y1)+'px', left: parseInt(x1)+'px', position:'absolute'});
        $('#PFClie_d2v'+this.num).css({top: parseInt(y2)+'px', left: parseInt(x2)+'px', position:'absolute'});
        this.lineObj = null;
        this.draglineObj = null;
    }
    document.removeEventListener('mouseup', this, false);
    document.removeEventListener('mousemove', this, false);


}
