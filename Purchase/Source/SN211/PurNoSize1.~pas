unit PurNoSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus,comobj, GridsEh, DBGridEh,IniFiles;

type
  TPurNoSize = class(TForm)
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
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGMasCGNO: TStringField;
    CGMasCGDate: TDateTimeField;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetVNPrice: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetBJNO: TStringField;
    CGS: TQuery;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetACCUS: TFloatField;
    Panel5: TPanel;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    g: TCurrencyField;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    CGSXXCC: TStringField;
    CGMasCGLX: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    CGMasCZ: TStringField;
    BDT6: TBitBtn;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    CGMasGSBH: TStringField;
    CGMasDH: TStringField;
    BDelRec: TQuery;
    BO6: TBitBtn;
    CGSArticle: TStringField;
    CGSXieMing: TStringField;
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
    SelectSeasons1: TMenuItem;
    BBT7: TBitBtn;
    BuyNoQ: TQuery;
    BuyNoQBUYNO: TStringField;
    BDT8: TBitBtn;
    CGDetZWPM: TStringField;
    CGDet_Remark: TQuery;
    CGSStage: TStringField;
    Label8: TLabel;
    Artcombine: TQuery;
    Xiemingcombine: TQuery;
    CGMasPURPOSE: TStringField;
    BO7: TBitBtn;
    BO8: TBitBtn;
    CGSTemp: TQuery;
    CGSYWPM: TStringField;
    CGDetZKBH: TStringField;
    CGDetZKQty: TFloatField;
    CGDetZKLQty: TFloatField;
    CGSUseQty: TCurrencyField;
    BO9: TBitBtn;
    Label2: TLabel;
    DBEditBuyNo: TDBEdit;
    DS6: TDataSource;
    BuyNoQGSBH: TStringField;
    BuyNoQKFJC: TStringField;
    BO10: TBitBtn;
    CGDetQUSPrice: TFloatField;
    CGDetQVNPrice: TCurrencyField;
    dbgrid4: TDBGridEh;
    DBGrid3: TDBGridEh;
    DBGrid1: TDBGridEh;
    CGMasPMark: TIntegerField;
    BDT7: TBitBtn;
    CGDetACCVN: TCurrencyField;
    BuyNoQRYType: TStringField;
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
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
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
    procedure N1Click(Sender: TObject);
    procedure BO6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SelectSeasons1Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BO8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BO9Click(Sender: TObject);
    procedure BO10Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid4EditButtonClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BDT7Click(Sender: TObject);
    procedure CGMasAfterScroll(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure BBT8Click(Sender: TObject);
    procedure BBT9Click(Sender: TObject);
  private
    PurchaseN211_ISO,PurchaseN211_CheckPrint:String;
    { Private declarations }
    procedure CheckCGKCUSES();
    procedure CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
    procedure UpdateCGZL_Purpose();
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  PurNoSize: TPurNoSize;
  NDate:TDate;

implementation

uses main1, PurNoSize_ZS1, PurNoSize_CL1, PurNoSize_BJ1, Quotation1,
  PurNoSize_Ord1, PurNoSize_Print1, PurNoSize_BL1, PurNoSize_Se1,
  PurNoSize_Im1,fununit, PurNoSizeTW_Print1, PurRevise1,
  PurNoSizeTW_Print_TW1, PurNoSizeTW_Print_VN1;

{$R *.dfm}
procedure TPurNoSize.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  PurchaseN211_ISO:='A-TM-QP009-11B(ERP)';
  PurchaseN211_CheckPrint:='TX';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      PurchaseN211_ISO:=MyIni.ReadString('ERP','PurchaseN211_ISO','');
      PurchaseN211_CheckPrint:=MyIni.ReadString('ERP','PurchaseN211_CheckPrint','TX');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(CGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('QVNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPurNoSize.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TPurNoSize.Button1Click(Sender: TObject);
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
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''1'' ');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and CGZL.USERID='''+main.Edit1.Text+'''');
    end;
    sql.add('order by CGZL.CGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
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
  BBT7.Enabled:=true;
  check.Checked:=true;
  CGDet.Active:=true;
end;


procedure TPurNoSize.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TPurNoSize.BB2Click(Sender: TObject);
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

procedure TPurNoSize.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
      sql.Clear;
      sql.Add('Select UserID from CGZL_Permission where USERID = '''+main.Edit1.Text+''' and GSBH = '''+main.Edit2.Text+'''');
      active := true;
      if recordcount > 0 then
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

procedure TPurNoSize.BB3Click(Sender: TObject);
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

procedure TPurNoSize.BB4Click(Sender: TObject);
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
//20200313 weston fix
procedure TPurNoSize.UpdateCGZL_Purpose();
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

procedure TPurNoSize.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
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
                end
                 else
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
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     CGMas.edit;
                     CGMas.fieldbyname('CGNO').Value:=a; 
                     CGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     CGMas.fieldbyname('CGLX').Value:='1';
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
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');}

                        //Code sua
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

procedure TPurNoSize.BB6Click(Sender: TObject);
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

procedure TPurNoSize.BD2Click(Sender: TObject);
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
  N1.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurNoSize.BD3Click(Sender: TObject);
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
  N1.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurNoSize.BD4Click(Sender: TObject);
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
    dbgrid4.Columns[11].ReadOnly:=false;
    dbgrid4.Columns[11].Color:=$00B5FFFF;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO1.Enabled:=false;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  N1.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;



//20210324 Update CGKCUSE
procedure TPurNoSize.CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
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
      SQL.Add(''''+UseQty+''',null,null,'''+main.Edit1.Text+''',GetDate(),1)');
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
           sql.add(',Memo=null ');
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
//20210324檢查設定庫存
procedure TPurNoSize.CheckCGKCUSES();
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
    //主檔CGKCUSE
    CheckCGKCUSES_CGKCUSE(CGS.fieldbyname('ZLBH').AsString,CGS.fieldbyname('CLBH').AsString);
end;
//
procedure TPurNoSize.BD5Click(Sender: TObject);
var i:integer;
    y,m,CFM:string;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  //

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
                sql.add('update CGZLSS set YQDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('YQDate').Value)+'''');
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
  CGS.Active:=true;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true; 
  N1.Enabled:=false;
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

procedure TPurNoSize.BD6Click(Sender: TObject);
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
  N1.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
  dbgrid4.columns[5].ButtonStyle:=cbsNone;
  dbgrid4.Columns[10].ReadOnly:=true;
  dbgrid4.Columns[10].Color:=clWhite;
end;

procedure TPurNoSize.BBT1Click(Sender: TObject);
begin
  CGMas.First;
end;

procedure TPurNoSize.BBT2Click(Sender: TObject);
begin
  CGMas.prior;
end;

procedure TPurNoSize.BBT3Click(Sender: TObject);
begin
  CGMas.next;
end;

procedure TPurNoSize.BBT4Click(Sender: TObject);
begin
  CGMas.last;
end;

procedure TPurNoSize.BDT1Click(Sender: TObject);
begin
  CGDet.first;
end;

procedure TPurNoSize.BDT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TPurNoSize.BDT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TPurNoSize.BDT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TPurNoSize.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPurNoSize.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPurNoSize.CGDetAfterOpen(DataSet: TDataSet);
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
  BO6.Enabled:=true;
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
  dbgrid4.columns[6].ButtonStyle:=cbsNone;
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
    BO9.Enabled:=false;
    BO10.Enabled:=false;      
  end;
end;

procedure TPurNoSize.DBGrid3DblClick(Sender: TObject);
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

procedure TPurNoSize.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TPurNoSize.FormDestroy(Sender: TObject);
begin
  PurNoSize:=nil;
end;

procedure TPurNoSize.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurNoSize.BBTT1Click(Sender: TObject);
begin
  PurNoSize_ZS:=TPurNoSize_ZS.create(self);
  PurNoSize_ZS.show;
end;

procedure TPurNoSize.BBTT2Click(Sender: TObject);
begin
  PurNoSize_CL:=TPurNoSize_CL.create(self);
  PurNoSize_CL.show;
end;

procedure TPurNoSize.CGMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  CGMas.RequestLive:=false;
  CGMas.CachedUpdates:=false;
  BuyNoQ.Active:=true;
end;

procedure TPurNoSize.PC1Change(Sender: TObject);
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

procedure TPurNoSize.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TPurNoSize.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TPurNoSize.BDT5Click(Sender: TObject);
var CGNO: String;
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end; 
  if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end; 
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

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
  CGNO := CGMas.FieldByName('CGNO').AsString;
  PurNoSize_Print:=TPurNoSize_Print.Create(nil);
  PurNoSize_Print.L9.Caption:='BuyNo:'+PurNoSize.BuyNoQ.FieldByName('BUYNO').AsString;
  PurNoSize_Print.L10.Caption:='Brand:'+PurNoSize.BuyNoQ.FieldByName('KFJC').AsString;
  PurNoSize_Print.L20.Caption:=PurchaseN211_ISO;
  PurNoSize_Print.quickrep1.prepare;
  PurNoSize_Print.Qpage1.caption:=inttostr(PurNoSize_Print.quickrep1.QRPrinter.pagecount);
  PurNoSize_Print.quickrep1.preview;
  PurNoSize_Print.Free;
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
    sql.Add('Update CGZL set PrintS = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurNoSize.BDT6Click(Sender: TObject);
begin
  Quotation:=TQuotation.create(self);
  Quotation.show;
end;

procedure TPurNoSize.CGDetCalcFields(DataSet: TDataSet);
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

procedure TPurNoSize.DBGrid1EditButtonClick(Sender: TObject);
begin
  if CGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end else
  begin
    PurNoSize_Ord:=TPurNoSize_Ord.create(self);
    PurNoSize_Ord.show;
  end;
end;

procedure TPurNoSize.BO1Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if (((NDate-CGMas.FieldByName('USERDATE').value)>60) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 60 days, can not modify.');
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
  BO9.Enabled:=true;
  BO10.Enabled:=true;
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

procedure TPurNoSize.BO2Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (((NDate-CGMas.FieldByName('USERDATE').value)>60) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 10 days, can not modify.');
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
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurNoSize.BO3Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
  CGs.first;
  for i:=1 to CGs.RecordCount do
  begin
    //20210324不分尺碼多訂單利庫
    if CGs.fieldbyname('UseStock').IsNull then
    begin
       CGs.Edit;
       CGs.fieldbyname('UseStock').Value:=0;
       CGs.Post;
    end;
    //
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
              sql.add(','''+CGs.fieldbyname('ZLBH').Value+'***'+CGs.fieldbyname('CLBH').AsString+''','''+CGs.fieldbyname('USERID').Value+''''+',');
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
              UPOrdMat.apply(ukmodify);
             //檢查庫存
             if CGs.FieldByName('UseStock').Value<>CGs.FieldByName('UseStock').OldValue then
             begin
               CheckCGKCUSES();
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
  //20210322檢查更新造庫數量
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
  BuyNoQ.Active:=false;
  BuyNoQ.Active:=true;
  KCZKSQry.Active:=false;
  //
  BO3.enabled:=false;
  BO4.enabled:=false;
  BO9.enabled:=false;
  BO10.Enabled:=false;
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
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TPurNoSize.BO4Click(Sender: TObject);
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
  BO9.enabled:=false;
  BO10.Enabled:=false;
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
end;

procedure TPurNoSize.BO5Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (((NDate-CGMas.FieldByName('USERDATE').value)>60) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 10 days, can not modify.');
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
  BO9.Enabled:=true;
  BO10.Enabled:=true;
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

procedure TPurNoSize.N1Click(Sender: TObject);
begin
  if (CGDet.RequestLive and (not CGDet.FieldByName('CLBH').IsNull)) then
  begin
    PurNoSize_BL:=TPurNoSize_BL.create(self);
    PurNoSize_BL.show;
  end;
end;

procedure TPurNoSize.BO6Click(Sender: TObject);
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

procedure TPurNoSize.SelectSeasons1Click(Sender: TObject);
begin
  if (CGDet.RequestLive and (not CGDet.FieldByName('CLBH').IsNull)) then
  begin
    PurNoSize_Se:=TPurNoSize_SE.create(self);
    PurNoSize_Se.show;
  end;

end;

procedure TPurNoSize.BBT7Click(Sender: TObject);
begin
    PurNoSize_Im:=TPurNoSize_Im.create(self);
    PurNoSize_Im.show;
end;

procedure TPurNoSize.BDT8Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    flag,i,j,k,t:integer;
    Allxieming,AllArt,S,C_Remark,E_Remark,NoteInfo,CGNO:string;
    IsMark_WhitColor,IsMark_TRICOT:boolean;
    IsMark_Black,IsMark_Red,IsMark_Navy,IsMark_Pink: boolean;
begin
  //20150602
  IsMark_WhitColor:=false;

  //20161130
  IsMark_Black:=false;
  IsMark_Red:=false;
  IsMark_Navy:=false;
  IsMark_Pink:=false;

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
          eclApp.Rows[1].Interior.ColorIndex := 6;
          eclApp.ActiveSheet.Columns[1].ColumnWidth:=12;
          eclApp.Cells(1,1):='CGNO';
          eclApp.ActiveSheet.Columns[2].ColumnWidth:=40;
          eclApp.Cells(1,2):='XieMing';
          eclApp.ActiveSheet.Columns[3].ColumnWidth:=40;
          eclApp.Cells(1,3):='ART#';
          eclApp.ActiveSheet.Columns[4].ColumnWidth:=10;
          eclApp.Cells(1,4):='CLBH';
          eclApp.ActiveSheet.Columns[5].ColumnWidth:=40;
          eclApp.Cells(1,5):='YWPM';
          eclApp.ActiveSheet.Columns[6].ColumnWidth:=6;
          eclApp.Cells(1,6):='DWBH';
          eclApp.ActiveSheet.Columns[7].ColumnWidth:=6;
          eclApp.Cells(1,7):='QTY';
          eclApp.ActiveSheet.Columns[8].ColumnWidth:=6;
          eclApp.Cells(1,8):='MEMO';
          eclApp.ActiveSheet.Columns[9].ColumnWidth:=40;
          eclApp.Cells(1,9):='ZWPM';
          //20141202增加材料備忘資訊
          CGDet_Remark.Active:=true;
          eclApp.ActiveSheet.Columns[10].ColumnWidth:=20;
          eclApp.Cells(1,10):='Chinese Remark';
          eclApp.ActiveSheet.Columns[11].ColumnWidth:=20;
          eclApp.Cells(1,11):='English Remark';
          CGDet.First;
          j:=2;
          while   not   CGDet.Eof   do
          begin
            with Artcombine do
            begin
               active:=false;
               sql.Clear;         //article資訊
               sql.add('select xxzl.article from cgzlss');
               sql.add('left join ddzl on ddzl.DDBH=CGZLSS.ZLBH');
               sql.add('left join xxzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
               sql.add('where CGZLSS.CGNO='''+DBEdit5.text+''' and  CGZLSS.CLBH='''+DBEdit13.text+'''');
               sql.add('group by CGZLSS.clbh,xxzl.article ');
             //  memo1.text:=sql.text;
               active:=true;
             end;
            with Xiemingcombine do
            begin
               active:=false;
               sql.Clear;         //article資訊
               sql.add('select xxzl.xieming from cgzlss');
               sql.add('left join ddzl on ddzl.DDBH=CGZLSS.ZLBH');
               sql.add('left join xxzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
               sql.add('where CGZLSS.CGNO='''+DBEdit5.text+''' and  CGZLSS.CLBH='''+DBEdit13.text+'''');
               sql.add('group by CGZLSS.clbh,xxzl.xieming ');
              // memo1.text:=sql.text;
               active:=true;
             end;
            Artcombine.first;
            Xiemingcombine.first;
            AllArt:='';
            Allxieming:='';
            for t:=0 to Xiemingcombine.RecordCount-1 do
            begin
               Allxieming:=Allxieming+Xiemingcombine.FieldByName('xieming').AsString+',';
               Xiemingcombine.Next;
            end;
            for t:=0 to artcombine.RecordCount-1 do
             begin
               AllArt:=AllArt+artcombine.FieldByName('article').AsString+',';
               Artcombine.Next;
             end;
             if length(AllArt)>0 then AllArt:=Copy(AllArt,1,length(AllArt)-1);
             if length(Allxieming)>0 then Allxieming:=Copy(Allxieming,1,length(Allxieming)-1);
            begin
              eclApp.Cells(j,1):=CGDet.FieldByName('CGNO').asstring;
              eclApp.Cells(j,2):=Allxieming;
              eclApp.Rows[2].WrapText:= True;
              eclApp.Cells(j,3):=AllArt;
              eclApp.Rows[3].WrapText  := True;
              eclApp.Cells(j,4):=CGDet.FieldByName('CLBH').asstring;
              eclApp.Cells(j,5):=CGDet.FieldByName('YWPM').asstring;
              eclApp.Rows[5].WrapText  := True;
              eclApp.Cells(j,6):=CGDet.FieldByName('DWBH').asstring;
              eclApp.Cells(j,7):=CGDet.FieldByName('QTY').asstring;
              eclApp.Cells(j,8):=CGDet.FieldByName('MEMO').asstring;
              eclApp.Cells(j,9):=CGDet.FieldByName('ZWPM').asstring;
              eclApp.Rows[9].WrapText  := True;
             //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
              if pos('WHITE',UpperCase(CGDet.FieldByName('YWPM').asstring))<>0 then
                IsMark_WhitColor:=true;
             //20161130
             if pos('BLACK',UpperCase(CGDet.FieldByName('YWPM').asstring))<>0 then
                IsMark_Black:=true;
             if pos('RED',UpperCase(CGDet.FieldByName('YWPM').asstring))<>0 then
                IsMark_Red:=true;
             if pos('NAVY',UpperCase(CGDet.FieldByName('YWPM').asstring))<>0 then
                IsMark_Navy:=true;
             if pos('PINK',UpperCase(CGDet.FieldByName('YWPM').asstring))<>0 then
                IsMark_Pink:=true;

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
            eclApp.Cells(j,10):=trim(C_Remark);
            eclApp.Cells(j,11):=trim(E_Remark);
            CGDet.Next;
            inc(j);
          end;
          //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
          NoteInfo:='';
        //  if (main.Edit2.text='VA12')and(IsMark_WhitColor=true) then
      //        NoteInfo:='YWPM(white = 10A white)';
          //20161130
          if (main.Edit2.text='VA12')and(IsMark_Black=true) then
              NoteInfo:=NoteInfo+'/(Black = CONV-0013)';
          if (main.Edit2.text='VA12')and(IsMark_Red=true) then
              NoteInfo:=NoteInfo+'/(Red =  CONV-0034)';
          if (main.Edit2.text='VA12')and(IsMark_Navy=true) then
              NoteInfo:=NoteInfo+'/(Navy = CONV-0033)';
          if (main.Edit2.text='VA12')and(IsMark_Pink=true) then
              NoteInfo:=NoteInfo+'/(Pink = CONV-0036)';


          eclApp.Cells(1,5):=NoteInfo;
          //20141202增加材料備忘資訊
          artcombine.Active:=false;
          xiemingcombine.Active:=false;
          CGDet_Remark.Active:=false;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
{          with query1 do    //更新列印次數
          begin
            active:=false;
            sql.Clear;
            sql.Add('Update CGZL set Printtime = 1 ');
            sql.add('where CGNO='''+CGNO+'''');
            ExecSQL;
          end;
          Button1.Click;
          CGMas.Locate('CGNO',CGNO,[loPartialKey])}
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TPurNoSize.BO7Click(Sender: TObject);
begin
 if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if (((NDate-CGMas.FieldByName('USERDATE').value)>60) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 10 days, can not modify.');
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

procedure TPurNoSize.BO8Click(Sender: TObject);
var i,j,k,l: integer;
    order:string;
    eclApp,WorkBook:olevariant;
begin
    CGS.First;
    with CGS do
    begin
      for k:=0 to CGS.RecordCount-2 do
      begin
        order:= order+CGS.FieldByName('ZLBH').AsString+''''+','+'''';
        CGS.Next;
      end;
      for k:= CGS.RecordCount-1 to CGS.RecordCount-1 do
      begin
        order:= order+CGS.FieldByName('ZLBH').AsString;
      end;
    end;
     with Query1 do
      begin
        Active:=false;
        sql.Clear;
        sql.add('select DISTINCT CC  ');
        sql.add('from DDZLS');
        sql.add('where DDBH in ('''+order+''')');
        sql.add('and Quantity<>0');
        sql.add('order by CC');
        Active:=true;
     end;
     with CGSTemp do
     begin
       active:=false;
       sql.Clear;
       sql.add('select CGZLSS.CGNO,CGZLSS.CLBH,DDZLS.DDBH as RY#, xxzl.XieMing as SytleName, ddzl.KHPO as PO#,lbzls.ywsm as Dest,');
       sql.Add('       ddzl.shipdate as ''訂單出貨日期'',clzl.ywpm as ''英文材料名稱'', clzl.zwpm as ''中文材料名稱''');
       while not Query1.Eof do
       begin
          sql.add('    ,max(case when DDZLS.CC='''+Query1.fieldbyname('CC').asstring+'''');
          sql.add('    then DDZLS.Quantity end ) as '''+Query1.fieldbyname('CC').asstring+'''');
          Query1.Next;
       end;
       sql.add('from DDZLS left join ddzl on DDZLS.ddbh=ddzl.ddbh');
       sql.Add('left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.shehao=xxzl.shehao');
       sql.Add('left join lbzls on lbzls.lbdh=ddzl.ddgb');
       sql.Add('left join cgzlss on cgzlss.zlbh=ddzl.ddbh');
       sql.Add('left join clzl on cgzlss.clbh=clzl.cldh') ;
       sql.Add('where DDZLS.DDBH in ('''+order+''')');
       sql.add('and cgzlss.clbh= '''+CGDet.fieldbyname('CLBH').asstring+'''  and cgzlss.CGNO='''+CGDet.fieldbyname('CGNO').asstring+''' ');
       sql.add('group by CGZLSS.CGNO,CGZLSS.CLBH,DDZLS.DDBH,xxzl.XieMing,ddzl.KHPO,lbzls.ywsm,ddzl.shipdate,clzl.ywpm,clzl.zwpm');
       active:=true;
     end;
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
        eclApp.workbooks[1].sheets[1].name:='Size Quanity';
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
           eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
          end;
        end;
        //20151107輸出無尺碼材料SIZE加工子材料分段用量
        with CGSTemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('select DDZLS.DDBH as RY#,'''+CGDet.FieldByName('CLBH').AsString+''' as MatNo, ');
          Query1.First;
          while not Query1.Eof do
          begin
              sql.add('    max(case when DDZLS.CC='''+Query1.fieldbyname('CC').asstring+'''');
              sql.add('    then DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl end ) as '''+Query1.fieldbyname('CC').asstring+''',');
              Query1.Next;
          end;
          sql.add('Convert(Varchar,Round(Sum(DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl)+0.0499,1)) as Total  ');
          sql.add('from DDZLS  ');
          sql.add('left join ( ');
          sql.add('select zlzls2.ZLBH,clzhzl.ccq,ccq1,syl,ZLZLS2.Usage from clzhzl   ');
          sql.add('inner join ( ');
          sql.add('select A.*,Max(zlzls2.Usage) as Usage from ( ');
          sql.add('  select ZLBH,MJBH,CLBH from ZLZLS2 where CLBH='''+CGDet.FieldByName('CLBH').AsString+''' and ZLZLS2.ZLBH in ('''+order+''') and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' Group by ZLBH,MJBH,CLBH ) A ');
          sql.add('    left join zlzls2 on zlzls2.zlbh=A.zlbh and zlzls2.clbh=A.MJBH  ');
          sql.add('    Group by A.ZLBH,A.MJBH,A.CLBH ');
          sql.add(')  zlzls2 on zlzls2.MJBH=clzhzl.cldh and zlzls2.CLBH=clzhzl.cldh1 ) zlzls2 on DDZLS.DDBH=ZLZLS2.ZLBH and DDZLS.CC between zlzls2.ccq and zlzls2.ccq1 ');
          sql.add('where DDZLS.DDBH in ('''+order+''') ');
          sql.add('group by DDZLS.DDBH');
          sql.add('having Sum(DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl)>0 ');
          //分段單位用量
          sql.add('Union all ');
          sql.add('select '''' as RY#,''MTS/Pair'' as MatNo, ');
          Query1.First;
          while not Query1.Eof do
          begin
              sql.add('    max(case when ccq<='''+Query1.fieldbyname('CC').asstring+''' and ccq1>='''+Query1.fieldbyname('CC').asstring+''' ');
              sql.add('    then syl end ) as '''+Query1.fieldbyname('CC').asstring+''',');
              Query1.Next;
          end;
          sql.add(' '''' as Total ');
          sql.add('from clzhzl  ');
          sql.add('where CLDH1='''+CGDet.FieldByName('CLBH').AsString+''' ');
          //分段總雙數
          sql.add('Union all ');
          sql.add('select RY#, MatNo, ');
          Query1.First;
          while not Query1.Eof do
          begin
              sql.add('    Sum(case when CC='''+Query1.fieldbyname('CC').asstring+'''  ');
              sql.add('    then Quantity end ) as '''+Query1.fieldbyname('CC').asstring+''',');
              Query1.Next;
          end;
          sql.add(' '''' as Total ');
          sql.add('from ( ');
          sql.add('select '''' as RY#,''#Pairs Order'' as MatNo, CC,Sum(Quantity) as Quantity ');
          sql.add('from  DDZLS ');
          sql.add('where DDZLS.DDBH in ('''+order+''') ');
          sql.add('Group by CC ) DDZLS  Group by RY#, MatNo ');
          //加總單位用量
          sql.add('Union all');
          sql.add('select '''',''Total Mts''  as MatNo, ');
          Query1.First;
          while not Query1.Eof do
          begin
              sql.add('    Sum(['+Query1.fieldbyname('CC').asstring+']) as '''+Query1.fieldbyname('CC').asstring+''',  ');
              Query1.Next;
          end;
          sql.add(' '''' as Total from ( ');
          //---子查詢
          sql.add('select DDZLS.DDBH as RY#,'''+CGDet.FieldByName('CLBH').AsString+''' as MatNo, ');
          Query1.First;
          while not Query1.Eof do
          begin
              sql.add('    max(case when DDZLS.CC='''+Query1.fieldbyname('CC').asstring+'''');
              sql.add('    then DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl end ) as '''+Query1.fieldbyname('CC').asstring+''',');
              Query1.Next;
          end;
          sql.add('Convert(Varchar,Round(Sum(DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl)+0.0499,1)) as Total  ');
          sql.add('from DDZLS  ');
          sql.add('left join ( ');
          sql.add('select zlzls2.ZLBH,clzhzl.ccq,ccq1,syl,ZLZLS2.Usage from clzhzl   ');
          sql.add('inner join ( ');
          sql.add('select A.*,Max(zlzls2.Usage) as Usage from ( ');
          sql.add('  select ZLBH,MJBH,CLBH from ZLZLS2 where CLBH='''+CGDet.FieldByName('CLBH').AsString+''' and ZLZLS2.ZLBH in ('''+order+''') and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' Group by ZLBH,MJBH,CLBH ) A ');
          sql.add('    left join zlzls2 on zlzls2.zlbh=A.zlbh and zlzls2.clbh=A.MJBH  ');
          sql.add('    Group by A.ZLBH,A.MJBH,A.CLBH ');
          sql.add(')  zlzls2 on zlzls2.MJBH=clzhzl.cldh and zlzls2.CLBH=clzhzl.cldh1 ) zlzls2 on DDZLS.DDBH=ZLZLS2.ZLBH and DDZLS.CC between zlzls2.ccq and zlzls2.ccq1 ');
          sql.add('where DDZLS.DDBH in ('''+order+''') ');
          sql.add('group by DDZLS.DDBH');
          sql.add('having Sum(DDZLS.Quantity*ZLZLS2.Usage*ZLZLS2.syl)>0 ');
          //--子查詢結束
          sql.add(') Usg Group by MatNo ');
          active:=true;
        end;
        if  CGSTemp.RecordCount>0 then
        begin
          eclApp.workbooks[1].sheets[2].name:='Size Total Usage';
          eclApp.workbooks[1].sheets[2].Range[eclApp.workbooks[1].sheets[2].Cells[1,1],eclApp.workbooks[1].sheets[2].Cells[1,CGSTemp.fieldcount]].NumberFormatLocal:='@';
          for   i:=0   to   CGSTemp.fieldcount-1   do
          begin
            eclApp.workbooks[1].sheets[2].Cells(1,i+1):=CGSTemp.fields[i].FieldName;
          end;
          CGSTemp.First;
          j:=2;
          while   not   CGSTemp.Eof   do
          begin
            for   i:=0   to  CGSTemp.fieldcount-1  do
            begin
              eclApp.workbooks[1].sheets[2].Cells(j,i+1):=CGSTemp.Fields[i].Value;
            end;
            CGSTemp.Next;
            inc(j);
            // outline
            for l:=1 to 4 do
            begin
             eclApp.workbooks[1].sheets[2].range[eclApp.workbooks[1].sheets[2].cells[1,1],eclApp.workbooks[1].sheets[2].cells[j-1,i]].borders[l].linestyle:=1;
            end;
          end;
          eclapp.workbooks[1].sheets[2].columns.autofit;
          //
        end;
        //
        CGSTemp.Active:=false;
        Query1.Active:=false;
        eclapp.workbooks[1].sheets[1].columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
     except
        on   F:Exception   do
          showmessage(F.Message);
     end;

end;

procedure TPurNoSize.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  CGMas.active  then
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
        for   i:=0   to   CGMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CGMas.fields[i].FieldName;
          end;

        CGMas.First;
        j:=2;
        while   not   CGMas.Eof   do
          begin
            for   i:=0   to  CGMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGMas.Fields[i].Value;
            end;
          CGMas.Next;
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

procedure TPurNoSize.BO9Click(Sender: TObject);
var i:integer;
    ERP_UseStock:double;
begin
  if CGDet.FieldByName('ZKLQty').Value>0 then
  begin
    ERP_UseStock:=0;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('	Select KCZK.CLBH,KCZKS.SIZE,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty');
      SQL.Add('	from KCZK');
      SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
      SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZKS.SIZE=''ZZZZZZ'' and KCZK.CLBH='''+CGDet.FieldByName('CLBH').AsString+''' ');
      SQL.Add('       and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>0 ');
      SQL.Add('	Group by KCZK.CLBH,KCZKS.SIZE');
      Active:=true;
      if RecordCount>0 then
      ERP_UseStock:=Query1.FieldByName('ZKLQty').Value;
      Active:=false;
    end;
    //
    CGS.First;
    for i:=0 to CGS.RecordCount-1 do
    begin
      if ((CGS.FieldByName('CLSL').Value-CGS.FieldByName('UseStock').Value)>0) then
      begin
        if (CGS.FieldByName('CLSL').Value>=ERP_UseStock) then
        begin
            CGS.Edit;
            CGS.FieldByName('UseStock').Value:=ERP_UseStock;
            CGS.FieldByName('Qty').Value:=(CGS.FieldByName('CLSL').Value-CGS.FieldByName('UseStock').Value);
            CGS.Post;
            ERP_UseStock:=0;
        end else
        begin
            CGS.Edit;
            CGS.FieldByName('UseStock').Value:=CGS.FieldByName('CLSL').Value;
            ERP_UseStock:=ERP_UseStock- CGS.FieldByName('UseStock').Value;
            CGS.FieldByName('Qty').Value:=0;
            CGS.Post;
        end;
      end;
      if ERP_UseStock<=0 then break;
      CGS.Next;
    end;
  end;

end;

procedure TPurNoSize.BO10Click(Sender: TObject);
var i:integer;
begin

  CGS.First;
  for i:=0 to CGS.RecordCount-1 do
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('         select ZLBH,SUM(IsNull(CLSL,0)) as CLSL');
      SQL.Add('		      from (');
      SQL.Add('           select zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB,zlzls2.CLSL,0 as Surplus,zlzls2.USERDATE,SIZE');
      SQL.Add('           from DDZL');
      SQL.Add('           left join zlzls2 on DDZL.DDBH = zlzls2.ZLBH');
      SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('           and ZLZLS2.CLBH='''+CGS.FieldByName('CLBH').AsString+''' ');
      SQL.Add('           and ZLZLS2.SIZE=''ZZZZZZ''');
      SQL.Add('           and ZLZLS2.CLSL<>0');
      SQL.Add('           and ZLZLS2.ZMLB=''N'' ');
      SQL.Add('           and ZLZLS2.ZLBH='''+CGS.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('           union all');
      SQL.Add('           select zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB,0 as CLSL,Sum(YWBZPO.Surplus*YWBZPO.CTS) as Surplus,max(YWBZPO.USERDATE) as USERDATE,''ZZZZZZ'' as size');
      SQL.Add('           from DDZL');
      SQL.Add('           left join YWBZPO on DDZL.DDBH = YWBZPO.DDBH ');
      SQL.Add('           left join YWBZPOS on YWBZPOS.DDBH = YWBZPO.DDBH and YWBZPOS.XH = YWBZPO.XH ');
      SQL.Add('           left join XXZLS on XXZLS.XieXing = DDZL.XieXing and xxzls.SheHao = DDZL.SheHao and DDCC between XXZLS.CCQQ and XXZLS.CCQZ and XXZLS.CLBH like ''H14%''');
      SQL.Add('           left join zlzls2 on zlzls2.ZLBH = YWBZPO.DDBH and zlzls2.bwbh = xxzls.bwbh');
      SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('           and ZLZLS2.CLBH='''+CGS.FieldByName('CLBH').AsString+''' ');
      SQL.Add('           and ZLZLS2.SIZE=''ZZZZZZ'' ');
      SQL.Add('           and ZLZLS2.CLSL<>0');
      SQL.Add('           and ZLZLS2.ZMLB=''N'' ');
      SQL.Add('           and ZLZLS2.ZLBH='''+CGS.FieldByName('ZLBH').AsString+''' ');
      SQL.Add('           group by zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB');
      SQL.Add('		      ) as zlzls2');
      SQL.Add('		      group by ZLBH,BWBH,CLBH,ZMLB,size');
      Active:=true;
    end;
    CGS.Edit;
    CGS.FieldByName('CLSL').Value:=Query1.FieldByName('CLSL').Value;
    CGS.FieldByName('Qty').Value:=Query1.FieldByName('CLSL').Value;
    CGS.Post;
    CGS.Next;
  end;
  Query1.Active:=false;
end;

procedure TPurNoSize.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurNoSize.dbgrid4DrawColumnCell(Sender: TObject;
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

procedure TPurNoSize.dbgrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='QUSPrice') or (DBGrid4.Selectedfield.fieldname='QVNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
      begin
        PurNoSize_BJ:=TPurNoSize_BJ.Create(self);
        PurNoSize_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
        PurNoSize_BJ.Button1Click(nil);
        PurNoSize_BJ.show;
      end;
  end;
end;

procedure TPurNoSize.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TPurNoSize.BDT7Click(Sender: TObject);
var CGNO: String;
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

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
  if PurchaseN211_CheckPrint='TX' then
  begin
    {if CGMas.FieldByName('PURPOSE').AsString='TW' then
    begin
      CGNO := CGMas.FieldByName('CGNO').AsString;
      PurNoSizeTW_Print_TW:=TPurNoSizeTW_Print_TW.Create(nil);
      PurNoSizeTW_Print_TW.L9.Caption:='BuyNo: '+PurNoSize.BuyNoQ.FieldByName('BUYNO').AsString;
      PurNoSizeTW_Print_TW.L10.Caption:='Brand: '+PurNoSize.BuyNoQ.FieldByName('KFJC').AsString;
      PurNoSizeTW_Print_TW.L11.Caption:=PurNoSize.BuyNoQ.FieldByName('RYType').AsString;
      PurNoSizeTW_Print_TW.L_address.Caption:='Supplier address:'+PurNoSize.CGMas.FieldByName('yjdz').AsString;
      PurNoSizeTW_Print_TW.L20.Caption:=PurchaseN211_ISO;
      PurNoSizeTW_Print_TW.quickrep1.prepare;
      PurNoSizeTW_Print_TW.Qpage1.caption:=inttostr(PurNoSizeTW_Print_TW.quickrep1.QRPrinter.pagecount);
      PurNoSizeTW_Print_TW.quickrep1.preview;
      PurNoSizeTW_Print_TW.Free;
    end;
    if CGMas.FieldByName('PURPOSE').AsString='VN' then
    begin  }
      CGNO := CGMas.FieldByName('CGNO').AsString;
      PurNoSizeTW_Print_VN:=TPurNoSizeTW_Print_VN.Create(nil);
      PurNoSizeTW_Print_VN.L9.Caption:='BuyNo: '+PurNoSize.BuyNoQ.FieldByName('BUYNO').AsString;
      PurNoSizeTW_Print_VN.L10.Caption:='Brand:'+PurNoSize.BuyNoQ.FieldByName('KFJC').AsString;
      PurNoSizeTW_Print_VN.L11.Caption:=PurNoSize.BuyNoQ.FieldByName('RYType').AsString;
      PurNoSizeTW_Print_VN.L_address.Caption:='Supplier address: '+PurNoSize.CGMas.FieldByName('yjdz').AsString;
      PurNoSizeTW_Print_VN.L20.Caption:=PurchaseN211_ISO;
      PurNoSizeTW_Print_VN.quickrep1.prepare;
      PurNoSizeTW_Print_VN.Qpage1.caption:=inttostr(PurNoSizeTW_Print_VN.quickrep1.QRPrinter.pagecount);
      PurNoSizeTW_Print_VN.quickrep1.preview;
      PurNoSizeTW_Print_VN.Free;
    //end;
  end else
  begin
    CGNO := CGMas.FieldByName('CGNO').AsString;
    PurNoSizeTW_Print:=TPurNoSizeTW_Print.Create(nil);
    PurNoSizeTW_Print.L9.Caption:='BuyNo:'+PurNoSize.BuyNoQ.FieldByName('BUYNO').AsString;
    PurNoSizeTW_Print.L10.Caption:='Brand:'+PurNoSize.BuyNoQ.FieldByName('KFJC').AsString;
    PurNoSizeTW_Print.L11.Caption:=PurNoSize.BuyNoQ.FieldByName('RYType').AsString;
    PurNoSizeTW_Print.L20.Caption:=PurchaseN211_ISO;
    PurNoSizeTW_Print.quickrep1.prepare;
    PurNoSizeTW_Print.Qpage1.caption:=inttostr(PurNoSizeTW_Print.quickrep1.QRPrinter.pagecount);
    PurNoSizeTW_Print.quickrep1.preview;
    PurNoSizeTW_Print.Free;
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

procedure TPurNoSize.CGMasAfterScroll(DataSet: TDataSet);
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

procedure TPurNoSize.Button8Click(Sender: TObject);
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

procedure TPurNoSize.BBT8Click(Sender: TObject);
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

procedure TPurNoSize.BBT9Click(Sender: TObject);
begin
  PurRevise:=TPurRevise.Create(self);
  PurRevise.Show();
end;

end.
