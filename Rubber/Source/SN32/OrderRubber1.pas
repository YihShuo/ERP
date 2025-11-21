unit OrderRubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, Mask, DBCtrls, Buttons,
  ExtCtrls, DBTables, DB,comobj;                                                                                             

type
  TOrderRubber = class(TForm)
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
    TS3: TTabSheet;
    DBGridEh0: TDBGridEh;
    Panel2: TPanel;
    OrderLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel5: TPanel;
    Query1: TQuery;
    DDZLQry: TQuery;
    DDZLSQry: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    UpDDZL: TUpdateSQL;
    UPDDZLS: TUpdateSQL;
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
    Panel9: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    DBMemo1: TDBMemo;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    DBGridEh1: TDBGridEh;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    BC6: TBitBtn;
    BC5: TBitBtn;
    BC4: TBitBtn;
    BC2: TBitBtn;
    BC3: TBitBtn;
    CalBtn: TBitBtn;
    DDZLSQryDDBH: TStringField;
    DDZLSQryCQDH: TStringField;
    DDZLSQryCC: TStringField;
    DDZLSQryQty: TFloatField;
    DDZLSQryPrice: TFloatField;
    DDZLSQryIPrice: TFloatField;
    DDZLSQryQtySC: TFloatField;
    DDZLSQryQtyCH: TFloatField;
    DDZLSQryUSERID: TStringField;
    DDZLSQryUSERDATE: TStringField;
    DDZLSQryQtyLOSS: TIntegerField;
    DDZLSQryxh: TStringField;
    DDZLSQryTotalPrice: TFloatField;
    SKUBtn: TSpeedButton;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DDZLSQryYN: TStringField;
    DDZLS1Qry: TQuery;
    DS3: TDataSource;
    DDZLS1QryXH: TStringField;
    DDZLS1QryCLDH: TStringField;
    DDZLS1QryDescription: TStringField;
    DDZLS1QryKGS: TFloatField;
    DDZLS1QryLOSS: TFloatField;
    btbImEX: TBitBtn;
    Label1: TLabel;
    Edit2: TEdit;
    btnPrice: TBitBtn;
    Query2: TQuery;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridEh0DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure SKUBtnClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DDZLSQryAfterOpen(DataSet: TDataSet);
    procedure BC2Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh0DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CalBtnClick(Sender: TObject);
    procedure btbImEXClick(Sender: TObject);
    procedure btnPriceClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

    { Private declarations }
    procedure InitUpdateSQL();
  public
    ImportRYMode:boolean;
    { Public declarations }
  end;

var
  OrderRubber: TOrderRubber;

implementation
   uses main1, XXZLRuber1, ImportRY1, FunUnit, ImportEX1;
{$R *.dfm}

procedure TOrderRubber.InitUpdateSQL();
begin
  UpDDZL.InsertSQL.Clear;
  UpDDZL.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.DDZL(DDBH, CQDH, ZLBH1, DDLB, XieXing, SheHao, ARTICLE, KHDH, KHPO, DDRQ, SCRQ, DDJQ, Pairs, QtySC,');
  UpDDZL.InsertSQL.Add('QtyCH, Totals, ACCNO, ZLBH, DDZT, CQDH1, USERID, USERDATE, QKBL, ZLBHA)');
  UpDDZL.InsertSQL.Add('VALUES (:DDBH, :CQDH, :ZLBH1, :DDLB, :XieXing, :SheHao, :ARTICLE, :KHDH, :KHPO, :DDRQ, :SCRQ, :DDJQ, :Pairs, :QtySC,');
  UpDDZL.InsertSQL.Add(':QtyCH, :Totals, :ACCNO, :ZLBH, :DDZT, :CQDH1, :USERID, :USERDATE, :QKBL, :ZLBHA)');

  UpDDZL.ModifySQL.Clear;
  UpDDZL.ModifySQL.Add('Update '+main.LIY_DD+'.dbo.DDZL');
  UpDDZL.ModifySQL.Add('Set ZLBH1 =:ZLBH1,DDLB =:DDLB,XieXing =:XieXing,SheHao =:SheHao,Article =:Article,KHDH =:KHDH,KHPO =:KHPO,DDRQ =:DDRQ,');
  UpDDZL.ModifySQL.Add('SCRQ =:SCRQ,DDJQ =:DDJQ,Pairs =:Pairs,QtySC =:QtySC,QtyCH =:QtyCH,Totals =:Totals,ACCNO =:ACCNO,ZLBH =:ZLBH,DDZT =:DDZT,');
  UpDDZL.ModifySQL.Add('CQDH1 =:CQDH1,USERID =:USERID,USERDATE =:USERDATE,QKBL =:QKBL,ZLBHA =:ZLBHA ');
  UpDDZL.ModifySQL.Add('where DDBH=:OLD_DDBH and CQDH=:OLD_CQDH');

  UpDDZL.DeleteSQL.Clear();
  UpDDZL.DeleteSQL.Add('Delete From '+main.LIY_DD+'.dbo.DDZL');
  UpDDZL.DeleteSQL.Add('where DDBH=:OLD_DDBH and CQDH=:OLD_CQDH');

  UPDDZLS.InsertSQL.Clear;
  UPDDZLS.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.DDZLS (DDBH, CQDH, CC, Price , Qty, QtySC, QtyCH, USERID, USERDATE, xh)');
  UPDDZLS.InsertSQL.Add('VALUES (:DDBH, :CQDH, :CC, :Price, :Qty, :QtySC, :QtyCH, :USERID, :USERDATE, :xh)');

  UPDDZLS.ModifySQL.Clear;
  UPDDZLS.ModifySQL.Add('update '+main.LIY_DD+'.dbo.DDZLS');
  UPDDZLS.ModifySQL.Add('set Qty=:Qty,Price=:Price,QtySC=:QtySC,QtyCH=:QtyCH,UserID=:UserID,UserDate=:UserDate');
  UPDDZLS.ModifySQL.Add('where DDBH = :OLD_DDBH and CQDH = :OLD_CQDH and DDBH = :OLD_DDBH and CC = :OLD_CC and xh=:OLD_xh');

  UPDDZLS.DeleteSQL.Clear;
  UPDDZLS.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.DDZLS');
  UPDDZLS.DeleteSQL.Add('where DDBH = :OLD_DDBH and CQDH = :OLD_CQDH and DDBH = :OLD_DDBH and CC = :OLD_CC and xh=:OLD_xh');
end;

procedure TOrderRubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;  
end;

procedure TOrderRubber.FormDestroy(Sender: TObject);
begin
  OrderRubber:=nil;
end;

procedure TOrderRubber.Button1Click(Sender: TObject);
begin
  with DDZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT DDZL.* ,XXZL.YSSM ,kfzl.kfjc ,kfzl.bb ,XXZL.HZS ,XXZL.LOSS ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.DDZL DDZL  ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.XXZL XXZL ON DDZL.XieXing = XXZL.XieXing AND DDZL.SheHao = XXZL.SheHao AND DDZL.CQDH=XXZL.CQDH  ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.kfzl kfzl ON DDZL.KHDH = kfzl.kfdh  ');
    SQL.Add('where (( DDZL.DDBH like  '''+Edit1.Text+'%'') And ( DDZL.CQDH =  '''+main.Edit2.Text+''') ) ');
    SQL.add('and DDZL.DDRQ >= '+''''+Formatdatetime('yyyyMMdd',DTP1.Date)+'''');
    SQL.add('and DDZL.DDRQ <= '+''''+Formatdatetime('yyyyMMdd',DTP2.Date)+'''');
    if edit2.Text<>'' then
      sql.Add('and DDZL.ZLBH1 like  '''+Edit2.Text+'%''');
    if Check.Checked=true then
    SQL.Add('and DDZL.USERID='''+main.Edit1.Text+''' ');
    sql.Add('order by ddzl.ddbh');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //DDZLSQry.Active:=true;
  //DDZLS1Qry.Active:=true;
  with DDZLSQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select DDZLS.*,DDZLS.Qty*DDZLS.Price as TotalPrice,''1'' as YN');
    sql.Add('From '+main.LIY_DD+'.dbo.DDZLS DDZLS');
    sql.Add('WHERE DDZLS.DDBH=:DDBH AND DDZLS.CQDH=:CQDH');
    sql.Add('ORDER BY DDBH,CQDH,CC,XH');
    active:=true;
  end;
  with DDZLS1Qry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select DDZLS1.XH, DDZLS1.CLDH, clzl.ywpm as Description, DDZLS1.KGS, DDZLS1.LOSS');
    sql.Add('from '+main.LIY_DD+'.dbo.DDZLS1 DDZLS1 left join '+main.LIY_DD+'.dbo.clzl clzl');
    sql.Add('on DDZLS1.cldh=clzl.cldh');
    sql.Add('where DDZLS1.DDBH=:DDBH and DDZLS1.CQDH=:CQDH');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bbt6.Enabled:=true;
  btbImEX.Enabled:=true;
end;

procedure TOrderRubber.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TOrderRubber.DBGridEh0DblClick(Sender: TObject);
begin
  PC1.TabIndex:=1;
end;

procedure TOrderRubber.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
    i:integer;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=now;
  DTP1.Date:=DTP1.Date-180;
  InitUpdateSQL();
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select gsdh from  bgszl ');
    sql.add('where DFL in (select DFL from Bgszl where GSDH='+''''+main.edit2.Text+''')');
    sql.add('and sfl=''PD''');
    sql.add('order by gsdh ');
    active:=true;
    DBComboBox2.Items.Clear;
    for i:=1 to recordcount do
    begin
        DBComboBox2.Items.add(fieldbyname('gsdh').asstring);
        next;
    end;
    active:=false;
  end;
end;

procedure TOrderRubber.BB2Click(Sender: TObject);
begin     
  //
  PC1.TabIndex:=1;
  if DDZLSQry.RequestLive then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;

  with DDZLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('CQDH').Value:=main.Edit2.Text;
    FieldByName('DDRQ').Value:=FormatDateTime('yyyyMMdd',Date());
    FieldByName('QKBL').Value:='100';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;  

procedure TOrderRubber.SKUBtnClick(Sender: TObject);
begin
  XXZLRuber:=TXXZLRuber.Create(self);
  XXZLRuber.ShowModal();
  XXZLRuber.Free;
end;

procedure TOrderRubber.bbt6Click(Sender: TObject);
begin
  PC1.ActivePageIndex:=1;
  ImportRY:=TImportRY.Create(self);
  ImportRY.ShowModal();
  ImportRY.Free;
end;

procedure TOrderRubber.DDZLSQryAfterOpen(DataSet: TDataSet);
begin
  if DDZLQry.RecordCount>0 then
  begin
    BC2.Enabled:=true;
    BC3.Enabled:=true;
    BC4.Enabled:=true;
    btnPrice.Enabled:=true;
  end else
  begin
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
    btnPrice.Enabled:=false;
  end;

end;

procedure TOrderRubber.BC2Click(Sender: TObject);
begin
  //
  with DDZLSQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('XH').Value:='T';
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
  //
end;

procedure TOrderRubber.BC5Click(Sender: TObject);
var i:integer;
begin

  try
    DDZLSQry.first;
    for i:=1 to DDZLSQry.RecordCount do
      begin
        case DDZLSQry.updatestatus of
          usinserted:
            begin
                DDZLSQry.edit;
                DDZLSQry.fieldbyname('DDBH').Value:=DDZLQry.fieldbyname('DDBH').Value;
                DDZLSQry.FieldByName('CQDH').Value:=main.edit2.text;
                DDZLSQry.FieldByName('userID').Value:=main.edit1.text;
                DDZLSQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                UPDDZLS.apply(ukinsert);
            end;
          usmodified:
             begin
               if DDZLSQry.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                   if DDZLSQry.fieldbyname('YN').value='0'then
                   begin
                    UPDDZLS.apply(ukdelete);
                   end else
                   begin
                     DDZLSQry.edit;
                     DDZLSQry.FieldByName('userID').Value:=main.edit1.text;
                     DDZLSQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                     UPDDZLS.apply(ukmodify);
                  end;
               end;
              end;
        end;
        DDZLSQry.next;
      end;
      
  DDZLSQry.active:=false;
  DDZLSQry.cachedupdates:=false;
  DDZLSQry.requestlive:=false;
  DDZLSQry.DataSource:=DS1;
  DDZLSQry.active:=true;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TOrderRubber.BC4Click(Sender: TObject);
begin

  with DDZLSQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TOrderRubber.BC3Click(Sender: TObject);
begin

  with DDZLSQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;

  BC5.Enabled:=true;
  BC6.Enabled:=true;

end;

procedure TOrderRubber.BB3Click(Sender: TObject);
begin
  PC1.TabIndex:=0;
  if DDZLSQry.RequestLive then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;
  if DDZLsQry.RecordCount=0 then
  begin
    with DDZLQry do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
     showmessage('Pls delete the Size Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TOrderRubber.BB4Click(Sender: TObject);
begin
  PC1.TabIndex:=1;
  if DDZLSQry.RequestLive then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;
  with DDZLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TOrderRubber.BC6Click(Sender: TObject);
begin

  with DDZLSQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    DataSource:=DS1;    
    active:=true;
  end;
  BC5.Enabled:=false;
  BC6.Enabled:=false;

end;

procedure TOrderRubber.BB6Click(Sender: TObject);
begin

  with DDZLQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;

end;

procedure TOrderRubber.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  if DDZLQry.FieldByName('SCRQ').AsString='' then
  begin
    Showmessage('Please input Scheduler Production Date');
    abort;
  end;
  try
    DDZLQry.first;
    for i:=1 to DDZLQry.RecordCount do
      begin
        case DDZLQry.updatestatus of
          usinserted:
            begin
                DDZLQry.edit;
                DDZLQry.FieldByName('CQDH').Value:=main.edit2.text;
                DDZLQry.FieldByName('userID').Value:=main.edit1.text;
                DDZLQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                UpDDZL.apply(ukinsert);

           end;
          usmodified:
             begin
               if DDZLQry.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                   if DDZLQry.fieldbyname('YN').value='0'then
                   begin
                    with Query1 do
                    begin
                     Active:=false;
                     SQL.Clear;
                     SQL.Add('Delete from '+main.LIY_DD+'.dbo.DDZLS1 where CQDH='''+main.edit2.text+''' and DDBH='''+DDZLQry.FieldByName('DDBH').Value+''' ');
                     SQL.Add('Delete from '+main.LIY_DD+'.dbo.DDZLS2 where CQDH='''+main.edit2.text+''' and DDBH='''+DDZLQry.FieldByName('DDBH').Value+''' ');
                     SQL.Add('Delete from '+main.LIY_DD+'.dbo.ZLZLS3 where CQDH='''+main.edit2.text+''' and DDBH='''+DDZLQry.FieldByName('DDBH').Value+''' ');
                     ExecSQL();
                    end;
                    //刪除
                    UpDDZL.apply(ukdelete);
                   end else
                   begin
                     DDZLQry.edit;
                     DDZLQry.FieldByName('userID').Value:=main.edit1.text;
                     DDZLQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                     UpDDZL.apply(ukmodify);
                  end;
               end;
              end;
        end;
        DDZLQry.next;
      end;
  DDZLQry.active:=false;
  DDZLQry.cachedupdates:=false;
  DDZLQry.requestlive:=false;
  DDZLQry.active:=true;
  //
  if ImportRYMode=true then
  begin
    BC5.Click;
    ImportRYMode:=false;
  end;
  //
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TOrderRubber.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DDZLSQry.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderRubber.DBGridEh0DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DDZLQry.FieldByName('YN').value='0' then
  begin
    DBGridEh0.canvas.font.color:=clred;
    DBGridEh0.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderRubber.CalBtnClick(Sender: TObject);
begin
  //20201021 lock with DDZL.YN=5
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.DDZL ');
    sql.Add('where DDBH='''+DDZLQry.fieldbyname('DDBH').Value+''' and CQDH='''+main.Edit2.Text+''' and YN=''5''' );
    active:=true;
  end;
  if query1.RecordCount>0 then
  begin
    showmessage('RY '+DDZLQry.fieldbyname('DDBH').Value+' bi khoa. Khong the tinh lai');
    abort;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Delete from '+main.LIY_DD+'.dbo.DDZLS1 where DDBH='''+DDZLQry.fieldbyname('DDBH').Value+''' and CQDH='''+main.Edit2.Text+'''');
    sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZLS1');
    sql.Add('select '''+DDZLQry.fieldbyname('DDBH').Value+''',CQDH,XH,cldh,YSSM,ROUND(IsNull(TKG,0),2) as KGS,0.00,'''+main.Edit1.Text+''' as UserID,');
    sql.Add(' '''+formatdatetime('yyyymmdd',now)+''' as UserDate,''00'' as LB from (');
    sql.Add('select XXZLS.*,');
    sql.Add('Case when XXZLS.XH=''A'' then CLZL_TKG.A');
    sql.Add('     when XXZLS.XH=''B'' then CLZL_TKG.B');
    sql.Add('     when XXZLS.XH=''C'' then CLZL_TKG.C');
    sql.Add('     when XXZLS.XH=''D'' then CLZL_TKG.D');
    sql.Add('     when XXZLS.XH=''E'' then CLZL_TKG.E');
    sql.Add('     when XXZLS.XH=''F'' then CLZL_TKG.F');
    sql.Add('     when XXZLS.XH=''G'' then CLZL_TKG.G');
    sql.Add('     when XXZLS.XH=''H'' then CLZL_TKG.H');
    sql.Add('     when XXZLS.XH=''I'' then CLZL_TKG.I');
    sql.Add('     when XXZLS.XH=''J'' then CLZL_TKG.J');
    sql.Add('     when XXZLS.XH=''K'' then CLZL_TKG.K');
    sql.Add('     when XXZLS.XH=''L'' then CLZL_TKG.L');
    sql.Add('     when XXZLS.XH=''M'' then CLZL_TKG.M');
    sql.Add('     when XXZLS.XH=''N'' then CLZL_TKG.N');
    sql.Add('     when XXZLS.XH=''O'' then CLZL_TKG.O end as TKG,KCLZL.TotKgs');
    sql.Add('from '+main.LIY_DD+'.dbo.XXZLS XXZLS');
    sql.Add('left join (');
    sql.Add('select XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CQDH,');
    sql.Add('Sum(IsNull(G01,0)*DDZLS.Qty)/1000  as A,');
    sql.Add('Sum(IsNull(G02,0)*DDZLS.Qty)/1000   as B,');
    sql.Add('Sum(IsNull(G03,0)*DDZLS.Qty)/1000   as C,');
    sql.Add('Sum(IsNull(G04,0)*DDZLS.Qty)/1000   as D,');
    sql.Add('Sum(IsNull(G05,0)*DDZLS.Qty)/1000   as E,');
    sql.Add('Sum(IsNull(G06,0)*DDZLS.Qty)/1000   as F,');
    sql.Add('Sum(IsNull(G07,0)*DDZLS.Qty)/1000   as G,');
    sql.Add('Sum(IsNull(G08,0)*DDZLS.Qty)/1000   as H,');
    sql.Add('Sum(IsNull(G09,0)*DDZLS.Qty)/1000   as I,');
    sql.Add('Sum(IsNull(G10,0)*DDZLS.Qty)/1000   as J,');
    sql.Add('Sum(IsNull(G11,0)*DDZLS.Qty)/1000   as K,');
    sql.Add('Sum(IsNull(G12,0)*DDZLS.Qty)/1000   as L,');
    sql.Add('Sum(IsNull(G13,0)*DDZLS.Qty)/1000   as M,');
    sql.Add('Sum(IsNull(G14,0)*DDZLS.Qty)/1000   as N,');
    sql.Add('Sum(IsNull(G15,0)*DDZLS.Qty)/1000   as O');
    sql.Add('from '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1');
    sql.Add('left join '+main.LIY_DD+'.dbo.DDZLS DDZLS on DDZLS.CC=XXZLS1.CC and DDZLS.DDBH='''+DDZLQry.fieldbyname('DDBH').Value+''' and DDZLS.CQDH='''+main.Edit2.Text+''' ');
    sql.Add('where XXZLS1.XieXing='''+DDZLQry.fieldbyname('XieXing').Value+''' and XXZLS1.SheHao='''+DDZLQry.fieldbyname('Shehao').Value+'''');
    sql.Add('and XXZLS1.CQDH='''+main.Edit2.Text+'''  Group by XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CQDH');
    sql.Add(')  CLZL_TKG on CLZL_TKG.XieXing=XXZLS.XieXing and CLZL_TKG.SheHao=XXZLS.SheHao and CLZL_TKG.CQDH=XXZLS.CQDH');
    sql.Add('left join '+main.LIY_DD+'.dbo.CLZL KCLZL on KCLZL.CLDH=XXZLS.CLDH');
    sql.Add('where XXZLS.XieXing='''+DDZLQry.fieldbyname('XieXing').Value+''' and XXZLS.SheHao='''+DDZLQry.fieldbyname('Shehao').Value+'''');
    sql.Add('and XXZLS.CQDH='''+main.Edit2.Text+'''  and IsNull(XXZLS.CLDH,'''')<>''''');
    sql.Add(') DDZLS1');
    execsql;
    active:=false;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Delete from '+main.LIY_DD+'.dbo.DDZLS2 where DDBH='''+DDZLQry.fieldbyname('DDBH').Value+''' and CQDH='''+main.Edit2.Text+''' and LB=''00''');
    sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZLS2');
    sql.Add('select '''+DDZLQry.fieldbyname('DDBH').Value+''',CQDH,CLDH,Round(SUM(TKG),2) as KGS,0,3,NULL,'''+main.Edit1.Text+''',');
    sql.Add(''''+formatdatetime('yyyymmdd',now)+''',''00'' from (');
    sql.Add('select XXZLS.*,');
    sql.Add('Case when XXZLS.XH=''A'' then CLZL_TKG.A');
    sql.Add('when XXZLS.XH=''B'' then CLZL_TKG.B');
    sql.Add('when XXZLS.XH=''C'' then CLZL_TKG.C');
    sql.Add('when XXZLS.XH=''D'' then CLZL_TKG.D');
    sql.Add('when XXZLS.XH=''E'' then CLZL_TKG.E');
    sql.Add('when XXZLS.XH=''F'' then CLZL_TKG.F');
    sql.Add('when XXZLS.XH=''G'' then CLZL_TKG.G');
    sql.Add('when XXZLS.XH=''H'' then CLZL_TKG.H');
    sql.Add('when XXZLS.XH=''I'' then CLZL_TKG.I');
    sql.Add('when XXZLS.XH=''J'' then CLZL_TKG.J');
    sql.Add('when XXZLS.XH=''K'' then CLZL_TKG.K');
    sql.Add('when XXZLS.XH=''L'' then CLZL_TKG.L');
    sql.Add('when XXZLS.XH=''M'' then CLZL_TKG.M');
    sql.Add('when XXZLS.XH=''N'' then CLZL_TKG.N');
    sql.Add('when XXZLS.XH=''O'' then CLZL_TKG.O end as TKG,KCLZL.TotKgs');
    sql.Add('from '+main.LIY_DD+'.dbo.XXZLS XXZLS');
    sql.Add('left join');
    sql.Add('(select XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CQDH,Sum(IsNull(G01,0)*DDZLS.Qty)/1000  as A,');
    sql.Add('Sum(IsNull(G02,0)*DDZLS.Qty)/1000   as B,');
    sql.Add('Sum(IsNull(G03,0)*DDZLS.Qty)/1000   as C,');
    sql.Add('Sum(IsNull(G04,0)*DDZLS.Qty)/1000   as D,');
    sql.Add('Sum(IsNull(G05,0)*DDZLS.Qty)/1000   as E,');
    sql.Add('Sum(IsNull(G06,0)*DDZLS.Qty)/1000   as F,');
    sql.Add('Sum(IsNull(G07,0)*DDZLS.Qty)/1000   as G,');
    sql.Add('Sum(IsNull(G08,0)*DDZLS.Qty)/1000   as H,');
    sql.Add('Sum(IsNull(G09,0)*DDZLS.Qty)/1000   as I,');
    sql.Add('Sum(IsNull(G10,0)*DDZLS.Qty)/1000   as J,');
    sql.Add('Sum(IsNull(G11,0)*DDZLS.Qty)/1000   as K,');
    sql.Add('Sum(IsNull(G12,0)*DDZLS.Qty)/1000   as L,');
    sql.Add('Sum(IsNull(G13,0)*DDZLS.Qty)/1000   as M,');
    sql.Add('Sum(IsNull(G14,0)*DDZLS.Qty)/1000   as N,');
    sql.Add('Sum(IsNull(G15,0)*DDZLS.Qty)/1000   as O');
    sql.Add('from '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1');
    sql.Add('left join '+main.LIY_DD+'.dbo.DDZLS DDZLS on DDZLS.CC=XXZLS1.CC and DDZLS.DDBH='''+DDZLQry.fieldbyname('DDBH').Value+'''');
    //20170802
    sql.Add('and DDZLS.CQDH='''+main.Edit2.Text+'''');
    //
    sql.Add('where XXZLS1.XieXing='''+DDZLQry.fieldbyname('XieXing').Value+''' and XXZLS1.SheHao='''+DDZLQry.fieldbyname('Shehao').Value+'''');
    sql.Add('and XXZLS1.CQDH='''+main.Edit2.Text+'''   Group by XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CQDH');
    sql.Add(')  CLZL_TKG on CLZL_TKG.XieXing=XXZLS.XieXing and CLZL_TKG.SheHao=XXZLS.SheHao and CLZL_TKG.CQDH=XXZLS.CQDH');
    sql.Add('left join '+main.LIY_DD+'.dbo.CLZL KCLZL on KCLZL.CLDH=XXZLS.CLDH');
    sql.Add('where XXZLS.XieXing='''+DDZLQry.fieldbyname('XieXing').Value+''' and XXZLS.SheHao='''+DDZLQry.fieldbyname('Shehao').Value+'''');
    sql.Add('and XXZLS.CQDH='''+main.Edit2.Text+''' and IsNull(XXZLS.CLDH,'''')<>''''');
    sql.Add(') DDZLS2 Group by DDZLS2.CLDH,DDZLS2.CQDH');
    execsql;
    active:=false;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Delete '+main.LIY_DD+'.dbo.ZLZLS3 where CQDH='''+main.Edit2.Text+''' and DDBH = '''+DDZLQry.fieldbyname('DDBH').Value+'''');
    sql.Add('Insert into '+main.LIY_DD+'.dbo.ZLZLS3');
    sql.Add('SELECT DDZLS2.CLDH,CLZLSL.cldhz,DDZL.DDBH,DDZL.ZLBH1,SUM((DDZLS2.KGS / CLZL.TOTKGS)* CLZLSL.CLYL) AS TCLYL,DDZL.CQDH,');
    sql.Add(''''+main.Edit1.Text+''' as UserID,'''+formatdatetime('yyyymmdd hh:mm:ss',now)+''' as UserDate');
    sql.Add('FROM '+main.LIY_DD+'.dbo.DDZL DDZL  LEFT JOIN '+main.LIY_DD+'.dbo.DDZLS2 DDZLS2 ON DDZL.DDBH = DDZLS2.DDBH AND  DDZL.CQDH = DDZLS2.CQDH');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZLSL CLZLSL ON DDZLS2.cldh = CLZLSL.cldh');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON DDZLS2.cldh = CLZL.cldh');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZLZ ON CLZLSL.cldhz = CLZLZ.cldh');
    sql.Add('where DDZL.CQDH='''+main.Edit2.Text+''' and DDZL.DDBH = '''+DDZLQry.fieldbyname('DDBH').Value+'''');
    sql.Add('Group by DDZLS2.CLDH,CLZLSL.cldhz,DDZL.DDBH,DDZL.ZLBH1,DDZL.CQDH');
    execsql;
    active:=false;
  end;
  DDZLS1Qry.Active:=false;
  DDZLS1Qry.Active:=true;
  showmessage('Calculate finish');
end;

procedure TOrderRubber.btbImEXClick(Sender: TObject);
begin
  PC1.ActivePageIndex:=1;
  ImportEX:=TImportEX.Create(self);
  ImportEX.ShowModal();
  ImportEX.Free;
end;

procedure TOrderRubber.btnPriceClick(Sender: TObject);
var price : string;
begin
  price:=inputbox('Please Input Price','Price:','');
  with DDZLSQry do
  begin
    First;
    requestlive:=true;
    cachedupdates:=true;
    while not Eof do
    begin
      edit;
      FieldByName('Price').AsString:= price;
      Next;
    end;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TOrderRubber.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  DDZLQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   DDZLQry.fieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=DDZLQry.fields[i].FieldName;
        end;
        DDZLQry.First;
        j:=2;
        while   not   DDZLQry.Eof   do
        begin
          for   i:=0   to   DDZLQry.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=DDZLQry.Fields[i].Value;
          end;
          DDZLQry.Next;
          inc(j);
        end;

      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.
