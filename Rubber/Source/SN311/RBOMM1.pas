unit RBOMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, DBTables, GridsEh,
  DBGridEh, DBCtrls, Mask;

type
  TRBOMM = class(TForm)
    Panel1: TPanel;
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
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    OrderLabel: TLabel;
    Label1: TLabel;
    XieXingEdit: TEdit;
    Button1: TButton;
    ArticleEdit: TEdit;
    DBGridEh0: TDBGridEh;
    XXZLQry: TQuery;
    UpXXZL: TUpdateSQL;
    DS1: TDataSource;
    XXZLQryXieXing: TStringField;
    XXZLQrySheHao: TStringField;
    XXZLQryCQDH: TStringField;
    XXZLQryYSSM: TStringField;
    XXZLQryARTICLE: TStringField;
    XXZLQrymjbh: TStringField;
    XXZLQrylbdh: TStringField;
    XXZLQryKHDH: TStringField;
    XXZLQryHZS: TFloatField;
    XXZLQryLOSS: TFloatField;
    XXZLQryUSERID: TStringField;
    XXZLQryUSERDATE: TStringField;
    XXZLQryJBYX: TIntegerField;
    XXZLQryJBMS: TIntegerField;
    XXZLQryCCBT: TIntegerField;
    Panel5: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit17: TDBEdit;
    CalBtn: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    BC6: TBitBtn;
    BC5: TBitBtn;
    BC4: TBitBtn;
    BC2: TBitBtn;
    BC3: TBitBtn;
    btnSize: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    XXZLQryKFJC: TStringField;
    KHDHBtn: TSpeedButton;
    XXZLS1Qry: TQuery;
    XXZLSQry: TQuery;
    DS2: TDataSource;
    DS3: TDataSource;
    XXZLSQryXieXing: TStringField;
    XXZLSQrySheHao: TStringField;
    XXZLSQryCQDH: TStringField;
    XXZLSQryxh: TStringField;
    XXZLSQrycldh: TStringField;
    XXZLSQryYSSM: TStringField;
    XXZLSQryUSERID: TStringField;
    XXZLSQryUSERDATE: TStringField;
    XXZLSQryLB: TStringField;
    XXZLSQryHZS: TFloatField;
    XXZLSQryDZ: TFloatField;
    XXZLSQryRS: TFloatField;
    XXZLSQryYWPM: TStringField;
    UpXXZLS: TUpdateSQL;
    UpXXZLS1: TUpdateSQL;
    TempQry: TQuery;
    XXZLQryYN: TIntegerField;
    XXZLSQryYN: TIntegerField;
    XXZLS1QryXieXing: TStringField;
    XXZLS1QrySheHao: TStringField;
    XXZLS1QryCQDH: TStringField;
    XXZLS1QryCC: TStringField;
    XXZLS1QryG01: TFloatField;
    XXZLS1QryG02: TFloatField;
    XXZLS1QryG03: TFloatField;
    XXZLS1QryG04: TFloatField;
    XXZLS1QryG05: TFloatField;
    XXZLS1QryG06: TFloatField;
    XXZLS1QryG07: TFloatField;
    XXZLS1QryG08: TFloatField;
    XXZLS1QryG09: TFloatField;
    XXZLS1QryG10: TFloatField;
    XXZLS1QryG11: TFloatField;
    XXZLS1QryG12: TFloatField;
    XXZLS1QryG13: TFloatField;
    XXZLS1QryG14: TFloatField;
    XXZLS1QryG15: TFloatField;
    XXZLS1Qrymjsl: TFloatField;
    XXZLS1QryUSERID: TStringField;
    XXZLS1QryUSERDATE: TStringField;
    XXZLS1QryYN: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure XXZLQryAfterOpen(DataSet: TDataSet);
    procedure KHDHBtnClick(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh0DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnSizeClick(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure XXZLS1QryAfterOpen(DataSet: TDataSet);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
  private
    { Private declarations }
    procedure SaveXXZLS();
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  RBOMM: TRBOMM;

implementation
   uses main1, RBOMM_KFZL1, RBOMM_CLZL1, FunUnit;
{$R *.dfm}

procedure TRBOMM.InitUpdateSQL();
begin
  UpXXZL.InsertSQL.Clear;
  UpXXZL.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.XXZL (XieXing, SheHao, CQDH, YSSM, ARTICLE, MJBH, LBDH, KHDH, HZS, LOSS, USERID, USERDATE, JBYX, JBMS, CCBT )');
  UpXXZL.InsertSQL.Add('VALUES (:XieXing, :SheHao, :CQDH, :YSSM, :ARTICLE, :MJBH, :LBDH, :KHDH, :HZS, :LOSS, :USERID, :USERDATE, :JBYX, :JBMS, :CCBT)');

  UpXXZL.ModifySQL.Clear;
  UpXXZL.ModifySQL.Add('Update '+main.LIY_DD+'.dbo.XXZL');
  UpXXZL.ModifySQL.Add('Set YSSM =:YSSM, ARTICLE =:ARTICLE, MJBH =:MJBH, LBDH =:LBDH, KHDH =:KHDH, HZS =:HZS, LOSS =:LOSS, USERID =:USERID,');
  UpXXZL.ModifySQL.Add('USERDATE =:USERDATE, JBYX =:JBYX, JBMS =:JBMS ,CCBT =:CCBT  ');
  UpXXZL.ModifySQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH  ');

  UpXXZL.DeleteSQL.Clear();
  UpXXZL.DeleteSQL.Add('Delete From '+main.LIY_DD+'.dbo.XXZL');
  UpXXZL.DeleteSQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH  ');
  //
  UpXXZLS.InsertSQL.Clear;
  UpXXZLS.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.XXZLS (XieXing, SheHao, CQDH, XH, CLDH, YSSM, USERID, USERDATE, LB, HZS, DZ, RS) ');
  UpXXZLS.InsertSQL.Add('VALUES (:XieXing, :SheHao, :CQDH, :XH, :CLDH, :YSSM, :USERID, :USERDATE, :LB, :HZS, :DZ, :RS)');

  UpXXZLS.ModifySQL.Clear;
  UpXXZLS.ModifySQL.Add('Update '+main.LIY_DD+'.dbo.XXZLS');
  UpXXZLS.ModifySQL.Add('Set CLDH =:CLDH, YSSM =:YSSM, USERID =:USERID,');
  UpXXZLS.ModifySQL.Add('USERDATE =:USERDATE, LB =:LB, HZS =:HZS ,DZ =:DZ, RS=:RS  ');
  UpXXZLS.ModifySQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH and XH=:OLD_XH  ');

  UpXXZLS.DeleteSQL.Clear();
  UpXXZLS.DeleteSQL.Add('Delete From '+main.LIY_DD+'.dbo.XXZLS');
  UpXXZLS.DeleteSQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH and XH=:OLD_XH  ');
  //
  UpXXZLS1.InsertSQL.Clear;
  UpXXZLS1.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.XXZLS1 (XieXing, SheHao, CQDH, CC, G01, G02, G03, G04, G05, G06, G07, G08, G09, G10, G11, G12, G13, G14, G15, mjsl, USERID, USERDATE) ');
  UpXXZLS1.InsertSQL.Add('VALUES (:XieXing, :SheHao, :CQDH, :CC, :G01, :G02, :G03, :G04, :G05, :G06, :G07, :G08, :G09, :G10, :G11, :G12, :G13, :G14, :G15, :mjsl, :USERID, :USERDATE)');

  UpXXZLS1.ModifySQL.Clear;
  UpXXZLS1.ModifySQL.Add('Update '+main.LIY_DD+'.dbo.XXZLS1');
  UpXXZLS1.ModifySQL.Add('Set G01 =:G01, G02 =:G02, G03 =:G03, G04 =:G04, G05 =:G05, G06 =:G06, G07 =:G07, G08 =:G08, G09 =:G09, G10 =:G10, G11 =:G11, G12 =:G12, G13 =:G13, G14 =:G14, G15 =:G15');
  UpXXZLS1.ModifySQL.Add('    ,mjsl=:mjsl, USERID =:USERID, USERDATE =:USERDATE ');
  UpXXZLS1.ModifySQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH and CC=:OLD_CC  ');

  UpXXZLS1.DeleteSQL.Clear();
  UpXXZLS1.DeleteSQL.Add('Delete From '+main.LIY_DD+'.dbo.XXZLS1');
  UpXXZLS1.DeleteSQL.Add('where XieXing=:OLD_XieXing and SheHao=:OLD_SheHao and CQDH=:OLD_CQDH and CC=:OLD_CC  ');

end;

procedure TRBOMM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRBOMM.FormDestroy(Sender: TObject);
begin
  RBOMM:=nil;
end;

procedure TRBOMM.Button1Click(Sender: TObject);
begin
  //
  with XXZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT XXZL.*,KFZL.KFJC,1 as YN  ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.XXZL XXZL ');
    SQL.Add('Left join '+main.LIY_DD+'.dbo.KFZL KFZL on KFZL.kfdh=XXZL.KHDH  ');
    SQL.Add('where XXZL.CQDH='''+main.Edit2.Text+''' ');
    if XieXingEdit.Text<>'' then
    SQL.Add('  and XXZL.XieXing like '''+XieXingEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add('  and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
    SQL.Add('ORDER BY XXZL.XieXing ,XXZL.SheHao ');
    Active:=true;
  end;
  //
  with XXZLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT XXZLS.*,CLZL.YWPM,1 as YN ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.XXZLS XXZLS ');
    SQL.Add('Left join '+main.LIY_DD+'.dbo.CLZL CLZL on CLZL.CLDH=XXZLS.CLDH ');
    SQL.Add('where XXZLS.CQDH=:CQDH and XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ');
    SQL.Add('ORDER BY XXZLS.XH');
  end;
  //
  with XXZLS1Qry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select *,1 as YN');
    SQL.Add('from '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1');
    SQL.Add('where XXZLS1.CQDH=:CQDH and XXZLS1.XieXing=:XieXing and XXZLS1.SheHao=:SheHao');
  end;
  XXZLSQry.Active:=true;
  XXZLS1Qry.Active:=true;
end;

procedure TRBOMM.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
end;

procedure TRBOMM.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TRBOMM.XXZLQryAfterOpen(DataSet: TDataSet);
begin
  //
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BtnSize.Enabled:=true;
  //
end;

procedure TRBOMM.KHDHBtnClick(Sender: TObject);
begin
  RBOMM_KFZL:=TRBOMM_KFZL.Create(self);
  RBOMM_KFZL.Show();
end;

procedure TRBOMM.BB2Click(Sender: TObject);
begin
  PC1.TabIndex:=1;
  if (XXZLSQry.RequestLive or XXZLS1Qry.RequestLive) then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;
  with XXZLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('CQDH').Value:=main.Edit2.Text;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  KHDHBtn.Enabled:=true;
  //
end;

procedure TRBOMM.BB3Click(Sender: TObject);
begin
  PC1.TabIndex:=0;
  if (XXZLSQry.RequestLive or XXZLS1Qry.RequestLive) then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;
  if XXZLS1Qry.RecordCount=0 then
  begin
    with XXZLQry do
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

procedure TRBOMM.BB4Click(Sender: TObject);
begin
  PC1.TabIndex:=1;
  if XXZLSQry.RequestLive then
  begin
    showmessage('Pls save Size data first.');
    abort;
  end;
  with XXZLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //設定部位配方料號
  if XXZLSQry.RecordCount>0 then
  begin
    with XXZLSQry do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    DBGridEh1.Columns[2].ButtonStyle:=cbsEllipsis;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  KHDHBtn.Enabled:=true;
end;

procedure TRBOMM.BB6Click(Sender: TObject);
begin
  with XXZLQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  if XXZLSQry.RequestLive=true then
  begin
    with XXZLSQry do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    DBGridEh1.Columns[2].ButtonStyle:=cbsNone;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  KHDHBtn.Enabled:=false;
end;

procedure TRBOMM.SaveXXZLS();
var i:integer;
begin
  try
    XXZLSQry.First;
    for i:=1 to XXZLSQry.RecordCount do
    begin
        case XXZLSQry.updatestatus of
          usmodified:
          begin
             XXZLSQry.edit;
             XXZLSQry.FieldByName('userID').Value:=main.edit1.text;
             XXZLSQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
             UpXXZLS.apply(ukmodify);
          end;
        end;
        XXZLSQry.Next;
    end;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;
//
procedure TRBOMM.BB5Click(Sender: TObject);
var i:integer;
    XieXing,SheHao:String;
begin

  try
    SaveXXZLS(); //XXZLS 部位檢查更新
    XXZLQry.Post;
    XieXing:=XXZLQry.FieldByName('XieXing').AsString;
    SheHao:=XXZLQry.FieldByName('SheHao').AsString;
    case XXZLQry.updatestatus of
      usinserted:
       begin
          //
          if ((XXZLQry.FieldByName('XieXing').AsString='') or (XXZLQry.FieldByName('SheHao').AsString='')) then
          begin
            Showmessage('Please input XieXing & SheHao ');
            abort;
          end;
          XXZLQry.edit;
          XXZLQry.FieldByName('CQDH').Value:=main.edit2.text;
          XXZLQry.FieldByName('userID').Value:=main.edit1.text;
          XXZLQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
          UpXXZL.apply(ukinsert);
       end;
      usmodified:
       begin
           if XXZLQry.FieldByName('USERID').value<>main.Edit1.Text then
           begin
               showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
           end else
           begin
               if XXZLQry.fieldbyname('YN').value='0'then
               begin
                 with TempQry do
                 begin
                   Active:=false;
                   SQL.Clear;
                   SQL.Add('Delete from '+main.LIY_DD+'.dbo.XXZLS where CQDH='''+main.edit2.text+''' and XieXing='''+XXZLQry.FieldByName('XieXing').Value+''' and SheHao='''+XXZLQry.FieldByName('SheHao').Value+''' ');
                   SQL.Add('Delete from '+main.LIY_DD+'.dbo.XXZLS1 where CQDH='''+main.edit2.text+''' and XieXing='''+XXZLQry.FieldByName('XieXing').Value+''' and SheHao='''+XXZLQry.FieldByName('SheHao').Value+''' ');
                   ExecSQL();
                 end;
                 //刪除
                 UpXXZL.apply(ukdelete);
               end else
               begin
                 XXZLQry.edit;
                 XXZLQry.FieldByName('userID').Value:=main.edit1.text;
                 XXZLQry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                 UpXXZL.apply(ukmodify);
               end;
           end;
       end;
    end;
    //
    XXZLQry.active:=false;
    XXZLQry.cachedupdates:=false;
    XXZLQry.requestlive:=false;
    XXZLQry.active:=true;
    if XXZLSQry.RequestLive=true then
    begin
      with XXZLSQry do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
      DBGridEh1.Columns[2].ButtonStyle:=cbsNone;
    end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    KHDHBtn.Enabled:=false;
    //
    XXZLQry.Locate('XieXing;SheHao',vararrayof([XieXing,SheHao]), []);
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
  //
end;

procedure TRBOMM.DBGridEh0DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if XXZLQry.FieldByName('YN').value='0' then
  begin
    DBGridEh0.canvas.font.color:=clred;
    DBGridEh0.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TRBOMM.btnSizeClick(Sender: TObject);
var XHArray:array [0..14] of string;
    i:integer;
begin

  XHArray[0]:='A'; XHArray[1]:='B'; XHArray[2]:='C';
  XHArray[3]:='D'; XHArray[4]:='E'; XHArray[5]:='F';
  XHArray[6]:='G'; XHArray[7]:='H'; XHArray[8]:='I';
  XHArray[9]:='J'; XHArray[10]:='K'; XHArray[11]:='L';
  XHArray[12]:='M'; XHArray[13]:='N'; XHArray[14]:='O';

  try
    with TempQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select XH from '+main.LIY_DD+'.dbo.XXZLS  where CQDH='''+main.edit2.text+''' and XieXing='''+XXZLQry.FieldByName('XieXing').Value+''' and SheHao='''+XXZLQry.FieldByName('SheHao').Value+''' ');
      Active:=true;
      if RecordCount=0 then
      begin
        for i:=0 to High(XHArray) do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.XXZLS ');
          SQL.Add('  (XieXing, SheHao, CQDH, XH, UserID, UserDate, LB) ');
          SQL.Add('Values ');
          SQL.Add('  ('''+XXZLQry.FieldByName('XieXing').Value+''','''+XXZLQry.FieldByName('SheHao').Value+''','''+main.edit2.text+''','''+XHArray[i]+''','''+main.Edit1.Text+''','''+FormatDateTime('YYYYMMDD',Date())+''',''00'') ');
          ExecSQL();
        end;
      end;
      Active:=false;
    end;
    //
    with TempQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select xxzls3.US_Size  From '+main.LIY_ERP+'.dbo.xxzls3 xxzls3  where XieXing='''+XXZLQry.FieldByName('XieXing').Value+''' and IsNull(US_Size,'''')<>'''' ');
      Active:=true;
      if RecordCount>0 then
      begin
         if XXZLS1Qry.RecordCount=0 then
         begin
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into LIY_DD.dbo.XXZLS1 (XieXing, SheHao, CQDH, CC, USERID, USERDATE) ');
           SQL.Add('Select '''+XXZLQry.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZLQry.FieldByName('SheHao').AsString+''' as SheHao, ');
           SQL.Add(' '''+XXZLQry.FieldByName('CQDH').AsString+''' as CQDH,xxzls3.US_Size,'''+main.Edit1.Text+''' as USERID,'''+FormatDateTime('YYYYMMDD',Date())+''' as USERDATE  From LIY_ERP.dbo.xxzls3 xxzls3  where XieXing='''+XXZLQry.FieldByName('XieXing').Value+''' ');
           ExecSQL();
         end;
      end;
      Active:=false;
    end;
    XXZLSQry.Active:=false;
    XXZLSQry.Active:=true;
    XXZLS1Qry.Active:=false;
    XXZLS1Qry.Active:=true;
    Showmessage('Success');
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
  //
end;

procedure TRBOMM.DBGridEh1EditButtonClick(Sender: TObject);
begin
  RBOMM_CLZL:=TRBOMM_CLZL.Create(self);
  RBOMM_CLZL.Show;
end;

procedure TRBOMM.XXZLS1QryAfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
end;

procedure TRBOMM.BC2Click(Sender: TObject);
begin
  with XXZLS1Qry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TRBOMM.BC3Click(Sender: TObject);
begin
  with XXZLS1Qry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TRBOMM.BC4Click(Sender: TObject);
begin
  with XXZLS1Qry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TRBOMM.BC6Click(Sender: TObject);
begin
  with XXZLS1Qry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
end;

procedure TRBOMM.BC5Click(Sender: TObject);
var i:integer;
begin
  try
    XXZLS1Qry.First;
    for i:=1 to XXZLS1Qry.RecordCount do
    begin
      case XXZLS1Qry.updatestatus of
        usinserted:
         begin
            if (XXZLS1Qry.FieldByName('CC').AsString='') then
            begin
              Showmessage('Please input CC ');
              abort;
            end;
            XXZLS1Qry.edit;
            XXZLS1Qry.FieldByName('XieXing').Value:=XXZLQry.FieldByName('XieXing').Value;
            XXZLS1Qry.FieldByName('SheHao').Value:=XXZLQry.FieldByName('SheHao').Value;
            XXZLS1Qry.FieldByName('CQDH').Value:=XXZLQry.FieldByName('CQDH').Value;
            XXZLS1Qry.FieldByName('userID').Value:=main.edit1.text;
            XXZLS1Qry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
            UpXXZLS1.apply(ukinsert);
         end;
        usmodified:
         begin
             if XXZLS1Qry.FieldByName('USERID').value<>main.Edit1.Text then
             begin
                 showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
             end else
             begin
                 if XXZLS1Qry.fieldbyname('YN').value='0'then
                 begin
                   //刪除
                   UpXXZLS1.apply(ukdelete);
                 end else
                 begin
                   XXZLS1Qry.edit;
                   XXZLS1Qry.FieldByName('userID').Value:=main.edit1.text;
                   XXZLS1Qry.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                   UpXXZLS1.apply(ukmodify);
                 end;
             end;
         end;
      end;
      XXZLS1Qry.Next;
    end;
    XXZLS1Qry.active:=false;
    XXZLS1Qry.cachedupdates:=false;
    XXZLS1Qry.requestlive:=false;
    XXZLS1Qry.active:=true;
    BC5.Enabled:=false;
    BC6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

end.
