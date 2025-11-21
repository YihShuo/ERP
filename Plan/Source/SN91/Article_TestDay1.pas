unit Article_TestDay1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  PrnDbgeh, Menus, Comobj, IniFiles, ShellApi ,DateUtils, Buttons,FunUnit;

type
  TArticle_TestDay = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    EDSKU: TEdit;
    BB1: TBitBtn;
    DBGridEh3: TDBGridEh;
    IE1: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    Qtemp: TQuery;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    IE1ARTICLE: TStringField;
    IE1Activation_Time: TDateTimeField;
    IE1Approve_Time: TDateTimeField;
    IE1XieXing: TStringField;
    IE1SheHao: TStringField;
    IE1Production_Category: TStringField;
    IE1VERSION: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
    EDSKUditSubSQL:String;
  public
    { Public declarations }
    function GetMutiRYSubSQL(Str:String):String;
  end;

var
  Article_TestDay: TArticle_TestDay;
  NDate:TDate;

implementation

uses main1;


{$R *.dfm}

function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;

function TArticle_TestDay.GetMutiRYSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   Result:=tmResult;
   tmpList.Free;
 end else
 begin
   Result:=' ='''+Str+''' ';
 end;
end;


procedure TArticle_TestDay.BB1Click(Sender: TObject);
begin
  EDSKUditSubSQL:=GetMutiRYSubSQL(EDSKU.Text);
  {if Edit1.Text = '' then
  begin
    showmessage('VER cannot empty.');
    abort;   
  end; }
  with IE1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select ARTICLE,Activation_Time,Approve_Time,XieXing,SheHao,Production_Category,VERSION from (select xxzl.ARTICLE,IE_ARTICLEDATA.Activation_Time,IE_ARTICLEDATA.Approve_Time,IE_ARTICLEDATA.XieXing,IE_ARTICLEDATA.SheHao');
    sql.add(',Production_Category,IE_ARTICLEDATA.VERSION');
    sql.add('from IE_ARTICLEDATA');
    sql.Add('left join XXZL ON  IE_ARTICLEDATA.XieXing = XXZL.XieXing AND  IE_ARTICLEDATA.SheHao = XXZL.SheHao ');
    sql.add('where 1=1 ');
    if EDSKU.Text<>'' then
      sql.add('and  XXZL.ARTICLE '+EDSKUditSubSQL+' ');
    if Edit1.Text <>'' then
      sql.add('and  IE_ARTICLEDATA.VERSION like '''+Edit1.Text+ '%'' ');
    sql.add('union all');
    sql.add('select kfxxzl.ARTICLE,IE_ARTICLEDATA.Activation_Time,IE_ARTICLEDATA.Approve_Time,IE_ARTICLEDATA.XieXing,IE_ARTICLEDATA.SheHao,Production_Category,IE_ARTICLEDATA.VERSION');
    sql.add('from IE_ARTICLEDATA');
    sql.Add('left join kfxxzl ON  IE_ARTICLEDATA.XieXing = kfxxzl.XieXing AND  IE_ARTICLEDATA.SheHao = kfxxzl.SheHao ');
    sql.add('where 1=1');
    if EDSKU.Text<>'' then
      sql.add('and  kfxxzl.ARTICLE '+EDSKUditSubSQL+' ');
    if Edit1.Text <>'' then
      sql.add('and  IE_ARTICLEDATA.VERSION like '''+Edit1.Text+ '%'' ');
    sql.add(') xxzl group by ARTICLE,Activation_Time,Approve_Time,XieXing,SheHao,Production_Category,VERSION');
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
  BB4.Enabled:= true;
  BB5.Enabled:= true;
end;

procedure TArticle_TestDay.BB4Click(Sender: TObject);
begin
  with IE1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  DBGridEh3.Columns[1].ButtonStyle:=cbsellipsis;
  DBGridEh3.Columns[2].ButtonStyle:=cbsellipsis;
end;

procedure TArticle_TestDay.BB6Click(Sender: TObject);
begin
  with IE1 do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.Enabled:=false;
end;

procedure TArticle_TestDay.DBGridEh3EditButtonClick(Sender: TObject);
var Style, AR: String;
    i:integer;
begin
  if ((DBGridEh3.SelectedField.FieldName='Activation_Time') or (DBGridEh3.SelectedField.FieldName='Approve_Time')) then
  begin
    if DBGridEh3.SelectedField.FieldName='Activation_Time' then Style:=inputbox('Please Input Activation Time','Activation Time:','');
    if DBGridEh3.SelectedField.FieldName='Approve_Time' then Style:=inputbox('Please Input Approve Time','Approve Time:','');
    if Style<>'' then
    begin
      if not IsDate(Style) then
      begin
        showmessage ('Pls input datetime');
        abort;
      end;
      with IE1 do
      begin
        for i:=0 to IE1.RecordCount-1 do
        begin
          Edit;
          FieldByName('Activation_Time').Value:=Style;
          FieldByName('Approve_Time').Value:=Style;
          Next;
      end;
    end;
  end;
 end;
end;

procedure TArticle_TestDay.BB5Click(Sender: TObject);
begin
  with IE1 do
  begin
    first;
    while not eof do
    begin
      if updatestatus=usmodified then
      begin
        edit;
        if (not fieldbyname('Activation_Time').IsNull) or (not fieldbyname('Approve_Time').IsNull) then
        begin
          fieldbyname('Activation_Time').Value:=IE1.fieldbyname('Activation_Time').AsString;
          fieldbyname('Approve_Time').Value:=IE1.fieldbyname('Approve_Time').AsString;
          //fieldbyname('USERID').Value:=main.edit1.text;
          //fieldbyname('USERDATE').value:=Ndate;
          UpSQL1.Apply(ukmodify)
        end;
      end;
      next;
    end;
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGridEh3.Columns[1].ButtonStyle:=cbsnone;
  DBGridEh3.Columns[2].ButtonStyle:=cbsnone;
end;

end.
