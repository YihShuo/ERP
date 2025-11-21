unit KhuongInQuotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, IniFiles, Math, Comobj;

type
  TKhuonInQuotation = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckMine: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Check: TCheckBox;
    DBGridEh1: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    ITBtn: TButton;
    DBGridEh2: TDBGridEh;
    Qtemp: TQuery;
    CWHLS: TQuery;
    BJMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    BJDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    BJMasBJNO: TStringField;
    BJMasGSBH: TStringField;
    BJMasZSBH: TStringField;
    BJMasUSERDATE: TDateTimeField;
    BJMasUSERID: TStringField;
    BJMasCFMDate: TDateTimeField;
    BJMasCFMID: TStringField;
    BJMasEXPDATE: TDateTimeField;
    BJMasYN: TStringField;
    BJMasZSYWJC: TStringField;
    BJMasPayVN: TStringField;
    BJMaszsywjctw: TStringField;
    BJDetBJNO: TStringField;
    BJDetCLBH: TStringField;
    BJDetUSPrice: TFloatField;
    BJDetVNPrice: TCurrencyField;
    BJDetUSERDate: TDateTimeField;
    BJDetUSERID: TStringField;
    BJDetMemo: TStringField;
    BJDetYN: TStringField;
    BJDetYWPM: TStringField;
    BJDetDWBH: TStringField;
    BJDetErpEx: TCurrencyField;
    BJDetSamplePrice: TFloatField;
    BJDetSamplePriceVN: TFloatField;
    BJDetMUnkLock: TStringField;
    BJDetCLZL_YN: TStringField;
    BJDetCQDH: TStringField;
    BJDetCLZMLB: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BJMasAfterOpen(DataSet: TDataSet);
    procedure BJDetAfterOpen(DataSet: TDataSet);
    procedure BJDetCalcFields(DataSet: TDataSet);
    procedure BD6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);

    //procedure BBTT1Click(Sender: TObject);
  private
     GSBH_SFL:String;
     CBDExchange:string;
    { Private declarations }
    procedure ReadIni();
    //function CheckMaterialCBD(DetQry:TQuery;CostQry:TQuery):boolean;
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    VNPrice_QuotDecimal:Byte;
    GSBH_Check:String;
    { Public declarations }
  end;

var
  KhuonInQuotation: TKhuonInQuotation;
  NDate:TDate;

implementation

uses main1, KhuonIn_ZS1, KhuonIn_CL1;

{$R *.dfm}

procedure TKhuonInQuotation.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  VNPrice_QuotDecimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      VNPrice_QuotDecimal:=strtoint(MyIni.ReadString('VNPrice','QuotDecimal','0'));
      GSBH_Check:= MyIni.ReadString('ERP','PurchaseN231_Check_GSBH','');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(BJDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(BJDet.FieldByName('ERP_VN')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TKhuonInQuotation.Button1Click(Sender: TObject);
begin
  with BJMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KHUONIN_CGBJ.* ,ZSZL.ZSYWJC,ZSZl.PayVN,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as zsywjctw   ');
    sql.add('from KHUONIN_CGBJ');
    sql.add('left join ZSZL on KHUONIN_CGBJ.ZSBH=ZSZL.ZSDH');
    sql.add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW  ');
    sql.add('where KHUONIN_CGBJ.BJNO like '''+edit1.Text+'%'' ');
    sql.add('  and KHUONIN_CGBJ.ZSBH like '''+edit2.Text+'%'' ');
    sql.add('  and ZSZL.ZSYWJC like ''%'+edit3.Text+'%'' ');

    if Check.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,KHUONIN_CGBJ.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('and KHUONIN_CGBJ.GSBH='''+main.edit2.text+'''');
    if checkMine.Checked=true then
      sql.add('and  KHUONIN_CGBJ.UserID='''+main.Edit1.Text+''' ');
    if ((Edit4.Text<>'') or (Edit5.Text<>'')) then
    begin
      sql.add('and exists (select BJNO from KHUONIN_CGBJS,clzl where KHUONIN_CGBJS.BJNO=KHUONIN_CGBJ.BJNO and KHUONIN_CGBJS.CLBH=CLZL.CLDH ');
      sql.add('and clzl.cldh like '''+Edit4.Text+'%'' ');
      sql.add('and clzl.ywpm like ''%'+Edit5.Text+'%'') ');
    end;
    sql.add('order by KHUONIN_CGBJ.BJNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
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
  BJDet.Active:=true;
end;

procedure TKhuonInQuotation.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TKhuonInQuotation.BB2Click(Sender: TObject);
begin
  with BJMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInQuotation.BB3Click(Sender: TObject);
begin
  if BJDet.recordcount=0 then
  begin
    with BJMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInQuotation.BB4Click(Sender: TObject);
begin
  with BJMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //dbgridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInQuotation.BB5Click(Sender: TObject);
var y,m,a:string;
i,x:integer;
begin
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
    BJDet.active:=false;
    BJMas.first;
    for i:=1 to BJMas.RecordCount do
    begin
      case BJMas.updatestatus of
      usinserted:
      begin
        if BJMas.fieldbyname('ZSBH').isnull then
        begin
          BJMas.delete;
        end else
        begin
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select BJNO from KHUONIN_CGBJ where BJNO like '+''''+y+m+'%'+'''');
            sql.add('order by BJNO');
            active:=true;
            if recordcount >0 then
            begin
              last;
              a:=fieldbyname('BJNO').AsString;
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
          BJMas.edit;
          BJMas.fieldbyname('BJNO').Value:=a;
          BJMas.fieldbyname('GSBH').Value:=main.Edit2.text;
          BJMas.FieldByName('userID').Value:=main.edit1.text;
          BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
          BJMas.FieldByName('CFMID').Value:='NO';
          BJMas.FieldByName('YN').Value:='1';
          if BJMas.FieldByName('EXPDATE').Value <> null then
            BJMas.FieldByName('EXPDATE').Value:=formatdatetime('yyyy/mm/dd',BJMas.FieldByName('EXPDATE').Value);
          upMas.apply(ukinsert);
        end;
      end;
      usmodified:
      begin
         if BJMas.fieldbyname('UserID').value=main.Edit1.Text then
         begin
            if BJMas.fieldbyname('YN').value='0'then
            begin
              upMas.apply(ukdelete);
            end else
            begin
                if (BJMas.FieldByName('CFMID').value='NO')   then
                begin
                    if (NDate-BJMas.FieldByName('USERDATE').Value)<3  then
                    begin
                      BJMas.edit;
                      BJMas.FieldByName('userID').Value:=main.edit1.text;
                      BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      if BJMas.FieldByName('EXPDATE').Value <> null then
                        BJMas.FieldByName('EXPDATE').Value:=formatdatetime('yyyy/mm/dd',BJMas.FieldByName('EXPDATE').Value);
                      upMas.apply(ukmodify);
                    end else
                    begin
                      showmessage(''+datetostr(Ndate)+' '+datetostr(BJMas.FieldByName('USERDATE').value)+' Date>3, can not modify.');
                    end;
                end else
                begin
                  showmessage('Already confirmed, can not modify.');
                end;
            end;
         end else
         begin
           showmessage('It is not yours.can not  delete');
         end;
      end;
    end;
    BJMas.next;
  end;
  BJMas.active:=false;
  BJMas.cachedupdates:=false;
  BJMas.requestlive:=false;
  BJMas.active:=true;
  BJDet.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  //dbgridEh1.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TKhuonInQuotation.BB6Click(Sender: TObject);
begin
  with BJMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
end;

procedure TKhuonInQuotation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TKhuonInQuotation.FormDestroy(Sender: TObject);
begin
  KhuonInQuotation:=nil;
end;

procedure TKhuonInQuotation.FormCreate(Sender: TObject);
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
  //報價單價 & CBD單價
  CBDExchange:='-1';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select top 1 CWHL from MaterialCBDEx ');
    Active:=true;
    if RecordCount>0 then
    begin
      CBDExchange:=FieldByname('CWHL').AsString;
    end;
    Active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TKhuonInQuotation.BD2Click(Sender: TObject);
begin
  if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TKhuonInQuotation.BD3Click(Sender: TObject);
begin
  if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TKhuonInQuotation.BD4Click(Sender: TObject);
begin
  if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TKhuonInQuotation.BD5Click(Sender: TObject);
var i:integer;
begin
  with BJDet do
  begin
    first;
    while not BJDet.Eof do
    begin
      if ((BJDet.FieldByName('VNPrice').IsNull) and (BJDet.fieldbyname('CLBH').AsString<>'') ) then
      begin
          showmessage('The Price can not be empty.');
          abort;
      end;
      next;
    end;
  end;

  try
    BJDet.first;
    for i:=1 to BJDet.RecordCount do
    begin
      case BJDet.updatestatus of
        usinserted:
        begin
          if (BJDet.fieldbyname('CLBH').isnull) or (BJDet.fieldbyname('CLBH').AsString='') then
          begin
            BJDet.delete;
          end else
          begin
            BJDet.edit;
            BJDet.fieldbyname('BJNO').Value:=BJMas.fieldbyname('BJNO').Value;
            if (( not  BJDet.FieldByName('VNPrice').isnull) and  (BJDet.FieldByName('VNPrice').AsString<>'')) then
            begin
              BJDet.FieldByName('VNPrice').Value:=roundto(BJDet.FieldByName('VNPrice').Value,-VNPrice_QuotDecimal);
            end;
            BJDet.FieldByName('userID').Value:=main.edit1.text;
            BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
            BJDet.FieldByName('YN').Value:='1';
            upDet.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
           if BJDet.fieldbyname('UserID').value=main.Edit1.Text then
           begin
              if BJDet.fieldbyname('YN').value='0'then
              begin
                UpDet.apply(ukdelete);
              end else
              begin
                BJDet.edit;
                if  ((BJDet.FieldByName('VNPrice').Value<>BJDet.FieldByName('VNPrice').OldValue)
                      or (BJDet.FieldByName('SuppEx').Value<>BJDet.FieldByName('SuppEx').OldValue)) then
                begin
                  BJDet.FieldByName('EXPDATE').Value:=null;
                end;
                if (( not  BJDet.FieldByName('VNPrice').isnull) and  (BJDet.FieldByName('VNPrice').AsString>'')) then
                begin
                  BJDet.FieldByName('VNPrice').Value:=roundto(BJDet.FieldByName('VNPrice').Value,-VNPrice_QuotDecimal);
                end;
                BJDet.FieldByName('userID').Value:=main.edit1.text;
                BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                upDet.apply(ukmodify);
                //
              end;
           end else
           begin
             showmessage('It is not yours.can not  delete');
           end;
        end;
      end;
      BJDet.next;
    end;
    BJDet.active:=false;
    BJDet.cachedupdates:=false;
    BJDet.requestlive:=false;
    BJDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TKhuonInQuotation.BBTT1Click(Sender: TObject);
begin
  KhuonIn_ZS:=TKhuonIn_ZS.create(self);
  KhuonIn_ZS.show;
end;

procedure TKhuonInQuotation.BBTT2Click(Sender: TObject);
begin
  KhuonIn_CL:=TKhuonIn_CL.create(self);
  KhuonIn_CL.show;
end;

procedure TKhuonInQuotation.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS3 then
  begin
    panel1.visible:=true;
    panel6.visible:=false;
  end else
  if PC1.ActivePage=TS4 then
  begin
    panel1.visible:=false;
    panel6.visible:=true;
  end;
end;

procedure TKhuonInQuotation.BJMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInQuotation.BJDetAfterOpen(DataSet: TDataSet);
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
  if (NDate-BJMas.FieldByName('USERDATE').value)>360  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if BJMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInQuotation.BJDetCalcFields(DataSet: TDataSet);
begin
 {if BJMas.FieldByName('PayVN').Value=1 then
  begin
    if not  BJDet.FieldByName('USprice').IsNull   then
    begin
      if not  BJDet.FieldByName('SuppEx').IsNull then
      begin
        BJDet.fieldbyname('ERP_VN').value:=trunc(BJDet.fieldbyname('USprice').value*BJDet.fieldbyname('SuppEx').value+0.5);
      end else
      begin
       if not  BJDet.FieldByName('ErpEx').IsNull  then
       begin
        BJDet.fieldbyname('ERP_VN').value:=trunc(BJDet.fieldbyname('USprice').value*BJDet.fieldbyname('ErpEx').value+0.5);
       end;
     end;
    end;
    if (not  BJDet.FieldByName('VNPrice').IsNull) and (BJDet.FieldByName('USprice').IsNull) then
    begin
      BJDet.fieldbyname('ERP_VN').value:=BJDet.fieldbyname('VNPrice').value;
    end;
  end else
  begin
    if not  BJDet.FieldByName('USprice').IsNull  then
    begin
      BJDet.fieldbyname('ERP_US').value:= BJDet.fieldbyname('USPrice').value;
    end else
    begin
       if not  BJDet.FieldByName('VNPrice').IsNull  then
       begin
        BJDet.fieldbyname('ERP_VN').value:=BJDet.fieldbyname('VNPrice').value;
       end;
    end;
 end; }
end;

procedure TKhuonInQuotation.BD6Click(Sender: TObject);
begin
  with BJDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInQuotation.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if BJMas.FieldByName('YN').value='0' then
 begin
    DBGridEh1.canvas.font.color:=clred;
 end;
end;

procedure TKhuonInQuotation.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if BJDet.FieldByName('YN').value='0' then
 begin
    DBGridEh2.canvas.font.color:=clred;
 end;
end;

procedure TKhuonInQuotation.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  BJMas.active  then
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
        for   i:=0   to   BJMas.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=BJMas.fields[i].FieldName;
        end;
        BJMas.First;
        j:=2;
        while   not   BJMas.Eof   do
        begin
          for   i:=0   to  BJMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=BJMas.Fields[i].Value;
          end;
          BJMas.Next;
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

procedure TKhuonInQuotation.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  BJDet.active  then
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
        for   i:=0   to   BJDet.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=BJDet.fields[i].FieldName;
        end;
        BJDet.First;
        j:=2;
        while   not   BJDet.Eof   do
        begin
          for   i:=0   to  BJDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=BJDet.Fields[i].Value;
          end;
          BJDet.Next;
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

end.
