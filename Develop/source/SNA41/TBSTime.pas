unit TBSTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ehlibBDE;

type
  TTBSTime1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2Testno: TStringField;
    Query2Article: TStringField;
    Query2TBReceive: TBooleanField;
    Query2Pending_S: TBooleanField;
    Query2StitchingDate: TDateTimeField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Testno: TStringField;
    Query1Article: TStringField;
    Query1TBReceive: TBooleanField;
    Query1StitchingPhuFinishDate: TDateTimeField;
    Panel1: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    Query1E_embroidery_get: TDateTimeField;
    Panel4: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField2: TBooleanField;
    Query1printing_get: TDateTimeField;
    Query1Pending_S: TBooleanField;
    Query3Pending_S: TBooleanField;
    Query4Pending_S: TBooleanField;
    Query2StitchingDate_first: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
       procedure SacnTBComplete();
       procedure SacnTBStitching();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TBSTime1: TTBSTime1;
  fill: Integer;

implementation

{$R *.dfm}

procedure TTBSTime1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TTBSTime1.FormDestroy(Sender: TObject);
begin
  TBStime1:=nil;
end;

procedure TTBSTime1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate,Pending_S from shoetest where Testno='''+edit1.text+'''  ');
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

procedure TTBSTime1.SacnTBComplete();
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set StitchingPhuFinishDate=getdate()  where Testno='''+edit1.text+'''');
      SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate,Pending_S from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
    Edit1.Clear;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set E_embroidery_get=getdate()  where Testno='''+edit3.text+'''');
      SQL.Add('select testno,Article,TBReceive,E_embroidery_get,Pending_S from shoetest where Testno='''+edit3.text+'''');
      Active:=true;
    end;
    Edit3.Clear;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set printing_get=getdate()  where Testno='''+edit4.text+'''');
      SQL.Add('select testno,Article,TBReceive,printing_get,Pending_S from shoetest where Testno='''+edit4.text+'''');
      Active:=true;
    end;
    Edit4.Clear;
  end;
end;

procedure TTBSTime1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13)  then
  begin
   with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_S,StitchingDate,convert(varchar, StitchingDate_first, 111) as StitchingDate_first from shoetest where Testno='''+edit2.text+'''  ');
      Active:=true;
    end;
  if query2.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit2.Clear;
     abort;
  end;
  if query2.FieldByName('TBReceive').value='1' then
  begin
      if query2.FieldByName('Pending_S').value='1' then
      begin
        showmessage('TB already Stitching OK');
        Edit1.Clear;
        abort;
      end;
      if query2.FieldByName('Pending_S').value<>'1' then
      begin
        if query2.FieldByName('StitchingDate_First').Value = null then begin
          fill := 1;
          SacnTBStitching();
        end
        else if query2.FieldByName('StitchingDate_First').Value <= formatdatetime('YYYY/MM/DD',now) then begin
          fill := 0;
          SacnTBStitching();
        end
        else begin
          fill := 1;
          SacnTBStitching();
        end;
      end;
  end;
 end;
end;

procedure TTBSTime1.SacnTBStitching();
begin

    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      if fill = 0 then
        SQL.Add('update shoetest set Pending_S =''1'',StitchingDate=getdate()  where Testno='''+edit2.text+'''')
      else
        SQL.Add('update shoetest set Pending_S =''1'',StitchingDate=getdate(),StitchingDate_First = getdate()  where Testno='''+edit2.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_S,StitchingDate,convert(varchar, StitchingDate_first, 111) as StitchingDate_first from shoetest where Testno='''+edit2.text+'''');
      Active:=true;
    end;
  Edit2.Clear;
 // end;
end;


procedure TTBSTime1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,E_embroidery_get,Pending_S from shoetest where Testno='''+edit3.text+'''  ');
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
      if query3.FieldByName('E_embroidery_get').value <> null then
      begin
        showmessage('TB already E_embroidery_get ready OK');
        edit3.Clear;
        abort;
      end;
      if query3.FieldByName('E_embroidery_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBSTime1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,printing_get,Pending_S from shoetest where Testno='''+edit4.text+'''  ');
      Active:=true;
    end;
  if query4.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit4.Clear;
     abort;
  end;
  if query4.FieldByName('TBReceive').value='1' then
  begin
      if query4.FieldByName('printing_get').value <> null then
      begin
        showmessage('TB already printing_get OK');
        edit4.Clear;
        abort;
      end;
      if query4.FieldByName('printing_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBSTime1.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate,Pending_S from shoetest where CONVERT(varchar(100), StitchingPhuFinishDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
    Active:=true;
  end;
end;

procedure TTBSTime1.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,StitchingPhuFinishDate,Pending_S from shoetest where CONVERT(varchar(100), StitchingPhuFinishDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_S,StitchingDate,convert(varchar, StitchingDate_first, 111) as StitchingDate_first from shoetest where CONVERT(varchar(100), StitchingDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
end;

end.
