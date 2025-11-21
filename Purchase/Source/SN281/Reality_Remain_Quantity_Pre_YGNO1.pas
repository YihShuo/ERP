unit Reality_Remain_Quantity_Pre_YGNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TReality_Remain_Quantity_Pre_YGNO = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    YGNOEdit: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1CQDH: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1CSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Label1: TLabel;
    CLBHEdit: TEdit;
    Label3: TLabel;
    ZSYWJCEdit: TEdit;
    Button2: TButton;
    YGZLS2Qry: TQuery;
    Query1YGNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetKCZKMemo():String;
  public
    { Public declarations }
  end;

var
  Reality_Remain_Quantity_Pre_YGNO: TReality_Remain_Quantity_Pre_YGNO;

implementation

uses Reality_Remain_Quantity_Pre1, main1;

{$R *.dfm}

procedure TReality_Remain_Quantity_Pre_YGNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TReality_Remain_Quantity_Pre_YGNO.FormDestroy(Sender: TObject);
begin
  Reality_Remain_Quantity_Pre_YGNO:=nil;
end;

procedure TReality_Remain_Quantity_Pre_YGNO.Button1Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YGNO, CLBH, YWPM, ZWPM, CQDH, DWBH, Sum(CLSL) as CLSL,CSBH,ZSYWJC from (');
    SQL.Add('Select YGZLS2.*, ZSZL.ZSYWJC, CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH ');
    SQL.Add('from YGZLS2');
    SQL.Add('left join CLZL on CLZL.cldh=YGZLS2.CLBH');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=YGZLS2.CSBH');
    SQL.Add('where YGZLS2.YGNO='''+YGNOEdit.Text+''' ');
    if CLBHEdit.Text<>'' then
    SQL.Add(' and YGZLS2.CLBH like '''+CLBHEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
    SQL.Add(' and ZSZL.ZSYWJC like '''+ZSYWJCEdit.Text+'%'' ');
    SQL.Add(') YGZLS2 Group by YGNO, CLBH,YWPM,ZWPM,CQDH,DWBH,CSBH,ZSYWJC');
    SQL.Add('Order by CLBH');
    Active:=true;
  end;
  //
end;

function TReality_Remain_Quantity_Pre_YGNO.GetKCZKMemo():String;
var i:integer;
    Str:string;
begin
   Str:='';
   YGZLS2Qry.Active:=true;
   for i:=0 to YGZLS2Qry.RecordCount-1 do
   begin
     Str:=Str+YGZLS2Qry.FieldByName('SIZE').AsString+':'+YGZLS2Qry.FieldByName('CLSL').AsString+',';
     YGZLS2Qry.Next;
   end;
   YGZLS2Qry.Active:=false;
   Result:='KCZK@'+Copy(Str,1,length(Str)-1);
end;

procedure TReality_Remain_Quantity_Pre_YGNO.Button2Click(Sender: TObject);
var bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    i:integer;
begin
    if Reality_Remain_Quantity_Pre.qryKCZK.RequestLive=false then
    begin
      Showmessage('Please Insert Click First');
      exit;
    end;
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with Reality_Remain_Quantity_Pre.qryKCZK do
          begin
            insert;
            FieldByName('CLBH').Value:=query1.fieldbyname('CLBH').Value;
            FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
            FieldByName('DWBH').Value:=query1.fieldbyname('DWBH').Value;
            FieldByName('Qty').Value:=query1.fieldbyname('CLSL').Value;
            //Memo
            FieldByName('Memo').Value:=GetKCZKMemo();
            FieldByName('ZSBH').Value:=query1.fieldbyname('CSBH').Value;
            Post;
          end;
        end;
        finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
    //
end;

procedure TReality_Remain_Quantity_Pre_YGNO.DBGridEh1DblClick(
  Sender: TObject);
begin
  if Reality_Remain_Quantity_Pre.qryKCZK.RequestLive=false then
  begin
    Showmessage('Please Insert Click First');
    exit;
  end;
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with Reality_Remain_Quantity_Pre.qryKCZK do
  begin
    insert;
    FieldByName('CLBH').Value:=query1.fieldbyname('CLBH').Value;
    FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
    FieldByName('DWBH').Value:=query1.fieldbyname('DWBH').Value;
    FieldByName('Qty').Value:=query1.fieldbyname('CLSL').Value;
    //Memo
    FieldByName('Memo').Value:=GetKCZKMemo();
    FieldByName('ZSBH').Value:=query1.fieldbyname('CSBH').Value;
    Post;
  end;
end;

procedure TReality_Remain_Quantity_Pre_YGNO.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
