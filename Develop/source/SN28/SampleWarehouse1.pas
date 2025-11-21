unit SampleWarehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComCtrls,comobj,
  DBCtrls, Buttons, Mask, Grids, DBGrids;
type
  TSampleWarehouse = class(TForm)
   // main: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    ToolPanel: TPanel;
    Label2: TLabel;
    sampleorderedit: TEdit;
    ShoeinQry: TQuery;
    ShoeoutQry: TQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Shoeinupd: TUpdateSQL;
    Shoeoutupd: TUpdateSQL;
    ShoeinQryQty: TFloatField;
    ShoeinQryUserID: TStringField;
    ShoeinQryUserDate: TDateTimeField;
    ShoeoutQryQty: TFloatField;
    ShoeoutQryUserID: TStringField;
    ShoeoutQryUserDate: TDateTimeField;
    Query1testno: TStringField;
    Query1ypdh: TStringField;
    Query1Developer: TStringField;
    Query1bw01: TFloatField;
    Query1tinbw01: TFloatField;
    Query1Woutbw01: TFloatField;
    Query1bw02: TFloatField;
    Query1tinbw02: TFloatField;
    Query1Woutbw02: TFloatField;
    Query1bw03: TFloatField;
    Query1tinbw03: TFloatField;
    Query1Woutbw03: TFloatField;
    Query1bw04: TFloatField;
    Query1tinbw04: TFloatField;
    Query1Woutbw04: TFloatField;
    Query1bw05: TFloatField;
    Query1tinbw05: TFloatField;
    Query1Woutbw05: TFloatField;
    Query1bw06: TFloatField;
    Query1tinbw06: TFloatField;
    Query1Woutbw06: TFloatField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ShoeinQryparts: TStringField;
    ShoeoutQryparts: TStringField;
    tempqry: TQuery;
    CheckBox3: TCheckBox;
    ShoeinQrytotal: TFloatField;
    ShoeoutQrytotal: TFloatField;
    Panel9: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    Edit8: TEdit;
    Edit4: TEdit;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Testnoedit: TEdit;
    Button1: TButton;
    Query1bw07: TFloatField;
    Query1tinbw07: TFloatField;
    Query1Woutbw07: TFloatField;
    Button3: TButton;
    TabSheet4: TTabSheet;
    Panel10: TPanel;
    Label8: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label10: TLabel;
    DBGridEh4: TDBGridEh;
    Button4: TButton;
    QStatus: TQuery;
    DS4: TDataSource;
    CB1: TCheckBox;
    QStatusSerino: TIntegerField;
    QStatusGroups: TStringField;
    QStatusTESTNO: TStringField;
    QStatusShipDate: TDateTimeField;
    QStatusCLBH: TStringField;
    QStatusQty: TCurrencyField;
    QStatusReqQty: TCurrencyField;
    QStatusYPDH: TStringField;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Button6: TButton;
    Panel12: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Frozen: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    UserDatecheck: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    ComboBox2: TComboBox;
    dtp11: TDateTimePicker;
    dtp22: TDateTimePicker;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    GSDHCheckBox: TCheckBox;
    ComboBox3: TComboBox;
    DBGridEh7: TDBGridEh;
    DataSource4: TDataSource;
    shoetest: TQuery;
    shoetestSerino: TIntegerField;
    shoetestSeason: TStringField;
    shoeteststage: TStringField;
    shoetestgroups: TStringField;
    shoetestgroups2: TStringField;
    shoetesttestno: TStringField;
    shoetestArticle: TStringField;
    shoetestkflx: TStringField;
    shoetestETC: TDateTimeField;
    shoetestshipdate: TDateTimeField;
    shoetestTBReceiveDate: TDateTimeField;
    shoetestwarehousePL: TDateTimeField;
    shoetestPreparationDate_first: TDateTimeField;
    shoetestPreparationDate: TDateTimeField;
    updqry1: TUpdateSQL;
    shoetestS_material: TDateTimeField;
    shoetestinsole_send: TDateTimeField;
    shoetestlace_send: TDateTimeField;
    shoetestlamination_send: TDateTimeField;
    shoetestlamination_get: TDateTimeField;
    shoetestBaoHe_send: TDateTimeField;
    shoetestBaoHe_get: TDateTimeField;
    shoetestLiMao_Send: TDateTimeField;
    shoetestLiMao_Get: TDateTimeField;
    shoetestkietphong_Send: TDateTimeField;
    shoetestkietphong_Get: TDateTimeField;
    shoetestAmico_Send: TDateTimeField;
    shoetestAmico_Get: TDateTimeField;
    shoetestLaser_Send: TDateTimeField;
    shoetestLaser_Get: TDateTimeField;
    shoetestDAJU_Send: TDateTimeField;
    shoetestDAJU_Get: TDateTimeField;
    DBMemo1: TDBMemo;
    FD_Memo: TDBMemo;
    DBMemo2: TDBMemo;
    shoetestPlanningMemo: TStringField;
    shoetestMemo1: TMemoField;
    shoetestMemo2: TMemoField;
    shoetestPreparationDate1: TDateTimeField;
    shoetestStitchingPhuFinishDate: TDateTimeField;
    shoetestinsole_get: TDateTimeField;
    shoetestlace_get: TDateTimeField;
    shoetestFirstMatOutDate: TDateTimeField;
    shoetestlamination: TBooleanField;
    shoetestlamination_CRMTO: TBooleanField;
    shoetestAmico: TBooleanField;
    shoetestSublimation: TBooleanField;
    shoetestkietphong: TBooleanField;
    shoetestE_embroidery: TBooleanField;
    shoetestprinting: TBooleanField;
    shoetestLiMao: TBooleanField;
    shoetestLaser: TBooleanField;
    shoetestDAJU: TBooleanField;
    DBGridEh5: TDBGridEh;
    BDT6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure TabSheet2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TabSheet3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TabSheet2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TabSheet3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure doshoetest();
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleWarehouse: TSampleWarehouse;
  parts,locate :string;
  inout :real;
  gridclick :integer;
implementation
uses FunUnit,main1;
{$R *.dfm}

procedure TSampleWarehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleWarehouse.FormDestroy(Sender: TObject);
begin
  SampleWarehouse:=nil;
end;

procedure TSampleWarehouse.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TSampleWarehouse.Button1Click(Sender: TObject);
begin
 // showmessage(main.edit1.text);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select');
    if checkbox3.checked then
       SQL.Add('top 10');
    SQL.Add('shoetest.testno,shoetest.ypdh,isnull(Busers.engname,''NoName'')+''-''+Busers.USERID as Developer,');
    SQL.Add('isnull(bw01.qty,0) as bw01,');
    SQL.Add('isnull(winbw01.qty,0) as tinbw01,');
    SQL.Add('isnull(Woutbw01.qty,0) as Woutbw01,');
    SQL.Add('isnull(bw02.qty,0) as bw02,');
    SQL.Add('isnull(winbw02.qty,0) as tinbw02,');
    SQL.Add('isnull(Woutbw02.qty,0) as Woutbw02,');
    SQL.Add('isnull(bw03.qty,0) as bw03,');
    SQL.Add('isnull(winbw03.qty,0) as tinbw03,');
    SQL.Add('isnull(Woutbw03.qty,0) as Woutbw03,');
    SQL.Add('isnull(bw04.qty,0) as bw04,');
    SQL.Add('isnull(winbw04.qty,0) as tinbw04,');
    SQL.Add('isnull(Woutbw04.qty,0) as Woutbw04,');
    SQL.Add('isnull(bw05.qty,0) as bw05,');
    SQL.Add('isnull(winbw05.qty,0) as tinbw05,');
    SQL.Add('isnull(Woutbw05.qty,0) as Woutbw05,');
    SQL.Add('isnull(bw06.qty,0) as bw06,');
    SQL.Add('isnull(winbw06.qty,0) as tinbw06,');
    SQL.Add('isnull(Woutbw06.qty,0) as Woutbw06,');
    SQL.Add('isnull(bw07.qty,0) as bw07,');
    SQL.Add('isnull(winbw07.qty,0) as tinbw07,');
    SQL.Add('isnull(Woutbw07.qty,0) as Woutbw07');
    SQL.Add('from shoetest');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW01'' group by testno,parts)bw01 on bw01.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW02'' group by testno,parts)bw02 on bw02.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW03'' group by testno,parts)bw03 on bw03.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW04'' group by testno,parts)bw04 on bw04.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW05'' group by testno,parts)bw05 on bw05.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW06'' group by testno,parts)bw06 on bw06.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetest2 where parts=''BW07'' group by testno,parts)bw07 on bw07.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW01'' group by testno,parts)Winbw01 on Winbw01.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW02'' group by testno,parts)Winbw02 on Winbw02.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW03'' group by testno,parts)Winbw03 on Winbw03.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW04'' group by testno,parts)Winbw04 on Winbw04.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW05'' group by testno,parts)Winbw05 on Winbw05.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW06'' group by testno,parts)Winbw06 on Winbw06.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestin where parts=''BW07'' group by testno,parts)Winbw07 on Winbw07.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW01'' group by testno,parts)Woutbw01 on Woutbw01.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW02'' group by testno,parts)Woutbw02 on Woutbw02.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW03'' group by testno,parts)Woutbw03 on Woutbw03.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW04'' group by testno,parts)Woutbw04 on Woutbw04.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW05'' group by testno,parts)Woutbw05 on Woutbw05.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW06'' group by testno,parts)Woutbw06 on Woutbw06.testno=shoetest.testno');
    SQL.Add('left join (select testno,parts,sum(qty) as qty from shoetestout where  parts=''BW07'' group by testno,parts)Woutbw07 on Woutbw07.testno=shoetest.testno');
    SQL.Add('left join Busers on Busers.userid = shoetest.userid');
    SQL.Add('where 1=1');
    if testnoedit.text <>'' then
       SQL.Add('and shoetest.testno='''+testnoedit.text+'''');
    if checkbox1.checked then
       SQL.Add('and len(shoetest.testno)=7');
    if checkbox2.checked then
       SQL.Add('and shoetest.ypdh is not null');
    SQL.Add('order by shoetest.testno desc');
   // memo1.text:=sql.text;

    Active:=true;
  end;
  button2.enabled:=false;
  button5.enabled:=false;
 // ToolPanel.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  gridclick:=1;
end;

procedure TSampleWarehouse.DBGridEh1CellClick(Column: TColumnEh);

begin
  if gridclick=0 then  abort;

  if (Column.FieldName='tinbw01') then Locate:='bw01'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw02') then Locate:='bw02'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw03') then Locate:='bw03'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw04') then Locate:='bw04'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw05') then Locate:='bw05'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw06') then Locate:='bw06'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='tinbw07') then Locate:='bw07'; //入庫不出過需求 定義判斷位址
  if (Column.FieldName='Woutbw01') then Locate:='tinbw01';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw02') then Locate:='tinbw02';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw03') then Locate:='tinbw03';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw04') then Locate:='tinbw04';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw05') then Locate:='tinbw05';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw06') then Locate:='tinbw06';//出庫不超過入庫 定義判斷位址
  if (Column.FieldName='Woutbw07') then Locate:='tinbw07';//出庫不超過入庫 定義判斷位址

  if query1.RecordCount<>1 then
  begin
    button2.enabled:=false;
    button5.enabled:=false;
  end;
  if (query1.RecordCount=1) and ((Column.FieldName='tinbw01') or  (Column.FieldName='tinbw02') or (Column.FieldName='tinbw03') or
       (Column.FieldName='tinbw04') or (Column.FieldName='tinbw05') or  (Column.FieldName='tinbw06') or (Column.FieldName='tinbw07')or (Column.FieldName='Woutbw01') or  (Column.FieldName='Woutbw02') or (Column.FieldName='Woutbw03') or
       (Column.FieldName='Woutbw04') or (Column.FieldName='Woutbw05') or  (Column.FieldName='Woutbw06')  or  (Column.FieldName='Woutbw07'))then
  begin
    button2.enabled:=true;
    button5.enabled:=true;
  end;

   if  (query1.active) and ((Column.FieldName='tinbw01') or  (Column.FieldName='tinbw02') or (Column.FieldName='tinbw03') or
       (Column.FieldName='tinbw04') or (Column.FieldName='tinbw05') or  (Column.FieldName='tinbw06') or  (Column.FieldName='tinbw07')) then
   begin
      PageControl2.TabIndex:=0;
      panel5.Visible:=true;
      panel6.Visible:=false;
      panel7.Color:=clyellow;
      panel8.Color:=clWindow;
      dbgrideh2.Color:=clyellow;
      dbgrideh3.Color:=clWindow;
     with shoeinqry do
     begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select *  from shoetestin');
        SQL.Add('left join (select testno,parts,isnull(sum(qty),0) as total  from shoetestin  group by  testno,parts)total on total.testno=shoetestin.testno and total.parts=shoetestin.parts');
        SQL.Add('where shoetestin.testno=:testno and shoetestin.parts');
        if (Column.FieldName='tinbw01') then SQL.Add('=''BW01''');
        if (Column.FieldName='tinbw02') then SQL.Add('=''BW02''');
        if (Column.FieldName='tinbw03') then SQL.Add('=''BW03''');
        if (Column.FieldName='tinbw04') then SQL.Add('=''BW04''');
        if (Column.FieldName='tinbw05') then SQL.Add('=''BW05''');
        if (Column.FieldName='tinbw06') then SQL.Add('=''BW06''');
        if (Column.FieldName='tinbw07') then SQL.Add('=''BW07''');
        SQL.Add('order by userdate');
       // memo1.text:=sql.text;
        Active:=true;
     end;
   end;
   if  (query1.active) and ((Column.FieldName='Woutbw01') or  (Column.FieldName='Woutbw02') or (Column.FieldName='Woutbw03') or
       (Column.FieldName='Woutbw04') or (Column.FieldName='Woutbw05') or  (Column.FieldName='Woutbw06')  or  (Column.FieldName='Woutbw07')) then
   begin
      PageControl2.TabIndex:=1;
      panel6.Visible:=true;
      panel5.Visible:=false;
      panel8.Color:=clyellow;
      panel7.Color:=clWindow;
      dbgrideh3.Color:=clyellow;
      dbgrideh2.Color:=clWindow;
     with shoeoutqry do
     begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select *  from shoetestout');
        SQL.Add('left join (select testno,parts,sum(qty) as total  from shoetestout  group by  testno,parts)total on total.testno=shoetestout.testno and total.parts=shoetestout.parts');
        SQL.Add('where shoetestout.testno=:testno and shoetestout.parts');
        if (Column.FieldName='Woutbw01') then SQL.Add('=''BW01''');
        if (Column.FieldName='Woutbw02') then SQL.Add('=''BW02''');
        if (Column.FieldName='Woutbw03') then SQL.Add('=''BW03''');
        if (Column.FieldName='Woutbw04') then SQL.Add('=''BW04''');
        if (Column.FieldName='Woutbw05') then SQL.Add('=''BW05''');
        if (Column.FieldName='Woutbw06') then SQL.Add('=''BW06''');
        if (Column.FieldName='Woutbw07') then SQL.Add('=''BW07''');
        SQL.Add('order by userdate');
        Active:=true;
     end;
   end;
   if (query1.active) and ((Column.FieldName='tinbw01') or (Column.FieldName='Woutbw01')) then
   begin
      edit4.Text:='Finished Shoe';
      parts:='BW01';
   end;
   if (query1.active) and ((Column.FieldName='tinbw02') or (Column.FieldName='Woutbw02')) then
   begin
      edit4.Text:='Half Stitching Upper';
      parts:='BW02';
   end;
   if (query1.active) and ((Column.FieldName='tinbw03') or (Column.FieldName='Woutbw03')) then
   begin
      edit4.Text:='Stitching Upper';
      parts:='BW03';
   end;
   if (query1.active) and ((Column.FieldName='tinbw04') or (Column.FieldName='Woutbw04')) then
   begin
      edit4.Text:='Lasted upper';
      parts:='BW04';
   end;
   if (query1.active) and ((Column.FieldName='tinbw05') or (Column.FieldName='Woutbw05')) then
   begin
      edit4.Text:='Upper Component';
      parts:='BW05';
   end;
   if (query1.active) and ((Column.FieldName='tinbw06') or (Column.FieldName='Woutbw06')) then
   begin
      edit4.Text:='Bottom Component';
      parts:='BW06';
   end;

   if (query1.active) and ((Column.FieldName='tinbw07') or (Column.FieldName='Woutbw07')) then
   begin
      edit4.Text:='Sheet';
      parts:='BW07';
   end;
   edit8.text:=Query1.FieldByName('testno').AsString;

end;

procedure TSampleWarehouse.TabSheet2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   panel7.Color:=clyellow;
   panel8.Color:=clWindow;
   dbgrideh2.Color:=clyellow;
   dbgrideh3.Color:=clWindow;
end;

procedure TSampleWarehouse.TabSheet3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   panel8.Color:=clyellow;
   panel7.Color:=clWindow;
   dbgrideh3.Color:=clyellow;
   dbgrideh2.Color:=clWindow;
end;

procedure TSampleWarehouse.TabSheet2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   panel7.Color:=clyellow;
   panel8.Color:=clWindow;
   dbgrideh2.Color:=clyellow;
   dbgrideh3.Color:=clWindow;
end;

procedure TSampleWarehouse.TabSheet3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   panel8.Color:=clyellow;
   panel7.Color:=clWindow;
   dbgrideh3.Color:=clyellow;
   dbgrideh2.Color:=clWindow;
end;

procedure TSampleWarehouse.Button5Click(Sender: TObject);
begin

  if edit2.text='' then  //數量不能為空
  begin
    showmessage('Qty can not empty');
    abort;
  end;
  
  if shoeoutqry.RecordCount=0 then  //未存過 比較第一次存 跟NEED數
  begin
     if (query1.FieldByName(locate).value<StrTofloat(edit2.text)) then
     begin
       showmessage('need:'+floattostr(query1.FieldByName(locate).value) +'<In:'+edit2.text  );

       abort;
     end;
  end;

  if (shoeoutqry.RecordCount>0)   then
  begin
     if  (query1.FieldByName(locate).value)<(shoeoutqry.FieldByName('total').value+StrTofloat(edit2.text))then
     begin                    //入庫不能大於NEED
       showmessage('need:'+floattostr(query1.FieldByName(locate).value) +'<In:'+   floattostr(StrTofloat(edit2.text)+ shoeoutqry.FieldByName('total').value) );
    
       abort;
     end;
  end;

  if  MessageDlg('Out Qty:'+edit2.text,mtCustom,[mbYes,mbCancel],0)=mrYes then
  begin
     with tempqry do
     begin
        active:=false;
        sql.Clear;
        sql.add('insert into shoetestout');
        sql.add('(testno ,parts,qty,userid,Userdate)');
        sql.add('values ('+''''+query1.fieldbyname('testno').AsString+''' ');
        sql.add(','+''''+parts+''''+','+''''+edit2.text+''''+',');
        sql.Add(''''+main.Edit1.Text+''''+',getdate())');
        execsql;
       // memo1.text:=sql.text;
        active:=false;
     end;
   end;
   query1.active:=false;
   query1.active:=true;
   shoeoutqry.active:=false;
   shoeoutqry.active:=true;
   edit2.Text:='';

end;

procedure TSampleWarehouse.Button2Click(Sender: TObject);

begin

  if edit1.text='' then   //需要輸入數量
  begin
    showmessage('Qty can not empty');
    abort;
  end;

  if shoeinqry.RecordCount=0 then  //未存過 比較第一次存 跟NEED數
  begin
     if (query1.FieldByName(locate).value<StrTofloat(edit1.text)) then
     begin
       showmessage('need:'+floattostr(query1.FieldByName(locate).value) +'<In:'+edit1.text  );
       abort;
     end;
  end;

  if (shoeinqry.RecordCount>0)   then
  begin
     if  (query1.FieldByName(locate).value)<(shoeinqry.FieldByName('total').value+StrTofloat(edit1.text))then
     begin                    //入庫不能大於NEED
       showmessage('need:'+floattostr(query1.FieldByName(locate).value) +'<In:'+   floattostr(StrTofloat(edit1.text)+ shoeinqry.FieldByName('total').value) );
       abort;
     end;
  end;

  if  MessageDlg('In Qty:'+edit1.text,mtCustom,[mbYes,mbCancel],0)=mrYes then
  begin
     with tempqry do
     begin
        active:=false;
        sql.Clear;
        sql.add('insert into shoetestin');
        sql.add('(testno ,parts,qty,userid,Userdate)');
        sql.add('values ('+''''+query1.fieldbyname('testno').AsString+''' ');
        sql.add(','+''''+parts+''''+','+''''+edit1.text+''''+',');
        sql.Add(''''+main.edit1.text+''''+',getdate())');
        execsql;
        active:=false;
     end;
   end;
   query1.active:=false;
   query1.active:=true;
   shoeinqry.active:=false;
   shoeinqry.active:=true;
   edit1.Text:='';
   
end;

procedure TSampleWarehouse.BB4Click(Sender: TObject);
begin
  with shoeinqry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TSampleWarehouse.FormCreate(Sender: TObject);
begin
  button2.enabled:=false;
  button5.enabled:=false;
  gridclick:=0;
  DTP1.Date := Date;
  DTP2.Date := Date;
  PageControl1.ActivePageIndex := 0;
  DTP3.Date:=Date()-30;
  DTP4.Date:=Date();
end;

procedure TSampleWarehouse.CheckBox4Click(Sender: TObject);
begin

//  else
     //DBGridEh1.Column.FieldName='ypdh'.Visible:=false;
end;

procedure TSampleWarehouse.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TSampleWarehouse.Button4Click(Sender: TObject);
begin
  with QStatus do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZLZLS2.Serino, ZLZLS2.Groups, ZLZLS2.TestNo, ZLZLS2.ShipDate, ZLZLS2.YPDH, ZLZLS2.CLBH, CAST(ISNULL(ZLZLS2.CLSL, 0) AS Decimal(7,2)) AS Qty, CAST(ISNULL(KCLLS.Qty, 0) AS Decimal(7,2)) AS ReqQty FROM (');
    SQL.Add('  SELECT Serino, Groups, TestNo, ShipDate, YPDH, MJBH, CLBH, SUM(CLSL) AS CLSL FROM (');
    SQL.Add('    SELECT ShoeTest.Serino, ShoeTest.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH, CASE WHEN YPZL_ZLZLS2.MJBH = ''ZZZZZZZZZZ'' THEN YPZL_ZLZLS2.CLBH ELSE YPZL_ZLZLS2.MJBH END AS MJBH, YPZL_ZLZLS2.CLBH, SUM(YPZL_ZLZLS2.CLSL) AS CLSL FROM (');
    SQL.Add('      SELECT ShoeTestPlan.Serino, ShoeTestPlan.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH FROM ShoeTest');
    SQL.Add('      LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
    SQL.Add('      WHERE ShoeTest.ShipDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('      AND LEFT(ShoeTest.YPDH, 4) IN (''LAIV'', ''BYIV'')');
    SQL.Add('    ) AS ShoeTest');
    SQL.Add('    LEFT JOIN YPZL_ZLZLS2 ON YPZL_ZLZLS2.YPDH = ShoeTest.YPDH');
    SQL.Add('    LEFT JOIN YPZL_NoNeedPart ON YPZL_NoNeedPart.BWBH = YPZL_ZLZLS2.BWBH');
    SQL.Add('    WHERE YPZL_NoNeedPart.BWBH IS NULL AND YPZL_ZLZLS2.CLSL > 0');
    SQL.Add('    GROUP BY ShoeTest.Serino, ShoeTest.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH, CASE WHEN YPZL_ZLZLS2.MJBH = ''ZZZZZZZZZZ'' THEN YPZL_ZLZLS2.CLBH ELSE YPZL_ZLZLS2.MJBH END, YPZL_ZLZLS2.CLBH');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT ShoeTest.Serino, ShoeTest.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH, RIGHT(ZLZLS3.CLDHZ, 10) AS MJBH, RIGHT(ZLZLS3.CLDHZ, 10) AS CLBH, SUM(ZLZLS3.TCLYL) AS CLSL FROM (');
    SQL.Add('      SELECT ShoeTestPlan.Serino, ShoeTestPlan.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH FROM ShoeTest');
    SQL.Add('      LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
    SQL.Add('      WHERE ShoeTest.ShipDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('      AND LEFT(ShoeTest.YPDH, 4) IN (''LAIV'', ''BYIV'')');
    SQL.Add('    ) AS ShoeTest');
    SQL.Add('    LEFT JOIN LIY_DD.dbo.ZLZLS3 AS ZLZLS3 ON ZLZLS3.ZLBH1 = ShoeTest.YPDH');
    SQL.Add('    WHERE ZLZLS3.TCLYL > 0');
    SQL.Add('    GROUP BY ShoeTest.Serino, ShoeTest.Groups, ShoeTest.TestNo, ShoeTest.ShipDate, ShoeTest.YPDH, RIGHT(ZLZLS3.CLDHZ, 10)');
    SQL.Add('  ) AS ZLZLS2');
    SQL.Add('  GROUP BY Serino, Groups, TestNo, ShipDate, YPDH, MJBH, CLBH');
    SQL.Add(') AS ZLZLS2');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ShoeTest.TestNo, ShoeTest.YPDH, CASE WHEN LEN(KCLLS.DFL)<10 THEN KCLLS.CLBH ELSE KCLLS.DFL END AS MJBH, KCLLS.CLBH, SUM(KCLLS.Qty) AS Qty FROM (');
    SQL.Add('    SELECT ShoeTest.TestNo, ShoeTest.YPDH FROM ShoeTest');
    SQL.Add('    WHERE ShoeTest.ShipDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('    AND LEFT(ShoeTest.YPDH, 4) IN (''LAIV'', ''BYIV'')');
    SQL.Add('  ) AS ShoeTest');
    SQL.Add('  LEFT JOIN KCLLS ON KCLLS.SCBH = ShoeTest.YPDH');
    SQL.Add('  LEFT JOIN KCLL ON KCLL.LLNO = KCLLS.LLNO');
    SQL.Add('  WHERE KCLL.CFMID <> ''NO''');
    SQL.Add('  GROUP BY ShoeTest.TestNo, ShoeTest.YPDH, CASE WHEN LEN(KCLLS.DFL)<10 THEN KCLLS.CLBH ELSE KCLLS.DFL END, KCLLS.CLBH');
    SQL.Add(') AS KCLLS ON KCLLS.TestNo = ZLZLS2.TestNo AND KCLLS.YPDH = ZLZLS2.YPDH AND KCLLS.MJBH = ZLZLS2.MJBH AND KCLLS.CLBH = ZLZLS2.CLBH');
    if (CB1.Checked) then
      SQL.Add('WHERE CAST(ISNULL(ZLZLS2.CLSL, 0) AS Decimal(7,2)) <> CAST(ISNULL(KCLLS.Qty, 0) AS Decimal(7,2))');
    Active := true;
  end;
end;

procedure TSampleWarehouse.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QStatus.FieldByName('Qty').Value <> QStatus.FieldByName('ReqQty').Value) then
    DBGridEh4.Canvas.Font.Color := clRed;
end;

procedure TSampleWarehouse.Button6Click(Sender: TObject);
begin
  DBGridEh7.frozencols:=strtoint(edit11.text);
  doshoetest();
  BitBtn4.Enabled:=true;
end;

procedure TSampleWarehouse.doshoetest();
begin
 with shoetest do
 begin
   active:=false;
   sql.Clear;
   cachedupdates:=true;
   requestlive:=true;
   SQL.add('select');
   SQL.add('  shoetestplan.Serino,shoetest.Season,');
   SQL.add('  shoetest.stage,groups,groups2,shoetest.testno,shoetest.Article,kfxxzl.kflx,shoetest.shipdate,shoetest.ETC,TBReceiveDate,shoetest.warehousePL,PreparationDate_first,');
   SQL.Add('  case when (isnull(PreparationDate,'''')<>'''') and (isnull(S_material,'''')<>'''')  and (isnull(insole_send,'''')<>'''')  and (isnull(lace_send,'''')<>'''')  then warehouse.Wdate else null end PreparationDate,');
   SQL.Add('  shoetest.PreparationDate PreparationDate1,shoetest.S_material,shoetest.insole_send,shoetest.lace_send,shoetest.lamination_send,shoetest.lamination_get,');
   SQL.Add('  shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoetest.LiMao_Get,');
   SQL.Add('  shoetest.kietphong_Send,shoetest.kietphong_Get,shoetest.Amico_Send,shoetest.Amico_Get,');
   SQL.Add('  shoetest.Laser_Send,shoetest.Laser_Get,shoetest.DAJU_Send,shoetest.DAJU_Get,shoetest.MemoPL PlanningMemo,shoetest.Memo1,shoetest.Memo2,shoetest.StitchingPhuFinishDate,shoetest.insole_get,shoetest.lace_get,shoetest.FirstMatOutDate,');
   SQL.Add('  shoetest.lamination,shoetest.lamination_CRMTO,shoetest.Amico,shoetest.Sublimation,shoetest.kietphong,shoetest.E_embroidery,shoetest.printing,shoetest.LiMao,shoetest.Laser,shoetest.DAJU');
   SQL.add('from shoetest');
   SQL.add('left join shoetestplan on shoetest.testno = shoetestplan.testno');
   SQL.add('left join shoetestDelay on shoetestDelay.testno=shoetest.testno and shoetestDelay.GXLB=''F'' ');
   SQL.add('left join shoetestDetail DR on DR.YYBH=shoetestDelay.DR');
   SQL.add('left join shoetestDetail DP on DP.YYBH=DR.Class');
   SQL.add('left join ypzl on ypzl.YPDH=shoetest.YPDH');
   SQL.add('left join kfxxzl on kfxxzl.xiexing=ypzl.XieXing and kfxxzl.shehao=ypzl.shehao');
   sql.Add('left join (');
   sql.Add('  select testno,');
   sql.Add('  (select max(Wdate)');
   sql.Add('  from (values (PreparationDate),(S_material),(insole_send),(lace_send)) as cvalues(Wdate)');
   sql.Add('  )AS Wdate');
   sql.Add('  from shoetest )warehouse on warehouse.testno=shoetest.testno');
   SQL.add('where  1=1');
   if edit12.Text<>'' then
      SQL.add('and shoetest.FD like '''+edit12.Text+'%'+'''');
   if edit13.Text<>'' then
      SQL.add('and shoetest.DevTp like '''+edit13.Text+'%'+'''');
   if edit14.Text<>'' then
      SQL.add('and shoetest.subtp like '''+edit14.Text+'%'+'''');
   if edit3.Text<>'' then
      SQL.add('and shoetest.Article like '''+edit3.Text+'%'+'''');
   if edit5.Text<>'' then
      SQL.add('and shoetest.testno like '''+edit5.Text+'%'+'''');
   if edit6.Text<>'' then
      SQL.add('and shoetest.season like '''+edit6.Text+'%'+'''');
   if edit7.Text<>'' then
      SQL.add('and shoetest.stage like '''+edit7.Text+'%'+'''');
   if combobox3.Text<>'' then
      SQL.add('and substring(shoetest.ypdh,4,1) = '''+combobox3.Text+''' ');
   if edit9.Text<>'' then
      SQL.add('and shoetestplan.groups like ''%'+edit9.Text+'%'+'''');
   if edit10.Text<>'' then
      SQL.add('and shoetestplan.groups2 like ''%'+edit10.Text+'%''');
   if GSDHCheckBox.Checked=true then
      SQL.Add('and YPZL.GSDH='''+main.Edit2.Text+''' ');
   if userdatecheck.Checked then
   begin
    if combobox2.text='' then
    begin
        showmessage('choose data,plz');
        abort;
    end;
    if Combobox2.text = 'TBreceive' then begin
       SQL.Add(' and shoetest.TBreceiveDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'MaterialSQ' then begin
       SQL.Add(' and shoetest.preparationDate_first between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'MaterialOK' then begin
       SQL.Add(' and preparationDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Material Ready' then begin
       SQL.Add(' and shoetest.preparationDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'lamination_send' then begin
       SQL.Add(' and shoetest.lamination_send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'lamination_get' then begin
       SQL.Add(' and shoetest.lamination_get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'BaoHe_send' then begin
       SQL.Add(' and shoetest.BaoHe_send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'BaoHe_get' then begin
       SQL.Add(' and shoetest.BaoHe_get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'kietphong_Send' then begin
       SQL.Add(' and shoetest.kietphong_Send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'kietphong_Get' then begin
       SQL.Add(' and shoetest.kietphong_Get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Amico_Send' then begin
       SQL.Add(' and shoetest.Amico_Send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Amico_Get' then begin
       SQL.Add(' and shoetest.Amico_Get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Laser_Send' then begin
       SQL.Add(' and shoetest.Laser_Send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end

    else if Combobox2.text = 'Laser_Get' then begin
       SQL.Add(' and shoetest.Laser_Get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'DAJU_Send' then begin
       SQL.Add(' and shoetest.DAJU_Send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'DAJU_Get' then begin
       SQL.Add(' and shoetest.DAJU_Get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Stitching Accessories Ready' then begin
       SQL.Add(' and shoetest.S_material between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Stitching Accessories Receive' then begin
       SQL.Add(' and shoetest.StitchingPhuFinishDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Assembly Accessories Ready' then begin
       SQL.Add(' and shoetest.insole_send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'LiMao_Send' then begin
       SQL.Add(' and shoetest.LiMao_Send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'LiMao_Get' then begin
       SQL.Add(' and shoetest.LiMao_Get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Assembly Accessories Receive' then begin
       SQL.Add(' and shoetest.insole_get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Packing Accessories Ready' then begin     
       SQL.Add(' and shoetest.lace_send between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Packing Accessories Receive' then begin
       SQL.Add(' and shoetest.lace_get between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end
    else if Combobox2.text = 'Cutting Material Receive' then begin
       SQL.Add(' and shoetest.FirstMatOutDate between');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
       sql.add(' and  ');
       sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''')  ');
    end

   end;
   active:=true;
  end;
end;

procedure TSampleWarehouse.BitBtn4Click(Sender: TObject);
begin
  with shoetest do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  Button6.Enabled:=false;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  DBMemo1.ReadOnly := false;
  DBMemo1.Color := clyellow;
end;

procedure TSampleWarehouse.BitBtn2Click(Sender: TObject);
begin
  Button6.Enabled:=true;
  BitBtn4.Enabled:=true;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  DBMemo1.ReadOnly := true;
  DBMemo1.Color := clScrollBar;
end;

procedure TSampleWarehouse.BitBtn3Click(Sender: TObject);
var
 i:integer;
  NDate:TDate;
begin
  try
    shoetest.first;
    for i:=1 to shoetest.RecordCount do
    begin
      case shoetest.updatestatus of
      usmodified:
        begin
         shoetest.edit;
         updqry1.apply(ukmodify);
        end;
      end;
      shoetest.next;
    end;
    shoetest.active:=false;
    shoetest.cachedupdates:=false;
    shoetest.requestlive:=false;
    shoetest.active:=true;
   except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

  Button6.Enabled:=true;
  BitBtn4.Enabled:=true;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  DBMemo1.ReadOnly := true;
  DBMemo1.Color := clScrollBar;
end;

procedure TSampleWarehouse.BDT6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  shoetest.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
       WorkBook:=eclApp.workbooks.Add;
       eclApp.Cells(1,1):='Serino no';
       eclApp.Cells(1,2):='Season';
       eclApp.Cells(1,3):='Stage';
       eclApp.Cells(1,4):='groups';
       eclApp.Cells(1,5):='groups2';
       eclApp.Cells(1,6):='Testno';
       eclApp.Cells(1,7):='SR';
       eclApp.Cells(1,8):='Tech Level';
       eclApp.Cells(1,9):='Shipdate';
       eclApp.Cells(1,10):='ETC';
       eclApp.Cells(1,11):='TB Receive Date';
       eclApp.Cells(1,12):='JNG';
       eclApp.Cells(1,13):='CRMTO';
       eclApp.Cells(1,14):='Amico(TPU)';
       eclApp.Cells(1,15):='Bao He';
       eclApp.Cells(1,16):='Punching';
       eclApp.Cells(1,17):='Embroidery';
       eclApp.Cells(1,18):='Printing';
       eclApp.Cells(1,19):='LiMao';
       eclApp.Cells(1,20):='Laser';
       eclApp.Cells(1,21):='DAJU';
       eclApp.Cells(1,22):='Pre-scheduling';
       eclApp.Cells(1,23):='Re-plan';
       eclApp.Cells(1,24):='Done(Scan)';
       eclApp.Cells(1,25):='Main Materials Ready';
       eclApp.Cells(1,26):='lamination Send';
       eclApp.Cells(1,27):='lamination Get';
       eclApp.Cells(1,28):='BaoHe Send';
       eclApp.Cells(1,29):='BaoHe Get';
       eclApp.Cells(1,30):='Kietphong Send';
       eclApp.Cells(1,31):='Kietphong Get';
       eclApp.Cells(1,32):='Amico Send';
       eclApp.Cells(1,33):='Amico Get';
       eclApp.Cells(1,34):='Laser Send';
       eclApp.Cells(1,35):='Laser Get';
       eclApp.Cells(1,36):='DAJU Send';
       eclApp.Cells(1,37):='DAJU Get';
       eclApp.Cells(1,38):='Cutting Material Receive';
       eclApp.Cells(1,39):='Stitching Accessories Ready';
       eclApp.Cells(1,40):='Stitching Accessories Receive';
       eclApp.Cells(1,41):='Assembly Accessories Ready';
       eclApp.Cells(1,42):='LiMao Send';
       eclApp.Cells(1,43):='LiMao Get';
       eclApp.Cells(1,44):='Assembly Accessories Receive';
       eclApp.Cells(1,45):='Packing Accessories Ready';
       eclApp.Cells(1,46):='Packing Accessories Receive';
       eclApp.Cells(1,47):='PlanningMemo';
       eclApp.Cells(1,48):='FD_Memo';
       eclApp.Cells(1,49):='Warehouse_MEMO';
       shoetest.First;
        j:=2;
        while   not   shoetest.Eof   do
          begin
            for   i:=0   to  shoetest.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=shoetest.Fields[i].Value;
              end;

          shoetest.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
