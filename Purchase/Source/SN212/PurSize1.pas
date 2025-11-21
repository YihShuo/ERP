unit PurSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus, comobj, GridsEh, DBGridEh,IniFiles;

type
  TPurSize = class(TForm)
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
    Query1: TQuery;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
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
    Panel5: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel7: TPanel;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetACCUS: TFloatField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBJNO: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
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
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    CGMasDH: TStringField;
    CGMasCZ: TStringField;
    PopupMenu1: TPopupMenu;
    Material1: TMenuItem;
    CGSXXCC: TStringField;
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
    Label2: TLabel;
    BDT8: TBitBtn;
    CGDet_Remark: TQuery;
    CGSStage: TStringField;
    CGDetZWPM: TStringField;
    BO6: TBitBtn;
    CGMasPURPOSE: TStringField;
    BO7: TBitBtn;
    BO8: TBitBtn;
    QTemp: TQuery;
    CGSTemp: TQuery;
    CGSArticle: TStringField;
    CGSXieMing: TStringField;
    CGSYWPM: TStringField;
    DS6: TDataSource;
    BuyNoQ: TQuery;
    BuyNoQBUYNO: TStringField;
    BuyNoQGSBH: TStringField;
    BuyNoQKFJC: TStringField;
    DBEditBuyNo: TDBEdit;
    DBGrid3: TDBGridEh;
    dbgrid4: TDBGridEh;
    CGDetQUSPrice: TFloatField;
    CGDetQVNPrice: TCurrencyField;
    DBGrid1: TDBGridEh;
    CGMasPMark: TIntegerField;
    BDT7: TBitBtn;
    CGDetVNPrice: TCurrencyField;
    CGDetACCVN: TCurrencyField;
    CGDetZKBH: TStringField;
    CGDetZKQty: TFloatField;
    CGDetZKLQty: TFloatField;
    CGSUseStock: TCurrencyField;
    KCZKSQry: TQuery;
    UpdKCZKS: TUpdateSQL;
    CGMasPrinttime: TIntegerField;
    CGMasManagerID: TStringField;
    CGMasManagerDate: TDateTimeField;
    CGMasPrintTw: TIntegerField;
    CGMasPrintS: TIntegerField;
    BBT8: TBitBtn;
    BBT9: TBitBtn;
    CGMaszsywjctw: TStringField;
    CGMasyjdz: TStringField;
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
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Material1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure BO6Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BO8Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BDT7Click(Sender: TObject);
    procedure CGMasAfterScroll(DataSet: TDataSet);
    procedure BBT8Click(Sender: TObject);
    procedure BBT9Click(Sender: TObject);
  private
    PurchaseN212_ISO,PurchaseN212_CheckPrint:String;
    { Private declarations }
    procedure CheckCGKCUSES();
    procedure CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
    procedure ReadIni();
    procedure UpdateCGZL_Purpose();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  PurSize: TPurSize;
  NDate:TDate;

implementation

uses main1, PurNoSize_BJ1, PurSize_ZS1, PurNoSize_CL1, PurSize_Print1,
  Quotation1, PurSize_CL1, PurSize_Ord1, PurSize_BJ1, PurSize_BL1, FunUnit,
  PurSizeTW_Print1, PurRevise1, PurSizeTW_Print_TW1, PurSizeTW_Print_VN1;

{$R *.dfm}

procedure TPurSize.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  PurchaseN212_ISO:='A-TM-QP009-11B(ERP)';
  PurchaseN212_CheckPrint:='TX';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      PurchaseN212_ISO:=MyIni.ReadString('ERP','PurchaseN212_ISO','');
      PurchaseN212_CheckPrint:=MyIni.ReadString('ERP','PurchaseN212_CheckPrint','TX');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(CGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('QVNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPurSize.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TPurSize.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as zsywjctw,ZSZL.yjdz ');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW  ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO like '''+Edit1.Text+'%''');
    sql.add('and ZSZL.ZSYWJC like ''%'+Edit3.Text+'%'' ');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''2'' ');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');  
    if Check.Checked then
    begin
      sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by CGZL.CGNO DESC');
    active:=true;
  end;
  CGDet.ParamByName('GSBH').Value:=main.Edit2.Text;
  CGS.ParamByName('GSBH').Value:=main.Edit2.Text;
  BuyNoQ.ParamByName('GSBH').Value:=main.Edit2.Text;
  //
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  check.Checked:=true;
  CGDet.Active:=true;
end;

procedure TPurSize.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TPurSize.BB2Click(Sender: TObject);
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
end;

procedure TPurSize.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select Getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.Add('Select UserID from CGZL_Permission where USERID = '''+main.Edit1.Text+''' and GSBH = '''+main.Edit2.Text+'''');
    active := true;
    if Recordcount > 0 then
      BBT8.Enabled := true;
    active:=false;
  end;
  with KCZKSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('    Select KCZK.*,KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0) as ZKLQty from (');
    SQL.Add('    Select KCZK.YN,KCZK.CLBH,KCZKS.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQty');
    SQL.Add('     from KCZK ');
    SQL.Add('     left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
    SQL.Add('     where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180    ');
    SQL.Add('                  and KCZK.CLBH=:CLBH and KCZKS.SIZE=:XXCC ) KCZK');
    SQL.Add('     left join (Select ZKBH,CLBH,SIZE,Sum(Qty) as UseQty from CGKCUSES where GSBH='''+main.edit2.Text+''' and CLBH=:CLBH and SIZE=:XXCC  and ZKBH<>''ZZZZZZZZZZ'' ');
    SQL.Add('	              and ZKBH in (Select ZKBH from KCZK where  KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180  and KCZK.CLBH=:CLBH ) ');
    SQL.Add('				  Group by ZKBH,CLBH,SIZE)  CGKCUSES on CGKCUSES.ZKBH=KCZK.ZKBH and CGKCUSES.CLBH=KCZK.CLBH and CGKCUSES.SIZE=KCZK.SIZE');
    SQL.Add('    where (KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0)>0) ');
    SQL.Add('    order by KCZK.YN DESC, KCZK.ZKBH DESC');
  end;  
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TPurSize.BB3Click(Sender: TObject);
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

procedure TPurSize.BB4Click(Sender: TObject);
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
end;

procedure TPurSize.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as Ndate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('Ndate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
    CGS.Active:=false;
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
               CGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
               CGMas.fieldbyname('CGLX').Value:='2';
               CGMas.FieldByName('userID').Value:=main.edit1.text;
               CGMas.FieldByName('userdate').Value:=Ndate;
               CGMas.FieldByName('CGDate').Value:=Ndate;
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
    CGS.Active:=true;
    CGDet.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    BBTT1.Visible:=false;
    dbgrid3.columns[1].ButtonStyle:=cbsnone;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TPurSize.BB6Click(Sender: TObject);
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

procedure TPurSize.BD2Click(Sender: TObject);
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
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSize.BD3Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  if CGS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
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
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSize.BD4Click(Sender: TObject);
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
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;
//20200313 weston fix
procedure TPurSize.UpdateCGZL_Purpose();
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

procedure TPurSize.BD5Click(Sender: TObject);
var i:integer;
begin
  CGS.Active:=false;
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
            sql.add('values ('+''''+'CGZLS'+''''+','+''''+CGDet.fieldbyname('CGNO').Value+'''');
            sql.add(','+''''+CGDet.fieldbyname('CLBH').Value+''''+','+''''+CGDet.fieldbyname('USERID').Value+''''+',');
            sql.add(''''+main.Edit1.Text+''''+',getdate())');
            execsql;
            active:=false;
          end;
          UpDet.apply(ukdelete);
        end else
        begin
          if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
          begin
            with query1 do
            begin
              active:=false;
              sql.Clear;
              sql.add('update CGZLSS set YQDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('YQdate').Value)+'''');
              if CGDet.FieldByName('CFMDate').AsString <>'' then
                sql.add(',CFMDate='+''''+CGDet.FieldByName('CFMDate').AsString+'''');
              sql.add(',USERID='+''''+CGDet.FieldByName('USERID').Value+'''');
              sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
              sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
              execsql;
              close;
            end;
            CGDet.edit;
            CGDet.FieldByName('userID').Value:=main.edit1.text;
            CGDet.FieldByName('userdate').Value:=Ndate;
            upDet.apply(ukmodify);
          end else
          begin
            Showmessage('Date>7, can not modify.');
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
  CGS.Active:=true;
  bb6.enabled:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
  dbgrid4.Columns[10].ReadOnly:=true;
  dbgrid4.Columns[10].Color:=clWhite;
  //更新CGZL.Purpose
  UpdateCGZL_Purpose();
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    CGS.Active:=true;
  end;
end;

procedure TPurSize.BD6Click(Sender: TObject);
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
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
  dbgrid4.Columns[10].ReadOnly:=true;
  dbgrid4.Columns[10].Color:=clWhite;
end;

procedure TPurSize.BBT1Click(Sender: TObject);
begin
  CGMas.First;
end;

procedure TPurSize.BBT2Click(Sender: TObject);
begin
  CGMas.prior;
end;

procedure TPurSize.BBT3Click(Sender: TObject);
begin
  CGMas.next;
end;

procedure TPurSize.BBT4Click(Sender: TObject);
begin
  CGMas.last;
end;

procedure TPurSize.BDT1Click(Sender: TObject);
begin
  CGDet.first;
end;

procedure TPurSize.BDT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TPurSize.BDT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TPurSize.BDT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TPurSize.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPurSize.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPurSize.CGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  BO8.Enabled:=true;
  CGS.Active:=true;

  if CGDet.recordcount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
    BO7.Enabled:=true;
  end
  else
    begin
      BO1.Enabled:=false;
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
      BO7.Enabled:=false;
    end ;
  if ( ((NDate-CGMas.FieldByName('USERDATE').value)>7)  or (CGMas.FieldByName('YN').value='5')) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    BO7.Enabled:=false;
  end; 
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if CGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
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
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
    BO5.Enabled:=false;
    BO7.Enabled:=false;     
  end;
end;



procedure TPurSize.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TPurSize.DBGrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='QUSPrice') or (DBGrid4.Selectedfield.fieldname='QVNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
    begin
      PurSize_BJ:=TPurSize_BJ.create(self);
      PurSize_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
      PurSize_BJ.Button1Click(nil);
      PurSize_BJ.show;
    end;
  end;
end;

procedure TPurSize.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurSize.BBTT1Click(Sender: TObject);
begin
  PurSize_ZS:=TPurSize_ZS.create(self);
  PurSize_ZS.show;
end;

procedure TPurSize.BBTT2Click(Sender: TObject);
begin
  PurSize_CL:=TPurSize_CL.create(self);
  PurSize_CL.show;
end;

procedure TPurSize.CGMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BuyNoQ.Active:=true;
end;

procedure TPurSize.PC1Change(Sender: TObject);
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

procedure TPurSize.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TPurSize.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TPurSize.BDT5Click(Sender: TObject);
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
  //
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    PurSize_Print:=TPurSize_Print.Create(nil);
    PurSize_Print.L9.Caption:='BuyNo:'+PurSize.BuyNoQ.FieldByName('BUYNO').AsString;
    PurSize_Print.L10.Caption:='Brand:'+PurSize.BuyNoQ.FieldByName('KFJC').AsString;
    PurSize_Print.L20.Caption:=PurchaseN212_ISO;
    PurSize_Print.quickrep1.prepare;
    PurSize_Print.Qpage1.caption:=inttostr(PurSize_Print.quickrep1.QRPrinter.pagecount);
    if messagedlg('Normal request date or shipping date?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          PurSize_Print.QRDBText16.Enabled:=false;
          PurSize_Print.R27.datafield:=PurSize_Print.MasSize.fields[2].fieldname;
        end
      else
        begin
          PurSize_Print.QRDBText1.Enabled:=false;
          PurSize_Print.R27.datafield:=PurSize_Print.MasSize.fields[2].fieldname;
        end;
    end else
    begin
       if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
       begin
         PurSize_Print.QRDBText16.Enabled:=false;
         PurSize_Print.R27.datafield:=PurSize_Print.MasSize.fields[4].fieldname;
       end else
       begin
          PurSize_Print.QRDBText1.Enabled:=false;
          PurSize_Print.R27.datafield:=PurSize_Print.MasSize.fields[4].fieldname;
       end;
    end;
    PurSize_Print.quickrep1.preview;
    PurSize_Print.Free;
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

procedure TPurSize.BDT6Click(Sender: TObject);
begin
  Quotation:=TQuotation.create(self);
  Quotation.show;
end;

procedure TPurSize.CGDetCalcFields(DataSet: TDataSet);
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

procedure TPurSize.DBGrid1EditButtonClick(Sender: TObject);
begin
  if CGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end else
  begin
    PurSize_Ord:=TPurSize_Ord.create(self);
    PurSize_Ord.show;
  end;
end;

procedure TPurSize.BO1Click(Sender: TObject);
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
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  BDT7.Enabled:=false;
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSize.BO2Click(Sender: TObject);
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
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  BDT7.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

//Update CGKCUSE
procedure TPurSize.CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
var UseQty:String;
begin
  //
  UseQty:='0';
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Sum(Qty),0) as Qty from CGKCUSES where ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and GSBH='''+main.Edit2.Text+''' ');
    Active:=true;
    if RecordCount>0 then UseQty:=FieldByName('Qty').AsString;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('Select ZLBH from CGKCUSE where  ZLBH='''+ZLBH+''' and CLBH='''+CLBH+'''  and GSBH='''+main.Edit2.Text+'''  ');
    Active:=true;
    if ((RecordCount=0) and (strtofloat(UseQty)>0)) then
    begin
      SQL.Clear;
      SQL.Add('Insert into CGKCUSE');
      SQL.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,Memo,UserID,UserDate,YN) values');
      SQL.Add('('''+main.Edit2.Text+''','''+ZLBH+''','''+CLBH+''',');
      SQL.Add(''''+UseQty+''',null, null,'''+main.Edit1.Text+''',GetDate(),1)');
      //funcObj.WriteErrorLog(sql.Text);
      Execsql;
    end else
    begin
       if ((RecordCount>0) and (strtofloat(UseQty)=0)) then
       begin
         active:=false;
         sql.Clear;
         sql.Add('Delete  from CGKCUSE');
         sql.Add('where ZLBH='''+ZLBH+'''') ;
         sql.Add('and CLBH='''+CLBH+'''  ');
         sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc)  ');
         //funcObj.WriteErrorLog(sql.Text);
         execsql;
       end else
       begin
         if (RecordCount>0) then
         begin
           active:=false;
           sql.Clear;
           sql.Add('update CGKCUSE set Qty='''+UseQty+'''');
           sql.add(',CLBHYS=null');
           sql.add(',Memo=null  ');
           sql.add(',USERDATE=GetDate()');
           sql.add(',USERID='''+main.Edit1.Text+'''');
           sql.add('where ZLBH='''+ZLBH+'''');
           sql.add('and CLBH='''+CLBH+'''');
           sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
           //funcObj.WriteErrorLog(sql.Text);
           execsql;
         end;
       end;
    end;
  end;
end;
//檢查設定庫存
procedure TPurSize.CheckCGKCUSES();
var i:integer;
    USESTOCK,UseStockQty:double;
    ZKBH:String;
begin
    UseStockQty:=0;
    ZKBH:='';
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.add('Select ZLBH from CGKCUSES where  ZLBH='''+CGS.FieldByName('ZLBH').AsString+''' and CLBH='''+CGS.FieldByName('CLBH').AsString+''' and SIZE='''+CGS.FieldByName('XXCC').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
       active:=true;
       if RecordCount=0 then
       begin
         if CGS.FieldByName('UseStock').Value>0 then
         begin
           //沖銷造庫單號和數量
           KCZKSQry.Active:=false;
           KCZKSQry.Active:=true;
           USESTOCK:=CGS.fieldbyname('USESTOCK').Value;
           //
           repeat
             if KCZKSQry.RecordCount>0 then
             begin
               if KCZKSQry.FieldByName('ZKLQty').Value>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end else
                 begin
                   UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
             end else
             begin
               UseStockQty:=USESTOCK;
               USESTOCK:=USESTOCK-UseStockQty;
               ZKBH:='ZZZZZZZZZZ';
             end;
             active:=false;
             sql.Clear;
             sql.Add('Insert into CGKCUSES');
             sql.Add('(GSBH,ZLBH,CLBH ,SIZE, ZKBH,Qty,UserID,UserDate,YN) values');
             sql.Add('('''+main.Edit2.Text+''''+','''+CGS.fieldbyname('ZLBH').AsString+''','''+CGS.fieldbyname('CLBH').AsString+''','''+CGS.FieldByName('XXCC').AsString+''',');
             sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
             //funcObj.WriteErrorLog(sql.Text);
             Execsql;
           until USESTOCK<=0;
           //
         end;
       end else
       begin
           if (CGS.FieldByName('UseStock').Value=0)    then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+CGS.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' and SIZE='''+CGS.FieldByName('XXCC').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             execsql;
           end else
           begin
             //更新要先刪除
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+CGS.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' and SIZE='''+CGS.FieldByName('XXCC').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
             //沖銷造庫單號和數量
             KCZKSQry.Active:=false;
             KCZKSQry.Active:=true;
             USESTOCK:=CGS.fieldbyname('USESTOCK').Value;
             //
             repeat
               if KCZKSQry.RecordCount>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>0 then
                 begin
                   if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                   begin
                     UseStockQty:=USESTOCK;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end else
                   begin
                     UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end;
                 end else
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:='ZZZZZZZZZZ';
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
               active:=false;
               sql.Clear;
               sql.Add('Insert into CGKCUSES');
               sql.Add('(GSBH,ZLBH,CLBH ,SIZE, ZKBH,Qty,UserID,UserDate,YN) values');
               sql.Add('('''+main.Edit2.Text+''''+','''+CGS.fieldbyname('ZLBH').AsString+''','''+CGS.fieldbyname('CLBH').AsString+''','''+CGS.FieldByName('XXCC').AsString+''',');
               sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
               //funcObj.WriteErrorLog(sql.Text);
               Execsql;
             until USESTOCK<=0;
             //
           end;
       end;
    end;
end;
//
procedure TPurSize.BO3Click(Sender: TObject);
var i:integer;
    Qty:real;
    //
    ZLBH,CLBH,ZKBH:String;
    IsUpdateCGKCUSE:boolean;
begin
  try
    IsUpdateCGKCUSE:=false;
    CGs.first;
    for i:=1 to CGs.RecordCount do
    begin
      //20210324分段尺碼多訂單 利庫
      if CGs.fieldbyname('UseStock').IsNull then
      begin
         CGs.Edit;
         CGs.fieldbyname('UseStock').Value:=0;
         CGs.Post;
      end;
      if ((ZLBH<>'') and (ZLBH<>CGs.FieldByName('ZLBH').AsString) and IsUpdateCGKCUSE=true ) then
      begin
        CheckCGKCUSES_CGKCUSE(ZLBH,CLBH);
        IsUpdateCGKCUSE:=false;
      end;
      ZLBH:=CGs.FieldByName('ZLBH').AsString;
      CLBH:=CGs.FieldByName('CLBH').AsString;
      ZKBH:=CGDet.fieldbyname('ZKBH').AsString;
      //==
      case CGs.updatestatus of
        usinserted:
          begin
            if CGs.fieldbyname('ZLBH').isnull then
            begin
              CGs.delete;
            end else
            begin
               CGs.edit;
               CGs.fieldbyname('CGNO').Value:=CGDet.fieldbyname('CGNO').value;
               CGs.fieldbyname('CLBH').Value:=CGDet.fieldbyname('CLBH').value;
               CGs.fieldbyname('Stage').Value:='MASS';//20141202　weston增加採購階段配合開發採購修正
               CGs.FieldByName('YQDate').Value:=CGDet.fieldbyname('YQDate').value;
               CGs.FieldByName('CFMDate').Value:=CGDet.fieldbyname('CFMDate').value;
               CGs.FieldByName('userID').Value:=main.edit1.text;
               CGs.FieldByName('userdate').Value:=date;
               CGs.FieldByName('YN').Value:='1';
               UpOrdMat.apply(ukinsert);
               //檢查庫存
               if CGs.FieldByName('UseStock').Value<>CGs.FieldByName('UseStock').OldValue then
               begin
                 CheckCGKCUSES();
                 IsUpdateCGKCUSE:=true;
               end;
            end;
          end;
        usmodified:
         begin
            if CGs.fieldbyname('YN').value='0'then
            begin
              //20190308 write log delete at CGZLSS
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'CGZLSS'+''''+','+''''+CGs.fieldbyname('CGNO').Value+'''');
                sql.add(','+''''+CGs.fieldbyname('ZLBH').Value+'***'+CGs.fieldbyname('CLBH').AsString+'***'+CGs.fieldbyname('XXCC').AsString+''''+','+''''+CGs.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
               //
              UpOrdMat.apply(ukdelete);
            end else
            begin
              if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
              begin
                CGs.edit;
                CGs.FieldByName('userID').Value:=main.edit1.text;
                //CGs.FieldByName('userdate').Value:=date;
                uPOrdMat.apply(ukmodify);
                //檢查庫存
                if CGs.FieldByName('UseStock').Value<>CGs.FieldByName('UseStock').OldValue then
                begin
                 CheckCGKCUSES();
                 IsUpdateCGKCUSE:=true;
                end;
              end else
              begin
                showmessage('Date>7, can not modify.');
              end;
            end;
         end;
      end;
      CGs.next;
    end;
    //20210324 update CGKCUSE
    if ((ZLBH<>'') and (IsUpdateCGKCUSE=true))  then
    begin
      CheckCGKCUSES_CGKCUSE(ZLBH,CLBH);
    end;
    //20210324檢查更新造庫數量
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update KCZKS set LQty=A.LQty from (');
      SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGKCUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGKCUSE.Qty,0),1) as LQty from KCZKS');
      SQL.Add('left join (');
      SQL.Add('Select CGKCUSES.ZKBH ,CGKCUSES.SIZE,Sum(CGKCUSES.Qty) as Qty from CGKCUSES');
      SQL.Add('where CGKCUSES.CLBH='''+CGDet.fieldbyname('CLBH').AsString+''' and CGKCUSES.ZKBH<>''ZZZZZZZZZZ''  and CGKCUSES.UserDate>=GETDATE()-180  ');
      SQL.Add('Group by CGKCUSES.ZKBH ,CGKCUSES.SIZE ) CGKCUSE on KCZKS.ZKBH=CGKCUSE.ZKBH and KCZKS.SIZE=CGKCUSE.SIZE');
      SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where CLBH='''+CGDet.fieldbyname('CLBH').AsString+''' and UserDate>=GETDATE()-180 )  ) A');
      SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
      Active:=false;
      SQL.Clear;
      SQL.Add('Update KCZK set LQty=A.LQty from ');
      SQL.Add('(Select ZKBH,Sum(LQty) as LQty ');
      SQL.Add('from KCZKS ');
      SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where CLBH='''+CGDet.fieldbyname('CLBH').AsString+''' and UserDate>=GETDATE()-180 ) ');
      SQL.Add('Group by ZKBH) A ');
      SQL.Add('where A.ZKBH=KCZK.ZKBH ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //
    CGs.active:=false;
    CGs.cachedupdates:=false;
    CGs.requestlive:=false;
    CGs.active:=true;
    Qty:=0;
    CGS.First;
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
    BuyNoQ.Active:=false;
    BuyNoQ.Active:=true;
    KCZKSQry.Active:=false;
    //
    BO3.enabled:=false;
    BO4.enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    BD7.Enabled:=true;
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;  
    BDT5.Enabled:=true;
    BDT7.Enabled:=true;
    dbgrid1.columns[0].ButtonStyle:=cbsnone;
  except
    on E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TPurSize.BO4Click(Sender: TObject);
begin
  with CGs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD7.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT7.Enabled:=true;
  dbgrid3.columns[0].ButtonStyle:=cbsnone;
end;

procedure TPurSize.BO5Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  with CGs do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  BDT7.Enabled:=false;
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSize.DBGrid3DblClick(Sender: TObject);
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

procedure TPurSize.Material1Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    PurSize_BL:=TPurSize_BL.Create(self);
    PurSize_BL.Show;
  end;
end;

procedure TPurSize.FormDestroy(Sender: TObject);
begin
  PurSize:=nil;
end;

procedure TPurSize.BDT8Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    C_Remark,E_Remark,CGNO:string;
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
        //20141202增加材料備忘資訊
        CGDet_Remark.Active:=true;
        eclApp.Cells(1,i+1):='Chinese Remark';
        eclApp.ActiveSheet.Columns[i+1].ColumnWidth:=100;
        eclApp.Cells(1,i+2):='English Remark';
        eclApp.ActiveSheet.Columns[i+2].ColumnWidth:=100;
        //
        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
        begin
          for   i:=0   to  CGDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
          end;
          //20141202增加材料備忘資訊
          C_Remark:='';
          E_Remark:='';
          for k:=0 to CGDet_Remark.RecordCount-1 do
          begin
            if CGDet_Remark.FieldByName('zybb').AsString='C' then
              C_Remark:=C_Remark+CGDet_Remark.FieldByName('bz').AsString+#13#10;
            if CGDet_Remark.FieldByName('zybb').AsString='E' then
              E_Remark:=E_Remark+CGDet_Remark.FieldByName('bz').AsString+#13#10;
            CGDet_Remark.Next;
          end;
          eclApp.Cells(j,i+1):=trim(C_Remark);
          eclApp.Cells(j,i+2):=trim(E_Remark);
          //
          CGDet.Next;
          inc(j);
        end;
       //20141202增加材料備忘資訊
       CGDet_Remark.Active:=false;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
{       with query1 do    //更新列印次數
       begin
         active:=false;
         sql.Clear;
         sql.Add('Update CGZL set Printtime = 1 ');
         sql.add('where CGNO='''+CGNO+'''');
         ExecSQL;
       end;
       Button1.Click;
       CGMas.Locate('CGNO',CGNO,[loPartialKey])    }
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TPurSize.BO6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
      IsExoportAll:boolean;
begin
  if  CGS.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      //是否匯出全部資料
      if messagedlg('Excel all material list?',mtinformation,[mbYes,mbNo],0)=mrYes then
        IsExoportAll:=true
      else
        IsExoportAll:=false;
      //
      if IsExoportAll=false then
      begin
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CGS.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=CGS.fields[i].FieldName;
        end;

        CGS.First;
        j:=2;
        while   not   CGS.Eof   do
        begin
          for   i:=0   to  CGS.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGS.Fields[i].Value;
          end;
          CGS.Next;
          inc(j);
        end;
      end else
      begin
        //全部資料
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CGS.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=CGS.fields[i].FieldName;
        end;
        //
        CGDet.First;
        j:=2;
        while not CGDet.Eof do
        begin
          CGS.First;
          while   not   CGS.Eof   do
          begin
            for   i:=0   to  CGS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGS.Fields[i].Value;
            end;
            CGS.Next;
            inc(j);
          end;
          CGDet.Next;
        end;
        //        
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
 end;
end;

procedure TPurSize.BO7Click(Sender: TObject);
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
  
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT1.Enabled:=false;
  BDT2.Enabled:=false;
  BDT3.Enabled:=false;
  BDT4.Enabled:=false;
  BDT5.Enabled:=false;
  BDT7.Enabled:=false;
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSize.BO8Click(Sender: TObject);
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
      sql.Add('select cgzlss.CGNO,clzl.CLDH,clzl.ywpm,cgzlss.zlbh as RY#,xxzl.XieMing as SytleName, ddzl.KHPO as PO#,lbzls.ywsm as Dest');
       while not Qtemp.Eof do
          begin
            sql.add('    ,max(case when CGZLSS.XXCC='''+Qtemp.fieldbyname('XXCC').asstring+'''');
            sql.add('    then CGZLSS.Qty end ) as '''+Qtemp.fieldbyname('XXCC').asstring+'''');
            Qtemp.Next;
          end;
      sql.Add('from ( select cgno,zlbh,clbh, xxcc, qty from cgzlss  group by cgno,zlbh,clbh, xxcc, qty ) cgzlss');
      sql.Add('left join ddzl 	on ddzl.ddbh=cgzlss.zlbh');
      sql.Add('left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.shehao=xxzl.shehao');
      sql.Add('left join lbzls on lbzls.lbdh=ddzl.ddgb and LBZLS.LB=''06''');
      sql.Add('left join clzl on clzl.cldh=cgzlss.clbh ');
      sql.Add('where cgno='''+CGS.FieldByName('CGNO').AsString+'''');
      sql.Add('group by cgzlss.CGNO,clzl.cldh,clzl.ywpm,cgzlss.zlbh,xxzl.XieMing,ddzl.KHPO,lbzls.ywsm');
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
        //
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

procedure TPurSize.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSize.dbgrid4DrawColumnCell(Sender: TObject;
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

procedure TPurSize.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGS.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGS.FieldByName('CGNO').isnull then
  begin
    dbgrid1.canvas.font.color:=clLime;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSize.BDT7Click(Sender: TObject);
var CGNO: String;
begin

  if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
  else
  begin
    if CGMas.FieldByName('ManagerID').Value = null then
    begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
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
  //
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    if PurchaseN212_CheckPrint='TX' then
    begin
      {if CGMas.FieldByName('PURPOSE').AsString='TW' then
      begin
        CGNO := CGMas.FieldByName('CGNO').AsString;
        PurSizeTW_Print_TW:=TPurSizeTW_Print_TW.Create(nil);
        PurSizeTW_Print_TW.L9.Caption:='BuyNo:'+PurSize.BuyNoQ.FieldByName('BUYNO').AsString;
        PurSizeTW_Print_TW.L10.Caption:='Brand:'+PurSize.BuyNoQ.FieldByName('KFJC').AsString;
        PurSizeTW_Print_TW.L_address.Caption:='Supplier address:'+PurSize.CGMas.FieldByName('yjdz').AsString;
        PurSizeTW_Print_TW.L20.Caption:=PurchaseN212_ISO;
        PurSizeTW_Print_TW.quickrep1.prepare;
        PurSizeTW_Print_TW.Qpage1.caption:=inttostr(PurSizeTW_Print_TW.quickrep1.QRPrinter.pagecount);
        if messagedlg('Normal request date or shipping date?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            PurSizeTW_Print_TW.QRDBText16.Enabled:=false;
            PurSizeTW_Print_TW.R27.datafield:=PurSizeTW_Print_TW.MasSize.fields[2].fieldname;
          end else
          begin
            PurSizeTW_Print_TW.QRDBText1.Enabled:=false;
            PurSizeTW_Print_TW.R27.datafield:=PurSizeTW_Print_TW.MasSize.fields[2].fieldname;
          end;
        end else
        begin
           if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
           begin
            PurSizeTW_Print_TW.QRDBText16.Enabled:=false;
            PurSizeTW_Print_TW.R27.datafield:=PurSizeTW_Print_TW.MasSize.fields[4].fieldname;
           end else
           begin
              PurSizeTW_Print_TW.QRDBText1.Enabled:=false;
              PurSizeTW_Print_TW.R27.datafield:=PurSizeTW_Print_TW.MasSize.fields[4].fieldname;
           end;
        end;
        PurSizeTW_Print_TW.quickrep1.preview;
        PurSizeTW_Print_TW.Free;
      end;

      if CGMas.FieldByName('PURPOSE').AsString='VN' then
      begin }
        CGNO := CGMas.FieldByName('CGNO').AsString;
        PurSizeTW_Print_VN:=TPurSizeTW_Print_VN.Create(nil);
        PurSizeTW_Print_VN.L9.Caption:='BuyNo:'+PurSize.BuyNoQ.FieldByName('BUYNO').AsString;
        PurSizeTW_Print_VN.L10.Caption:='Brand:'+PurSize.BuyNoQ.FieldByName('KFJC').AsString;
        PurSizeTW_Print_VN.L_address.Caption:='Supplier address:'+PurSize.CGMas.FieldByName('yjdz').AsString;
        PurSizeTW_Print_VN.L20.Caption:=PurchaseN212_ISO;
        PurSizeTW_Print_VN.quickrep1.prepare;
        PurSizeTW_Print_VN.Qpage1.caption:=inttostr(PurSizeTW_Print_VN.quickrep1.QRPrinter.pagecount);
        if messagedlg('Normal request date or shipping date?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            PurSizeTW_Print_VN.QRDBText16.Enabled:=false;
            PurSizeTW_Print_VN.R27.datafield:=PurSizeTW_Print_VN.MasSize.fields[2].fieldname;
          end else
          begin
            PurSizeTW_Print_VN.QRDBText1.Enabled:=false;
            PurSizeTW_Print_VN.R27.datafield:=PurSizeTW_Print_VN.MasSize.fields[2].fieldname;
          end;
        end else
        begin
           if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
           begin
            PurSizeTW_Print_VN.QRDBText16.Enabled:=false;
            PurSizeTW_Print_VN.R27.datafield:=PurSizeTW_Print_VN.MasSize.fields[4].fieldname;
           end else
           begin
              PurSizeTW_Print_VN.QRDBText1.Enabled:=false;
              PurSizeTW_Print_VN.R27.datafield:=PurSizeTW_Print_VN.MasSize.fields[4].fieldname;
           end;
        end;
        PurSizeTW_Print_VN.quickrep1.preview;
        PurSizeTW_Print_VN.Free;
      //end;
    end else
    begin
      CGNO := CGMas.FieldByName('CGNO').AsString;
      PurSizeTW_Print:=TPurSizeTW_Print.Create(nil);
      PurSizeTW_Print.L9.Caption:='BuyNo:'+PurSize.BuyNoQ.FieldByName('BUYNO').AsString;
      PurSizeTW_Print.L10.Caption:='Brand:'+PurSize.BuyNoQ.FieldByName('KFJC').AsString;
      PurSizeTW_Print.L20.Caption:=PurchaseN212_ISO;
      PurSizeTW_Print.quickrep1.prepare;
      PurSizeTW_Print.Qpage1.caption:=inttostr(PurSizeTW_Print.quickrep1.QRPrinter.pagecount);
      if messagedlg('Normal request date or shipping date?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
        begin
          PurSizeTW_Print.QRDBText16.Enabled:=false;
          PurSizeTW_Print.R27.datafield:=PurSizeTW_Print.MasSize.fields[2].fieldname;
        end else
        begin
          PurSizeTW_Print.QRDBText1.Enabled:=false;
          PurSizeTW_Print.R27.datafield:=PurSizeTW_Print.MasSize.fields[2].fieldname;
        end;
      end else
      begin
         if messagedlg('Print English or Chinese ?',mtinformation,[mbYes,mbNo],0)=mrYes then
         begin
          PurSizeTW_Print.QRDBText16.Enabled:=false;
          PurSizeTW_Print.R27.datafield:=PurSizeTW_Print.MasSize.fields[4].fieldname;
         end else
         begin
            PurSizeTW_Print.QRDBText1.Enabled:=false;
            PurSizeTW_Print.R27.datafield:=PurSizeTW_Print.MasSize.fields[4].fieldname;
         end;
      end;
      PurSizeTW_Print.quickrep1.preview;
      PurSizeTW_Print.Free;
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
  //
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

procedure TPurSize.CGMasAfterScroll(DataSet: TDataSet);
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

procedure TPurSize.BBT8Click(Sender: TObject);
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

procedure TPurSize.BBT9Click(Sender: TObject);
begin
  PurRevise:=TPurRevise.Create(self);
  PurRevise.Show();
end;

end.
