unit SOPMyProcClass1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TParameter = array of string;
  TMyFuncType = function(para:TParameter): boolean of object;
  TMyProcClass = class
  published
    function KT_SOPCut(para:TParameter): boolean;
    function KT_SOPCutCC(para:TParameter): boolean;
    //function Func3(para:TParameter): string;
  public
    function Call(MethodName: string; para:TParameter): boolean;
  end;
implementation
  uses main1,SOPDocu1,FunUnit;
//
function TMyProcClass.KT_SOPCut(para:TParameter): boolean;
begin
 showmessage(para[0]+':'+para[1]);
end;
//
function TMyProcClass.KT_SOPCutCC(para:TParameter): boolean;
var tmpList,SplitList:TStringlist;
    i:integer;
    XieXing,SheHao,BWBH,SIZE,XXCC:string;
begin
   //showmessage(para[0]+':'+para[1]);
   if SOPDocu.XXZLS.FieldByName('BWBH').AsString=para[0] then
   begin
     XieXing:=SOPDocu.XXZLS.FieldByName('XieXing').AsString;
     SheHao:=SOPDocu.XXZLS.FieldByName('SheHao').AsString;
     BWBH:=SOPDocu.XXZLS.FieldByName('BWBH').AsString;
     with SOPDocu.ExeQuery do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select SIZE from  KT_SOPCutS where XieXing='''+XieXing+''' and SheHao='''+SheHao+''' and BWBH='''+BWBH+''' ');
       Active:=true;
       if RecordCount=0 then
       begin
         SQL.Add('Insert into KT_SOPCutS');
         SQL.Add('Select '''+XieXing+''' as XieXing,'''+SheHao+'''as SheHao, ');
         SQL.Add('       '''+BWBH+''' as BWBH,XXCC as SIZE,GJCC as XXCC,'''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,1 as YN from  XXGJS where XieXing='''+XieXing+''' and GJLB=''100'' ');
         ExecSQL();
       end;
       Active:=false;
     end;
     //更新Size分段
     tmpList:=TStringlist.Create;
     Para[1]:=stringreplace(Para[1], 'T', '.5',[rfReplaceAll, rfIgnoreCase]);
     tmpList.CommaText:=Para[1]; // , 逗號分隔
     with SOPDocu.ExeQuery do
     begin
       SQL.Clear;
       SplitList:=TStringlist.Create;
       SplitList.Delimiter := ':';
       for i:=0 to tmpList.Count-1 do
       begin
         SplitList.DelimitedText :=tmpList[i];
         SIZE:=SplitList[0];
         XXCC:=SplitList[1];
         SQL.Add('update KT_SOPCutS set XXCC=(select SIZE from KT_SOPCutS where XieXing='''+XieXing+''' and SheHao='''+SheHao+''' and BWBH='''+BWBH+''' and convert(float,SIZE)='+XXCC+' ),USERID='''+main.Edit1.Text+''',USERDATE=GetDate() ');
         SQL.Add('where XieXing='''+XieXing+''' and SheHao='''+SheHao+''' and BWBH='''+BWBH+''' and convert(float,SIZE)='+SIZE);
       end;
       //funcObj.WriteErrorLog(sql.Text);
       ExecSQL();
       SplitList.Free;
     end;
     tmpList.Free;
   end;

end;

function TMyProcClass.Call(MethodName: string; para:TParameter): boolean;
var m: TMethod;
begin
  if Self.MethodAddress(MethodName)<>nil then
  begin
    m.Code := Self.MethodAddress(MethodName); //find method code
    m.Data := pointer(Self); //store pointer to object instance
    Result := TMyFuncType(m)(para);
  end else
  begin
    Showmessage('Proc:'+MethodName+' not found');
  end;
end;


end.
