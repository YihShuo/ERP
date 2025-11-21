{ $HDR$}
{**********************************************************************}
{                 Information Knowledge Technology CO., LTD}
{**********************************************************************}
{}
{ $Log:  10164: MsgMANAGER.pas
{
{   Rev 1.0    92/9/30 下午 02:23:52  levi    Version: 多國語言
{ 加入版本控制系統中
}
(* =================================Blue Fox================================= *)
(* 單 元 名 稱：MsgMANAGER
(* 建 檔 日 期：92/9/25
(* 檔 案 製 作：
(* =================================Blue Fox================================= *)
(* 附 屬 檔 案：
(* 說 明&用 途： 多國語言物件
(*
(* 參 考 資 料：
(*
(* 更 新 說 明：
(*
(* =================================Blue Fox================================= *)
(*      不要覺得註解長，註解是給以後的你或別人看的，請保持註解的完整性        *)
(* =======================================================================2.0 *)
(* 注解說明：                                                                 *)
(*          1. 在程式敘述中加入注解 格式為                                    *)
(*                  // TODO 程式師, 修改日期,工作模式, 修改描述               *)
(*             例如 // TODO levi,01/12/21,Add,取得日期。                      *)
(*             而工作模式有  Add,A   為新增敘述 ;                             *)
(*                           Edit,E  為修改舊有敘述;                          *)
(*                           Make,M  為刪除但不能將敘述刪除而是改變為注解;    *)
(*                           O       為其它不在上面的模式;                    *)
(*          2. 在宣告程序的後方必加入本程序的功能說明用 // 為注解符號。       *)
(* ========================================================================== *)
unit MsgMANAGER;

interface
uses
  windows, SysUtils, Variants, Classes, dbClient, forms, idglobal;

{ TMessageManger }
type
  TMessageManager = class(TObject)
  public
    cd: TClientDataSet;
    RCMessageToggle: Boolean; // 要顯示為id:caption的型式
    constructor Create; virtual;
    destructor Destroy; override;
    procedure AddFile(aFileName: string);
      //加入File,程式應於initialize加入所須之XML file
    function LoadStr(aIdent: Longint): string;
      //由所有載入模組找尋字串, 若無用sysutil由exe中
    procedure ExportToText(fname: string; acd: TClientDataSet = nil);
      //輸出成文字檔
    procedure InportFromText(fname: string; acd: TClientDataSet = nil);
      //讀入文字檔
  end;
var
  gMsgManager: TMessageManager;

function cLoadStr(aIdent: Longint; sDefault: string = ''): string;
function cLoadStrFrm(aIdent: Longint; const Args: array of const; sDefault:
  string = ''):
  string;

function MsgMang: TMessageManager;

implementation

function cLoadStr(aIdent: Longint; sDefault: string = ''): string;
var
  ss: string;
begin
  ss := MsgMang.LoadStr(aIdent);
  if (ss = '') or (ss = '-') then
    ss := sDefault;

  if not MsgMang.RCMessageToggle then
    Result := ss
  else
    Result := inttostr(aIdent) + ' : ' + ss;

  {  Result := MsgMang.LoadStr(aIdent);
    if Result='' then
      Result:=sDefault;}
end;

function cLoadStrFrm(aIdent: Longint; const Args: array of const; sDefault:
  string = ''):
  string;
begin
  Result := Format(cLoadStr(aIdent, sDefault), Args);
end;

function MsgMang: TMessageManager;
begin
  if gMsgManager = nil then
    gMsgManager := TMessageManager.Create;
  Result := gMsgManager;
end;

constructor TMessageManager.Create;
begin
  inherited Create;
  cd := nil;
end;

destructor TMessageManager.Destroy;
begin
  if cd <> nil then
    cd.free;
  inherited Destroy;
end;

procedure TMessageManager.AddFile(aFileName: string);
var
  tmpcd: TClientDataSet;
begin
  //若為空時則載入所指定檔案
  if cd = nil then
  begin
    cd := TclientDataSet.create(application);
    cd.LoadFromFile(aFileName);
    cd.IndexFieldNames := 'id';
  end
  else
  begin //若己存在只加入所指定的檔案
    tmpcd := TclientDataSet.create(application);
    try
      tmpcd.LoadFromFile(aFileName);
      tmpcd.first;
      if not cd.Locate('id', tmpcd.fieldbyname('id').asstring, []) then
        //  發現第 1 筆資料不存在時 --> 之前沒 append (以第 1 筆資料當指標即可)
        while not tmpcd.eof do
        begin
          cd.append;
          cd['id;vValue;vComment'] := tmpcd['id;vValue;vComment'];
          cd.post;
          tmpcd.next;
        end;
      cd.MergeChangeLog;
    finally
      tmpcd.free;
    end;
  end;
end;

function TMessageManager.LoadStr(aIdent: Longint): string;
begin
  Result := '';
  if cd <> nil then
    // if cd.Locate('id', aIdent, []) then
    if cd.FindKey([aIdent]) then
      //TODO 2004/1/15 levi 修正尋找字串的方式改為用findkey
      Result := cd.fieldbyname('vValue').asstring;
end;

procedure TMessageManager.ExportToText(fname: string; acd: TClientDataSet =
  nil);
var
  lfile: TStringlist;
begin
  if acd = nil then
    acd := cd;

  lFile := TStringlist.create;
  acd.first;
  try
    while not acd.eof do
    begin
      lFile.add(format('%6.6d', [acd.fields[0].asinteger]) + '  ,' +
        acd.Fields[1].asstring + '  ,'
        + acd.Fields[2].asstring);
      acd.next;
    end;
    lfile.SaveToFile(fname);
  finally
    lfile.free;
  end;
end;

procedure TMessageManager.InportFromText(fname: string; acd: TClientDataSet =
  nil);
var
  lfile: TStringlist;
  i: integer;
  s1, s2, s3: string;
begin
  if acd = nil then
    acd := cd;
  lFile := TStringlist.create;
  try
    lFile.LoadFromFile(fname);
    for i := 0 to lfile.count - 1 do
    begin
      s3 := lfile[i];
      s1 := Trim(fetch(s3, ',', True));
      s2 := Trim(fetch(s3, ',', True));
      if Trim(s3) <> '' then
      begin
        acd.Append;
        acd.fields[0].asstring := s1;
        acd.fields[1].asstring := s2;
        acd.fields[2].asstring := s3;
        acd.post;
      end;
      acd.MergeChangeLog;
    end;
  finally
    lfile.free;
  end;
end;
initialization

finalization
  (* if Assigned(gMsgManager) then
   gMsgManager.Free;  // TODO levi 92/9/25 加入修正沒有free 的錯誤
   *)
end.

