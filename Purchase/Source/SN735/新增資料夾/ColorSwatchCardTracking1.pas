unit ColorSwatchCardTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh, ComCtrls,comobj,
  DBCtrls,IniFiles,ShellApi,dateutils;

type
  TColorSwatchCardTracking = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ZSYWJC: TStringField;
    Query1ywpm: TStringField;
    Query1SEASON: TStringField;                        
    Query1CGNO: TStringField;
    Query1PURPOSE: TStringField;
    Query1CLBH: TStringField;
    Query1Visually: TStringField;
    Query1Spectro: TStringField;
    Query1Spectro_file: TStringField;
    Query1Result: TStringField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    UpdQry1: TUpdateSQL;
    TIMEQRY: TQuery;
    Query1maincgno: TStringField;
    Query1fd: TStringField;
    Query1devcode: TStringField;
    Query1devtype: TStringField;
    checkclbh: TQuery;
    Query1remark: TStringField;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2NG_ETD: TDateTimeField;
    Query2NG_ETA: TDateTimeField;
    Query2Result: TStringField;
    Query2ng_date: TDateTimeField;
    Updqry2: TUpdateSQL;
    Query2CGNO: TStringField;
    Query2CLBH: TStringField;
    Query3: TQuery;
    DataSource3: TDataSource;
    Query3userdate: TStringField;
    Query3userid: TStringField;
    Query3Remark: TStringField;
    Query1ArriveDate: TDateTimeField;
    Query1NG_Reason: TStringField;
    Query1cgzl_color2clbh: TStringField;
    Query1A4Comfirm: TStringField;
    Query1TrackingA4Comfirm: TStringField;
    Query1DateA4Comfirm: TDateTimeField;
    Query1ColorWindow: TStringField;
    Query1DateColorWindow: TDateTimeField;
    Query1PC_Confirm: TStringField;
    Query1MaterialID: TStringField;
    Query1VendorID: TStringField;
    Query1FormalCLBH: TStringField;
    Query1TempCLBH: TStringField;
    Query1ShippedDate: TDateTimeField;
    Query1SignedDate: TDateTimeField;
    Query1Signer: TStringField;
    Query1DCName: TStringField;
    Query1ExpireDate: TDateTimeField;
    Query1SharedDC: TStringField;
    Query1Updater: TStringField;
    Query1AWB: TStringField;
    Query1color2Remark: TStringField;
    Query1Article: TStringField;
    Query1PRO: TStringField;
    Query1Senter: TStringField;
    Query1Readable: TStringField;
    Query2Remark: TStringField;
    Query1BuyConsolidation: TDateTimeField;
    Query1ColorMatching: TStringField;
    Query1ColorRFT: TStringField;
    Query1ypdh: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    Button8: TButton;
    CheckBox9: TCheckBox;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    lbl1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    cb8: TComboBox;
    DBMemo1: TDBMemo;
    DTP2: TDateTimePicker;
    DTP1: TDateTimePicker;
    datecheckbox: TCheckBox;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    ComboBox14: TComboBox;
    Edit9: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label11: TLabel;
    Label7: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1SignedDateChange(Sender: TField);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);


  private
    STFilePath: string;

    { Private declarations }
    procedure ReadIni();
  public

    { Public declarations }
  end;

var
  ColorSwatchCardTracking: TColorSwatchCardTracking;

implementation

uses main1;




function CheckExistStringList(const content: string; const stringList: TStringList): Boolean;
begin
  Result := stringList.IndexOf(content) <> -1;
end;



{$R *.dfm}
procedure TColorSwatchCardTracking.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  STFilePath := '\\192.168.123.111\Purchasing\Color Specialist\SPETRO REPORTS';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      STFilePath:=MyIni.ReadString('Spectro','Purchase_N735_STFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TColorSwatchCardTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TColorSwatchCardTracking.Button1Click(Sender: TObject);
begin

  dbgrideh1.FrozenCols:=strtoint(edit8.text);
  with Query1 do
  begin
     active:=false;
     sql.Clear;
{     sql.add('SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.clbh,');
     sql.add('    color.maincgno,color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark, ');
     sql.add('    color.NG_Reason,color.ColorMatching,color.ColorRFT,kcrks.userdate as ArriveDate,cgzl_color2.clbh as cgzl_color2clbh, ');
     sql.add('    cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,');
     sql.add('    cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.ShippedDate,cgzl_color2.SignedDate,');
     sql.add('    cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('    cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,color.ypdh,');
     sql.add('    cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,');
     sql.add('    color.cldhflex as MaterialID,color.zsdhflex as VendorID,FormalCLBH,TempCLBH,Article ');
     sql.add('from (');
     sql.add('   SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,');
     sql.add('      CGZLsS.CLBH,cgzl_color.cgno as maincgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,');
     sql.add('      cgzl_color.remark,cgzl_color.ColorMatching,cgzl_color.ColorRFT,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,');
     sql.add('      ZSZL_FLEX.zsdhflex,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,FormalCLBH.JHDH FormalCLBH,TempCLBH.CLDH TempCLBH,');
     sql.add('      kfxxzl.Article,CGZL_Color.BuyConsolidation');
     sql.add('  FROM ypzl');       
     sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
     sql.add('  left join (select cgzlss.CLBH,zlbh,CGNO from cgzlss');
     sql.add('  	          UNION ALL');
     sql.add('  	         select CLZL_LS.JHDH as CLBH,zlbh,CGNO  from cgzlss');
     sql.add('  	          INNER  join CLZL_LS on CLZL_LS.CLDH = cgzlss.CLBH '); 
     sql.add('  	          UNION ALL');
     sql.add('  	         select CLZL_LS.CLDH as CLBH,zlbh,CGNO  from cgzlss');
     sql.add('  	          INNER  join CLZL_LS on CLZL_LS.JHDH = cgzlss.CLBH ');       
     sql.add('              )cgzlss on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('  left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' ');
     SQL.add('              and CGZL.GSBH= '''+main.Edit2.Text+''' ');
     sql.add('  left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CGZLSS.CLBH ');
     sql.add('  left join CLZL_LS TempCLBH on TempCLBH.JHDH=CGZLSS.CLBH ');
     SQL.add('              and CGZL.GSBH= '''+main.Edit2.Text+''' ');
     //sql.add('  left join ypzl on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('  left join CLZL  on CLZl.CLDH=CGZLSs.CLBH');
     sql.add('  left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH');
     sql.add('  left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH= '''+main.Edit2.Text+''' ');

     sql.add('  left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser');
     sql.add('  left join cgzl_color on cgzlss.cgno=cgzl_color.cgno and cgzlss.clbh=cgzl_color.clbh');
     sql.add('  left join materialNG on cgzlss.cgno=materialNG.cgno and cgzlss.clbh=materialNG.clbh');
     sql.add('  left join CLZL_FLEX on CLZL_FLEX.cldh = cgzlss.clbh');
     sql.add('  left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh');
     //if Edit9.Text <>'' then
     //   sql.add(' left join DDZl on DDZl.xiexing=ypzl.xiexing and DDZl.shehao=ypzl.shehao'); }
     //SEAN 改連結臨時正式料號
     sql.add('SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.CLBH,');
     sql.add('    color.maincgno,color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark, ');
     sql.add('    color.NG_Reason,color.ColorMatching,color.ColorRFT,Max(kcrks.userdate) as ArriveDate,cgzl_color2.clbh as cgzl_color2clbh, ');
     sql.add('    cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,');
     sql.add('    cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.ShippedDate,cgzl_color2.SignedDate,');
     sql.add('    cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('    cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,color.ypdh,');
     sql.add('    cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,');
     sql.add('    color.cldhflex as MaterialID,color.zsdhflex as VendorID,FormalCLBH,TempCLBH,Article ');
     sql.add('from (');
     sql.add('SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,');
     sql.add('      CGZLSS.CLBH,CLZL_LS.JHDH,cgzl_color.cgno as maincgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,');
     sql.add('      cgzl_color.remark,cgzl_color.ColorMatching,cgzl_color.ColorRFT,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,');
     sql.add('      ZSZL_FLEX.zsdhflex,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,FormalCLBH.JHDH FormalCLBH,TempCLBH.CLDH TempCLBH,');
     sql.add('      kfxxzl.Article,CGZL_Color.BuyConsolidation');
     sql.add('  FROM ypzl');
     sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
     sql.add('  left join CGZLSS on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('  left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' ');  
     SQL.add('              and CGZL.GSBH= '''+main.Edit2.Text+''' ');
     sql.add('  left join (select CLDH,JHDH from  CLZL_LS');
     sql.add('UNION ALL');
     sql.add('select JHDH as CLDH,CLDH as JHDH from  CLZL_LS');
     sql.add(')CLZL_LS on CLZL_LS.CLDH=CGZLSS.CLBH    ' );
     sql.add('  left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CGZLSS.CLBH ');
     sql.add('  left join CLZL_LS TempCLBH on TempCLBH.JHDH=CGZLSS.CLBH ');
     sql.add('  left join CLZL  on CLZl.CLDH=CLZL_LS.JHDH');
     sql.add('  left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH');
     sql.add('  left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=''CDC''' );
     sql.add('  left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser');
     sql.add('  left join cgzl_color on cgzlss.cgno=cgzl_color.cgno or CLZL_LS.JHDH=cgzl_color.clbh');
     sql.add('  left join materialNG on cgzlss.cgno=materialNG.cgno or CLZL_LS.JHDH=materialNG.clbh');
     sql.add('  left join CLZL_FLEX on cgzlss.cgno=CLZL_FLEX.cldh or CLZL_FLEX.cldh = CLZL_LS.JHDH');
     sql.add('  left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh');

     sql.add('  where 1=1 ');
     if edit1.text<>'' then
        sql.add(' and CGZL.SEASON like '''+'%'+edit1.text+'%'+''' ');
     if ComboBox14.Text <> '' then
        sql.Add(' and YPZL.YPDH like '''+ComboBox14.Text+'%''');
     if edit2.text<>'' then
        sql.add( '  and CGZL.PURPOSE like '''+'%'+edit2.text+'%'+''' ');
     if edit3.text<>'' then
        sql.add(' and ZSZL.ZSYWJC like '''+'%'+edit3.text+'%'+''' ');
     if edit4.text<>'' then
        sql.add(' and CLZL.YWPM like '''+'%'+edit4.text+'%'+''' ');
     if edit5.text<>'' then
        sql.add(' and CGZL.cgno like '''+'%'+edit5.text+'%'+''' ');
     if edit6.text<>'' then
        //sql.add(' and CGZLsS.CLBH like '''+'%'+edit6.text+'%'+''' ');
        sql.add(' and CLZL_LS.JHDH ='''+edit6.text+''' or CGZLSS.CLBH ='''+edit6.text+'''');
     if edit7.text<>'' then
        sql.add(' and kfxxzl.devcode like '''+'%'+edit7.text+'%'+''' ');
     if cb8.text<>'' then
        sql.add(' and kfxxzl.devtype like '''+cb8.text+''' ');
     if datecheckbox.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color.userdate,111))  between ');
       sql.add('    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
     end;
     {sql.add('group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,CGZLsS.CLBH,cgzl_color.cgno,cgzl_color.visually,');
     sql.add('cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,cgzl_color.remark,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,ZSZL_FLEX.zsdhflex,FormalCLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article, ');
     sql.Add('CGZL_Color.BuyConsolidation,cgzl_color.ColorMatching,cgzl_color.ColorRFT)color');
     sql.add('left join kcrks on kcrks.clbh=color.clbh and kcrks.cgbh=color.ypdh and kcrks.docno=color.cgno');
     sql.add('left join cgzl_color2 on color.clbh=cgzl_color2.clbh'); }
     sql.add('group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,');
     sql.add('    CGZLSS.CLBH,CLZL_LS.JHDH,cgzl_color.cgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,');
     sql.add('    cgzl_color.userid,cgzl_color.userdate,cgzl_color.remark,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,ZSZL_FLEX.zsdhflex,');
     sql.add('    FormalCLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article,CGZL_Color.BuyConsolidation,cgzl_color.ColorMatching,cgzl_color.ColorRFT ');
     sql.add(')color');
     sql.add('left join kcrks on (kcrks.clbh=color.JHDH or color.CLBH=kcrks.clbh) and kcrks.cgbh=color.ypdh and kcrks.docno=color.cgno');
     sql.add('left join cgzl_color2 on (cgzl_color2.clbh=color.JHDH or cgzl_color2.clbh=color.CLBH)');

     if Checkbox1.checked then
     begin
       sql.add('where convert(smalldatetime,convert(varchar,cgzl_color2.SignedDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
     end;
     sql.add('group by');
     {sql.add('color.devtype,color.fd,color.devcode,color.ypdh,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.clbh,color.maincgno,');
     sql.add('color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark,color.ColorMatching,color.ColorRFT,color.NG_Reason,kcrks.userdate,');
     sql.add('cgzl_color2.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,FormalCLBH,TempCLBH,');
     sql.add('cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signer,');
     sql.add('cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,');
     sql.add('cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,Article order by color.cgno');    }
     sql.add('color.devtype,color.fd,color.devcode,color.ypdh,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.CLBH,');
     sql.add('color.maincgno,color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark,');
     sql.add('color.ColorMatching,color.ColorRFT,color.NG_Reason,cgzl_color2.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,');
     sql.add('cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,');
     sql.add('FormalCLBH,TempCLBH,cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signer,');
     sql.add('cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,');
     sql.add('cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,Article order by color.cgno');
     if CheckBox9.Checked =true then
        showmessage(sql.text);
     active:=true;
  end;

  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
  query2.Active:=true;
  query3.Active:=true;  
  button4.Enabled:=true;
  button7.Enabled:=true;
end;

procedure TColorSwatchCardTracking.BB4Click(Sender: TObject);
begin
{  if Query1.RequestLive then
     begin
        showmessage('Pls save Master data first.');
        abort;
     end;      }
  with Query1 do
     begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
     end;
     Button1.Enabled:=false;     
     bb2.Enabled:=false;
     bb3.Enabled:=false;
     bb4.Enabled:=false;
     bb5.Enabled:=true;
     bb6.Enabled:=true;
  DBGridEh1.Columns[16].ButtonStyle := cbsEllipsis;
  DBGrideh1.Columns[30].ButtonStyle:=cbsellipsis;
end;

procedure TColorSwatchCardTracking.BB5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with TIMEQRY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  try
    query1.cachedupdates:=true;
    query1.requestlive:=true;
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
      usmodified:
            if  query1.FieldByName('maincgno').isnull or  query1.FieldByName('cgzl_color2clbh').isnull  then
            begin
              if  query1.FieldByName('maincgno').isnull then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color(CGNO,CLBH) values(');
                  sql.Add(' '''+query1.fieldbyname('CGNO').AsString+'''');
                  sql.Add(', '''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add(')');

                  execsql;
                end;
              end;
              if  (query1.FieldByName('cgzl_color2clbh').isnull)  then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add(')');
                 execsql;
                end;
              end;
                query1.edit;
                query1.FieldByName('userID').Value:=main.edit1.text;
                if ((query1.fieldbyname('Visually').OldValue<>query1.fieldbyname('Visually').Value)  or
                   (query1.fieldbyname('spectro').OldValue<>query1.fieldbyname('spectro').Value)  or
                   (query1.fieldbyname('spectro_file').OldValue<>query1.fieldbyname('spectro_file').Value)  or
                   (query1.fieldbyname('result').OldValue<>query1.fieldbyname('result').Value)  or
                   (query1.fieldbyname('remark').OldValue<>query1.fieldbyname('remark').Value)  or
                   (query1.fieldbyname('ColorMatching').OldValue<>query1.fieldbyname('ColorMatching').Value))  or
                   (query1.fieldbyname('ColorRFT').OldValue<>query1.fieldbyname('ColorRFT').Value)  then
                   query1.FieldByName('userdate').Value:=Ndate;
                Updqry1.apply(ukmodify);
            end else
            begin
               query1.edit;
               query1.FieldByName('userID').Value:=main.edit1.text;
                if ((query1.fieldbyname('Visually').OldValue<>query1.fieldbyname('Visually').Value)  or
                   (query1.fieldbyname('spectro').OldValue<>query1.fieldbyname('spectro').Value)  or
                   (query1.fieldbyname('spectro_file').OldValue<>query1.fieldbyname('spectro_file').Value)  or
                   (query1.fieldbyname('result').OldValue<>query1.fieldbyname('result').Value)  or
                   (query1.fieldbyname('remark').OldValue<>query1.fieldbyname('remark').Value)  or
                   (query1.fieldbyname('ColorMatching').OldValue<>query1.fieldbyname('ColorMatching').Value)) or
                   (query1.fieldbyname('ColorRFT').OldValue<>query1.fieldbyname('ColorRFT').Value)  then
                   query1.FieldByName('userdate').Value:=Ndate;
               Updqry1.apply(ukmodify);
            end;
         end;

      query1.next;
    end;

    with query1 do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
    Button1.Enabled:=true;
    bb2.Enabled:=true;
    bb3.Enabled:=true;
    bb4.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
    DBGridEh1.Columns[16].ButtonStyle := cbsNone;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;



procedure TColorSwatchCardTracking.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
   DBGridEh1.Columns[16].ButtonStyle := cbsNone;
   Button1.Enabled:=true;
   bb2.Enabled:=true;
   bb3.Enabled:=true;
   bb4.Enabled:=true;
   bb5.Enabled:=false;
   bb6.Enabled:=false;
end;

procedure TColorSwatchCardTracking.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
          query1.Next;
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

{var   a:string;
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
        eclApp.Rows[1].WrapText  := True;//自動換列
        eclApp.Columns[1].ColumnWidth := 6; //設定欄寬
        eclApp.Columns[2].ColumnWidth := 7;
        eclApp.Columns[3].ColumnWidth := 35;
        eclApp.Columns[4].ColumnWidth := 10;
        eclApp.Columns[5].ColumnWidth := 7;
        eclApp.Columns[6].ColumnWidth := 26;
        eclApp.Columns[7].ColumnWidth := 5;
        eclApp.Columns[8].ColumnWidth := 12;
        eclApp.Columns[9].ColumnWidth := 29;
        eclApp.Columns[10].ColumnWidth := 14;
        eclApp.Columns[11].ColumnWidth := 6;
        eclApp.Columns[12].ColumnWidth := 7;
        eclApp.Columns[13].ColumnWidth := 12;
        eclApp.Columns[14].ColumnWidth := 12;
        eclApp.Columns[15].ColumnWidth := 17;
        eclApp.Columns[16].ColumnWidth := 12;
        eclApp.Columns[17].ColumnWidth := 12;
        eclApp.Columns[18].ColumnWidth := 16;
        eclApp.Columns[19].ColumnWidth := 40;        
        eclApp.Cells(1,1):='Factory';
        eclApp.Cells(1,2):='Supplier';
        eclApp.Cells(1,3):='Material Name';
        eclApp.Cells(1,4):='Material Number';
        eclApp.Cells(1,5):='Color Season';
        eclApp.Cells(1,6):='Color Name';
        eclApp.Cells(1,7):='Color Code';
        eclApp.Cells(1,8):='Category';
        eclApp.Cells(1,9):='SR#';
        eclApp.Cells(1,10):='Material PO#';
        eclApp.Cells(1,11):='Initial Dev Season';
        eclApp.Cells(1,12):='Initial Dev Stage';
        eclApp.Cells(1,13):='Visually Approved?';
        eclApp.Cells(1,14):='Spectro Approved?';
        eclApp.Cells(1,15):='Spectro Report#';
        eclApp.Cells(1,16):='Final Result';
        eclApp.Cells(1,17):='Date of Approval';
        eclApp.Cells(1,18):='Approved by?';
        eclApp.Cells(1,19):='Remark';

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
               eclApp.Cells(j,1):='LYN';
               eclApp.Cells(j,2):=query1.FieldByName('ZSYWJC').value;
               eclApp.Cells(j,3):=query1.FieldByName('ywpm').value;
               eclApp.Cells(j,4):='';
               eclApp.Cells(j,5):=query1.FieldByName('SEASON').value;
               eclApp.Cells(j,6):='';
               eclApp.Cells(j,7):='';
               eclApp.Cells(j,8):=query1.FieldByName('fd').value;
               eclApp.Cells(j,9):=query1.FieldByName('devcode').value;
               eclApp.Cells(j,10):=query1.FieldByName('cgno').value;
               eclApp.Cells(j,11):=query1.FieldByName('devtype').value;
               eclApp.Cells(j,12):=query1.FieldByName('PURPOSE').value;
               eclApp.Cells(j,13):=query1.FieldByName('visually').value;
               eclApp.Cells(j,14):=query1.FieldByName('spectro').value;
               eclApp.Cells(j,15):=query1.FieldByName('spectro_file').value;
               eclApp.Cells(j,16):=query1.FieldByName('result').value;
               eclApp.Cells(j,17):=query1.FieldByName('userdate').value;
               eclApp.Cells(j,18):=query1.FieldByName('userid').value;
               eclApp.Cells(j,19):=query1.FieldByName('remark').value;
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
end;       }


procedure TColorSwatchCardTracking.Button3Click(Sender: TObject);
begin
  with checkclbh do
  begin
     active:=false;
     sql.Clear;
     sql.add('select cgzl_color.clbh as mainclbh,cgzl_color.cgno,clzl_ls.cldh as tempclbh,clzl_ls.JHDH as tempjhdh from cgzl_color');
     sql.add('left join clzl_ls on cgzl_color.clbh=clzl_ls.cldh');
     sql.add('left join CGZLS on CGZLS.CGNO=cgzl_color.CGNO and CGZLS.clbh=cgzl_color.clbh');
     sql.add('where (clzl_ls.cldh is not null and clzl_ls.JHDH is not null) and clzl_ls.JHDH<>'''' ');
     sql.add('and not exists (select * from cgzl_color where CLBH=clzl_ls.JHDH) ');
     sql.add('and cgzls.clbh is null  ');
     active:=true;
  end;
  checkclbh.first;
  while not checkclbh.eof do
  begin
     with timeqry do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' update cgzl_color set clbh = '''+checkclbh.fieldbyname('tempjhdh').AsString+'''');
        sql.Add(' where clbh = '''+checkclbh.fieldbyname('mainclbh').AsString+''' and ');
        sql.Add(' cgno = '''+checkclbh.fieldbyname('cgno').AsString+'''  ');
        execsql;
     end;
  checkclbh.next;
 end;
end;

procedure TColorSwatchCardTracking.Button4Click(Sender: TObject);
begin
   with Query2 do
   begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
   end;
   Button4.Enabled:=false;
   Button7.Enabled:=false;
   Button5.Enabled:=true;
   Button6.Enabled:=true;
end;

procedure TColorSwatchCardTracking.Button5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with TIMEQRY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if query2.FieldByName('remark').AsString = '' then
  begin
    Showmessage('Xin Chon remark');
    abort;
  end;

  try
    query2.cachedupdates:=true;
    query2.requestlive:=true;
    query2.first;
    for i:=1 to query2.RecordCount do
    begin
      case query2.updatestatus of
        usinserted:
        begin
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' insert materialNG (CGNO,CLBH,NG_date,userid,userdate,remark) values(');
             sql.Add(' '''+query1.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query1.fieldbyname('CLBH').Value+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' insert cgzl_colors (CGNO,CLBH,userid,userdate,remark) values(');
             sql.Add(' '''+query1.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query1.fieldbyname('CLBH').Value+'''');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
        end;
        usmodified:
        begin
          Updqry2.apply(ukmodify);
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' delete cgzl_colors where CGNO='''+query2.fieldbyname('CGNO').Value+''' and CLBH='''+query2.fieldbyname('CLBH').Value+''' and remark='''+query2.fieldbyname('remark').OldValue+''' ');
             sql.Add(' insert cgzl_colors (CGNO,CLBH,userid,userdate,remark) values(');
             sql.Add(' '''+query2.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query2.fieldbyname('CLBH').Value+'''');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
        end;
      end;
      query2.next;
    end;
  
    showmessage('Succeed.');
    with query2 do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
    Button4.Enabled:=true;
    Button7.Enabled:=true;
    Button5.Enabled:=false;
    Button6.Enabled:=false;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TColorSwatchCardTracking.Button6Click(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Button4.Enabled:=true;
  Button7.Enabled:=true;
  Button5.Enabled:=false;
  Button6.Enabled:=false;
end;

procedure TColorSwatchCardTracking.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-60;
  DTP2.date:=date;
  DTP3.Date:=date-7;
  DTP4.date:=date;
  if (main.edit1.text='51267') or (main.edit1.text='51295') then
  begin
    CheckBox9.Visible:=true;
    CheckBox9.Checked:=true;
  end;
  if main.Edit2.Text = 'SKX' then
  begin
    Label18.Visible := true;
    ComboBox14.Visible := true;
  end;
  ReadIni();
end;

procedure TColorSwatchCardTracking.Query1SignedDateChange(Sender: TField);
begin
   Query1.fieldbyname('ExpireDate').Value:=Query1.fieldbyname('SignedDate').Value+730;
end;

procedure TColorSwatchCardTracking.DBGridEh1CellClick(Column: TColumnEh);
var path:PChar;
    i:integer;
    CLBH:String;
begin

  if (DBGridEh1.SelectedField.FieldName = 'Spectro_file') and (not query1.FieldByName('Spectro_file').isnull) then
  begin
    path:= pchar( STFilePath + string(query1.FieldByName('Spectro_file').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
if (DBGridEh1.SelectedField.FieldName = 'A4Comfirm') and ( query1.FieldByName('A4Comfirm').isnull) and (Edit6.text<>'') then
  begin
    {requestlive:=true;
    cachedupdates:=true;
    query1.edit;   }
    BB4.Click;
    DBGridEh1.columns[24].picklist.Clear;
    CLBH:=query1.FieldByName('CLBH').AsString;
    for i:=1 to  query1.RecordCount do
      begin
        if query1.Eof then
          query1.First;
        if CLBH=query1.FieldByName('CLBH').AsString  then
          DBGridEh1.columns[24].picklist.add(query1.FieldByName('devcode').AsString+'/'+query1.FieldByName('Article').AsString);
          query1.Next;
      end;
  end;
end;

procedure TColorSwatchCardTracking.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('ShippedDate').value > query1.FieldByName('SignedDate').value +3 then
    DBGridEh1.canvas.font.color:=clred;
end;

function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;


procedure TColorSwatchCardTracking.DBGridEh1EditButtonClick(
  Sender: TObject);
var Style, Article: String;
    i:integer;
begin
  if (DBGridEh1.SelectedField.FieldName='BuyConsolidation')  then
  begin
    if DBGridEh1.SelectedField.FieldName='BuyConsolidation' then Style:=inputbox('Please Input PlanDate','BuyConsolidation:','');
    if Style<>'' then
    begin
      if not IsDate(Style) then
      begin
        showmessage ('Pls input datetime');
        abort;
      end;
      with Query1 do
      begin
        for i:=0 to Query1.RecordCount-1 do
        begin
          Edit;
          if Article='' then Article:=FieldByName('Article').AsString;
          if Article=FieldByName('Article').AsString then
          begin
            if DBGridEh1.SelectedField.FieldName='BuyConsolidation' then FieldByName('BuyConsolidation').Value:=Style;
          end;
          Query1.Next;
        end;
      end;
    end;
  end;
end;

procedure TColorSwatchCardTracking.Button7Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  Button4.Enabled:=false;
  Button7.Enabled:=false;
  Button5.Enabled:=true;
  Button6.Enabled:=true;
end;

procedure TColorSwatchCardTracking.Button8Click(Sender: TObject);
var a:string;
  eclApp, WorkBook: OleVariant;
  Sheets,Sheet: OleVariant;
  i, j: Integer;
  CGNOList: TStringList;
begin
   if Query1.Active then
  begin
    CGNOList := TStringList.Create;
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook := eclApp.workbooks.Add;
        Sheets := Workbook.Sheets;
        Sheet := Sheets.Add(EmptyParam, Sheets.Item[Sheets.Count], EmptyParam, EmptyParam);
        Sheet.Name := 'ALL';
        WorkBook.Worksheets.Item['Sheet1'].Delete;
        WorkBook.Worksheets.Item['Sheet2'].Delete;
        WorkBook.Worksheets.Item['Sheet3'].Delete;
      for   i:=0   to   query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

      j:=2;
      Query1.First;
      while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
             if query1.fields[i].FieldName = 'CGNO' then
             eclapp.columns[i+1].autofit;
          end;
          query1.Next;
          inc(j);
        end;

         j:=2;
      Query1.First;
      while not Query1.Eof do
      begin
        Query2.First;
        while not Query2.Eof do
        begin
        if Query2.FieldByName('remark').AsString <> '' then
         begin
          for i:=0 to Query2.FieldCount-1 do
          begin
           if not CheckExistStringList(Query2.FieldByName('CGNO').AsString,CGNOList) then
            begin
                j:=2;
                Sheet := Sheets.Add(EmptyParam, Sheets.Item[Sheets.Count], EmptyParam, EmptyParam);
                Sheet.Name := Query2.FieldByName('CGNO').AsString;
                eclApp.Cells(j, 1) := Query2.Fields[0].Value;
                 eclapp.columns[1].autofit;
                 CGNOList.Add(Query2.FieldByName('CGNO').AsString) ;
            end
            else
              begin
                eclApp.Cells(j, i+1) := Query2.Fields[i].Value;
                eclapp.columns[i+1].autofit;
              end;
            eclApp.Cells(1, i+1) := Query2.Fields[i].FieldName;
          end;
          inc(j);
        end;
        Query2.Next;
      end;
        Query1.Next;
    end;
      eclApp.Visible := True;
      ShowMessage('Succeed');
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;

  CGNOList.Free;
end;





end.
