unit BOMVN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh;

type
  TBOMVN = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    TS3: TTabSheet;
    Panel6: TPanel;
    DBGrid3: TDBGridEh;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    XXZLSVN: TQuery;
    UpXXZLSVN: TUpdateSQL;
    DS3: TDataSource;
    Top3Panel: TPanel;
    BDT6: TBitBtn;
    BDT5: TBitBtn;
    BDT4: TBitBtn;
    BDT3: TBitBtn;
    BDT2: TBitBtn;
    BDT1: TBitBtn;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Top1Panel: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    BA1: TBitBtn;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    BDelRec: TQuery;
    XXZLSVNXieXing: TStringField;
    XXZLSVNSheHao: TStringField;
    XXZLSVNBWBH: TStringField;
    XXZLSVNCLBH: TStringField;
    XXZLSVNCSBH: TStringField;
    XXZLSVNCLSL: TCurrencyField;
    XXZLSVNUSERID: TStringField;
    XXZLSVNUSERDATE: TDateTimeField;
    XXZLSVNYN: TStringField;
    XXZLSVNYWSM: TStringField;
    XXZLSVNZSYWJC: TStringField;
    XXZLSVNYWPM: TStringField;
    XXZLSVNDWBH: TStringField;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLArticle: TStringField;
    XXZLVNBOM: TStringField;
    XXZLYSSM: TStringField;
    XXZLCQDH: TStringField;
    TS4: TTabSheet;
    Panel1: TPanel;
    OrderLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    DDZLQry: TQuery;
    DDZLQryDDBH: TStringField;
    DDZLQryCQDH: TStringField;
    DDZLQryZLBH1: TStringField;
    DDZLQryDDLB: TStringField;
    DDZLQryXieXing: TStringField;
    DDZLQrySheHao: TStringField;
    DDZLQryARTICLE: TStringField;
    DDZLQryKHDH: TStringField;
    DDZLQryKHPO: TStringField;
    DDZLQryDDRQ: TStringField;
    DDZLQrySCRQ: TStringField;
    DDZLQryDDJQ: TStringField;
    DDZLQryPairs: TFloatField;
    DDZLQryQtySC: TFloatField;
    DDZLQryQtyCH: TFloatField;
    DDZLQryTotals: TFloatField;
    DDZLQryPJZL: TFloatField;
    DDZLQryACCNO: TStringField;
    DDZLQryPGNO: TStringField;
    DDZLQryZLBH: TStringField;
    DDZLQryDDZT: TStringField;
    DDZLQryYN: TStringField;
    DDZLQryCQDH1: TStringField;
    DDZLQryUSERID: TStringField;
    DDZLQryUSERDATE: TStringField;
    DDZLQryDDBZ: TStringField;
    DDZLQryQKBL: TFloatField;
    DDZLQryQTYQK: TFloatField;
    DDZLQryZLBHA: TStringField;
    DDZLQryCHRQ: TStringField;
    DDZLQrymode: TStringField;
    DDZLQryYSSM: TStringField;
    DDZLQrykfjc: TStringField;
    DDZLQrybb: TStringField;
    DDZLQryHZS: TFloatField;
    DDZLQryLOSS: TFloatField;
    DataSource1: TDataSource;
    Button3: TButton;
    DDZLQryVNBOM: TStringField;
    DDZLQryCalDate: TStringField;
    VNSpec: TQuery;
    XXZLSVNCQDH: TStringField;
    CK1: TCheckBox;
    btCopy: TBitBtn;
    CK2: TCheckBox;
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BD2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure XXZLSVNAfterOpen(DataSet: TDataSet);
    procedure BD7Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure VNSizeNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure btCopyClick(Sender: TObject);
    procedure CK2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  BOMVN: TBOMVN;

implementation

uses  main1,BOMVN_CL1, BOMVN_ZS1,FunUnit,PARTNEW1, Detail1, BOMVN_Copy1;

{$R *.dfm}

procedure TBOMVN.InitUpdateSQL();
begin
   UpXXZLSVN.InsertSQL.Clear;
   UpXXZLSVN.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.XXZLSVN (XieXing, SheHao, BWBH, CQDH,CLBH, CSBH, CLSL, USERID, USERDATE,YN)');
   UpXXZLSVN.InsertSQL.Add('values (:XieXing, :SheHao, :BWBH,:CQDH, :CLBH, :CSBH, :CLSL, :USERID,:USERDATE, :YN)');

   UpXXZLSVN.ModifySQL.Clear;
   UpXXZLSVN.ModifySQL.Add('update '+main.LIY_DD+'.dbo.XXZLSVN');
   UpXXZLSVN.ModifySQL.Add('set XieXing = :XieXing,SheHao = :SheHao,BWBH = :BWBH,CLBH = :CLBH,CSBH = :CSBH,CLSL = :CLSL,');
   UpXXZLSVN.ModifySQL.Add('USERID = :USERID,USERDATE = :USERDATE,YN = :YN');
   UpXXZLSVN.ModifySQL.Add('where XieXing = :OLD_XieXing and SheHao = :OLD_SheHao and BWBH = :OLD_BWBH and CQDH=:OLD_CQDH');

   UpXXZLSVN.DeleteSQL.Clear;
   UpXXZLSVN.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.XXZLSVN');
   UpXXZLSVN.DeleteSQL.Add('where XieXing = :OLD_XieXing and SheHao = :OLD_SheHao and BWBH = :OLD_BWBH and CQDH=:OLD_CQDH');
end;

procedure TBOMVN.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBOMVN.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZLSVN.VNBOM,XXZL.YSSM,CQDH');
    sql.add('from '+main.LIY_DD+'.dbo.XXZL XXZL ');
    sql.add('left join (select distinct XieXing,SheHao,XieXing as VNBOM from '+main.LIY_DD+'.dbo.XXZLSVN XXZLSVN) XXZLSVN');
    sql.add('           on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.SheHao=XXZL.SheHao  ');
    sql.add('where  1=1');
    if edit1.Text<>'' then
      sql.Add('and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.add('and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
      sql.add('and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.Add('and cqdh='''+main.Edit2.Text+'''');  
    sql.add('order by XXZL.XieXing,XXZL.Shehao');
    active:=true;
  end;
  // 顯示 bom  只新增或修改 xxbwfl
  //XXZLSVN.Open;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
  with XXZLSVN do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH');
    sql.Add('from '+main.LIY_DD+'.dbo.XXZLSVN XXZLSVN');
    sql.Add('left join BWZL on BWZL.BWDH= XXZLSVN.BWBH');
    sql.Add('left join '+main.LIY_DD+'.dbo.ZSZL ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH');
    sql.Add('left join '+main.LIY_DD+'.dbo.CLZL CLZL  on XXZLSVN.CLBH=CLZL.CLDH');
    sql.Add('where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:Shehao');
    sql.Add('and CQDH=:CQDH');
    sql.Add('order by XXZLSVN.BWBH asc');
    active:=true;
  end;
  panel2.Visible:=false;
end;

procedure TBOMVN.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  edit1.SetFocus;
end;
procedure TBOMVN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BD5.Enabled then
  begin
    showmessage('Pls save data first.');
    PC1.ActivePage:=TS3;
    Top3Panel.Visible:=true;
    action:=canone;
  end;
  action:=cafree;
end;
procedure TBOMVN.BD2Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  btCopy.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.Insert;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMVN.BD4Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  btcopy.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.edit;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TBOMVN.BD3Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  XXZLSVN.RequestLive:=true;
  XXZLSVN.CachedUpdates:=true;
  XXZLSVN.edit;
  XXZLSVN.fieldbyname('YN').Value:='0';
end;

procedure TBOMVN.XXZLSVNAfterOpen(DataSet: TDataSet);
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
  with XXZLSVN do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  end;
end;

procedure TBOMVN.BD7Click(Sender: TObject);
begin
close;
end;

procedure TBOMVN.BD5Click(Sender: TObject);
var i:integer;
    a: string;
begin
  try
    XXZLSVN.first;
    for i:=1 to XXZLSVN.RecordCount do
    begin
      case XXZLSVN.updatestatus of
        usinserted:
        begin
          if  XXZLSVN.FieldByName('CLSL').IsNull then
          begin
            showmessage('CLSL can not be empty.');
            abort;
          end;
          // BWBH
          with BDelRec do    //計算領料單流水號
          begin
            active:=false;
            sql.Clear;
            sql.Add('select BWBH from '+main.LIY_DD+'.dbo.XXZLSVN');
            SQL.Add('where XIEXING='''+ XXZL.fieldbyname('XieXing').value +''' AND SHEHAO='''+ XXZL.fieldbyname('SheHao').value+'''');
            sql.Add('and CQDH='''+XXZL.fieldbyname('CQDH').Value+'''');
            sql.add('order by BWBH');
            active:=true;
            if recordcount >0 then
            begin
              last;
              a:=fieldbyname('BWBH').AsString;
              a:=inttostr(strtoint(a)+1);
              while length(a)<4 do
              begin
                a:='0'+a;
              end;
            end else
            begin
              a:='0001';
            end;
            active:=false;
            sql.Clear;
          end;
          XXZLSVN.edit;
          XXZLSVN.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
          XXZLSVN.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
          XXZLSVN.FieldByName('BWBH').Value:=a;
          XXZLSVN.FieldByName('CQDH').Value:= main.edit2.text;
          XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
          XXZLSVN.FieldByName('userdate').Value:=date;
          XXZLSVN.FieldByName('YN').Value:='1';
          UPXXZLSVN.apply(ukinsert);
        end;
        usmodified:
        begin
          if XXZLSVN.fieldbyname('YN').value='0'then
          begin
            upXXZLSVN.apply(ukdelete);
          end else
          begin
            if  XXZLSVN.FieldByName('CLSL').IsNull then
            begin
              showmessage('CLSL can not be empty.');
              abort;
            end;
            XXZLSVN.edit;
            XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
            XXZLSVN.FieldByName('userdate').Value:=date;
            UPXXZLSVN.apply(ukmodify);
          end;
        end;
      end;
      XXZLSVN.next;
    end;
    XXZLSVN.active:=false;
    XXZLSVN.cachedupdates:=false;
    XXZLSVN.requestlive:=false;
    XXZLSVN.active:=true;
    bD5.enabled:=false;
    bD6.enabled:=false;
    btcopy.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TBOMVN.DBGrid3EditButtonClick(Sender: TObject);
begin
 if dbgrid3.selectedfield.fieldname='CLBH' then
  begin
    BOMVN_CL:=TBOMVN_CL.create(self);
    BOMVN_CL.show;
  end;
  if dbgrid3.selectedfield.fieldname='CSBH' then
  begin
    BOMVN_ZS:=TBOMVN_ZS.create(self);
    BOMVN_ZS.show;
  end;
end;

procedure TBOMVN.BD6Click(Sender: TObject);
begin  
  XXZLSVN.active:=false;
  XXZLSVN.cachedupdates:=false;
  XXZLSVN.requestlive:=false;
  XXZLSVN.active:=true;
  bD5.enabled:=false;
  bD6.enabled:=false;
  btcopy.Enabled:=false;
  dbgrid3.columns[1].ButtonStyle:=cbsNone;
  dbgrid3.columns[5].ButtonStyle:=cbsNone;
end;

procedure TBOMVN.PC1Change(Sender: TObject);
begin
   //切換頁面編輯新增取消
   if BA6.Enabled=true then BA6.Click;
   if BD6.Enabled=true then BD6.Click;
   //
  if PC1.ActivePage=TS3 then
   begin
     Top3Panel.visible:=true;
   end else
   begin
     Top3Panel.Visible:=false;
   end;
end;

procedure TBOMVN.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  PC1.ActivePage:=TS1;
  DecodeDate(Date(), myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=now;
  DTP1.Date:=DTP1.Date-180;

  InitUpdateSQL();
end;

procedure TBOMVN.BDT6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
    if XXZLSVN.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZLSVN.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZLSVN.fields[i].FieldName;
        end;

        XXZLSVN.First;
        j:=2;
        while   not   XXZLSVN.Eof   do
        begin
            for   i:=0   to   XXZLSVN.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XXZLSVN.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XXZLSVN.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
 end;

end;

procedure TBOMVN.FormDestroy(Sender: TObject);
begin
  BOMVN:=nil;
end;

procedure TBOMVN.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if XXZL.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZL.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZL.fields[i].FieldName;
        end;

        XXZL.First;
        j:=2;
        while   not   XXZL.Eof   do
        begin
          for   i:=0   to   XXZL.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZL.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XXZL.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

procedure TBOMVN.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if XXZl.FieldByName('VNBOM').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TBOMVN.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if XXZLSVN.fieldbyname('YN').Value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;

end;

procedure TBOMVN.VNSizeNewRecord(DataSet: TDataSet);
begin
  abort;
end;
procedure TBOMVN.BitBtn3Click(Sender: TObject);
begin
  PARTNEW:=TPARTNEW.create(self);
  PARTNEW.show;
end;
procedure TBOMVN.Button2Click(Sender: TObject);
begin
  with DDZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT DDZL.* ,XXZL.YSSM ,kfzl.kfjc ,kfzl.bb ,XXZL.HZS ,XXZL.LOSS, XXZLSVN.VNBOM,ZLZLS3.USERDATE as CalDate  ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.DDZL DDZL  ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.XXZL XXZL ON DDZL.XieXing = XXZL.XieXing AND DDZL.SheHao = XXZL.SheHao AND DDZL.CQDH=XXZL.CQDH  ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.kfzl kfzl ON DDZL.KHDH = kfzl.kfdh  ');
    sql.Add('left join (select distinct  XieXing ,SheHao, XieXing as VNBOM from '+main.LIY_DD+'.dbo.XXZLSVN XXZLSVN ) XXZLSVN');
    sql.Add('on XXZLSVN.XieXing=DDZL.XieXing and XXZLSVN.SheHao=DDZL.SheHao');
    sql.Add('left join ( select distinct DDBH,max(userdate) Userdate from '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLs3  where LEFT(ZLZLS3.cldh,1)<>''V''  and ZLZLS3.CQDH='''+main.Edit2.Text+''' group by DDBH) ZLZLS3');
    sql.Add('on ZLZLS3.DDBH=DDZL.DDBH');
    SQL.Add('where (( DDZL.DDBH like  '''+Edit4.Text+'%'') And ( DDZL.CQDH =  '''+main.Edit2.Text+''') ) ');
    SQL.add('and DDZL.SCRQ >= '+''''+Formatdatetime('yyyyMMdd',DTP1.Date)+'''');
    SQL.add('and DDZL.SCRQ <= '+''''+Formatdatetime('yyyyMMdd',DTP2.Date)+'''');
    if ((CK1.Checked=true) and (XXZL.Active=true)) then
    begin
      sql.Add(' and DDZL.xiexing='''+ XXZL.fieldbyname('XieXing').AsString+'''');
      sql.Add(' and DDZL.shehao='''+ XXZL.fieldbyname('Shehao').AsString+'''');
    end;
    if CK2.Checked then
    begin
      sql.Add(' and  DDZL.YN= ''1'' ');
    end;
    sql.Add('order by ddzl.ddbh');
    Active:=true;
  end;
end;

procedure TBOMVN.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if DDZLQry.FieldByName('CalDate').isnull then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
  if DDZLQry.FieldByName('DDZT').value='C' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TBOMVN.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i,index:integer;
    bookmarklist:tbookmarklistEh;
begin
  if not CK2.Checked then
  begin
    showmessage('Pls check Not Yet Finish !') ;
    abort;
  end;
  try
    DDZLQry.disablecontrols;
    bm:=DDZLQry.getbookmark;
    bookmarklist:=DBGridEh3.selectedrows;
    if bookmarklist.count=0 then DBGridEh3.SelectedRows.CurrentRowSelected:= true;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          DDZLQry.gotobookmark(pointer(bookmarklist[i]));
          with VNSpec do
          begin
            active:=false;
            sql.Clear;
            sql.add('select * from '+main.LIY_DD+'.dbo.XXZLSVN XXZLSVN where XieXing=:XieXing and SheHao=:SheHao and CQDH=:CQDH ');
            active:=true;
            if VNSpec.RecordCount=0 then
            begin
                showmessage('No VN BOM. Pls setup VN BOM first.');
                exit;
            end;
            active:=false;
            sql.Clear;
            sql.add('select * from '+main.LIY_DD+'.dbo.ZLZLS3 ZLZLS3 where DDBH=:DDBH and CQDH=:CQDH and left(CLDH,1)<>''V''');
            active:=true;
            if recordcount>0 then
            begin
                if messagedlg('You want to recalucate the usage again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
                begin
                    active:=false;
                    sql.Clear;
                    sql.add('delete '+main.LIY_DD+'.dbo.ZLZLS3 where DDBH=:DDBH and CQDH=:CQDH and left(CLDH,1)<>''V''');
                    execsql;
                end else
                begin
                  abort;
                end;
            end;
            active:=false;
            sql.clear;
            sql.add('delete '+main.LIY_DD+'.dbo.ZLZLS3 where DDBH=:DDBH and CQDH=:CQDH and left(CLDH,1)<>''V''');
            sql.add('insert '+main.LIY_DD+'.dbo.ZLZLS3');
            sql.add('select XXZLSVN.BWBH, XXZLSVN.CLBH,DDZL.DDBH, DDZL.ZLBH1');
            sql.add(',round(DDZL.Pairs*XXZLSVN.CLSL+0.0499,1) as TCLYL,DDZL.CQDH,');
            sql.add(''''+main.edit1.text+''''+'  as USERID,');
            sql.add(''''+formatdatetime('yyyymmdd hh:mm:ss',now)+''''+' as USERDATE');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLSVN XXZLSVN');
            sql.add('left join '+main.LIY_DD+'.dbo.DDZL DDZL on ddzl.CQDH=XXZLSVN.CQDH and DDZL.DDBH=:DDBH');
            sql.add('left join '+main.LIY_DD+'.dbo.CLZL CLZL on CLZL.CLDH=XXZLSVN.CLBH');
            sql.add('where XXZLSVN.XieXing=:XieXing and XXZLSVN.SheHao=:SheHao and DDZL.CQDH=:CQDH');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
          end;
        end;
      finally
        begin
          DDZLQry.gotobookmark(bm);
          DDZLQry.freebookmark(bm);
          DDZLQry.enablecontrols;
        end;
      end;
      //
    end;
    showmessage('Calculate finished.');
  except
     showmessage('Have wrong.');
  end;
end;

procedure TBOMVN.DBGridEh3CellClick(Column: TColumnEh);
begin
  if Column.FieldName='DDBH' then
  begin
    //Detail:=TDetail.create(self);
  //  Detail.show;
  end;
end;

procedure TBOMVN.btCopyClick(Sender: TObject);
begin
  if XXZLSVN.RequestLive then
  begin
    BOMVN_copy:=TBOMVN_copy.create(self);
    BOMVN_copy.show;
  end;
end;

procedure TBOMVN.CK2Click(Sender: TObject);
begin
  if CK2.Checked then
  begin
    Button3.Enabled:=true;
  end else
  begin
    Button3.Enabled:=false;
  end;
  button2.Click;
end;

end.
