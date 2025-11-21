unit ExtraMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus,math, GridsEh, DBGridEh, comobj;

type
  TExtraMaterial = class(TForm)
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
    Qtemp: TQuery;
    JGMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    JGS: TQuery;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasJGLX: TStringField;
    JGMasYN: TStringField;
    JGMasZSYWJC: TStringField;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetBJNO: TStringField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGSJGNO: TStringField;
    JGSCLBH: TStringField;
    JGSZLBH: TStringField;
    JGSQty: TCurrencyField;
    JGSCLSL: TCurrencyField;
    JGSYQDate: TDateTimeField;
    JGSCFMDate: TDateTimeField;
    JGSUSERDATE: TDateTimeField;
    JGSUSERID: TStringField;
    JGSYN: TStringField;
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
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel8: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    DBGrid4: TDBGridEh;
    DBGrid2: TDBGridEh;
    JGDetZ: TQuery;
    DS2: TDataSource;
    UPdetZ: TUpdateSQL;
    JGDetZZMLB: TStringField;
    JGDetZQty: TCurrencyField;
    JGDetZBJNO: TStringField;
    JGDetZYQDate: TDateTimeField;
    JGDetZCFMDate: TDateTimeField;
    JGDetZUSERDATE: TDateTimeField;
    JGDetZUSERID: TStringField;
    JGDetZYN: TStringField;
    JGDetZDWBH: TStringField;
    POP1: TPopupMenu;
    NB1: TMenuItem;
    NB2: TMenuItem;
    JGDetZJGNO: TStringField;
    JGDetZCLBH: TStringField;
    JGDetZMemo: TStringField;
    JGDetZYWPM: TStringField;
    NB5: TMenuItem;
    NB3: TMenuItem;
    NB4: TMenuItem;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGMasdh: TStringField;
    JGMasCZ: TStringField;
    JGDetZzQty: TFloatField;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Pop2: TPopupMenu;
    S2: TMenuItem;
    JGDetZCostID: TStringField;
    JGDetCostID: TStringField;
    JGDetCLPrice: TCurrencyField;
    JGDetZCLPrice: TCurrencyField;
    JGDetUSACC: TCurrencyField;
    JGDetZUSPrice: TCurrencyField;
    JGDetZUSACC: TCurrencyField;
    JGDetMemo: TStringField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    Check: TCheckBox;
    JGMasPMARK: TIntegerField;
    JGMasSB: TStringField;
    BDelRec: TQuery;
    JGSbuyno: TStringField;
    JGSarticle: TStringField;
    Query5: TQuery;
    BDT7: TBitBtn;
    DelQry: TQuery;
    Splitter1: TSplitter;
    JGDetZNK: TCurrencyField;
    JGDetZHD: TCurrencyField;
    JGDetZKD: TCurrencyField;
    JGDetZXT: TCurrencyField;
    JGDetZGC: TCurrencyField;
    JGDetZZZZZ: TCurrencyField;
    JGDetckbh: TStringField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetZCWHL: TCurrencyField;
    JGDetZVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetZVNACC: TCurrencyField;
    JGDetZTC: TCurrencyField;
    JGSMemo: TStringField;
    JGMasCFMID3: TStringField;
    JGMasCFMDate3: TDateTimeField;
    JGDetZNK1: TCurrencyField;
    JGDetZTC1: TCurrencyField;
    JGDetZHD1: TCurrencyField;
    JGDetZKD1: TCurrencyField;
    JGDetZH11: TCurrencyField;
    JGDetZNQ: TCurrencyField;
    JGDetZNKNQ: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
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
    procedure BD7Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure JGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure JGDetCalcFields(DataSet: TDataSet);
    procedure BO1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure NB1Click(Sender: TObject);
    procedure NB2Click(Sender: TObject);
    procedure NB3Click(Sender: TObject);
    procedure NB5Click(Sender: TObject);
    procedure NB4Click(Sender: TObject);
    procedure JGDetZCalcFields(DataSet: TDataSet);
    procedure S2Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure JGDetZAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    GSBH_SFL:String;
    KVT_PD,KVT_DC:string;
    procedure ReadIni();
    { Private declarations }
  public
      UserDepID:string;
      VNPrice_DiplayFormat:string;
      VNPrice_Decimal:Byte;
      Pro_CostID:string;
    { Public declarations }
  end;
var
  ExtraMaterial: TExtraMaterial;
  NDate:TDate;

implementation

uses main1, ExtraMat_ZS1, ExtraMat_CL1, ExtraMat_Ord1, ExtraMat_ZL1,
     ExtraMat_Print1, ExtraMat_Mat1,  FunUnit, JGMatQtyClassifyp, ExtraDel1,
     ExtraMatKT_CL1, ExtraMatKT_Ord1 ,IniFiles, ExtraMatCBY_CL1, ExtraMatCBY_Ord1;


{$R *.dfm}

procedure TExtraMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TExtraMaterial.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  KVT_PD:='A1210';
  KVT_DC:='CD12';
  Pro_CostID:='6211';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      KVT_PD:=MyIni.ReadString('ERP','ExtraN121_KVT_PD_'+main.Edit2.Text,'A1210');
      KVT_DC:=MyIni.ReadString('ERP','ExtraN121_KVT_DC','CD12');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');

      Pro_CostID:= MyIni.ReadString('ERP','Pro_CostID','');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;

  if IsHide_Warehouse_XT='Y' then
  begin
    DBGrid2.Columns[8].Visible:=false;
    //DBGrid2.Columns[9].Visible:=false;
  end;
end;

procedure TExtraMaterial.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.* ,ZSZL.ZSYWJC,zszl.dh,ZSZL.CZ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(ZSZL.ZSYWJC,'+''''+''+''''+') like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and isnull(JGZL.SB,'+''''+''+''''+')<>1 ');
    sql.add('      and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
    begin
      sql.Add('      and JGZL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by JGZL.JGNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  Check.Checked:=true;
  JGDet.Active:=true;
  JGS.Active:=true;
  JGDetZ.Active:=true;
end;

procedure TExtraMaterial.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TExtraMaterial.BB2Click(Sender: TObject);
begin 
  with JGMas do
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

procedure TExtraMaterial.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    //VA3轉VB2加工單可以允許領取VA3倉庫
    if main.edit2.Text='VB2' then
      sql.add('where GSBH='+''''+main.edit2.Text+''' or GSBH=''VA3'' ')
    else if main.edit2.Text='VA3' then
      sql.add('where GSBH='+''''+main.edit2.Text+''' or GSBH=''VB2'' ')
    else
      sql.add('where GSBH='+''''+main.edit2.Text+'''');
    //
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGrid3.Columns[5].PickList.Add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
      //
    sql.Clear;
    sql.add('select DepID from BUsers where UserID='''+main.Edit1.Text+''' ');
    Active:=true;
    UserDepID:=fieldbyname('DepID').AsString;
    active:=false;
    //
  end;
  with Qtemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TExtraMaterial.BB3Click(Sender: TObject);
begin
  if JGDet.recordcount=0 then
  begin
    with JGMas do
    begin
      if fieldbyname('USERID').value=main.Edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end
      else
        begin
          showmessage('It is not yours, can not delete.');
        end;
    end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BB4Click(Sender: TObject);
begin
  with JGMas do
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

procedure TExtraMaterial.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin

  with JGMas do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('JGLX').IsNull then
      begin
        showmessage('Pls select JGLX first.');
        abort;
      end;

      if fieldbyname('CKBH').IsNull then
      begin
        showmessage('Pls select CKBH first.');
        abort;
      end;
      next;
    end;


  end;
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
     m:='0'+m;

  try
    JGMas.first;
    for i:=1 to JGMas.RecordCount do
    begin
      case JGMas.updatestatus of
        usinserted:
        begin
          if JGMas.fieldbyname('ZSBH').isnull then
          begin
            JGMas.delete;
          end
          else
          begin
             with Qtemp do    //計算領料單流水號
             begin
               active:=false;
               sql.Clear;
               sql.Add('select JGNO from JGZL where JGNO like '+''''+y+m+'%'+'''');
               sql.add('order by JGNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('JGNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<5 do
                 begin
                   a:='0'+a;
                 end;
               end
               else
               begin
                 a:='00001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             JGMas.edit;
             JGMas.fieldbyname('JGNO').Value:=a;
             JGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
             JGMas.FieldByName('userID').Value:=main.edit1.text;
             JGMas.FieldByName('userdate').Value:=Ndate;
             JGMas.FieldByName('CFMID1').Value:='NO';
             JGMas.FieldByName('CFMID2').Value:='NO';
             JGMas.FieldByName('CFMID3').Value:='NO';
             JGMas.FieldByName('JGDate').Value:=Ndate;
             JGMas.FieldByName('YN').Value:='1';
             upMas.apply(ukinsert);
           end;
        end;
        usmodified:
        begin
           if JGMas.FieldByName('CFMID1').value='NO' then
             begin
               if JGMas.fieldbyname('YN').value='0'then
               begin
                 with BDelRec do
                 begin
                   active:=false;
                   sql.Clear;
                   {sql.add('insert into BDelRec ');
                   sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                   sql.add('values ('+''''+'JGZL'+''''+','+''''+JGMas.fieldbyname('JGNO').Value+'''');
                   sql.add(','+''''+''+''''+','+''''+JGMas.fieldbyname('USERID').Value+''''+',');
                   sql.add(''''+main.Edit1.Text+''''+',getdate()) ');}
                   SQL.Add('Update JGZL Set flowflag=''X'' where JGNO='''+JGMas.FieldByName('JGNO').AsString+''' ');
                   execsql;
                   active:=false;
                 end;
                 //upMas.apply(ukdelete);
               end
               else
               begin
                 if (NDate-JGMas.FieldByName('USERDATE').value)<7  then
                 begin
                   JGMas.edit;
                   JGMas.FieldByName('userID').Value:=main.edit1.text;
                   JGMas.FieldByName('userdate').Value:=Ndate;
                   upMas.apply(ukmodify);
                 end
                 else
                 begin
                   showmessage('Date>3, can not modify.');
                 end;
               end;
             end
             else
             begin
               showmessage('Already confirmed. can not modify.');
             end;
         end;
      end;
      JGMas.next;
    end;
  JGMas.active:=false;
  JGMas.cachedupdates:=false;
  JGMas.requestlive:=false;
  JGMas.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TExtraMaterial.BB6Click(Sender: TObject);
begin
  with JGMas do
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

procedure TExtraMaterial.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraMaterial.BD2Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with JGDet do
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
  S2.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BD3Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;


  if JGS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end; 
  if JGDetZ.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end;

  with JGDet do
  begin
    if JGMas.fieldbyname('USERID').value=main.Edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end
    else
      begin
        showmessage('It is not yours, can not delete.');
      end;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  S2.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BD4Click(Sender: TObject);
begin
  if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with JGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  S2.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BD5Click(Sender: TObject);
var i:integer;
    IsModify:boolean;
begin
  JGS.Active:=false;
  JGDetZ.Active:=false;
  with JGDet do
  begin
    first;
    while not JGDet.Eof do
    begin
      if JGDet.FieldByName('ZMLB').IsNull  then
      begin
        edit;
        JGDet.FieldByName('ZMLB').value:='ZZZZZZZZZZ';
      end;
      if JGDet.FieldByName('Qty').IsNull  then
      begin
        edit;
        JGDet.FieldByName('Qty').value:=0;
      end;
      if (not JGDet.FieldByName('USPrice').IsNull) and (not JGDet.FieldByName('VNPrice').IsNull) then
      begin
        showmessage('Can not have two price.');
        abort;
      end;
      if JGDet.FieldByName('YQDate').IsNull  then
      begin
        showmessage('YQDate can not be null.');
        abort;
      end;
      next;
    end;
  end;

  try
    IsModify:=false;
    JGDet.first;
    for i:=1 to JGDet.RecordCount do
    begin
          case JGDet.updatestatus of
            usinserted:
            begin
             //
              with DelQry do
              begin
                active:=false;
                sql.Clear;
                sql.Add('select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').Value+''' and CFMID<>''NO''');
                sql.Add('group by LLNO');
                active:=true;
                if RecordCount>0 then
                begin
                  showmessage('co mo phieu xuat vat tu :'+FieldByName('LLNO').AsString);
                  Abort;
                end;
                active:=false;
              end;
              //
              if JGDet.fieldbyname('CLBH').isnull then
              begin
                JGDet.delete;
              end else
              begin
                 JGDet.edit;
                 JGDet.FieldByName('BJNO').Value:='00000000000';
                 JGDet.FieldByName('USPrice').Value:=0;
                 JGDet.fieldbyname('JGNO').Value:=JGMas.fieldbyname('JGNO').Value;
                 JGDet.FieldByName('userID').Value:=main.edit1.text;
                 JGDet.FieldByName('userdate').Value:=date;
                 JGDet.FieldByName('CostID').Value:='627';
                 JGDet.FieldByName('CFMdate').Value:=JGDet.FieldByName('YQdate').Value ;
                 JGDet.FieldByName('YN').Value:='1';
                 upDet.apply(ukinsert);
                 IsModify:=true;
              end;
            end;
            usmodified:
            begin
                if JGDet.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'JGZLS'+''''+','+''''+JGDet.fieldbyname('JGNO').Value+'''');
                    sql.add(','+''''+JGDet.fieldbyname('CLBH').Value+''''+','+''''+JGDet.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                  end;
                  UpDet.apply(ukdelete);
                  IsModify:=true;
                end
                else
                begin
                  if JGDet.FieldByName('CLBH').Value<>JGDet.FieldByName('CLBH').OldValue then IsModify:=true;
                  with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('update JGZLSS set YQDate='+''''+formatdatetime('yyyy/mm/dd',JGDet.FieldByName('YQDate').Value)+'''');
                    sql.add(',CFMDate='+''''+formatdatetime('yyyy/mm/dd',JGDet.FieldByName('YQDate').Value)+'''');
                    sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                    sql.add(',USERID='+''''+JGDet.FieldByName('USERID').Value+'''');
                    sql.add('where JGNO='+''''+JGDet.FieldByName('JGNO').Value+'''');
                    sql.add('and CLBH='+''''+JGDet.FieldByName('CLBH').Value+'''');
                    execsql;
                    close;
                  end;
                  JGDet.edit;
                  JGDet.FieldByName('CFMdate').Value:=JGDet.FieldByName('YQdate').Value ;
                  JGDet.FieldByName('userID').Value:=main.edit1.text;
                  JGDet.FieldByName('userdate').Value:=date;
                  upDet.apply(ukmodify);

                end;
            end;
          end;
          JGDet.next;
    end;
  //20201013 有修改就更更新KCLL
  if IsModify=true then
  begin
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select JGNO from KCLL where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        Showmessage('Please Re Click Deliver,Xin nhap nut Delivery lai');
        BDelRec.active:=false;
        BDelRec.sql.Clear;
        BDelRec.sql.Add('delete KCLLS ') ;
        BDelRec.sql.Add('from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
        BDelRec.sql.Add('where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
        BDelRec.execsql;
      end;
      Active:=false;
    end;
  end;
  JGDet.active:=false;
  JGDet.cachedupdates:=false;
  JGDet.requestlive:=false;
  JGDet.active:=true;
  JGS.Active:=true;
  JGDetZ.Active:=true;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BDT7.Enabled:=true;
  S2.Enabled:=false;
  DBGrid4.Columns[3].ReadOnly:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    JGS.Active:=true;
    JGDetZ.Active:=true;
  end;
end;

procedure TExtraMaterial.BD6Click(Sender: TObject);
begin
  with JGDet do
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
  S2.Enabled:=false;
  DBGrid4.Columns[3].ReadOnly:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TExtraMaterial.BBT1Click(Sender: TObject);
begin
  JGMas.First;
end;

procedure TExtraMaterial.BBT2Click(Sender: TObject);
begin
  JGMas.prior;
end;

procedure TExtraMaterial.BBT3Click(Sender: TObject);
begin
  JGMas.next;
end;

procedure TExtraMaterial.BBT4Click(Sender: TObject);
begin
  JGMas.last;
end;

procedure TExtraMaterial.BDT1Click(Sender: TObject);
begin
  JGDet.first;
end;

procedure TExtraMaterial.BDT2Click(Sender: TObject);
begin
  JGDet.prior;
end;

procedure TExtraMaterial.BDT3Click(Sender: TObject);
begin
  JGDet.next;
end;

procedure TExtraMaterial.BDT4Click(Sender: TObject);
begin
  JGDet.last;
end;

procedure TExtraMaterial.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TExtraMaterial.JGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  if JGDet.recordcount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
  end
  else
    begin
      BO1.Enabled:=false;
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
      S2.Enabled:=false;
    end ;
  if (NDate-JGMas.FieldByName('USERDATE').value)>14  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;
  if JGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;
  if  JGMas.FieldByName('CFMID1').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;  
  if  JGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[4].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
 
end;

procedure TExtraMaterial.DBGrid3DblClick(Sender: TObject);
begin
  if  JGMas.Active then
  begin
    if  (JGMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TExtraMaterial.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TExtraMaterial.DBGrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='USPrice') or (DBGrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not JGDet.FieldByName('CLBH').IsNull then
    begin  {
      PurNoSize_BJ:=TPurNoSize_BJ.create(self);
      PurNoSize_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
      PurNoSize_BJ.button1click(nil);
      PurNoSize_BJ.show; }
    end;
  end;
end;

procedure TExtraMaterial.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TExtraMaterial.BBTT1Click(Sender: TObject);
begin
  ExtraMat_ZS:=TExtraMat_ZS.create(self);
  ExtraMat_ZS.show;
end;

procedure TExtraMaterial.BBTT2Click(Sender: TObject);
begin
  if (JGMas.FieldByName('CKBH').AsString = 'CBY') then
  begin
    ExtraMatCBY_CL:=TExtraMatCBY_CL.Create(self);
    ExtraMatCBY_CL.Show;
  end
  else if GSBH_SFL='DC' then //開發中心
  begin
    ExtraMatKT_CL:=TExtraMatKT_CL.Create(self);
    ExtraMatKT_CL.Show;
  end
  else begin
    ExtraMat_CL:=TExtraMat_CL.create(self);
    ExtraMat_CL.show;
  end;
  //
end;

procedure TExtraMaterial.JGMasAfterOpen(DataSet: TDataSet);
begin

  //
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  if (JGMas.FieldByName('CFMID1').value<>'NO') or (NDate-JGMas.FieldByName('JGDate').value>10) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end else
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
  end;
  // 20190702
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').AsString+''' and CFMID<>''NO''');
    sql.Add('Group by LLNO ');
    active:=true;
    if RecordCount>0 then BDT7.Enabled:=false else BDT7.Enabled:=true ;
  end;
  //

end;

procedure TExtraMaterial.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
   //
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').AsString+''' and CFMID<>''NO''');
    sql.Add('group by LLNO');
    active:=true;
    if RecordCount>0 then BDT7.Enabled:=false else BDT7.Enabled:=true ;
  end;
  //
end;

procedure TExtraMaterial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     edit3.SetFocus;
end;

procedure TExtraMaterial.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TExtraMaterial.BDT5Click(Sender: TObject);  
var i:integer;
  begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if JGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end  ;

  JGDet.cachedupdates:=true;
  JGDet.RequestLive:=true;
  JGDet.First;
  JGS.First;
  if messagedlg('6 Order List only or All Order List?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    while not JGDet.Eof do
    begin
        if JGS.recordcount>0 then
        begin
            if JGS.recordcount<=6 then
            begin
              JGS.First;
              while not JGS.Eof do
              begin
                if not JGDet.FieldByName('Memo').isnull then
                begin
                  JGDet.Edit;
                  JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                end
                else
                begin
                  JGDet.Edit;
                  JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
                end;
                JGS.Next;
              end;
            end
            else
            begin
              for i:=1 to 4  do
              begin
                if not JGDet.FieldByName('Memo').isnull then
                begin
                  JGDet.Edit;
                  JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                end
                else
                begin
                  JGDet.Edit;
                  JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
                end;
                JGS.Next;
              end;
              JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+'......';
              JGS.Last;
              for i:=1 to 2   do
              begin
                JGS.Prior;
              end;
              while not JGS.Eof do
              begin
                JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                JGS.Next;
              end;
          end;
      end;
      JGDet.Next;
    end;
  end
  else
  begin
    while not JGDet.Eof do
    begin
      JGS.First;
      while not JGS.Eof do
      begin
        if not JGDet.FieldByName('Memo').isnull then
        begin
          JGDet.Edit;
          JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
        end
        else
        begin
          JGDet.Edit;
          JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
        end;
        JGS.Next;
      end;
      JGDet.Next;
    end;
  end;
  ExtraMat_Print:=TExtraMat_Print.Create(nil);
  if  messagedlg('Print or Mail?',mtinformation,[mbYes,mbNo],0)<>mrNo then
  begin
    with ExtraMat_Print do
    begin
      L1.caption:='';
      L2.caption:='';
      L3.caption:='';
      L4.caption:='';
      L5.caption:='';
      L6.caption:='';
      L7.caption:='';
      L8.caption:='';
      L9.caption:='';
      L10.caption:='';
      L11.caption:='';
      L12.caption:='';
      L13.caption:='';
      L14.caption:='';
      L15.caption:='';
    end;
  end;
  ExtraMat_Print.quickrep1.prepare;
  ExtraMat_Print.Qpage1.caption:=inttostr(ExtraMat_Print.quickrep1.QRPrinter.pagecount);
  ExtraMat_Print.quickrep1.preview;
  ExtraMat_Print.Free;

  JGDet.Active:=false;
  JGDet.cachedupdates:=false;
  JGDet.RequestLive:=false;
  JGDet.Active:=true;
  with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end
    else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;

end;

procedure TExtraMaterial.JGDetCalcFields(DataSet: TDataSet);
begin

  with JGDet do
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

procedure TExtraMaterial.BO1Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
  with JGS do
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
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.DBGrid1EditButtonClick(Sender: TObject);
begin
  if JGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end
  else begin
    if (JGMas.FieldByName('CKBH').AsString = 'CBY') then
    begin
      ExtraMatCBY_Ord := TExtraMatCBY_Ord.create(self);
      ExtraMatCBY_Ord.Show;
    end
    else if GSBH_SFL='DC' then //開發中心
    begin
      ExtraMatKT_Ord:=TExtraMatKT_Ord.create(self);
      ExtraMatKT_Ord.show;
    end else
    begin
      ExtraMat_Ord:=TExtraMat_Ord.create(self);
      ExtraMat_Ord.show;
    end;
  end;
end;

procedure TExtraMaterial.BO2Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;

  with JGS do
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
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BO5Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
  
  with JGs do
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
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BO3Click(Sender: TObject);
var i:integer;
Qty:real;
begin
  //
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' and CFMID<>''NO'' and ISNULL(flowflag,'''')<>''X'' ');
    sql.Add('group by LLNO');
    active:=true;
    if RecordCount>0 then
    begin
      showmessage('co mo phieu xuat vat tu :'+FieldByName('LLNO').AsString);
      Abort;
    end;
    active:=false;
  end;
  //
  try
    JGs.first;
    for i:=1 to JGs.RecordCount do
    begin
      case JGs.updatestatus of
      usinserted:
      begin
         JGs.edit;
         if (not(JGs.FieldByName('Qty').IsNull)) and (JGs.FieldByName('ZLBH').IsNull) then
         begin
            JGs.FieldByName('ZLBH').Value:='ZZZZZZZZZZ';
            JGs.FieldByName('CLSL').Value:=0;
         end;
         JGs.fieldbyname('JGNO').Value:=JGDet.fieldbyname('JGNO').value;
         JGs.fieldbyname('CLBH').Value:=JGDet.fieldbyname('CLBH').value;
         JGs.FieldByName('YQDate').Value:=JGDet.fieldbyname('YQDate').value;
         JGs.FieldByName('CFMDate').Value:=JGDet.fieldbyname('CFMDate').value;
         JGs.FieldByName('userID').Value:=main.edit1.text;
         JGs.FieldByName('userdate').Value:=date;
         JGs.FieldByName('YN').Value:='1';
         UpOrdMat.apply(ukinsert);
      end;
      usmodified:
      begin
        if JGs.fieldbyname('YN').value='0'then
        begin
          UpOrdMat.apply(ukdelete);
        end
        else
        begin
          if (NDate-JGMas.FieldByName('USERDATE').value)<10  then
          begin
            JGs.edit;
            JGs.FieldByName('userID').Value:=main.edit1.text;
            JGs.FieldByName('userdate').Value:=date;
            uPOrdMat.apply(ukmodify);
          end
          else
          begin
            showmessage('Date>10, can not modify.');
          end;
        end;
      end;
    end;
    JGs.next;
  end;
  JGs.active:=false;
  JGs.cachedupdates:=false;
  JGs.requestlive:=false;
  JGs.active:=true;
  JGS.First;
  Qty:=0;
  while not JGS.eof do
  begin
    Qty:=Qty+JGS.fieldbyname('Qty').Value;
    JGS.next;
  end;

  with JGDet do
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
  dbgrid1.columns[0].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TExtraMaterial.BO4Click(Sender: TObject);
begin
  with JGs do
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
  dbgrid3.columns[0].ButtonStyle:=cbsnone;
end;

procedure TExtraMaterial.NB1Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save MaterialList first.');
    abort;
  end;
  if JGDet.recordcount=0 then
  begin
    showmessage('No data.');
    abort;
  end;
  //
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').Value+''' and CFMID<>''NO''');
    sql.Add('group by LLNO');
    active:=true;
    if RecordCount>0 then
    begin
      showmessage('co mo phieu xuat vat tu :'+FieldByName('LLNO').AsString);
      Abort;
    end;
    active:=false;
  end;
  //
  with JGDetZ do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete JGZLS where CLBH='+''''+JGdet.fieldbyname('CLBH').Value+'''');
    sql.add('and ZMLB<>''ZZZZZZZZZZ''');
    sql.add('and JGNO='''+JGdet.fieldbyname('JGNO').Value +'''');
    sql.add('select CLZHZL.*,CLZL.YWPM,CLZL.DWBH from CLZHZL ');
    sql.add('left join CLZL on CLZL.CLDH=CLZHZL.CLDH1');
    sql.add('where CLZHZL.CLDH='''+JGDet.fieldbyname('CLBH').value+'''');
    active:=true;
    if ((recordcount>0) and ((Qtemp.FieldByName('CCQ').IsNull) or (Qtemp.FieldByName('CCQ').value='')))  then
    begin
      while not eof do
      begin
        JGDetZ.insert;
        JGDetZ.FieldByName('JGNO').value:=JGDet.fieldbyname('JGNO').Value;
        JGDetZ.FieldByName('CLBH').value:=fieldbyname('CLDH').Value;
        JGDetZ.FieldByName('ZMLB').value:=fieldbyname('CLDH1').Value;
        JGDetZ.FieldByName('YWPM').value:=fieldbyname('YWPM').Value;
        JGDetZ.FieldByName('DWBH').value:=fieldbyname('DWBH').Value;
        JGDetZ.FieldByName('Qty').value:=fieldbyname('syl').Value;
        JGDetZ.FieldByName('BJNO').value:=JGDet.fieldbyname('BJNO').Value;
        JGDetZ.FieldByName('YQDate').value:=JGDet.fieldbyname('YQDate').Value;
        JGDetZ.FieldByName('CFMDate').value:=JGDet.fieldbyname('CFMDate').Value;
        JGDetZ.FieldByName('USERDate').value:=date;
        JGDetZ.FieldByName('USERID').value:=main.Edit1.Text;
        JGDetZ.FieldByName('YN').value:='1';
        upDetZ.Apply(ukinsert);
        next;
     end;
    end else
      //
      begin
        with query5 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select clzhzl.*,Mother.MatQty,Child.ConQty, Round(Child.ConQty/Mother.MatQty,4) as Rate from (');
          sql.Add('select CLDH,CLDH1 from clzhzl where cldh='''+JGDet.fieldbyname('CLBH').Value+'''   Group by  CLDH,CLDH1');
          sql.Add(') clzhzl');
          sql.Add('left join');
          sql.Add('(select zlzls2.CLBH,SUM(zlzls2.clsl) as MatQty');
          sql.Add('from JGZLSS left join JGZLS on JGZLSS.JGNO=JGZLS.JGNO');
          //20170520
          sql.Add('and ZMLB=''ZZZZZZZZZZ''');
          //
          sql.Add('left join ( select CLDH from clzhzl where cldh='''+JGDet.fieldbyname('CLBH').Value+'''   Group by  CLDH) clzhzl on JGZLSS.CLBH=clzhzl.cldh');
          sql.Add('left join zlzls2 on zlzls2.CLBH=clzhzl.cldh and JGZLSS.ZLBH=zlzls2.ZLBH');
          sql.Add('where JGZLSS.JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by zlzls2.CLBH ) Mother on Mother.CLBH=clzhzl.cldh');
          sql.Add('left join');
          sql.Add('(select zlzls2.CLBH,SUM(zlzls2.clsl) as ConQty');
          sql.Add('from JGZLSS left join JGZLS on JGZLSS.JGNO=JGZLS.JGNO');
          //20170520
          sql.Add('and ZMLB=''ZZZZZZZZZZ''');
          //
          sql.Add('left join ( select CLDH,CLDH1 from clzhzl where cldh='''+JGDet.fieldbyname('CLBH').Value+'''   Group by  CLDH,CLDH1) clzhzl on JGZLSS.CLBH=clzhzl.cldh');
          sql.Add('left join zlzls2 on zlzls2.CLBH=clzhzl.cldh1 and JGZLSS.ZLBH=zlzls2.ZLBH');
          //20170520
          sql.Add('and zlzls2.MJBH='''+JGDet.fieldbyname('CLBH').Value+''' ');
          //
          sql.Add('where JGZLSS.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''  group by zlzls2.CLBH ) Child on Child.CLBH=clzhzl.cldh1');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
          if ((query5.RecordCount>0) AND (Not(query5.FieldByName('MatQty').IsNull)) and (Not(query5.FieldByName('ConQty').IsNull)))  then
          begin
            while not Eof do
             begin
              JGDetZ.insert;
              JGDetZ.FieldByName('JGNO').value:=JGDet.fieldbyname('JGNO').Value;
              JGDetZ.FieldByName('CLBH').value:=query5.fieldbyname('CLDH').Value;
              JGDetZ.FieldByName('ZMLB').value:=query5.fieldbyname('CLDH1').Value;
              JGDetZ.FieldByName('Qty').value:=query5.fieldbyname('Rate').Value;
              JGDetZ.FieldByName('BJNO').value:=JGDet.fieldbyname('BJNO').Value;
              JGDetZ.FieldByName('YQDate').value:=JGDet.fieldbyname('YQDate').Value;
              JGDetZ.FieldByName('CFMDate').value:=JGDet.fieldbyname('CFMDate').Value;
              JGDetZ.FieldByName('USERDate').value:=date;
              JGDetZ.FieldByName('USERID').value:=main.Edit1.Text;
              JGDetZ.FieldByName('YN').value:='1';
              upDetZ.Apply(ukinsert);
              next;
            end;
          end;
      end;
     end;
    //
  end;
  //20201013 有修改就更更新KCLL
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select JGNO from KCLL where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      Showmessage('Please Re Click Deliver,Xin nhap nut Delivery lai');
      BDelRec.active:=false;
      BDelRec.sql.Clear;
      BDelRec.sql.Add('delete KCLLS ') ;
      BDelRec.sql.Add('from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      BDelRec.sql.Add('where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
      BDelRec.execsql;
    end;
    Active:=false;
  end;

  with JGDetZ do
  begin
    Active:=false;
    requestlive:=true;
    cachedupdates:=true;
    Active:=true;
  end;

end;

procedure TExtraMaterial.NB2Click(Sender: TObject);
begin
  if JGDet.RequestLive then
  begin
    showmessage('Pls save MaterialList first.');
    abort;
  end;
  if JGDet.recordcount=0 then
  begin
    showmessage('No data.');
    abort;
  end;
   //
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').Value+''' and CFMID<>''NO''');
    sql.Add('group by LLNO');
    active:=true;
    if RecordCount>0 then
    begin
      showmessage('co mo phieu xuat vat tu :'+FieldByName('LLNO').AsString);
      Abort;
    end;
    active:=false;
  end;
  //
  ExtraMat_ZL:=TExtraMat_ZL.create(self);
  ExtraMat_ZL.show;
  NB5.Enabled:=true;
end;

procedure TExtraMaterial.NB3Click(Sender: TObject);
begin
  JGDetZ.Edit;
  DBGrid2.columns[3].readonly:=false;
  NB5.Enabled:=true;
end;

procedure TExtraMaterial.NB5Click(Sender: TObject);
var i:integer;
    IsModify:boolean;
begin
 //
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO='''+JGMas.fieldbyname('JGNO').Value+''' and CFMID<>''NO'' and ISNULL(KCLL.flowflag,'''')<>''X''');
    sql.Add('group by LLNO');
    active:=true;
    if RecordCount>0 then
    begin
      showmessage('co mo phieu xuat vat tu :'+FieldByName('LLNO').AsString);
      Abort;
    end;
    active:=false;
  end;
  //
  try
    IsModify:=false;
    JGDetZ.first;
    for i:=1 to JGDetZ.RecordCount do
    begin
      case JGDetZ.updatestatus of
      usinserted:
      begin
        if JGDetZ.fieldbyname('CLBH').isnull then
        begin
            JGDetZ.delete;
        end;
        UPDetZ.apply(ukinsert);
        IsModify:=true;
      end;
      usmodified:
      begin
          if JGDetZ.fieldbyname('YN').value='0'then
          begin
             UpDetZ.apply(ukdelete);
             IsModify:=true;
          end else
          begin
            if JGDetZ.FieldByName('ZMLB').Value<>JGDetZ.FieldByName('ZMLB').OldValue then IsModify:=true;
            upDetZ.apply(ukmodify);
            end;
          end;
      end;
      JGDetZ.next;
    end;
    JGDetZ.Active:=false;
    JGDetZ.Active:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //20201013 有修改就更更新KCLL
  if IsModify=true then
  begin
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select JGNO from KCLL where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        Showmessage('Please Re Click Deliver,Xin nhap nut Delivery lai');
        BDelRec.active:=false;
        BDelRec.sql.Clear;
        BDelRec.sql.Add('delete KCLLS ') ;
        BDelRec.sql.Add('from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
        BDelRec.sql.Add('where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' ');
        BDelRec.execsql;
      end;
      Active:=false;
    end;
  end;
  DBGrid2.columns[3].readonly:=true;
  NB5.Enabled:=false;
end;

procedure TExtraMaterial.NB4Click(Sender: TObject);
begin
  JGDetZ.Edit;
  JGDetZ.FieldByName('YN').Value:='0';
  NB5.Enabled:=true;
end;

procedure TExtraMaterial.JGDetZCalcFields(DataSet: TDataSet);
begin
  if (GSBH_SFL='DC') then
  begin
    if (JGMas.FieldByName('CKBH').Value <>'CBY') and ((JGDet.fieldbyname('Qty').value*JGDetZ.fieldbyname('Qty').value)>=0.01) then
      JGDetZ.FieldByName('zQty').Value:=trunc(JGDetZ.FieldByName('Qty').Value*JGDet.FieldByName('Qty').Value*100+0.5)/100
    else
      JGDetZ.FieldByName('zQty').Value:=trunc(JGDetZ.FieldByName('Qty').Value*JGDet.FieldByName('Qty').Value*10000+0.5)/10000
  end else
    JGDetZ.FieldByName('zQty').Value:=roundto(JGDet.fieldbyname('Qty').value*JGDetZ.fieldbyname('Qty').value+0.0049,-2)
end;

procedure TExtraMaterial.S2Click(Sender: TObject);
begin
  ExtraMat_Mat:=TExtraMat_Mat.create(self);
  ExtraMat_Mat.show;
end;

procedure TExtraMaterial.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if JGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if JGDet.FieldByName('JGNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
  //  dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if JGDetZ.FieldByName('YN').value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
   // dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if JGS.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if JGS.FieldByName('JGNO').isnull then
  begin
    dbgrid1.canvas.font.color:=clLime;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.FormDestroy(Sender: TObject);
begin
  ExtraMaterial:=nil;
end;

procedure TExtraMaterial.JGDetZAfterOpen(DataSet: TDataSet);
begin
  if JGDet.CachedUpdates then
  begin
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end else
  begin
      //20170210
      if ((NDate-JGMas.FieldByName('USERDATE').value)<=14) and (JGMas.FieldByName('USERID').value=main.edit1.text) and (JGMas.FieldByName('CFMID1').value='NO')then
      begin
        NB1.Enabled:=true;
        NB2.Enabled:=true;
        NB3.Enabled:=true;
        NB4.Enabled:=true;
        NB5.Enabled:=false;
      end;
  end;
end;

procedure TExtraMaterial.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  JGMas.active  then
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
        for i:=0 to DBGrid3.Columns.Count-1 do
          eclApp.Cells(1,i+1):=DBGrid3.Columns[i].Title.Caption;
        JGMas.First;
        j:=2;
        while   not   JGMas.Eof   do
        begin
          for i:=0 to DBGrid3.Columns.Count-1 do
            eclApp.Cells(j,i+1):=DBGrid3.Fields[i].Value;
          JGMas.Next;
          inc(j);
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
//


procedure TExtraMaterial.BDT7Click(Sender: TObject);
var iYear,iMonth,LLNO:string;
begin
  with DelQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,KCLL.CFMID from KCLL left join KCLLS on KCLLS.LLNO=KCLL.LLNO  ');
    sql.Add('where KCLL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''  and KCLL.SCBH=''JJJJJJJJJJ'' and ISNULL(KCLL.flowflag,'''')<>''X''  group by KCLL.LLNO,KCLL.CFMID');
    active:=true;
    if (recordcount>0)  then
    begin
      if DelQry.FieldByName('CFMID').Value<>'NO' then
      begin
        showmessage('Phieu xuat da confirm');
        abort;
      end else
      begin
        if messagedlg('You want to do again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
        begin
          with BDelRec do
          begin
            active:=false;
            sql.Clear;
            sql.Add('Update KCLL set UserID='''+main.Edit1.Text+''',UserDate=GetDate() ');
            sql.Add('where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' and SCBH=''JJJJJJJJJJ'' and ISNULL(KCLL.flowflag,'''')<>''X''  ');
            //---------------------------------------
            sql.Add('delete KCLLS from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO where KCLL.JGNO='''+JGDet.fieldbyname('JGNO').Value+''' and KCLL.SCBH=''JJJJJJJJJJ'' ') ;
            sql.Add('Insert into KCLLS (LLNO,CLBH,DFL,SCBH,TempQty,Qty,CostID,Memo,USERDate,UserID,YN, CLSL)');
            if GSBH_SFL='DC' then
            begin
              sql.Add('select JGZLS.LLNO,JGZLS.CLBH,JGZLS.DFL,JGZLS.SCBH, JGZLS.Qty as TempQty, JGZLS.Qty  as Qty,');
            end else
            begin
              sql.Add('select JGZLS.LLNO,JGZLS.CLBH,JGZLS.DFL,JGZLS.SCBH,case when JGZLS.AllCLSL=''Y'' then isnull(ZLZLS2.CLSL,JGZLS.Qty) else JGZLS.Qty end as TempQty,case when JGZLS.AllCLSL=''Y'' then isnull(ZLZLS2.CLSL,JGZLS.Qty) else JGZLS.Qty end as Qty,')
            end;
            sql.Add('       CostID,JGZLS.Memo,JGZLS.UserDate,JGZLS.UserID,JGZLS.YN,ZLZLS2.CLSL from ( ');
            sql.Add('select '''+DelQry.fieldbyname('LLNO').Value+''' as LLNO,CLBH, DFL,ZLBH as SCBH,Qty as TempQty,Qty,'''+Pro_CostID+''' as CostID,Memo,GetDate() as UserDate,'''+main.edit1.text+''''+' as UserID,1 as YN,AllCLSL');
            sql.Add('from (select JGZLS.JGNO as LLNO,JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as DFL, case when Round(JGZLS.Qty*JGZLM.Qty,2)>=0.01 then Round(JGZLS.Qty*JGZLM.Qty,2) else Round(JGZLS.Qty*JGZLM.Qty+0.0049,2) end  as Qty,');
            sql.add('             JGZLM.Memo,case when JGZLM.CLSL=JGZLM.Qty then ''Y'' else ''N'' end as AllCLSL ');   //round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty)+0.049,1)  as Qty
            sql.Add('      from JGZLS left join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLSS.CLSL,JGZLS.Memo');
            sql.Add('                            from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
            sql.Add('                            left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
            sql.Add('                            where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
            sql.Add('                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
            sql.Add('      where JGZLS.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
            sql.Add('      and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )   JGZLS ) JGZLS ');
            SQL.Add('Left join ( '); //20170828 add KCLLS.CLSL
            SQL.Add('      select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,Sum(ZLZLS2.CLSL) as CLSL ');
            if GSBH_SFL='DC' then
            begin
              SQL.Add('      from ( ');
              SQL.Add('      select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL ');
              SQL.Add('      from (      ');
              SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
              SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
              SQL.Add('      FROM ypzls ypzls ');
              SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
              SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
              SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('      WHERE ypzls.YPDH in (select ZLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by ZLBH ) and CLZHZL.SYL>0  ');
              SQL.Add('            and ypzls.CLBH in (select CLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by CLBH )');
              SQL.Add('      union all');
              SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
              SQL.Add('       from (');
              SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
              SQL.Add('      FROM ypzls ypzls ');
              SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
              SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
              SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('      WHERE ypzls.YPDH in (select ZLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by ZLBH ) and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
              SQL.Add('      ) clzhzl2');
              SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
              SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('      where  clzhzl2.CLBH  in (select CLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by CLBH )');
              SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
              SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
              SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
              SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
              SQL.Add('      where YPZLS.DType=''Gia cong'') ZLZLS2');
            end else
            begin
              SQL.Add('      from  ZLZLS2 ');
            end;
            SQL.Add('      inner join (');
            SQL.Add('      select JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as MJBH');
            SQL.Add('      from JGZLS ');
            SQL.Add('      inner join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLS.Memo');
            SQL.Add('                            from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
            SQL.Add('                            left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
            SQL.Add('                            where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
            SQL.Add('                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
            SQL.Add('      where JGZLS.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
            SQL.Add('      and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )  JGZLS on ZLZLS2.ZLBH=JGZLS.ZLBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.MJBH    ');
            SQL.Add('      Group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH ) ZLZLS2 on ZLZLS2.ZLBH=JGZLS.SCBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.DFL    ');
            //funcObj.WriteErrorLog(sql.Text);
            execsql;
          end;
        end else
        begin
          abort;
        end;
      end; //
    end else
    begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
      active:=true;
      iYear:=fieldbyname('FY').asstring;
      iMonth:=fieldbyname('FM').asstring;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
      if length(iMonth)<2 then
         iMonth:='0'+iMonth;

      active:=false;
      sql.Clear;
      sql.Add('select LLNO from KCLL where LLNO like '+''''+iYear+iMonth+'%'+'''');
      sql.add('order by LLNO');
      active:=true;
      if recordcount >0 then
      begin
        last;
        LLNO:=fieldbyname('LLNO').AsString;
        LLNO:=copy(LLNO,7,5);
        LLNO:=inttostr(strtoint(LLNO)+1);
        while length(LLNO)<5 do
        begin
          LLNO:='0'+LLNO;
        end;
      end else
      begin
        LLNO:='00001';
      end;
      LLNO :=iYear+iMonth+LLNO;

      active:=false;
      sql.Clear;
      sql.Add('Insert into KCLL (LLNO,GSBH,CKBH,SCBH,DepID,USERDATE,USERID,CFMDate,CFMID,YN,JGNO)');
      if GSBH_SFL='DC' then
        sql.Add('select '''+LLNO+''' as LLNO,GSBH,CKBH,''JJJJJJJJJJ'' as SCBH,'''+KVT_DC+''' as DepID,GetDate() as UserDate,'''+main.edit1.text+''''+' as UserID,null as CFMDate,''NO'' as CFMID,1 as YN,JGNO')
      else
        sql.Add('select '''+LLNO+''' as LLNO,GSBH,CKBH,''JJJJJJJJJJ'' as SCBH,'''+KVT_PD+''' as DepID,GetDate() as UserDate,'''+main.edit1.text+''''+' as UserID,null as CFMDate,''NO'' as CFMID,1 as YN,JGNO');
      sql.Add('from JGZL where JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
      execsql;
      //20180512 dk xet phieu xuat gia cong ton tai trong KCLL
      active:=false;
      sql.Clear;
      sql.add('select KCLL.LLNO from KCLL   ');
      sql.Add('where KCLL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''  and KCLL.SCBH=''JJJJJJJJJJ''  group by KCLL.LLNO');
      active:=true;
      if recordcount>0 then
      begin
        sql.Add('Insert into KCLLS (LLNO,CLBH,DFL,SCBH,TempQty,Qty,CostID,Memo,USERDate,UserID,YN, CLSL)');
        if GSBH_SFL='DC' then
        begin
          sql.Add('select JGZLS.LLNO,JGZLS.CLBH,JGZLS.DFL,JGZLS.SCBH, JGZLS.Qty as TempQty, JGZLS.Qty  as Qty,');
        end else
        begin
          sql.Add('select JGZLS.LLNO,JGZLS.CLBH,JGZLS.DFL,JGZLS.SCBH,case when JGZLS.AllCLSL=''Y'' then isnull(ZLZLS2.CLSL,JGZLS.Qty) else JGZLS.Qty end as TempQty,case when JGZLS.AllCLSL=''Y'' then isnull(ZLZLS2.CLSL,JGZLS.Qty) else JGZLS.Qty end as Qty,')
        end;
        sql.Add('       CostID,JGZLS.Memo,JGZLS.UserDate,JGZLS.UserID,JGZLS.YN,ZLZLS2.CLSL from ( ');
        sql.Add('select '''+LLNO+''' as LLNO,CLBH, DFL,ZLBH as SCBH,Qty as TempQty,Qty,'''+Pro_CostID+''' as CostID,Memo,GetDate() as UserDate,'''+main.edit1.text+''''+' as UserID,1 as YN,AllCLSL ');
        sql.Add('from (select JGZLS.JGNO as LLNO,JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as DFL, case when Round(JGZLS.Qty*JGZLM.Qty,2)>=0.01 then Round(JGZLS.Qty*JGZLM.Qty,2) else Round(JGZLS.Qty*JGZLM.Qty+0.0049,2) end  as Qty,');
        sql.Add('             JGZLM.Memo,case when JGZLM.CLSL=JGZLM.Qty then ''Y'' else ''N'' end as AllCLSL');   //round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty)+0.049,1)  as Qty
        sql.Add('      from JGZLS left join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLSS.CLSL,JGZLS.Memo');
        sql.Add('                            from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
        sql.Add('                            left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
        sql.Add('                            where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
        sql.Add('                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
        sql.Add('      where JGZLS.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
        sql.Add('      and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )   JGZLS ) JGZLS ');
        SQL.Add('Left join ( '); //20170828 add KCLLS.CLSL
        SQL.Add('      select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,Sum(ZLZLS2.CLSL) as CLSL  ');
        if GSBH_SFL='DC' then
        begin
          SQL.Add('      from (  ');
          SQL.Add('      select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL ');
          SQL.Add('      from (      ');
          SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
          SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
          SQL.Add('      FROM ypzls ypzls ');
          SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
          SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('      WHERE ypzls.YPDH in (select ZLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by ZLBH ) and CLZHZL.SYL>0  ');
          SQL.Add('            and ypzls.CLBH in (select CLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by CLBH )');
          SQL.Add('      union all');
          SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
          SQL.Add('       from (');
          SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
          SQL.Add('      FROM ypzls ypzls ');
          SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
          SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('      WHERE ypzls.YPDH in (select ZLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by ZLBH ) and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
          SQL.Add('      ) clzhzl2');
          SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
          SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('      where  clzhzl2.CLBH  in (select CLBH from JGZLSS where JGNO='''+JGDet.fieldbyname('JGNO').Value+''' group by CLBH )');
          SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
          SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
          SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
          SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
          SQL.Add('      where YPZLS.DType=''Gia cong'') ZLZLS2');
        end else
        begin
          SQL.Add('      from  ZLZLS2 ');
        end;
        SQL.Add('      inner join (');
        SQL.Add('      select JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as MJBH');
        SQL.Add('      from JGZLS ');
        SQL.Add('      inner join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLS.Memo');
        SQL.Add('                            from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
        SQL.Add('                            left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
        SQL.Add('                            where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
        SQL.Add('                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
        SQL.Add('      where JGZLS.JGNO='''+JGDet.fieldbyname('JGNO').Value+'''');
        SQL.Add('      and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )  JGZLS on ZLZLS2.ZLBH=JGZLS.ZLBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.MJBH    ');
        SQL.Add('      Group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH ) ZLZLS2 on ZLZLS2.ZLBH=JGZLS.SCBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.DFL    ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
      end
      else
       abort;
    end;
    showmessage('Success');
  end;
  if ExtraDel=nil then
    ExtraDel:=TExtraDel.create(self);
    ExtraDel.Edit2.Text:=JGDet.fieldbyname('JGNO').Value;
    ExtraDel.Button1.Click();
    ExtraDel.show;
end;

end.
