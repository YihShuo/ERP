unit MaterialReadyTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, ehlibBDE;
                              
type
  TMaterialReadyTime1 = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1testno: TStringField;
    Query1Article: TStringField;
    Query1TBReceive: TBooleanField;
    Query1Pending_P: TBooleanField;
    Query1PreparationDate: TDateTimeField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DataSource2: TDataSource;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    Query1S_material: TDateTimeField;
    Panel3: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    Query1lamination_send: TDateTimeField;
    Panel4: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    BooleanField5: TBooleanField;
    BooleanField6: TBooleanField;
    Query1lamination_get: TDateTimeField;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel2: TPanel;
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
    BooleanField7: TBooleanField;
    BooleanField8: TBooleanField;
    DataSource6: TDataSource;
    Query6: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    BooleanField9: TBooleanField;
    BooleanField10: TBooleanField;
    DataSource7: TDataSource;
    Query7: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    BooleanField11: TBooleanField;
    BooleanField12: TBooleanField;
    Query5BaoHe_send: TDateTimeField;
    Panel6: TPanel;
    Label6: TLabel;
    Edit6: TEdit;
    DBGridEh6: TDBGridEh;
    DataSource8: TDataSource;
    Query8: TQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    BooleanField13: TBooleanField;
    BooleanField14: TBooleanField;
    Query6BaoHe_get: TDateTimeField;
    Panel7: TPanel;
    Label7: TLabel;
    Edit7: TEdit;
    DBGridEh7: TDBGridEh;
    Query7LiMao_Send: TDateTimeField;
    Panel8: TPanel;
    Label8: TLabel;
    Edit8: TEdit;
    DBGridEh8: TDBGridEh;
    Query8LiMao_Get: TDateTimeField;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Panel9: TPanel;
    Label15: TLabel;
    Edit9: TEdit;
    DBGridEh9: TDBGridEh;
    Panel10: TPanel;
    Label16: TLabel;
    Edit10: TEdit;
    DBGridEh10: TDBGridEh;
    DataSource9: TDataSource;
    Query9: TQuery;
    StringField15: TStringField;
    StringField16: TStringField;
    BooleanField15: TBooleanField;
    BooleanField16: TBooleanField;
    DataSource10: TDataSource;
    Query10: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    BooleanField17: TBooleanField;
    BooleanField18: TBooleanField;
    Query9insole_send: TDateTimeField;
    Query10lace_send: TDateTimeField;
    DBGridEh11: TDBGridEh;
    Memo1: TMemo;
    Query1memo2: TMemoField;
    DataSource11: TDataSource;
    Query11: TQuery;
    Query5Class: TStringField;
    Query5Season: TStringField;
    Query5Stage: TStringField;
    Query5SR: TStringField;
    Query5Testno: TStringField;
    Query5SO: TStringField;
    Query5Supplier: TStringField;
    Query5SupplierName: TStringField;
    Query5Status: TStringField;
    Query5ETA: TStringField;
    Query5Material: TStringField;
    Query5MaterialDES: TStringField;
    Query5Memo: TStringField;
    Query2memo2: TMemoField;
    DBGridEh12: TDBGridEh;
    DataSource12: TDataSource;
    Query12: TQuery;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    Memo2: TMemo;
    Edit11: TEdit;
    Label17: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label18: TLabel;
    Label19: TLabel;
    Edit12: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label20: TLabel;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    Panel11: TPanel;
    Label21: TLabel;
    Edit13: TEdit;
    Panel12: TPanel;
    Label22: TLabel;
    Edit14: TEdit;
    Panel13: TPanel;
    Label23: TLabel;
    Edit15: TEdit;
    Panel14: TPanel;
    Label24: TLabel;
    Edit16: TEdit;
    DBGridEh13: TDBGridEh;
    DBGridEh14: TDBGridEh;
    DBGridEh15: TDBGridEh;
    DBGridEh16: TDBGridEh;
    DataSource13: TDataSource;
    Query13: TQuery;
    StringField32: TStringField;
    StringField33: TStringField;
    BooleanField19: TBooleanField;
    BooleanField20: TBooleanField;
    DataSource14: TDataSource;
    Query14: TQuery;
    StringField34: TStringField;
    StringField35: TStringField;
    BooleanField21: TBooleanField;
    BooleanField22: TBooleanField;
    DataSource15: TDataSource;
    Query15: TQuery;
    StringField36: TStringField;
    StringField37: TStringField;
    BooleanField23: TBooleanField;
    BooleanField24: TBooleanField;
    DataSource16: TDataSource;
    Query16: TQuery;
    StringField38: TStringField;
    StringField39: TStringField;
    BooleanField25: TBooleanField;
    BooleanField26: TBooleanField;
    Query13kietphong_Send: TDateTimeField;
    Query14kietphong_Get: TDateTimeField;
    Query15Amico_Send: TDateTimeField;
    Query16Amico_Get: TDateTimeField;
    Query11ywsm: TStringField;
    Query12ywsm: TStringField;
    tempqry: TQuery;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    Panel15: TPanel;
    Label25: TLabel;
    Edit17: TEdit;
    DBGridEh17: TDBGridEh;
    Panel16: TPanel;
    Label26: TLabel;
    Edit18: TEdit;
    DBGridEh18: TDBGridEh;
    Query17: TQuery;
    Query17testno: TStringField;
    Query17Article: TStringField;
    Query17TBReceive: TBooleanField;
    Query17Pending_P: TBooleanField;
    DataSource17: TDataSource;
    DataSource18: TDataSource;
    Query18: TQuery;
    Query18testno: TStringField;
    Query18Article: TStringField;
    Query18TBReceive: TBooleanField;
    Query18Pending_P: TBooleanField;
    Query17Laser_send: TDateTimeField;
    Query18Laser_get: TDateTimeField;
    TabSheet17: TTabSheet;
    Panel17: TPanel;
    Label27: TLabel;
    Edit19: TEdit;
    DBGridEh19: TDBGridEh;
    DataSource19: TDataSource;
    Query19: TQuery;
    StringField40: TStringField;
    StringField41: TStringField;
    BooleanField27: TBooleanField;
    BooleanField28: TBooleanField;
    TabSheet18: TTabSheet;
    Panel18: TPanel;
    Label28: TLabel;
    Edit20: TEdit;
    DBGridEh20: TDBGridEh;
    Query20: TQuery;
    StringField42: TStringField;
    StringField43: TStringField;
    BooleanField29: TBooleanField;
    BooleanField30: TBooleanField;
    DataSource20: TDataSource;
    Query19DAJU_Send: TDateTimeField;
    Query20DAJU_Get: TDateTimeField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure doquery();
    procedure doqueryS();    
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
  private
     procedure SacnMaterialReady();

    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialReadyTime1: TMaterialReadyTime1;

implementation

uses main1;

{$R *.dfm}

procedure TMaterialReadyTime1.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,Memo2 from shoetest where Testno='''+edit1.text+'''  ');
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
      if query1.FieldByName('Pending_P').value='1' then
      begin
        showmessage('Vat tu mat OK already');
        Edit1.Clear;
        abort;
      end;
      if query1.FieldByName('Pending_P').value<>'1' then
        SacnMaterialReady();
    end;
  end;
end;

procedure TMaterialReadyTime1.SacnMaterialReady();
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set Pending_P =''1'',PreparationDate=getdate()  where Testno='''+edit1.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,Memo2 from shoetest where Testno='''+edit1.text+'''');
      Active:=true;
    end;
    Edit1.Clear;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set S_material=getdate()  where Testno='''+edit2.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where Testno='''+edit2.text+'''');
      Active:=true;
    end;
    Edit2.Clear;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query9 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set insole_send=getdate()  where Testno='''+edit9.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,insole_send from shoetest where Testno='''+edit9.text+'''');
      Active:=true;
    end;
    Edit9.Clear;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query10 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set lace_send=getdate()  where Testno='''+edit10.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,lace_send from shoetest where Testno='''+edit10.text+'''');
      Active:=true;
    end;
    Edit10.Clear;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set lamination_send=getdate()  where Testno='''+edit3.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_send from shoetest where Testno='''+edit3.text+'''');
      Active:=true;
    end;
    Edit3.Clear;
  end
  else if PageControl1.ActivePageIndex = 5 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set lamination_get=getdate()  where Testno='''+edit4.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_get from shoetest where Testno='''+edit4.text+'''');
      Active:=true;
    end;
    Edit4.Clear;
  end
  else if PageControl1.ActivePageIndex = 6 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set BaoHe_send=getdate()  where Testno='''+edit5.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_send from shoetest where Testno='''+edit5.text+'''');
      Active:=true;
    end;
    Edit5.Clear;
  end
  else if PageControl1.ActivePageIndex = 7 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set BaoHe_get=getdate()  where Testno='''+edit6.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetest where Testno='''+edit6.text+'''');
      Active:=true;
    end;
    Edit6.Clear;
  end
  else if PageControl1.ActivePageIndex = 8 then begin
    with query7 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set LiMao_Send=getdate()  where Testno='''+edit7.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Send from shoetest where Testno='''+edit7.text+'''');
      Active:=true;
    end;
    Edit7.Clear;
  end
  else if PageControl1.ActivePageIndex = 9 then begin
    with query8 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set LiMao_Get=getdate()  where Testno='''+edit8.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetest where Testno='''+edit8.text+'''');
      Active:=true;
    end;
    Edit8.Clear;
  end

  else if PageControl1.ActivePageIndex = 10 then begin
    with query13 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set kietphong_Send=getdate()  where Testno='''+edit13.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Send from shoetest where Testno='''+edit13.text+'''');
      Active:=true;
    end;
    edit13.Clear;
  end
  else if PageControl1.ActivePageIndex = 11 then begin
    with query14 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set kietphong_Get=getdate()  where Testno='''+Edit14.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Get from shoetest where Testno='''+Edit14.text+'''');
      Active:=true;
    end;
    Edit14.Clear;
  end
  else if PageControl1.ActivePageIndex = 12 then begin
    with query15 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set Amico_Send=getdate()  where Testno='''+edit15.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Send from shoetest where Testno='''+edit15.text+'''');
      Active:=true;
    end;
    edit15.Clear;
  end
  else if PageControl1.ActivePageIndex = 13 then begin
    with query16 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set Amico_Get=getdate()  where Testno='''+edit16.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Get from shoetest where Testno='''+edit16.text+'''');
      Active:=true;
    end;
    edit16.Clear;
  end
  else if PageControl1.ActivePageIndex = 14 then begin
  with query17 do
  begin
    Active:=false;
    SQL.Clear;
      SQL.Add('update shoetest set Laser_send=getdate()  where Testno='''+edit17.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_send from shoetest where Testno='''+edit17.text+'''');
    Active:=true;
  end;
  edit17.Clear;
  end
  else if PageControl1.ActivePageIndex = 15 then begin
  with query18 do
  begin
    Active:=false;
    SQL.Clear;
      SQL.Add('update shoetest set Laser_get=getdate()  where Testno='''+edit18.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_get from shoetest where Testno='''+edit18.text+'''');
    Active:=true;
  end;
  edit18.Clear;
  end
  else if PageControl1.ActivePageIndex = 16 then begin
  with query19 do
  begin
    Active:=false;
    SQL.Clear;
      SQL.Add('update shoetest set DAJU_send=getdate()  where Testno='''+edit19.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_send from shoetest where Testno='''+edit19.text+'''');
    Active:=true;
  end;
  edit19.Clear;
  end
  else if PageControl1.ActivePageIndex = 17 then begin
  with query20 do
  begin
    Active:=false;
    SQL.Clear;
      SQL.Add('update shoetest set DAJU_Get=getdate()  where Testno='''+edit20.text+'''');
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_Get from shoetest where Testno='''+edit20.text+'''');
    Active:=true;
  end;
  edit20.Clear;
  end
end;

procedure TMaterialReadyTime1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TMaterialReadyTime1.FormDestroy(Sender: TObject);
begin
  MaterialReadyTime1:=nil;
end;

procedure TMaterialReadyTime1.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where Testno='''+edit2.text+'''  ');
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
    if query2.FieldByName('S_material').value <> null then
    begin
      showmessage('May Phu lieu OK');
      Edit2.Clear;
      abort;
    end;
    if query2.FieldByName('S_material').value = null then
      SacnMaterialReady();
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_send from shoetest where Testno='''+edit3.text+'''  ');
      Active:=true;
    end;
  if query3.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit3.Clear;
     abort;
  end;
  if query3.FieldByName('TBReceive').value='1' then
  begin
      if query3.FieldByName('lamination_send').value <> null then
      begin
        showmessage('TB already lamination_send OK');
        Edit3.Clear;
        abort;
      end;
      if query3.FieldByName('lamination_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_get from shoetest where Testno='''+Edit4.text+'''  ');
      Active:=true;
    end;
  if query4.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit4.Clear;
     abort;
  end;
  if query4.FieldByName('TBReceive').value='1' then
  begin
      if query4.FieldByName('lamination_get').value <> null then
      begin
        showmessage('TB already lamination_get OK');
        Edit4.Clear;
        abort;
      end;
      if query4.FieldByName('lamination_get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TMaterialReadyTime1.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_send from shoetest where Testno='''+Edit5.text+'''  ');
      Active:=true;
    end;
  if query5.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit5.Clear;
     abort;
  end;
  if query5.FieldByName('TBReceive').value='1' then
  begin
      if query5.FieldByName('BaoHe_send').value <> null then
      begin
        showmessage('TB already BaoHe_send OK');
        Edit5.Clear;
        abort;
      end;
      if query5.FieldByName('BaoHe_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetest where Testno='''+Edit6.text+'''  ');
      Active:=true;
    end;
  if query6.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit6.Clear;
     abort;
  end;
  if query6.FieldByName('TBReceive').value='1' then
  begin
      if query6.FieldByName('BaoHe_get').value <> null then
      begin
        showmessage('TB already BaoHe_get OK');
        Edit6.Clear;
        abort;
      end;
      if query6.FieldByName('BaoHe_get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit7KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query7 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Send from shoetest where Testno='''+Edit7.text+'''  ');
      Active:=true;
    end;
  if query7.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit7.Clear;
     abort;
  end;
  if query7.FieldByName('TBReceive').value='1' then
  begin
      if query7.FieldByName('LiMao_Send').value <> null then
      begin
        showmessage('TB already LiMao_Send OK');
        Edit7.Clear;
        abort;
      end;
      if query7.FieldByName('LiMao_Send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit8KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query8 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetest where Testno='''+Edit8.text+'''  ');
      Active:=true;
    end;
  if query8.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit8.Clear;
     abort;
  end;
  if query8.FieldByName('TBReceive').value='1' then
  begin
      if query8.FieldByName('LiMao_Get').value <> null then
      begin
        showmessage('TB already LiMao_Get OK');
        Edit8.Clear;
        abort;
      end;
      if query8.FieldByName('LiMao_Get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit9KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query9 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,insole_send from shoetest where Testno='''+Edit9.text+'''  ');
      Active:=true;
    end;
  if query9.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit9.Clear;
     abort;
  end;
  if query9.FieldByName('TBReceive').value='1' then
  begin
      if query9.FieldByName('insole_send').value <> null then
      begin
        showmessage('TB GO (insole_send) OK');
        Edit9.Clear;
        abort;
      end;
      if query9.FieldByName('insole_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query10 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lace_send from shoetest where Testno='''+Edit10.text+'''  ');
      Active:=true;
    end;
  if query10.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit10.Clear;
     abort;
  end;
  if query10.FieldByName('TBReceive').value='1' then
  begin
      if query10.FieldByName('lace_send').value <> null then
      begin
        showmessage('TB Bao Bi(insole_send) OK');
        Edit10.Clear;
        abort;
      end;
      if query10.FieldByName('lace_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,Memo2 from shoetest where CONVERT(varchar(100), PreparationDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
    Active:=true;
  end;
end;

procedure TMaterialReadyTime1.PageControl1Change(Sender: TObject);
var
     i:integer;
      sheet:TTabSheet;
begin
 for i:=0 to PageControl1.PageCount-1   do
      begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
  if PageControl1.ActivePageIndex = 0 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,memo2 from shoetest where CONVERT(varchar(100), PreparationDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where CONVERT(varchar(100), S_material, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_send from shoetest where CONVERT(varchar(100), lamination_send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lamination_get from shoetest where CONVERT(varchar(100), lamination_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_send from shoetest where CONVERT(varchar(100), BaoHe_send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 5 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,BaoHe_get from shoetest where CONVERT(varchar(100), BaoHe_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 6 then begin
    with query7 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Send from shoetest where CONVERT(varchar(100), LiMao_Send, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 7 then begin
    with query8 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,LiMao_Get from shoetest where CONVERT(varchar(100), LiMao_Get, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 8 then begin
    with query9 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,insole_send from shoetest where CONVERT(varchar(100), insole_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 9 then begin
    with query10 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lace_send from shoetest where CONVERT(varchar(100), lace_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end

end;

procedure TMaterialReadyTime1.Button1Click(Sender: TObject);
begin
  if edit11.text='' then
  begin
     showmessage('plz input TB');
     abort;
  end;
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,Memo2 from shoetest where Testno='''+edit11.text+'''');
    Active:=true;
  end;
  doquery();
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,memo2 from shoetest where CONVERT(varchar(100), PreparationDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
    Active:=true;
  end;  
end;


procedure TMaterialReadyTime1.doquery();
begin

  with query11 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo,ywsm from ( ');
    SQL.Add('select  ''C'' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty, ');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is not null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ''OK'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo,ywsm from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL,ywsm  from (');
    SQL.Add('SELECT shoetest.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and shoetest.Testno = '''+Query1.fieldbyname('Testno').AsString+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetest.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE  clzl.clzmlb = ''N''  and CLZHZL.SYL>0 and shoetest.Testno = '''+Query1.fieldbyname('Testno').AsString+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL,ywsm');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetest.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y'' and shoetest.Testno = '''+Query1.fieldbyname('Testno').AsString+'''');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL,ywsm');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('		Case when CGZLS.eta is not null then CGZLS.ETA');
    SQL.Add('		     when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate =''''))  and (MaterialMOQ.Location=''VN'') then Min(CGZLS.CFMDate)+2');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location=''VN'') then Min(CGZLInvoice.CIDate)+2');
    SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLS.CFMDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLInvoice.CIDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location IS null) then Min(CGZLInvoice.CIDate)+7');
	  SQL.Add('        end as ETA,');
    SQL.Add('Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo,CGZLS.ETA as OriETA');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('	left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('	left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino');
    SQL.Add('	left join (select ZSZL_DEV.zsdh,Country.Country location from ZSZL_DEV');
	  SQL.Add('	           left join Country on Country.Country=ZSZL_DEV.country where ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('         	 Group by ZSZL_DEV.zsdh,Country.Country) MaterialMOQ on MaterialMOQ.zsdh=CGZL.zsbh');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo,CGZLInvoice.CIDate,CGZLS.ETA  )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH ');
    SQL.Add('left join');
    SQL.Add('	(');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoetest');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetest.ypdh');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'',''L'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A48'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('  (clzlfilter_DFL.DFL=''1'') or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH in (''M027'',''V192'')) )');
    SQL.Add('and zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Temp_YPZL.csbh,3) <>''JNG''');
    SQL.Add(' )main   group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,ywsm');
    SQL.Add('order by Status');
    Open;
    Memo1.Text := Query1.fieldbyname('Memo2').AsString;
  end;
end;

procedure TMaterialReadyTime1.doqueryS();
begin
  with Query12 do begin
    close;
    SQL.Clear;
    SQL.Add('select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo,ywsm from (');
    SQL.Add('select  ''S'' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is not null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ''OK'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo,ywsm from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL,ywsm  from (');
    SQL.Add('SELECT shoetest.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and shoetest.Testno = '''+Query2.FieldByName('Testno').asstring+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetest.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE  clzl.clzmlb = ''N''   and CLZHZL.SYL>0 and shoetest.Testno = '''+Query2.FieldByName('Testno').asstring+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL,ywsm');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetest.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL,bwzl.ywsm');
    SQL.Add('FROM shoetest');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and shoetest.Testno = '''+Query2.FieldByName('Testno').asstring+'''');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL,ywsm');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('		Case when CGZLS.eta is not null then CGZLS.ETA');
    SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate =''''))  and (MaterialMOQ.Location=''VN'') then Min(CGZLS.CFMDate)+2');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location=''VN'') then Min(CGZLInvoice.CIDate)+2');
    SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLS.CFMDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLInvoice.CIDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDate)+7');
    SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location IS null) then Min(CGZLInvoice.CIDate)+7');
	  SQL.Add('        end as ETA,');
    SQL.Add('Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo,CGZLS.ETA  as OriETA');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('	left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('	left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino');
    SQL.Add('	left join (select ZSZL_DEV.zsdh,Country.Country location from ZSZL_DEV');
	  SQL.Add('	           left join Country on Country.Country=ZSZL_DEV.country where ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('         	 Group by ZSZL_DEV.zsdh,Country.Country) MaterialMOQ on MaterialMOQ.zsdh=CGZL.zsbh');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo,CGZLInvoice.CIDate,CGZLS.ETA  )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH ');
    SQL.Add('left join');
    SQL.Add('	(');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoetest');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetest.ypdh');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('	left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd in(''VT Phu May'',''VT De'',''VT Phu Go''))) or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''B'',''D'',''M'',''N'',''E'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('    (clzlfilter_DFL.DFL=''2'') or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,3)  in (''O02'',''J05'',''J04'',''A48'',''G03'',''I01''))  or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''P'',''G'')  and csbh in (''V097'',''V194'',''A104'',''A088'',''K110'',''V162'',''A159''))) and');
    SQL.Add('    zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(csbh,3) <>''JNG''');
    SQL.Add(' )main   group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,ywsm');
    SQL.Add(' order by status');
    open;
    Memo2.Text := Query2.fieldbyname('Memo2').AsString;
   // showmessage(sql.text);
  end;
end;



procedure TMaterialReadyTime1.Button2Click(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Memo2 ='''+Memo1.Text+'''  where Testno='''+edit11.text+'''');
    SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate,Memo2 from shoetest where Testno='''+edit11.text+'''');
    Active:=true;
  end;
end;

procedure TMaterialReadyTime1.Button4Click(Sender: TObject);
begin
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Memo2 ='''+Memo2.Text+'''  where Testno='''+edit12.text+'''');
    SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where Testno='''+edit12.text+'''');
    Active:=true;
  end;
end;

procedure TMaterialReadyTime1.Button3Click(Sender: TObject);
begin
  if edit12.text='' then
  begin
     showmessage('plz input TB');
     abort;
  end;
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where Testno='''+edit12.text+'''');
    Active:=true;
  end;
  doqueryS();
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,S_material,memo2 from shoetest where CONVERT(varchar(100), S_material, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;

end;

procedure TMaterialReadyTime1.Edit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query13 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Send from shoetest where Testno='''+Edit13.text+'''  ');
      Active:=true;
    end;
  if query13.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit13.Clear;
     abort;
  end;
  if query13.FieldByName('TBReceive').value='1' then
  begin
      if query13.FieldByName('kietphong_Send').value <> null then
      begin
        showmessage('TB already kietphong_Send OK');
        Edit13.Clear;
        abort;
      end;
      if query13.FieldByName('kietphong_Send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit14KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query14 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,kietphong_Get from shoetest where Testno='''+Edit14.text+'''  ');
      Active:=true;
    end;
  if query14.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit14.Clear;
     abort;
  end;
  if query14.FieldByName('TBReceive').value='1' then
  begin
      if query14.FieldByName('kietphong_Send').value <> null then
      begin
        showmessage('TB already kietphong_Get OK');
        Edit14.Clear;
        abort;
      end;
      if query14.FieldByName('kietphong_Send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit15KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query15 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Send from shoetest where Testno='''+Edit15.text+'''  ');
      Active:=true;
    end;
  if query15.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit15.Clear;
     abort;
  end;
  if query15.FieldByName('TBReceive').value='1' then
  begin
      if query15.FieldByName('Amico_Send').value <> null then
      begin
        showmessage('TB already Amico_Send OK');
        Edit15.Clear;
        abort;
      end;
      if query15.FieldByName('Amico_Send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query16 do                                                                           
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Amico_Get from shoetest where Testno='''+Edit16.text+'''  ');
      Active:=true;
    end;
  if query16.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit16.Clear;
     abort;
  end;
  if query16.FieldByName('TBReceive').value='1' then
  begin
      if query16.FieldByName('Amico_Get').value <> null then
      begin
        showmessage('TB already Amico_Get OK');
        Edit16.Clear;
        abort;
      end;
      if query16.FieldByName('Amico_Get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.DBGridEh1CellClick(Column: TColumnEh);
begin
  edit11.text:=query1.fieldbyname('testno').value;
  query11.Active:=false;
  memo1.text:='';
end;

procedure TMaterialReadyTime1.DBGridEh2CellClick(Column: TColumnEh);
begin
  edit12.text:=query2.fieldbyname('testno').value;
  query12.Active:=false;
  memo2.text:='';  
end;

procedure TMaterialReadyTime1.Edit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query17 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_send from shoetest where Testno='''+Edit17.text+'''  ');
      Active:=true;
    end;
  if query17.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit17.Clear;
     abort;
  end;
  if query17.FieldByName('TBReceive').value='1' then
  begin
      if query17.FieldByName('Laser_send').value <> null then
      begin
        showmessage('TB already Laser_send OK');
        Edit17.Clear;
        abort;
      end;
      if query17.FieldByName('Laser_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit18KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query18 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,Laser_get from shoetest where Testno='''+Edit18.text+'''  ');
      Active:=true;
    end;
  if query18.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit18.Clear;
     abort;
  end;
  if query18.FieldByName('TBReceive').value='1' then
  begin
      if query18.FieldByName('Laser_get').value <> null then
      begin
        showmessage('TB already Laser_get OK');
        Edit18.Clear;
        abort;
      end;
      if query18.FieldByName('Laser_get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query19 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_send from shoetest where Testno='''+Edit19.text+'''  ');
      Active:=true;
    end;
  if query19.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit19.Clear;
     abort;
  end;
  if query19.FieldByName('TBReceive').value='1' then
  begin
      if query19.FieldByName('DAJU_send').value <> null then
      begin
        showmessage('TB already DAJU_send OK');
        Edit19.Clear;
        abort;
      end;
      if query19.FieldByName('DAJU_send').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

procedure TMaterialReadyTime1.Edit20KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query20 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,DAJU_Get from shoetest where Testno='''+Edit20.text+'''  ');
      Active:=true;
    end;
  if query20.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     Edit20.Clear;
     abort;
  end;
  if query20.FieldByName('TBReceive').value='1' then
  begin
      if query20.FieldByName('DAJU_Get').value <> null then
      begin
        showmessage('TB already DAJU_Get OK');
        Edit20.Clear;
        abort;
      end;
      if query20.FieldByName('DAJU_Get').value = null then
      begin
        SacnMaterialReady();
      end;
  end;
 end;
end;

end.
