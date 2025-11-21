unit INKVN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh;

type
  TINKVN = class(TForm)
    XXZL: TQuery;
    DS1: TDataSource;
    XXZLXieXing: TStringField;
    XXZLXieMing: TStringField;
    XXZLSheHao: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLARTICLE: TStringField;
    XXZLSYM: TQuery;
    UpXXZLSYM: TUpdateSQL;
    DS3: TDataSource;
    XXZLSYMXieXing: TStringField;
    XXZLSYMSheHao: TStringField;
    XXZLSYMBWBH: TStringField;
    XXZLSYMCLBH: TStringField;
    XXZLSYMCLSL: TCurrencyField;
    XXZLSYMUSERID: TStringField;
    XXZLSYMUSERDATE: TDateTimeField;
    XXZLSYMYN: TStringField;
    XXZLSYMYWSM: TStringField;
    XXZLSYMZSYWJC: TStringField;
    XXZLSYMYWPM: TStringField;
    XXZLSYMDWBH: TStringField;
    XXZLSYMCSBH: TStringField;
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
    XXZLSYMFLBH: TStringField;
    XXZLSYMDFL: TStringField;
    XXZLSYMXFL: TStringField;
    DT7: TBitBtn;
    VNBWFL: TQuery;
    VNBWFLXieXing: TStringField;
    VNBWFLBWBH: TStringField;
    VNBWFLFLBH: TStringField;
    VNBWFLUSERDATE: TDateTimeField;
    VNBWFLUSERID: TStringField;
    VNBWFLYN: TStringField;
    UpVNBWFL: TUpdateSQL;
    XXZLKFJC: TStringField;
    XXZLVNBOM: TStringField;
    XXZLVNFL: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    XXZLSYMLYCC: TStringField;
    XXZLCCGB: TStringField;
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
    XXZLQBT: TStringField;
    XXZLUPD: TUpdateSQL;
    XXZLUserdate: TDateTimeField;
    XXZLUserID: TStringField;
    BDelRec: TQuery;
    XXZLSYMXXZLS_CLBH: TStringField;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    SeasonEdit: TEdit;
    GroupBox2: TGroupBox;
    CK1: TCheckBox;
    Edit6: TEdit;
    BuyNoEdit: TEdit;
    DBGrid1: TDBGridEh;
    TS3: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    Label17: TLabel;
    DBText12: TDBText;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid3: TDBGridEh;
    TS2: TTabSheet;
    Panel1: TPanel;
    OrderLabel: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button3: TButton;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    DDZLQry: TQuery;
    DataSource1: TDataSource;
    DDZLQryZLBH: TStringField;
    DDZLQryDDBH: TStringField;
    DDZLQryQty: TIntegerField;
    DDZLQryXieXing: TStringField;
    DDZLQrySheHao: TStringField;
    DDZLQryArticle: TStringField;
    DDZLQryShipDate: TDateTimeField;
    DDZLQryXXCC: TStringField;
    DDZLQryXieMing: TStringField;
    DDZLQryDDZT: TStringField;
    DDZLQryDDCC: TStringField;
    DDZLQryKFJC: TStringField;
    DDZLQryVNBOM: TStringField;
    DDZLQrySCBH: TStringField;
    DDZLQryCalDate: TDateTimeField;
    VNSpec: TQuery;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    DTP3: TDateTimePicker;
    Label10: TLabel;
    DTP4: TDateTimePicker;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DDZLQryPlanDate: TDateTimeField;
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BD2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure XXZLSYMAfterOpen(DataSet: TDataSet);
    procedure BD7Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DT7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLSYMAfterScroll(DataSet: TDataSet);
    procedure BA4Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INKVN: TINKVN;

implementation

uses main1,MaterialNew1, PARTNEW1, FunUnit,
    INKVN_BW1, INKVN_CL1,INKVN_ZS1, INKVN_FL1, INKVN_copy1, Detail1;

{$R *.dfm}

procedure TINKVN.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TINKVN.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.CCGB,XXZLSYM.VNBOM,');
    sql.add('       (select top 1 XXBWFL.XieXing  from XXZLS ');    
    sql.add('        left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing') ;
    sql.add('        where XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZl.SheHao order by XXBWFL.XieXing ) as VNFL');
    sql.add(',XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZLSVNS2.Article,XXZLSVNS2.QBT,XXZLSVNS2.Userdate,XXZLSVNS2.UserID  ');
    sql.add('from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join (select distinct XieXing,SheHao,XieXing as VNBOM from XXZLSYM) XXZLSYM');
    sql.add('           on XXZLSYM.XieXing=XXZL.XieXing and XXZLSYM.SheHao=XXZL.SheHao ');
    sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    //201403006 增加前包頭資訊
    sql.Add('left join XXZLSVNS2 on XXZLSVNS2.XieXing=XXZL.XieXing and XXZLSVNS2.SheHao=XXZL.SheHao ');
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add('and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    if SeasonEdit.Text<>'' then
        sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
        sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
    if CK1.Checked then
    begin
      sql.add('and XXZL.YN='+''''+'1'+'''');
    end;
    sql.add('order by KFJC,XXZL.XieXing,XXZL.Shehao');
    active:=true;
  end;
  XXZLSYM.Open;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
  VNBWFL.Open;  //  vnbom 用來新增或修改 xxbwfl
  panel2.Visible:=false;
end;

procedure TINKVN.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  edit1.SetFocus;
end;

procedure TINKVN.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    //DBGrid1Dblclick(nil);
end;

procedure TINKVN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BD5.Enabled then
  begin
    showmessage('Pls save data first.');
    PC1.ActivePage:=TS3;
    Top3Panel.Visible:=true;
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;


procedure TINKVN.BD2Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSYM.RequestLive:=true;
  XXZLSYM.CachedUpdates:=true;
  XXZLSYM.Insert;
  dbgrid3.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TINKVN.BD4Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSYM.RequestLive:=true;
  XXZLSYM.CachedUpdates:=true;
  XXZLSYM.edit;
  dbgrid3.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TINKVN.BD3Click(Sender: TObject);
begin
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DT7.Enabled:=true;
  XXZLSYM.RequestLive:=true;
  XXZLSYM.CachedUpdates:=true;
  XXZLSYM.edit;
  XXZLSYM.fieldbyname('YN').Value:='0';
end;

procedure TINKVN.XXZLSYMAfterOpen(DataSet: TDataSet);
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
  with XXZLSYM do
  begin
    requestlive:=false;
    cachedupdates:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  end;
end;

procedure TINKVN.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TINKVN.BD5Click(Sender: TObject);
var i:integer;
begin
try
    XXZLSYM.first;
    for i:=1 to XXZLSYM.RecordCount do
    begin
      case XXZLSYM.updatestatus of
          usinserted:
          begin
            if XXZLSYM.fieldbyname('BWBH').isnull then
            begin
              XXZLSYM.delete;
            end
            else
            begin
               if  XXZLSYM.FieldByName('CLSL').IsNull then
               begin
                 showmessage('Quantity can not be empty.');
                 abort;
               end;
               XXZLSYM.edit;
               XXZLSYM.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
               XXZLSYM.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
               XXZLSYM.FieldByName('userID').Value:=main.edit1.text;
               XXZLSYM.FieldByName('userdate').Value:=date;
               XXZLSYM.FieldByName('YN').Value:='1';
               UPXXZLSYM.apply(ukinsert);
               with VNBWFL do
               begin
                   if not locate('BWBH',XXZLSYM.fieldbyname('BWBH').value,[]) then
                   begin
                     VNBWFL.insert ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSYM.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSYM.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSYM.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukinsert);
                   end
                   else
                   begin
                     VNBWFL.edit ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSYM.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSYM.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSYM.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukmodify);
                   end;
               end;
          end;
    end;
          usmodified:
             begin
              if XXZLSYM.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'XXZLSYM'+''''+','+''''+XXZLSYM.fieldbyname('XIEXING').Value+'***'+XXZLSYM.fieldbyname('SHEHAO').Value+'''');
                  sql.add(','+''''+XXZLSYM.fieldbyname('BWBH').Value+'***'+XXZLSYM.fieldbyname('CLBH').Value+''''+','+''''+XXZLSYM.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                upXXZLSYM.apply(ukdelete);
              end
              else
              begin
                if  XXZLSYM.FieldByName('CLSL').IsNull then
                begin
                  showmessage('Quantity can not be empty.');
                  abort;
                end;
                XXZLSYM.edit;
                XXZLSYM.FieldByName('userID').Value:=main.edit1.text;
                XXZLSYM.FieldByName('userdate').Value:=date;
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'XXZLSYMmod'+''''+','+''''+XXZLSYM.fieldbyname('XIEXING').Value+'***'+XXZLSYM.fieldbyname('SHEHAO').Value+'''');
                  sql.add(','+''''+XXZLSYM.fieldbyname('BWBH').Value+'***'+XXZLSYM.fieldbyname('CLBH').OldValue+'***'+XXZLSYM.fieldbyname('CLBH').Value+''''+','+''''+XXZLSYM.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                UPXXZLSYM.apply(ukmodify);
                with VNBWFL do
                begin
                   if not locate('BWBH',XXZLSYM.fieldbyname('BWBH').value,[]) then
                   begin
                     VNBWFL.insert ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSYM.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSYM.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSYM.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukinsert);
                   end
                   else
                   begin
                     VNBWFL.edit ;
                     VNBWFL.FieldByName('XieXing').Value:=XXZLSYM.FieldByName('XieXing').Value;
                     VNBWFL.FieldByName('BWBH').Value:=XXZLSYM.FieldByName('BWBH').Value;
                     VNBWFL.FieldByName('FLBH').Value:=XXZLSYM.FieldByName('FLBH').Value;
                     VNBWFL.FieldByName('USERDATE').Value:=date;
                     VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                     VNBWFL.FieldByName('YN').Value:='1';
                     UpVNBWFL.Apply(ukmodify);
                   end;
                end;
              end;
          end;
        end;
        XXZLSYM.next;
      end;
  XXZLSYM.active:=false;
  XXZLSYM.cachedupdates:=false;
  XXZLSYM.requestlive:=false;
  XXZLSYM.active:=true;
  bD5.enabled:=false;
  bD6.enabled:=false;
  DT7.enabled:=false;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  dbgrid3.columns[6].ButtonStyle:=cbsNone;
  dbgrid3.columns[8].ButtonStyle:=cbsNone;  
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TINKVN.DBGrid3EditButtonClick(Sender: TObject);
begin
  if dbgrid3.selectedfield.fieldname='BWBH' then
  begin
    INKVN_BW:=TINKVN_BW.create(self);
    INKVN_BW.show;
  end;
  if dbgrid3.selectedfield.fieldname='CLBH' then
  begin
    INKVN_CL:=TINKVN_CL.create(self);
    INKVN_CL.show;
  end;
  if dbgrid3.selectedfield.fieldname='CSBH' then
  begin
    INKVN_ZS:=TINKVN_ZS.create(self);
    INKVN_ZS.show;
  end;
  if dbgrid3.selectedfield.fieldname='DFL' then
  begin
    INKVN_FL:=TINKVN_FL.create(self);
    INKVN_FL.show;
  end;
end;

procedure TINKVN.BD6Click(Sender: TObject);
begin  
  XXZLSYM.active:=false;
  XXZLSYM.cachedupdates:=false;
  XXZLSYM.requestlive:=false;
  XXZLSYM.active:=true;
  bD5.enabled:=false;
  bD6.enabled:=false;
  DT7.enabled:=false;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  dbgrid3.columns[6].ButtonStyle:=cbsNone;
  dbgrid3.columns[8].ButtonStyle:=cbsNone;
end;

procedure TINKVN.PC1Change(Sender: TObject);
begin
   //切換頁面編輯新增取消
   if BA6.Enabled=true then BA6.Click;
   if BD6.Enabled=true then BD6.Click;
   if PC1.ActivePage=TS3 then
   begin
     Top3Panel.visible:=true;
   end else
   begin
     Top3Panel.visible:=false;
   end;
   //
end;

procedure TINKVN.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  DTP2.Date:=now+20;
  DTP1.Date:=now-10;
  DTP4.Date:=now+20;
  DTP3.Date:=now-10;
end;

procedure TINKVN.BDT6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if XXZLSYM.active  then
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
        for   i:=0   to   XXZLSYM.fieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=XXZLSYM.fields[i].FieldName;
        end;

        XXZLSYM.First;
        j:=2;
        while   not   XXZLSYM.Eof   do
        begin
          for   i:=0   to   XXZLSYM.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZLSYM.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        XXZLSYM.Next;
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

procedure TINKVN.BitBtn1Click(Sender: TObject);
begin
  main.SN33Click(nil)
end;


procedure TINKVN.BitBtn2Click(Sender: TObject);
begin
  MaterialNew:=TMaterialNew.create(self);
  MaterialNew.show;
end;

procedure TINKVN.BitBtn3Click(Sender: TObject);
begin
  PARTNEW:=TPARTNEW.create(self);
  PARTNEW.show;
end;

procedure TINKVN.DT7Click(Sender: TObject);
begin
  if XXZLSYM.RequestLive then
  begin
    INKVN_copy:=TINKVN_copy.create(self);
    INKVN_copy.show;
  end;
end;


procedure TINKVN.FormDestroy(Sender: TObject);
begin
  INKVN:=nil;
end;

procedure TINKVN.Excel1Click(Sender: TObject);
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
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
    //  WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TINKVN.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

if XXZl.FieldByName('VNBOM').IsNull or XXZl.FieldByName('VNFL').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;



procedure TINKVN.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if XXZLSYM.fieldbyname('YN').Value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;

end;

procedure TINKVN.XXZLSYMAfterScroll(DataSet: TDataSet);
var a:string;
begin

  if XXZLSYM.recordcount<=0  then
  begin
    exit;
  end;

  if XXZl.fieldbyname('CCGB').value='K' then
    a:='XXZLS3.UK_Size';
  if XXZl.fieldbyname('CCGB').value='J' then
    a:='XXZLS3.JPN_Size';
  if XXZl.fieldbyname('CCGB').value='E' then
    a:='XXZLS3.EUR_Size';
  if XXZl.fieldbyname('CCGB').value='F' then
    a:='XXZLS3.FRN_Size';
  if XXZl.fieldbyname('CCGB').value='M' then
    a:='XXZLS3.MX_Size';
  if XXZl.fieldbyname('CCGB').value='U' then
    a:='XXZLS3.US_Size';
  if XXZl.fieldbyname('CCGB').value='O' then
    a:='XXZLS3.OTH_Size';
end;


procedure TINKVN.BA4Click(Sender: TObject);
begin

  XXZL.RequestLive:=true;
  XXZL.CachedUpdates:=true;
  XXZL.Edit;
  BA5.Enabled:=true;
  BA6.Enabled:=true;

end;

procedure TINKVN.BA6Click(Sender: TObject);
begin
  //取消編輯
  XXZL.active:=false;
  XXZL.requestlive:=false;
  XXZL.cachedupdates:=false;
  XXZL.active:=true;
  BA5.Enabled:=false;
  BA6.Enabled:=false;
  //
end;

procedure TINKVN.BA5Click(Sender: TObject);
var i:integer;
begin
  try
    //關閉明細關聯 增加更新速度
    XXZLSYM.Close;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
    VNBWFL.Close;  //  vnbom 用來新增或修改 xxbwfl
    //
    XXZL.First;
    for i:=1 to XXZL.RecordCount do
    begin
      if XXZL.updatestatus=usmodified then
      begin
       //新增
       XXZL.Edit;
       XXZL.FieldByName('UserID').AsString:=main.Edit1.Text;
       XXZL.FieldByName('UserDate').Value:=now();
       if XXZL.FieldByName('QBT').OldValue = Null then
       begin
         XXZLUPD.apply(ukinsert)
       end else
       begin
         XXZLUPD.apply(ukmodify);
       end;
      //
      end;
      XXZL.next;
    end;

    XXZL.active:=false;
    XXZL.requestlive:=false;
    XXZL.cachedupdates:=false;
    XXZL.active:=true;
    BA5.Enabled:=false;
    BA6.Enabled:=false;
    //開啟明細關聯
    XXZLSYM.Open;  // 顯示 vnbom  能新增或修改 xxzlsvn  xxbwfl
    VNBWFL.Open;  //  vnbom 用來新增或修改 xxbwfl
    //
    showmessage('Succeed');
  except
    on E:Exception do
      showmessage('have wrong:'+E.Message);
  end;

end;

procedure TINKVN.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if ((Copy(XXZLSYM.FieldByName('CLBH').AsString,1,1)='M') and (XXZLSYM.FieldByName('XXZLS_CLBH').AsString='') ) then
  begin
   if (DataCol=2) or (DataCol=3) then
   begin
     DBGrid3.canvas.Brush.Color:=clBtnFace;
     DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
end;

procedure TINKVN.Button2Click(Sender: TObject);
begin
  with DDZLQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  m.ZLBH,m.DDBH,d.Pairs as Qty,d.XieXing,d.SheHao,d.Article,');
    sql.add('d.ShipDate,b.CCGB as XXCC,b.XieMing,d.DDZT,d.CCGB as DDCC ,KFZL.KFJC,XXZLSVN.VNBOM,SCZL.SCBH,zlzls2_YM.USERDATE as CalDate,SCZLDate.ADate as PlanDate');
    sql.add('from zlzl m left join DDZL d on m.DDBH=d.DDBH');
    sql.add('left join XXZL b on d.XieXing=b.XieXing and d.SheHao=b.SheHao');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=m.DDBH ');
    sql.add('left join kfzl on KFZl.KFDH=d.KHBH');
    sql.add('left join (select distinct  XieXing ,SheHao, XieXing as VNBOM from XXZLSVN ) XXZLSVN ');
    sql.add('            on XXZLSVN.XieXing=b.XieXing and XXZLSVN.SheHao=b.SheHao ');
    sql.add('left join (select distinct SCBH from SCZL ) SCZL on SCZL.SCBH=m.ZLBH ');
    sql.Add('left join (select distinct ZLBH, USERDATE from zlzls2_YM ) zlzls2_YM on zlzls2_YM.ZLBH=m.DDBH');
    sql.Add('where m.ZLBH like '''+'%'+edit7.Text+'%'+'''');
    if Edit8.Text<>'' then
      sql.add('and d.BUYNO like '''+Edit8.Text+'%'' ');
    if RB1.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,d.ShipDate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if RB2.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    end;
    if ((Checkbox1.Checked=true) and (XXZL.Active=true)) then
    begin
      sql.Add(' and b.xiexing='''+ XXZL.fieldbyname('XieXing').AsString+'''');
      sql.Add(' and b.shehao='''+ XXZL.fieldbyname('Shehao').AsString+'''');
    end;
    sql.add('order by m.ZLBH');
    active:=true;
  end;
end;

procedure TINKVN.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if DDZLQry.FieldByName('CalDate').isnull then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TINKVN.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i,index:integer;
    bookmarklist:tbookmarklistEh;
begin
  try
    DDZLQry.disablecontrols;
    bm:=DDZLQry.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          DDZLQry.gotobookmark(pointer(bookmarklist[i]));
          with VNSpec do
          begin
            active:=false;    //是否有建立越南工廠BOM
            sql.Clear;
            sql.add('select * from XXZLSYM where XieXing=:XieXing and SheHao=:SheHao');
            active:=true;
            if VNSpec.RecordCount=0 then
            begin
              showmessage('No VN BOM. Pls setup VN BOM first.');
              exit;
            end;
            active:=false;   //ZLZLS2是否有資料，決定是否重新展算
            sql.Clear;
            sql.add('select * from ZLZLS2_YM where ZLBH=:ZLBH and XH='+''''+'VN'+'''');
            active:=true;
            if recordcount>0 then
            begin
              if messagedlg('You want to recalucate the usage again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
              begin
                active:=false;
                sql.Clear;
                sql.add('delete ZLZLS2_YM where ZLBH=:ZLBH and XH='+''''+'VN'+''' and BWBH<>''ZZZZ'' ');
                execsql;
              end
              else
                begin
                  abort;
                end;
            end;
            active:=false;      //將該訂單越南BOM資料展算
            sql.clear;
            sql.add('delete ZLZLS2_YM where XH='+''''+'VN'+''''+' and ZLBH=:ZLBH and BWBH<>''ZZZZ''');
            sql.add('insert ZLZLS2_YM ');
            sql.add('select  ZLZL.ZLBH,'+''''+'VN'+''''+' as XH,XXZLSYM.BWBH,XXZLSYM.CSBH,');
            sql.add( ''''+'ZZZZZZZZZZ'+''''+' as MJBH,XXZLSYM.CLBH,CLZL.CLZMLB as ZMLB,');
            sql.add(''''+'ZZZZZZ'+''''+' as SIZE,case when  round(DDZL.Pairs*XXZLSYM.CLSL,1)>=0.1 then round(DDZL.Pairs*XXZLSYM.CLSL,1) else round(DDZL.Pairs*XXZLSYM.CLSL+0.0499,1) end as CLSL,XXZLSYM.CLSL as  USAGE ,');
            sql.add(''''+main.edit1.text+''''+'  as USERID,');
            sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
            sql.add(''''+'2'+''''+' as YN');
            sql.add('from XXZLSYM');
            sql.add('left join ZLZL on ZLZL.ZLBH=:ZLBH');
            sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
            sql.add('left join CLZL on CLZL.CLDH=XXZLSYM.CLBH');
            sql.add('where XXZLSYM.XieXing=:XieXing and XXZLSYM.SheHao=:SheHao');
            sql.add('      and (XXZLSYM.LYCC is null or XXZLSYM.LYCC<>'+''''+'Y'+''''+')');
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

procedure TINKVN.DBGridEh1CellClick(Column: TColumnEh);
begin
  if Column.FieldName='ZLBH' then
  begin
    Detail:=TDetail.create(self);
    Detail.show;
  end;
end;

procedure TINKVN.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TINKVN.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS3;
    Top3Panel.visible:=true;
  end;
end;

end.
