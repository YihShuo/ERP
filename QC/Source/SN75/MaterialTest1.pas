unit MaterialTest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  DBTables, DB, Mask, DBCtrls;

type
  TMaterialTest = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel2: TPanel;
    OrderLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Edit2: TEdit;
    DBGridEh0: TDBGridEh;
    DS1: TDataSource;
    MasQry: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    Panel3: TPanel;
    Label2: TLabel;
    ReportID_DBEdit: TDBEdit;
    Label5: TLabel;
    ReqDate_DBEdit: TDBEdit;
    MaterialType_DBEdit: TDBEdit;
    Label6: TLabel;
    Material0_DBEdit: TDBEdit;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    SupplierCode_DBEdit: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit7: TDBEdit;
    Material1_DBEdit: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Material2_DBEdit: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Material3_DBEdit: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Material4_DBEdit: TDBEdit;
    DBEdit10: TDBEdit;
    SamplingFor_DBEdit: TDBEdit;
    Category_DBEdit: TDBEdit;
    Treatment_DBEdit: TDBEdit;
    Approvalby_DBEdit: TDBEdit;
    FailReason_DBEdit: TDBEdit;
    CompleteDate_DBEdit: TDBEdit;
    AcceptedDate_DBEdit: TDBEdit;
    SKU_DBEdit: TDBEdit;
    SR_DBEdit: TDBEdit;
    Label21: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    TestedBy_DBEdit: TDBEdit;
    Component_DBEdit: TDBEdit;
    Color_DBEdit: TDBEdit;
    Season_DBEdit: TDBEdit;
    Comment_DBEdit: TDBEdit;
    Label26: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    DetQry: TQuery;
    UpdDet: TUpdateSQL;
    DS2: TDataSource;
    Panel5: TPanel;
    Label28: TLabel;
    BBB1: TBitBtn;
    BBB2: TBitBtn;
    BBB3: TBitBtn;
    BBB4: TBitBtn;
    BBB5: TBitBtn;
    BBB6: TBitBtn;
    BBB7: TBitBtn;
    BBBT1: TBitBtn;
    BBBT2: TBitBtn;
    BBBT3: TBitBtn;
    BBBT4: TBitBtn;
    DS3: TDataSource;
    DetsQry: TQuery;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    BBBB2: TBitBtn;
    BBBB3: TBitBtn;
    BBBB4: TBitBtn;
    BBBB5: TBitBtn;
    BBBB6: TBitBtn;
    UpdDets: TUpdateSQL;
    TmpQry: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBB2Click(Sender: TObject);
    procedure BBB3Click(Sender: TObject);
    procedure BBB4Click(Sender: TObject);
    procedure BBB5Click(Sender: TObject);
    procedure BBB6Click(Sender: TObject);
    procedure BBB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BBBT1Click(Sender: TObject);
    procedure BBBT2Click(Sender: TObject);
    procedure BBBT3Click(Sender: TObject);
    procedure BBBT4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh0DblClick(Sender: TObject);
    procedure DBGridEh0GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PC1Change(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure MasQryAfterOpen(DataSet: TDataSet);
    procedure DetQryAfterOpen(DataSet: TDataSet);
    procedure BBBB2Click(Sender: TObject);
    procedure BBBB3Click(Sender: TObject);
    procedure BBBB4Click(Sender: TObject);
    procedure BBBB5Click(Sender: TObject);
    procedure BBBB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTest: TMaterialTest;
  NDate:TDate;
implementation

uses main1, Import_Excel_To_MsSQL1;

{$R *.dfm}

procedure TMaterialTest.FormDestroy(Sender: TObject);
begin
  MaterialTest:=nil;
end;

procedure TMaterialTest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MasQry.requestlive or DetQry.RequestLive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TMaterialTest.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TMaterialTest.BB2Click(Sender: TObject);
begin
  with MasQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
BB5.enabled:=true;
BB6.enabled:=true;
end;

procedure TMaterialTest.BB3Click(Sender: TObject);
begin
  with MasQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BB5.enabled:=true;
BB6.enabled:=true;
end;

procedure TMaterialTest.BB4Click(Sender: TObject);
begin
  with MasQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
BB5.enabled:=true;
BB6.enabled:=true;
end;

procedure TMaterialTest.BB5Click(Sender: TObject);
var i:integer;
begin
  MasQry.First;
  while not MasQry.Eof do
  begin
    MasQry.Next;
  end;
 try
  MasQry.first;
  for i:=1 to MasQry.RecordCount do
    begin
      case MasQry.updatestatus of
        usinserted:
          begin
            MasQry.Edit;
            MasQry.FieldByName('GSBH').Value:=main.edit2.text;
            MasQry.FieldByName('USERID').Value:=main.edit1.text;
            MasQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
            MasQry.FieldByName('YN').Value:='1';
            UpMas.apply(ukinsert);
          end;
        usmodified:
          begin
            if (MasQry.FieldByName('YN').value = 0) then
            begin
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from Lab_Materialtest where ReportID='''+MasQry.FieldByName('ReportID').AsString+''' ');
              end;
             UpMas.Apply(ukDelete);
            end else
            begin
              MasQry.Edit;
              MasQry.FieldByName('GSBH').Value:=main.edit2.text;
              MasQry.FieldByName('USERID').Value:=main.edit1.text;
              MasQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              UpMas.apply(ukmodify);
            end;
          end;
    end;
    MasQry.Next;
  end;
 except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
  MasQry.active:=false;
  MasQry.cachedupdates:=false;
  MasQry.requestlive:=false;
  MasQry.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;

end;

procedure TMaterialTest.BB6Click(Sender: TObject);
begin
  with MasQry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.enabled:=false;
end;

procedure TMaterialTest.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TMaterialTest.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
DTP1.DateTime:=NDATE-3;
DTP2.DateTime:=NDATE;
end;

procedure TMaterialTest.BBB2Click(Sender: TObject);
var
  sYear, sMonth, SerialID, TestID: string;
begin
  //取Server的年月值
  with TmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YEAR(GETDATE()) AS FY, MONTH(GETDATE()) AS FM, GETDATE() AS NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    sYear := FieldByName('FY').AsString;
    sMonth := FieldByName('FM').AsString;
    Active := false;
  end;
//計算領料單流水號
  with TmpQry do
  begin
    Active:= false;
    SQL.Clear;
    SQL.Add('SELECT SerialID FROM Lab_Materialtests WHERE SerialID LIKE '''+sYear+sMonth+'%''');
    SQL.Add('ORDER BY SerialID');
    Active := true;
    if (RecordCount > 0) then
      begin
        Last;
        SerialID := FieldByName('SerialID').AsString;
        SerialID := Copy(SerialID, 7, 5);
        SerialID := IntToStr(StrToInt(SerialID)+1);

        while (Length(SerialID) < 5) do
        begin
          SerialID := '0' + SerialID;
        end;
      end
    else
    begin
      SerialID := '00001';
    end;
    SerialID := sYear + sMonth + SerialID;
    TestID := sYear + sMonth ;
    Active := false;
  end;

  with DetQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    FieldByName('ReportID').Value:=MasQry.FieldByName('ReportID').Value;
    FieldByName('SerialID').Value:=SerialID;
    FieldByName('TestID').Value:=TestID;
  end;
  Dbgrideh1.Columns[0].ReadOnly:=true;
  Dbgrideh1.Columns[1].ReadOnly:=true;
  Dbgrideh1.Columns[2].ReadOnly:=true;
  BBB2.Enabled:=false;
  BBB5.enabled:=true;
  BBB6.enabled:=true;
end;

procedure TMaterialTest.BBB3Click(Sender: TObject);
begin
  with DetQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBB5.enabled:=true;
BBB6.enabled:=true;
end;

procedure TMaterialTest.BBB4Click(Sender: TObject);
begin
  with DetQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
BBB5.enabled:=true;
BBB6.enabled:=true;
end;

procedure TMaterialTest.BBB5Click(Sender: TObject);
var i:integer;
begin
  DetQry.First;
  while not DetQry.Eof do
  begin
    DetQry.Next;
  end;
 try
  DetQry.first;
  for i:=1 to DetQry.RecordCount do
    begin
      case DetQry.updatestatus of
        usinserted:
          begin
            DetQry.Edit;
            DetQry.FieldByName('USERID').Value:=main.edit1.text;
            DetQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
            DetQry.FieldByName('YN').Value:='1';
            UpdDet.apply(ukinsert);
          end;
        usmodified:
          begin
            if (DetQry.FieldByName('YN').value = 0) then
            begin
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from Lab_Materialtest where ReportID='''+DetQry.FieldByName('ReportID').AsString+''' ');
              end;
             UpdDet.Apply(ukDelete);
            end else
            begin
              DetQry.Edit;
              DetQry.FieldByName('USERID').Value:=main.edit1.text;
              DetQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              UpdDet.apply(ukmodify);
            end;
          end;
    end;
    DetQry.Next;
  end;
 except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
  DetQry.active:=false;
  DetQry.cachedupdates:=false;
  DetQry.requestlive:=false;
  DetQry.active:=true;
  BBB2.Enabled:=true;
  BBB5.enabled:=false;
  BBB6.enabled:=false;

end;

procedure TMaterialTest.BBB6Click(Sender: TObject);
begin
  with DetQry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BBB2.Enabled:=true;  
BBB5.enabled:=false;
BBB6.enabled:=false;
end;

procedure TMaterialTest.BBB7Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialTest.BBT1Click(Sender: TObject);
begin
  MasQry.First;
end;

procedure TMaterialTest.BBT2Click(Sender: TObject);
begin
  MasQry.Prior;
end;

procedure TMaterialTest.BBT3Click(Sender: TObject);
begin
  MasQry.Next;
end;

procedure TMaterialTest.BBT4Click(Sender: TObject);
begin
  MasQry.Last;
end;

procedure TMaterialTest.BBBT1Click(Sender: TObject);
begin
  DetQry.First;
end;

procedure TMaterialTest.BBBT2Click(Sender: TObject);
begin
  DetQry.Prior;
end;

procedure TMaterialTest.BBBT3Click(Sender: TObject);
begin
  DetQry.Next;
end;

procedure TMaterialTest.BBBT4Click(Sender: TObject);
begin
  DetQry.Last;
end;

procedure TMaterialTest.Button1Click(Sender: TObject);
begin
  with MasQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Lab_Materialtest.ReportID, Lab_Materialtest.GSBH, Lab_Materialtest.ReqDate, Lab_Materialtest.Factory,'+
    'Lab_Materialtest.Department, Lab_Materialtest.Result, Lab_Materialtest.Material0,Lab_Materialtest.Material1,'+
    'Lab_Materialtest.Material2, Lab_Materialtest.Material3, Lab_Materialtest.Material4, Lab_Materialtest.Color,'+
    'Lab_Materialtest.Component, Lab_Materialtest.MaterialType,Lab_Materialtest.Treatment, Lab_Materialtest.SupplierCode,'+
    'Lab_Materialtest.Category, Lab_Materialtest.Season,Lab_Materialtest.SamplingFor , Lab_Materialtest.SKU, Lab_Materialtest.SR,'+
    'Lab_Materialtest.TestedBy, Lab_Materialtest.Approvalby, Lab_Materialtest.AcceptedDate, Lab_Materialtest.CompleteDate,'+
    'Lab_Materialtest.Comment, Lab_Materialtest.FailReason, Lab_Materialtest.UserID,Lab_Materialtest.UserDate, Lab_Materialtest.YN,'+
    'ZSZL.ZSYWJC, CLZL0.cldhflexdes as ''Material Name0'', CLZL1.cldhflexdes as ''Material Name1'', CLZL2.cldhflexdes as ''Material Name2'', '+
    'CLZL3.cldhflexdes as ''Material Name3'',CLZL4.cldhflexdes as ''Material Name4'''+
    'from Lab_Materialtest');
    SQL.Add('left join ZSZL_FLEX on Lab_Materialtest.SupplierCode=ZSZL_FLEX.zsdhflex');
    SQL.Add('left join ZSZL on ZSZL_FLEX.zsdh=ZSZL.zsdh');
    SQL.Add('left join CLZL_FLEXS CLZL0 on Lab_Materialtest.Material0=CLZL0.cldhflex');
    SQL.Add('left join CLZL_FLEXS CLZL1 on Lab_Materialtest.Material1=CLZL1.cldhflex');
    SQL.Add('left join CLZL_FLEXS CLZL2 on Lab_Materialtest.Material2=CLZL2.cldhflex');
    SQL.Add('left join CLZL_FLEXS CLZL3 on Lab_Materialtest.Material3=CLZL3.cldhflex');
    SQL.Add('left join CLZL_FLEXS CLZL4 on Lab_Materialtest.Material4=CLZL4.cldhflex');
    SQL.Add('Where convert(smalldatetime,convert(varchar,Lab_Materialtest.USERDATE,111)) between   ');
    SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if check.Checked then
      SQL.Add('And Lab_Materialtest.userid='''+main.edit1.text+''' ');
    if Edit1.text<>'' then
      SQL.Add('And Lab_Materialtest.ReportID='''+Edit1.Text+''' ');
    if Edit2.text<>'' then
      SQL.Add('And Lab_Materialtest.Material0='''+Edit2.Text+''' ');
      //showmessage(sql.Text);
    Active:=True;
  end;
Panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBB2.Enabled:=true;
BBB3.Enabled:=true;
BBB4.Enabled:=true;
BBBT1.Enabled:=true;
BBBT2.Enabled:=true;
BBBT3.Enabled:=true;
BBBT4.Enabled:=true;
BBT6.Enabled:=true;
BBBB2.Enabled:=true;
BBBB3.Enabled:=true;
BBBB4.Enabled:=true;
dbgrideh0.Columns[0].Width:=80;
dbgrideh0.Columns[1].Width:=80;
dbgrideh0.Columns[2].Width:=80;
dbgrideh0.Columns[3].Width:=80;
dbgrideh0.Columns[4].Width:=80;
dbgrideh0.Columns[5].Width:=80;
dbgrideh0.Columns[6].Width:=80;
dbgrideh0.Columns[7].Width:=80;
dbgrideh0.Columns[8].Width:=80;
dbgrideh0.Columns[9].Width:=80;
dbgrideh0.Columns[10].Width:=80;
dbgrideh0.Columns[11].Width:=80;
dbgrideh0.Columns[12].Width:=80;
dbgrideh0.Columns[13].Width:=80;
dbgrideh0.Columns[14].Width:=80;
dbgrideh0.Columns[15].Width:=80;
dbgrideh0.Columns[16].Width:=80;
dbgrideh0.Columns[17].Width:=80;
dbgrideh0.Columns[18].Width:=80;
dbgrideh0.Columns[19].Width:=80;
dbgrideh0.Columns[20].Width:=80;
dbgrideh1.Columns[0].Width:=80;
dbgrideh1.Columns[1].Width:=80;
dbgrideh1.Columns[2].Width:=80;
dbgrideh1.Columns[3].Width:=80;
dbgrideh1.Columns[4].Width:=80;
dbgrideh1.Columns[5].Width:=80;
dbgrideh1.Columns[6].Width:=80;
dbgrideh1.Columns[7].Width:=80;
dbgrideh1.Columns[8].Width:=80;
dbgrideh1.Columns[9].Width:=80;
dbgrideh1.Columns[10].Width:=80;
dbgrideh1.Columns[11].Width:=80;
dbgrideh1.Columns[12].Width:=80;
dbgrideh1.Columns[13].Width:=80;
dbgrideh1.Columns[14].Width:=80;
dbgrideh1.Columns[15].Width:=80;
dbgrideh1.Columns[16].Width:=80;
dbgrideh1.Columns[17].Width:=80;
dbgrideh1.Columns[18].Width:=80;
dbgrideh1.Columns[19].Width:=80;
dbgrideh1.Columns[20].Width:=80;
end;

procedure TMaterialTest.DBGridEh0DblClick(Sender: TObject);
begin
if MasQry.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
    Panel1.Visible:=False;
    Panel5.Visible:=true;
  end;
end;

procedure TMaterialTest.DBGridEh0GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (MasQry.FieldByName('YN').Value = '0') then
    begin
      DBGrideh0.canvas.font.color := clRed;
    end;
end;

procedure TMaterialTest.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (DetQry.FieldByName('YN').Value = '0') then
    begin
      DBGrideh1.canvas.font.color := clRed;
    end;
end;

procedure TMaterialTest.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
    Panel1.Visible:=true
  else
    Panel1.Visible:=False;
  if PC1.ActivePage=TS2 then
    Panel5.Visible:=true
  else
    Panel5.Visible:=false;
end;

procedure TMaterialTest.bbt6Click(Sender: TObject);
begin
  Import_Excel_To_MsSQL:=TImport_Excel_To_MsSQL.create(self);
  Import_Excel_To_MsSQL.ClientHeight:=500;
  Import_Excel_To_MsSQL.ClientWidth:=1000;
  Import_Excel_To_MsSQL.show;
end;

procedure TMaterialTest.MasQryAfterOpen(DataSet: TDataSet);
begin
  DetQry.Active:=true;
end;

procedure TMaterialTest.DetQryAfterOpen(DataSet: TDataSet);
begin
  DetsQry.Active:=true;
end;

procedure TMaterialTest.BBBB2Click(Sender: TObject);
begin
  with DetsQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    FieldByName('ReportID').Value:=DetQry.FieldByName('ReportID').Value;
  end;
Dbgrideh2.Columns[0].ReadOnly:=true;
BBBB5.enabled:=true;
BBBB6.enabled:=true;
end;

procedure TMaterialTest.BBBB3Click(Sender: TObject);
begin
  with DetsQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBBB5.enabled:=true;
BBBB6.enabled:=true;
end;

procedure TMaterialTest.BBBB4Click(Sender: TObject);
begin
  with DetsQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
BBBB5.enabled:=true;
BBBB6.enabled:=true;
end;

procedure TMaterialTest.BBBB5Click(Sender: TObject);
var i:integer;
begin
  DetsQry.First;
  while not DetsQry.Eof do
  begin
    DetsQry.Next;
  end;
 try
  DetsQry.first;
  for i:=1 to DetsQry.RecordCount do
    begin
      case DetsQry.updatestatus of
        usinserted:
          begin
            DetsQry.Edit;
            DetsQry.FieldByName('USERID').Value:=main.edit1.text;
            DetsQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
            DetsQry.FieldByName('YN').Value:='1';
            UpdDets.apply(ukinsert);
          end;
        usmodified:
          begin
            if (DetsQry.FieldByName('YN').value = 0) then
            begin
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from Lab_Materialtest where ReportID='''+DetQry.FieldByName('ReportID').AsString+''' ');
              end;
             UpdDets.Apply(ukDelete);
            end else
            begin
              DetsQry.Edit;
              DetsQry.FieldByName('USERID').Value:=main.edit1.text;
              DetsQry.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              UpdDets.apply(ukmodify);
            end;
          end;
    end;
    DetsQry.Next;
  end;
 except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
  DetsQry.active:=false;
  DetsQry.cachedupdates:=false;
  DetsQry.requestlive:=false;
  DetsQry.active:=true;
  BBBB5.enabled:=false;
  BBBB6.enabled:=false;
end;

procedure TMaterialTest.BBBB6Click(Sender: TObject);
begin
  with DetsQry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BBBB5.enabled:=false;
BBBB6.enabled:=false;
end;

end.
