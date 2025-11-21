unit TBCSTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ehlibBDE;

type
  TTBCSTime1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;                                                                               
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1testno: TStringField;
    Query1Article: TStringField;
    Query1TBReceive: TBooleanField;
    Query1Pending_C: TBooleanField;
    Query1CutDate: TDateTimeField;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    Query1FirstMatOutDate: TDateTimeField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel3: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    Query1E_embroidery_send: TDateTimeField;
    Panel4: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    Query1printing_send: TDateTimeField;
    Query2Pending_C: TBooleanField;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    Label5: TLabel;
    Edit5: TEdit;
    DBGridEh5: TDBGridEh;
    DataSource5: TDataSource;
    Query5: TQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    BooleanField6: TBooleanField;
    Query1E_embroidery_get: TDateTimeField;
    Panel6: TPanel;
    Label6: TLabel;
    Edit6: TEdit;
    DBGridEh6: TDBGridEh;
    DataSource6: TDataSource;
    Query6: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    BooleanField7: TBooleanField;
    Query1printing_get: TDateTimeField;
    Query6Pending_C: TBooleanField;
    Query5Pending_C: TBooleanField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Query1CutDate_First: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
       procedure SacnTBCutting();
       procedure SacnTBComplete();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TBCSTime1: TTBCSTime1;
  fill: Integer;

implementation

{$R *.dfm}

procedure TTBCSTime1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TTBCSTime1.FormDestroy(Sender: TObject);
begin
  TBCStime1:=nil;
end;

procedure TTBCSTime1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13)  then
  begin
   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,CutDate ,convert(varchar, CutDate_First, 111) as CutDate_First from shoetest where Testno='''+edit1.text+'''  ');
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
      if query1.FieldByName('Pending_C').value='1' then
      begin
        showmessage('TB already Cutting OK');
        Edit1.Clear;
        abort;
      end;
      if query1.FieldByName('Pending_C').value<>'1' then
      begin
        if query1.FieldByName('CutDate_First').Value = null then begin
          fill := 1;
          SacnTBCutting();
        end
        else if query1.FieldByName('CutDate_First').Value <= formatdatetime('YYYY/MM/DD',now) then begin
          fill := 0;
          SacnTBCutting();
        end
        else begin
          fill := 1;
          SacnTBCutting();
        end;
      end;
  end;
 end;
end;



procedure TTBCSTime1.SacnTBCutting();
begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      if fill = 0 then
        SQL.Add('update shoetest set Pending_C =''1'',CutDate=getdate()  where Testno='''+edit1.text+'''')
      else
        SQL.Add('update shoetest set Pending_C =''1'',CutDate=getdate(),CutDate_First = getdate()  where Testno='''+edit1.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_C,CutDate,convert(varchar, CutDate_First, 111) as CutDate_First from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
  Edit1.Clear;
 // end;
end;

procedure TTBCSTime1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13)  then
  begin
   with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,FirstMatOutDate,Pending_C from shoetest where Testno='''+edit2.text+'''  ');
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
      if query2.FieldByName('FirstMatOutDate').value <> null then
      begin
        showmessage('TB already CuttingPreparation OK');
        edit2.Clear;
        abort;
      end;
      if query2.FieldByName('FirstMatOutDate').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBCSTime1.SacnTBComplete();
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set FirstMatOutDate=getdate()  where Testno='''+edit2.text+'''');
      SQL.Add('select testno,Article,TBReceive,FirstMatOutDate,Pending_C from shoetest where Testno='''+edit2.text+'''');
      Active:=true;
    end;
    Edit2.Clear;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set E_embroidery_send=getdate()  where Testno='''+edit3.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_C,E_embroidery_send from shoetest where Testno='''+edit3.text+'''');
      Active:=true;
    end;
    Edit3.Clear;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set printing_send=getdate()  where Testno='''+edit4.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_C,printing_send from shoetest where Testno='''+edit4.text+'''');
      Active:=true;
    end;
    Edit4.Clear;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set E_embroidery_get=getdate()  where Testno='''+edit5.text+'''');
      SQL.Add('select testno,Article,TBReceive,E_embroidery_get,Pending_C from shoetest where Testno='''+edit5.text+'''');
      Active:=true;
    end;
    Edit5.Clear;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set printing_get=getdate()  where Testno='''+edit6.text+'''');
      SQL.Add('select testno,Article,TBReceive,printing_get,Pending_C from shoetest where Testno='''+edit6.text+'''');
      Active:=true;
    end;
    Edit6.Clear;
  end;
end;


procedure TTBCSTime1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,E_embroidery_send from shoetest where Testno='''+edit3.text+'''  ');
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
      if query3.FieldByName('E_embroidery_send').value <> null then
      begin
        showmessage('TB already E_embroidery_send OK');
        edit3.Clear;
        abort;
      end;
      if query3.FieldByName('E_embroidery_send').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBCSTime1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,printing_send from shoetest where Testno='''+edit4.text+'''  ');
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
      if query4.FieldByName('printing_send').value <> null then
      begin
        showmessage('TB already printing_send OK');
        edit4.Clear;
        abort;
      end;
      if query4.FieldByName('printing_send').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBCSTime1.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TTBCSTime1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,E_embroidery_get,Pending_C from shoetest where Testno='''+edit5.text+'''  ');
      Active:=true;
    end;
  if query5.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit5.Clear;
     abort;
  end;
  if query5.FieldByName('TBReceive').value='1' then
  begin
      if query5.FieldByName('E_embroidery_get').value <> null then
      begin
        showmessage('TB already E_embroidery_get ready OK');
        edit5.Clear;
        abort;
      end;
      if query5.FieldByName('E_embroidery_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBCSTime1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,printing_get,Pending_C from shoetest where Testno='''+edit6.text+'''  ');
      Active:=true;
    end;
  if query6.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit6.Clear;
     abort;
  end;
  if query6.FieldByName('TBReceive').value='1' then
  begin
      if query6.FieldByName('printing_get').value <> null then
      begin
        showmessage('TB already printing_get OK');
        edit6.Clear;
        abort;
      end;
      if query6.FieldByName('printing_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TTBCSTime1.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,FirstMatOutDate,Pending_C from shoetest where CONVERT(varchar(100), FirstMatOutDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
    Active:=true;
  end;
end;

procedure TTBCSTime1.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,FirstMatOutDate,Pending_C from shoetest where CONVERT(varchar(100), FirstMatOutDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,E_embroidery_send from shoetest where CONVERT(varchar(100), E_embroidery_send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,printing_send from shoetest where CONVERT(varchar(100), printing_send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,E_embroidery_get,Pending_C from shoetest where CONVERT(varchar(100), E_embroidery_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,printing_get,Pending_C from shoetest where CONVERT(varchar(100), printing_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 5 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,CutDate,convert(varchar, CutDate_First, 111) as CutDate_First from shoetest where CONVERT(varchar(100), CutDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
end;

end.
