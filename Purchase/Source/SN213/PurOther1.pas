unit PurOther1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh,IniFiles, Menus;

type
  TPurOther = class(TForm)
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
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Query1: TQuery;
    CGMas: TQuery;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetACCUS: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBJNO: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGMasDH: TStringField;
    CGMasCZ: TStringField;
    CGMasGSBH: TStringField;
    BDelRec: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    Check: TCheckBox;
    BitBtn1: TBitBtn;
    CGMasPURPOSE: TStringField;
    CGMasDevType: TStringField;
    CGMasMEMO: TStringField;
    CGMasPMark: TIntegerField;
    OldCK: TCheckBox;
    btnPrintTW: TBitBtn;
    dbgrid3: TDBGridEh;
    CGDetACCVN: TCurrencyField;
    btRepl: TBitBtn;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSXXCC: TStringField;
    CGSStage: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    DS5: TDataSource;
    UpOrdMat: TUpdateSQL;
    chk_Detail: TCheckBox;
    Panel5: TPanel;
    dbgrid4: TDBGridEh;
    DBGrid1: TDBGridEh;
    Splitter3: TSplitter;
    QTemp: TQuery;
    CGSTemp: TQuery;
    CGMasPrinttime: TIntegerField;
    CGMasManagerID: TStringField;
    CGMasManagerDate: TDateTimeField;
    CGMasPrintTw: TIntegerField;
    CGMasPrintS: TIntegerField;
    BBT8: TBitBtn;
    BBT9: TBitBtn;
    Panel7: TPanel;
    BO7: TBitBtn;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    BO6: TBitBtn;
    CGMaszsywjctw: TStringField;
    CGMasyjdz: TStringField;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPrintTWClick(Sender: TObject);
    procedure dbgrid3DblClick(Sender: TObject);
    procedure dbgrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid3EditButtonClick(Sender: TObject);
    procedure dbgrid3KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid4EditButtonClick(Sender: TObject);
    procedure btReplClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CGMasAfterScroll(DataSet: TDataSet);
    procedure BBT8Click(Sender: TObject);
    procedure BBT9Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO6Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    PurchaseN211_ISO,PurchaseN212_ISO,PurchaseN213_CheckPrint:String;
    { Private declarations }
    procedure UpdateCGZL_Purpose();
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PurOther: TPurOther;
  NDate:TDate;

implementation

uses main1, PurOther_ZS1, PurOther_CL1, PurOther_BJ1, Quotation1,
     PurOther_Print1, PurOther_safe1,comobj, PurOther_Dep1, PurOther_PrintTW1,
     Pur_Replenish1 ,PurOtherSizeTW_Print1, PurRevise1, FunUnit,
     PurOther_PrintTW_TW1, PurOther_PrintTW_VN1, PurPham_Replenish1,
  PurOtherSizeTW_Print_VN1;

{$R *.dfm}
procedure TPurOther.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  PurchaseN211_ISO:=' A-TM-QP009-11B(ERP)';
  PurchaseN213_CheckPrint:='TX';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      PurchaseN211_ISO:=MyIni.ReadString('ERP','PurchaseN211_ISO','');
      PurchaseN212_ISO:=MyIni.ReadString('ERP','PurchaseN212_ISO','');
      PurchaseN213_CheckPrint:=MyIni.ReadString('ERP','PurchaseN213_CheckPrint','TX');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(CGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPurOther.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      panel6.Visible:=true;
      panel1.Visible:=false;
      action:=canone;
    end else
    begin
      action:=Cafree;
    end;
  end;
end;

procedure TPurOther.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as zsywjctw,ZSZL.yjdz ');
    if OldCK.Checked=true then
      sql.add('from (Select* from CGZL union all Select* from CGZL_2014)CGZL')
    else
      sql.add('from CGZL') ;
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW  ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO like '''+Edit1.Text+'%''');
    sql.add('and ZSZL.ZSYWJC like ''%'+Edit3.Text+'%'' ');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''3'' ');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and CGZL.USERID='''+main.Edit1.Text+'''');
    end;
    sql.add('order by CGZL.CGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    active:=true;
  end;
  Panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  check.Checked:=true;
  CGDet.Active:=true;
  btRepl.Enabled:=true;
end;

procedure TPurOther.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TPurOther.BB2Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.FormCreate(Sender: TObject);
var i:integer;
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.Add('Select * from CGZL_Permission where USERID = '''+main.Edit1.Text+''' and GSBH = '''+main.Edit2.Text+'''');
    active := true;
    if recordcount > 0 then
      BBT8.Enabled := true;
    active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select distinct XXCC as US_SIZE from Gender where XXCC<>''0'' order by XXCC ');
    Active:=true;
    DBGrid1.Columns[0].PickList.add('ZZZZZZ');
    for i:=0 to RecordCount-1 do
    begin
      DBGrid1.Columns[0].PickList.add(FieldByName('US_SIZE').AsString);
      Next;
    end;
    Active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TPurOther.BB3Click(Sender: TObject);
begin
  if CGDet.recordcount=0 then
  begin
    with CGMas do
    begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BB4Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;

  try
    CGDet.Active:=false;
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
    begin
      case CGMas.updatestatus of
        usinserted:
        begin
          if CGMas.fieldbyname('ZSBH').isnull then
          begin
            CGMas.delete;
          end else
          begin
             with query1 do    //計算領料單流水號
             begin
               active:=false;
               sql.Clear;
               sql.Add('select CGNO from CGZL where CGNO like '+''''+y+m+'%'+'''');
               sql.add('order by CGNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('CGNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<5 do
                 begin
                   a:='0'+a;
                 end;
               end else
               begin
                 a:='00001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             CGMas.edit;
             CGMas.fieldbyname('CGNO').Value:=a;
             CGMas.fieldbyname('GSBH').Value:=main.edit2.text;
             CGMas.fieldbyname('CGLX').Value:='1';
             CGMas.fieldbyname('CGLX').Value:='3';
             if ((CGMas.FieldByName('MEMO').Value='')or (CGMas.FieldByName('MEMO').IsNull)) then
             begin
                CGMas.FieldByName('DevType').Value :='';
             end else
             begin
                CGMas.fieldbyname('DevType').Value:='Z07';
             end;
             CGMas.FieldByName('userID').Value:=main.edit1.text;
             CGMas.FieldByName('userdate').Value:=Ndate;
             CGMas.FieldByName('CGDate').Value:=NDate;
             CGMas.FieldByName('YN').Value:='1';
             upMas.apply(ukinsert);
           end;
        end;
        usmodified:
         begin
            if CGMas.FieldByName('YN').AsString<>'5' then
            begin
              if CGMas.FieldByName('UserID').Value=main.Edit1.Text then
              begin
                if CGMas.fieldbyname('YN').value='0'then
                begin
                    with BDelRec do
                    begin
                      active:=false;
                      sql.Clear;
                      {sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                      sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())'); }

                      SQL.Add('UPDATE CGZL SET flowflag = ''X'' WHERE CGNO = ''' + CGMas.fieldbyname('CGNO').AsString+''' ');
                      
                      execsql;
                      active:=false;
                    end;
                    //upMas.apply(ukdelete);
                end else
                begin
                  if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                    begin
                      CGMas.edit;
                      if ((CGMas.FieldByName('MEMO').Value='')or(CGMas.FieldByName('MEMO').IsNull)) then
                      begin
                         CGMas.FieldByName('MEMO').Value :='';
                      end else
                      begin
                         CGMas.FieldByName('DevType').Value :='Z07';
                      end;
                      CGMas.FieldByName('userID').Value:=main.edit1.text;
                      CGMas.FieldByName('userdate').Value:=Ndate;
                      upMas.apply(ukmodify);
                    end else
                    begin
                      showmessage('Date>7, can not modify.');
                    end;
                end;
              end else
              begin
                Showmessage('It is not yours, can not modify.');
              end;
            end else
            begin
              showmessage('Already in warehouse,can not modify');
            end;
         end;
      end;
     CGMas.next;
    end;
  CGMas.active:=false;
  CGMas.cachedupdates:=false;
  CGMas.requestlive:=false;
  CGMas.active:=true;
  CGDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
  dbgrid3.columns[5].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TPurOther.BB6Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TPurOther.BD2Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BD3Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BD4Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    dbgrid4.Columns[10].ReadOnly:=false;
    dbgrid4.Columns[10].Color:=$00B5FFFF;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;
//20200313 weston fix
procedure TPurOther.UpdateCGZL_Purpose();
begin
  //Update CGZL.Purpose
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update CGZL set PURPOSE=A.CQDH from (');
    SQL.Add('select CGZL.CGNO,Max(CLZL.CQDH) as CQDH ');
    SQL.Add('from CGZL');
    SQL.Add('left join CGZLS on CGZLS.CGNO=CGZL.CGNO');
    SQL.Add('left join CLZL on CGZLS.CLBH=CLZL.CLDH');
    SQL.Add('where CGZL.CGNO='''+CGMas.fieldbyname('CGNO').Value+'''');
    SQL.Add('Group by CGZL.CGNO ) A ');
    SQL.Add('where A.CGNO=CGZL.CGNO ');
    Execsql;
  end;
end;
procedure TPurOther.BD5Click(Sender: TObject);
var i:integer;
begin

  with CGDet do
  begin
    first;
    while not CGDet.Eof do
    begin
        if CGDet.FieldByName('Qty').IsNull  then
        begin
          edit;
          CGDet.FieldByName('Qty').value:=0;
        end;
        if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
        begin
            showmessage('The Price can not be empty.');
            abort;
        end;
        if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
        begin
            showmessage('Can not have two price.');
            abort;
        end;
        if CGDet.FieldByName('YQDate').IsNull  then
        begin
            showmessage('YQDate can not be null.');
            abort;
        end;
        next;
    end;
  end;

  try
    CGDet.first;
    for i:=1 to CGDet.RecordCount do
    begin
      case CGDet.updatestatus of
        usinserted:
          begin
            if CGDet.fieldbyname('CLBH').isnull then
            begin
              CGDet.delete;
            end else
            begin
              CGDet.edit;
              CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
              CGDet.FieldByName('userID').Value:=main.edit1.text;
              CGDet.FieldByName('userdate').Value:=Ndate;
              CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
              CGDet.FieldByName('YN').Value:='1';
              upDet.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if CGDet.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''CGZLS'','''+CGDet.fieldbyname('CGNO').Value+'''');
                sql.add(','''+CGDet.fieldbyname('CLBH').Value+''','''+CGDet.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                sql.Add('delete CGZLSS where cgno='''+CGDet.fieldbyname('CGNO').Value+''' and clbh='''+CGDet.fieldbyname('CLBH').Value+'''');
                execsql;
                active:=false;
              end;
              UpDet.apply(ukdelete);
            end else
            begin
              if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
              begin
                if CGS.RecordCount>0 then
                begin
                   if DBGrid1.getfootervalue(0,DBGrid1.columns[2])<>CGDet.FieldByName('Qty').Value then
                   begin
                     Showmessage('Qty need to the same Size Qty');
                     break;
                   end;
                end;
                CGDet.edit;
                CGDet.FieldByName('userID').Value:=main.edit1.text;
                CGDet.FieldByName('userdate').Value:=Ndate;
                upDet.apply(ukmodify);
              end else
              begin
                showmessage('Date>7, can not modify.');
              end;
            end;
          end;
      end;
      CGDet.next;
    end;
    CGDet.active:=false;
    CGDet.cachedupdates:=false;
    CGDet.requestlive:=false;
    CGDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    dbgrid4.columns[0].ButtonStyle:=cbsNone;
    dbgrid4.columns[6].ButtonStyle:=cbsNone;
    dbgrid4.columns[5].ButtonStyle:=cbsNone;
    //更新CGZL.Purpose
    UpdateCGZL_Purpose();
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TPurOther.BD6Click(Sender: TObject);
begin
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TPurOther.BBT1Click(Sender: TObject);
begin
  CGMas.First;
end;

procedure TPurOther.BBT2Click(Sender: TObject);
begin
  CGMas.prior;
end;

procedure TPurOther.BBT3Click(Sender: TObject);
begin
  CGMas.next;
end;

procedure TPurOther.BBT4Click(Sender: TObject);
begin
  CGMas.last;
end;

procedure TPurOther.BDT1Click(Sender: TObject);
begin
  CGDet.First;
end;

procedure TPurOther.BDT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TPurOther.BDT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TPurOther.BDT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TPurOther.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPurOther.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPurOther.CGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  btnPrintTW.Enabled:=true;
  BDT6.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO3.Enabled:=true;
  BO7.Enabled:=true;
  CGS.Active:=true;
  if (((NDate-CGMas.FieldByName('USERDATE').value)>7) or (CGMas.FieldByName('YN').value='5'))   then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if CGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;    
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
  CGS.Active:=true;
  if (CGMas.FieldByName('PrintTw').Value <> 0) or (CGMas.FieldByName('PrintS').Value <> 0) then begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;


procedure TPurOther.BBTT1Click(Sender: TObject);
begin
  PurOther_ZS:=TPurOther_ZS.create(self);
  PurOther_ZS.show;
end;

procedure TPurOther.BBTT2Click(Sender: TObject);
begin
  if messagedlg('Select from Normal or Safe material?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    PurOther_CL:=TPurOther_CL.create(self);
    PurOther_CL.show;
  end else
  begin
    PurOther_safe:=TPurOther_safe.create(self);
    PurOther_safe.show;
  end;
end;

procedure TPurOther.CGMasAfterOpen(DataSet: TDataSet);
begin

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  CGMas.RequestLive:=false;
  CGMas.CachedUpdates:=false;
end;

procedure TPurOther.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TPurOther.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TPurOther.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TPurOther.BDT5Click(Sender: TObject);
var CGNO: String;
begin

  if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
  else begin
    if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('select * from CGZLS  ');
        sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
        active:=true;
        if recordcount >0 then
        begin
          showmessage('QTY > Req. Qty ，Need Manager Check First!');
          abort;
        end;
      end;
    end;
  end;
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    PurOther_Print:=TPurOther_Print.Create(nil);
    PurOther_Print.quickrep1.prepare;
    PurOther_Print.L20.Caption:= PurchaseN211_ISO;
    PurOther_Print.Qpage1.caption:=inttostr(PurOther_Print.quickrep1.QRPrinter.pagecount);
    PurOther_Print.quickrep1.preview;
    PurOther_Print.Free;
  end;
  //
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UpMas.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
  //
  with query1 do    //更新列印次數
  begin
    active:=false;
    sql.Clear;
    sql.Add('Update CGZL set PrintS = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurOther.BDT6Click(Sender: TObject);
begin
  Quotation:=TQuotation.create(self);
  Quotation.show;
end;

procedure TPurOther.CGDetCalcFields(DataSet: TDataSet);
begin
  with CGDet do
  begin
    if FieldByName('USPrice').value<>0 then
    begin
      FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
    end;
    if FieldByName('VNPrice').value<>0 then
    begin
      FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
    end;
  end;
end;

procedure TPurOther.FormDestroy(Sender: TObject);
begin
  PurOther:=nil;
end;

procedure TPurOther.BitBtn1Click(Sender: TObject);
var   a,CGNO:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
//    if CGMas.FieldByName('PrintTime').Value = 1 then begin   //已列印
//      showmessage('The Po has been print yet!');
//      abort;
//    end;
    if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
    else begin
      if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from CGZLS  ');
          sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
          active:=true;
          if recordcount >0 then
          begin
            showmessage('QTY > Req. Qty ，Need Manager Check First!');
            abort;
          end;
        end;
      end;
    end;   
    CGNO := CGMas.FieldByName('CGNO').AsString;
    if  CGDet.active  then
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
        for   i:=0   to   CGDet.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
        end;

        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
        begin
          for   i:=0   to  CGDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
          end;
          CGDet.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
{        with query1 do    //更新列印次數
        begin
          active:=false;
          sql.Clear;
          sql.Add('Update CGZL set Printtime = 1 ');
          sql.add('where CGNO='''+CGNO+'''');
          ExecSQL;
        end;
        Button1.Click;
        CGMas.Locate('CGNO',CGNO,[loPartialKey]) }
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TPurOther.btnPrintTWClick(Sender: TObject);
var CGNO: String;
begin

  if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
  else begin
    if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('select CGNO from CGZLS  ');
        sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
        active:=true;
        if recordcount >0 then
        begin
          showmessage('QTY > Req. Qty ，Need Manager Check First!');
          abort;
        end;
      end;
    end;
  end;
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    if ((CGS.FieldByName('XXCC').AsString='ZZZZZZ') or (CGS.RecordCount=0))  then
    begin
      if PurchaseN213_CheckPrint='TX' then
      begin
        {if CGMas.FieldByName('PURPOSE').AsString='TW' then
        begin
          PurOther_PrintTW_TW:=TPurOther_PrintTW_TW.Create(nil);
          PurOther_PrintTW_TW.quickrep1.prepare;
          PurOther_PrintTW_TW.L_address.Caption:='Supplier address:'+PurOther.CGMas.FieldByName('yjdz').AsString;
          PurOther_PrintTW_TW.L20.Caption:=PurchaseN211_ISO;
          PurOther_PrintTW_TW.Qpage1.caption:=inttostr(PurOther_PrintTW_TW.quickrep1.QRPrinter.pagecount);
          PurOther_PrintTW_TW.quickrep1.preview;
          PurOther_PrintTW_TW.Free;
        end;
        if CGMas.FieldByName('PURPOSE').AsString='VN' then
        begin}
          PurOther_PrintTW_VN:=TPurOther_PrintTW_VN.Create(nil);
          PurOther_PrintTW_VN.quickrep1.prepare;
          PurOther_PrintTW_VN.L_address.Caption:='Supplier address:'+PurOther.CGMas.FieldByName('yjdz').AsString;
          PurOther_PrintTW_VN.L20.Caption:=PurchaseN211_ISO;
          PurOther_PrintTW_VN.Qpage1.caption:=inttostr(PurOther_PrintTW_VN.quickrep1.QRPrinter.pagecount);
          PurOther_PrintTW_VN.quickrep1.preview;
          PurOther_PrintTW_VN.Free;
        //end;
      end else
      begin
        PurOther_PrintTW:=TPurOther_PrintTW.Create(nil);
        PurOther_PrintTW.quickrep1.prepare;
        PurOther_PrintTW.L20.Caption:=PurchaseN211_ISO;
        PurOther_PrintTW.Qpage1.caption:=inttostr(PurOther_PrintTW.quickrep1.QRPrinter.pagecount);
        PurOther_PrintTW.quickrep1.preview;
        PurOther_PrintTW.Free;
      end;
    end else
    begin
      if PurchaseN213_CheckPrint='TX' then
      begin
        CGNO := CGMas.FieldByName('CGNO').AsString;
        PurOtherSizeTW_Print_VN:=TPurOtherSizeTW_Print_VN.Create(nil);
        //PurOtherSizeTW_Print_VN.L9.Caption:='BuyNo:'+PurOther.BuyNoQ.FieldByName('BUYNO').AsString;
        //PurOtherSizeTW_Print_VN.L10.Caption:='Brand:'+PurOther.BuyNoQ.FieldByName('KFJC').AsString;
        PurOtherSizeTW_Print_VN.L_address.Caption:='Supplier address:'+PurOther.CGMas.FieldByName('yjdz').AsString;
        PurOtherSizeTW_Print_VN.L20.Caption:=PurchaseN212_ISO;
        PurOtherSizeTW_Print_VN.quickrep1.prepare;
        PurOtherSizeTW_Print_VN.Qpage1.caption:=inttostr(PurOtherSizeTW_Print_VN.quickrep1.QRPrinter.pagecount);
        if messagedlg('Normal request date or shipping date?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            PurOtherSizeTW_Print_VN.QRDBText16.Enabled:=false;
            PurOtherSizeTW_Print_VN.R27.datafield:=PurOtherSizeTW_Print_VN.MasSize.fields[2].fieldname;
          end else
          begin
            PurOtherSizeTW_Print_VN.QRDBText1.Enabled:=false;
            PurOtherSizeTW_Print_VN.R27.datafield:=PurOtherSizeTW_Print_VN.MasSize.fields[2].fieldname;
          end;
        end else
        begin
           if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
           begin
            PurOtherSizeTW_Print_VN.QRDBText16.Enabled:=false;
            PurOtherSizeTW_Print_VN.R27.datafield:=PurOtherSizeTW_Print_VN.MasSize.fields[4].fieldname;
           end else
           begin
              PurOtherSizeTW_Print_VN.QRDBText1.Enabled:=false;
              PurOtherSizeTW_Print_VN.R27.datafield:=PurOtherSizeTW_Print_VN.MasSize.fields[4].fieldname;
           end;
        end;
        PurOtherSizeTW_Print_VN.quickrep1.preview;
        PurOtherSizeTW_Print_VN.Free;
      end else
      begin
        PurOtherSizeTW_Print:=TPurOtherSizeTW_Print.Create(nil);
        PurOtherSizeTW_Print.quickrep1.prepare;
        PurOtherSizeTW_Print.L20.Caption:=PurchaseN211_ISO;
        PurOtherSizeTW_Print.Qpage1.caption:=inttostr(PurOtherSizeTW_Print.quickrep1.QRPrinter.pagecount);
        PurOtherSizeTW_Print.quickrep1.preview;
        PurOtherSizeTW_Print.Free;
      end;
    end;
  end;
  //
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UpMas.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
  with query1 do    //更新列印次數
  begin
    active:=false;
    sql.Clear;
    sql.Add('Update CGZL set PrintTw = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurOther.dbgrid3DblClick(Sender: TObject);
begin
  if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TPurOther.dbgrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurOther.dbgrid3EditButtonClick(Sender: TObject);
begin
 if DBGrid3.SelectedField.FieldName='MEMO' then
 begin
    PurOther_Dep:= TPurOther_Dep.create(self);
    PurOther_Dep.ShowModal();
    PurOther_Dep.Free;
 end ;
 if DBGrid3.SelectedField.FieldName='ZSBH' then
 begin
    PurOther_ZS:= TPurOther_ZS.create(self);
    PurOther_ZS.ShowModal();
    PurOther_ZS.Free;
 end ;
end;

procedure TPurOther.dbgrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurOther.dbgrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGDet.FieldByName('CGNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurOther.dbgrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='USPrice') or (DBGrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
      begin
        PurOther_BJ:=TPurOther_BJ.create(self);
        PurOther_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
        PurOther_BJ.Button1Click(nil);
        PurOther_BJ.show;
      end;
  end;
end;

procedure TPurOther.btReplClick(Sender: TObject);
begin
  if Pur_Replenish=nil then
    Pur_Replenish:=TPur_Replenish.create(self);
  Pur_Replenish.show;
end;

procedure TPurOther.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGS.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurOther.CGMasAfterScroll(DataSet: TDataSet);
begin
  //已經入庫 Already In Warehouse
  if CGMas.FieldByName('YN').AsString='5' then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end else
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
end;

procedure TPurOther.BBT8Click(Sender: TObject);
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  try
    with CGMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      FieldByName('ManagerID').Value := main.Edit1.Text;
      FieldByName('ManagerDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      FieldByName('Printtime').Value:=0;
      FieldByName('PrintTw').Value:=0;
      FieldByName('PrintS').Value:=0;
      upMas.apply(ukmodify);
    end;
    CGMas.active:=false;
    CGMas.cachedupdates:=false;
    CGMas.requestlive:=false;
    CGMas.active:=true;
    showmessage('Check OK!');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TPurOther.BBT9Click(Sender: TObject);
begin
  PurRevise:=TPurRevise.Create(self);
  PurRevise.Show();
end;

procedure TPurOther.BO1Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;  
end;

procedure TPurOther.BO2Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TPurOther.BO3Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TPurOther.BO4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
    CGs.first;
    for i:=1 to CGs.RecordCount do
    begin
      case CGs.updatestatus of
        usinserted:
        begin
          if CGs.fieldbyname('XXCC').isnull then
          begin
            CGs.delete;
          end else
          begin
             CGs.edit;
             CGs.fieldbyname('CGNO').Value:=CGDet.fieldbyname('CGNO').value;
             CGs.fieldbyname('CLBH').Value:=CGDet.fieldbyname('CLBH').value;
             CGs.fieldbyname('ZLBH').Value:='ZZZZZZZZZZ';
             CGs.fieldbyname('CLSL').Value:='0';
             CGs.fieldbyname('Stage').Value:='MASS';//20141202　weston增加採購階段配合開發採購修正
             CGs.FieldByName('YQDate').Value:=CGDet.fieldbyname('YQDate').value;
             CGs.FieldByName('CFMDate').Value:=CGDet.fieldbyname('CFMDate').value;
             CGs.FieldByName('userID').Value:=main.edit1.text;
             CGs.FieldByName('userdate').Value:=date;
             CGs.FieldByName('YN').Value:='1';
             UpOrdMat.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if CGS.fieldbyname('YN').value='0'then
          begin
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'CGZLSS'+''''+','+''''+CGS.fieldbyname('CGNO').Value+'''');
              sql.add(','+''''+CGS.fieldbyname('CLBH').Value+''''+','+''''+CGS.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            uPOrdMat.apply(ukdelete);
          end else
          begin
            CGS.edit;
            CGS.FieldByName('userID').Value:=main.edit1.text;
            CGS.FieldByName('userdate').Value:=date;
            uPOrdMat.apply(ukmodify);
          end;
        end;
      end;
      CGS.next;
    end;

    CGs.active:=false;
    CGs.cachedupdates:=false;
    CGs.requestlive:=false;
    CGs.active:=true;
    CGS.First;
    Qty:=0;
    while not CGS.eof do
    begin
      Qty:=Qty+CGS.fieldbyname('Qty').Value;
      CGS.next;
    end;

    with CGDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    BO4.Enabled:=false;
    BO5.Enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;    
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TPurOther.BO5Click(Sender: TObject);
begin
  with CGS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO4.Enabled:=false;
  BO5.Enabled:=false;
end;

procedure TPurOther.BO6Click(Sender: TObject);
var i,j,k,l: integer;
    eclApp,WorkBook:olevariant;
begin
   with Qtemp do
   begin
      Active:=false;
      sql.Clear;
      sql.add('select DISTINCT XXCC ');
      sql.add('from CGZLSS');
      sql.add('where CGNO='''+CGS.FieldByName('CGNO').AsString+'''');
      sql.add('order by XXCC');
      Active:=true;
   end;
   with CGSTemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select cgzlss.CGNO,clzl.CLDH,clzl.ywpm,cgzlss.zlbh as BLNO');
      while not Qtemp.Eof do
      begin
        sql.add('    ,max(case when CGZLSS.XXCC='''+Qtemp.fieldbyname('XXCC').asstring+'''');
        sql.add('    then CGZLSS.Qty end ) as '''+Qtemp.fieldbyname('XXCC').asstring+'''');
        Qtemp.Next;
      end;
      sql.Add('from ( select cgno,zlbh,clbh, xxcc, qty from cgzlss  group by cgno,zlbh,clbh, xxcc, qty ) cgzlss');
      sql.Add('left join clzl on clzl.cldh=cgzlss.clbh ');
      sql.Add('where cgno='''+CGS.FieldByName('CGNO').AsString+'''');
      sql.Add('group by cgzlss.CGNO,clzl.cldh,clzl.ywpm,cgzlss.zlbh');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
       // excel
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[1,1],eclApp.workbooks[1].sheets[1].Cells[1,CGSTemp.fieldcount]].NumberFormatLocal:='@';
        for   i:=0   to   CGSTemp.fieldcount-1   do
        begin
            eclApp.workbooks[1].sheets[1].Cells(1,i+1):=CGSTemp.fields[i].FieldName;
        end;
        CGSTemp.First;
        j:=2;
        while   not   CGSTemp.Eof   do
        begin
          for   i:=0   to  CGSTemp.fieldcount-1  do
          begin
            eclApp.workbooks[1].sheets[1].Cells(j,i+1):=CGSTemp.Fields[i].Value;
          end;
          CGSTemp.Next;
          inc(j);
         // outline
         for l:=1 to 4 do
         begin
          eclApp.range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
         end;
        end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
      //
   end;

end;

procedure TPurOther.BO7Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TPurOther.BitBtn2Click(Sender: TObject);
begin
  if PurPham_Replenish=nil then
    PurPham_Replenish:=TPurPham_Replenish.create(self);
  PurPham_Replenish.show;
end;

end.
