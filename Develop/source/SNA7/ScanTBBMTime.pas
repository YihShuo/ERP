unit ScanTBBMTime;

interface
                         
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ehlibBDE;

type
  TScanTBBMTime1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Testno: TStringField;
    Query1Article: TStringField;
    Query1Finish: TBooleanField;
    Query1TBReceive: TBooleanField;
    Query1DMatArriveDate: TDateTimeField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    Query1DMatArriveDateR3: TDateTimeField;
    Panel5: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField2: TBooleanField;
    Query1Assemblecomplete: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
     procedure SacnTBComplete();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanTBBMTime1: TScanTBBMTime1;

implementation

uses ScanTBComplete;

{$R *.dfm}

procedure TScanTBBMTime1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TScanTBBMTime1.FormDestroy(Sender: TObject);
begin
  ScanTBcomplete1:=nil;
end;

procedure TScanTBBMTime1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13)  then
  begin
   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,DMatArriveDate,Finish from shoetest where Testno='''+edit1.text+'''  ');
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
      if query1.FieldByName('DMatArriveDate').value <> null then
      begin
        showmessage('TB already Bottom Material ready OK');
        Edit1.Clear;
        abort;
      end;
      if query1.FieldByName('DMatArriveDate').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TScanTBBMTime1.SacnTBComplete();
begin
  if PageControl1.ActivePageIndex = 2 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set DMatArriveDate=getdate()  where Testno='''+edit1.text+'''');
      SQL.Add('select testno,Article,TBReceive,DMatArriveDate,Finish from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
    Edit1.Clear;
  end
  else if PageControl1.ActivePageIndex = 0 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set DMatArriveDateR3=getdate()  where Testno='''+edit2.text+'''');
      SQL.Add('select testno,Article,TBReceive,DMatArriveDateR3 from shoetest where Testno='''+edit2.text+'''');
      Active:=true;
    end;
    Edit2.Clear;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set Assemblecomplete=getdate()  where Testno='''+edit3.text+'''');
      SQL.Add('select testno,Article,TBReceive,Assemblecomplete from shoetest where Testno='''+edit3.text+'''');
      Active:=true;
    end;
    Edit3.Clear;
  end
end;
procedure TScanTBBMTime1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,DMatArriveDateR3 from shoetest where Testno='''+edit2.text+'''  ');
      Active:=true;
    end;
  if query2.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit2.Clear;
     abort;
  end;
  if query2.FieldByName('TBReceive').value='1' then
  begin
      if query2.FieldByName('DMatArriveDateR3').value <> null then
      begin
        showmessage('TB already DMatArriveDateR3 OK');
        edit2.Clear;
        abort;
      end;
      if query2.FieldByName('DMatArriveDateR3').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TScanTBBMTime1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Assemblecomplete from shoetest where Testno='''+edit3.text+'''  ');
      Active:=true;
    end;
  if query3.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit3.Clear;
     abort;
  end;
  if query3.FieldByName('TBReceive').value='1' then
  begin
      if query3.FieldByName('Assemblecomplete').value <> null then
      begin
        showmessage('TB already Assemblecomplete ready OK');
        edit3.Clear;
        abort;
      end;
      if query3.FieldByName('Assemblecomplete').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;end;

procedure TScanTBBMTime1.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TScanTBBMTime1.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,DMatArriveDateR3 from shoetest where CONVERT(varchar(100), DMatArriveDateR3, 112) = CONVERT(varchar(100), GETDATE(), 112)');
    Active:=true;
  end;
end;

procedure TScanTBBMTime1.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,DMatArriveDateR3 from shoetest where CONVERT(varchar(100), DMatArriveDateR3, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Assemblecomplete from shoetest where CONVERT(varchar(100), Assemblecomplete, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,DMatArriveDate,Finish from shoetest where CONVERT(varchar(100), DMatArriveDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
end;

end.
