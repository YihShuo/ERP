unit ScanTBSSMTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TScanTBSSMTime1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Testno: TStringField;
    Query1Article: TStringField;
    Query1Finish: TBooleanField;
    Query1TBReceive: TBooleanField;
    Query1StitchingPhuFinishDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
     procedure SacnTBComplete();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanTBSSMTime1: TScanTBSSMTime1;

implementation

uses ScanTBComplete;

{$R *.dfm}

procedure TScanTBSSMTime1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TScanTBSSMTime1.FormDestroy(Sender: TObject);
begin
  ScanTBcomplete1:=nil;
end;

procedure TScanTBSSMTime1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13)  then
  begin
   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate from shoetest where Testno='''+edit1.text+'''  ');
      Active:=true;
    end;
  if query1.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit1.Clear;
     abort;
  end;
  if query1.FieldByName('TBReceive').value='1' then
  begin
      if query1.FieldByName('StitchingPhuFinishDate').value <> null then
      begin
        showmessage('TB already Stitching sub Material ready OK');
        Edit1.Clear;
        abort;
      end;
      if query1.FieldByName('StitchingPhuFinishDate').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TScanTBSSMTime1.SacnTBComplete();
begin

    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set StitchingPhuFinishDate=getdate()  where Testno='''+edit1.text+'''');
      SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
  Edit1.Clear;

end;
end.
