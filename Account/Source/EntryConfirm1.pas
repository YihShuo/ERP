unit EntryConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, ExtCtrls, DBTables, Grids, DBGrids,
  GridsEh, DBGridEh, Menus, IniFiles;

type
  TEntryConfirm = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button4: TButton;
    DBGrid2: TDBGridEh;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    UpMas: TUpdateSQL;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Qtemp: TQuery;
    EnDetExchACC: TFloatField;
    CWHLS: TQuery;
    EnMasDOCNO: TStringField;
    CheckBox1: TCheckBox;
    CB1: TComboBox;
    EnDetinvno: TStringField;
    EnDetCNO: TStringField;
    EnMasYN_Date: TDateTimeField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    EnDetRKSB: TStringField;
    EnDetCWBH: TStringField;
    EnDetRKMEMO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure EnMasNewRecord(DataSet: TDataSet);
    procedure EnDetNewRecord(DataSet: TDataSet);
    procedure Print1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EnDetAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;  
    { Public declarations }
  end;

var
  EntryConfirm: TEntryConfirm;
  NDate:Tdate;

implementation

uses main1, Entry_PrintTW1;

{$R *.dfm}
procedure TEntryConfirm.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;    
end;
//

procedure TEntryConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TEntryConfirm.Button1Click(Sender: TObject);
begin 
  with CWHLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('where HLYEAR+'+''''+ '/'+''''+'+HLMONTH+'+''''+'/'+''''+'+HLDAY between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',DTP2.date)+'''')   ;
    sql.add('order by HLYEAR,HLMONTH,HLDAY');
    active:=true;
  end;
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('where KCRK.YN<>'+''''+'5'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCRK.CFMID<>'+''''+'NO'+'''');
    sql.add('and KCCK.GSBH='+''''+main.edit2.text+'''');
    if CB1.text<>'' then
    begin
      if checkbox1.Checked then
         sql.Add('and KCCK.CKBH ='+''''+CB1.text+'''')
      else
         sql.Add('and KCCK.CKBH not in ('+''''+CB1.text+''')')
    end;
    sql.add('order by KCRK.RKNO  ');
    //memo1.text:=sql.text;
    active:=true;
  end;
  if enmas.RecordCount > 0 then
    EnDet.Active:=true;
end;

procedure TEntryConfirm.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK  where GSBH ='''+main.Edit2.Text+''' order by CKBH');
    active:=true;
    CB1.Items.Add('');
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
  end;
  with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      Ndate:=fieldbyname('NDate').Value;
      active:=false;
    end;
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
  readini();
end;

procedure TEntryConfirm.Button2Click(Sender: TObject);
begin
  if EnMas.FieldByName('CFMID').value='NO' then
  begin
    showmessage('Purchase did not confirm.');
    abort;
  end;

  with EnDet do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('CostID').isnull  then
      begin
          showmessage('CostID can not be empty.');
          abort;
      end;
      if fieldbyname('CWBH').isnull  then
      begin
          showmessage('CWBH can not be empty.');
          abort;
      end;
      next;
    end;
  end;

 try  //更新真正庫存
   with EnDet do
   begin
      first;
      while not eof do
      begin
        if updatestatus=usmodified then
        begin
          edit;
          fieldbyname('YN').value:='5';
          UPdet.apply(ukmodify);
        end;
        next;
      end;
    end;
   with EnMas do
   begin
      edit;
      fieldbyname('YN').Value:='5';
      fieldbyname('YN_Date').Value:=Ndate;
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
   end;
   showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEntryConfirm.Button3Click(Sender: TObject);
begin
  EnDet.Active:=false;
  EnMas.Active:=false;
  EnMas.Active:=true;
  EnDet.Active:=true;
end;

procedure TEntryConfirm.Button4Click(Sender: TObject);
begin
  try
    with EnMas do
      begin
        edit;
        fieldbyname('CFMID').Value:='NO';
        UPMas.Apply(ukmodify);
        active:=false;
        active:=true;
      end;
  showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEntryConfirm.EnMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TEntryConfirm.EnDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TEntryConfirm.Print1Click(Sender: TObject);
begin
  if EnMas.Active then
  begin
    if Enmas.recordcount>0 then
      begin
        Entry_PrintTW:=TEntry_PrintTW.create(self);
        Entry_PrintTW.quickrep1.preview;
        Entry_PrintTW.free;
      end;
  end;
end;

procedure TEntryConfirm.FormDestroy(Sender: TObject);
begin
  EntryConfirm:=nil;
end;

procedure TEntryConfirm.EnDetAfterOpen(DataSet: TDataSet);
var y1,m1,d1:string;
    y,m,d:word;
begin
  if EnDet.RecordCount>0 then
  begin
    with EnDet do
    begin      
      decodedate(EnMas.fieldbyname('USERDate').Value,y,m,d);
       if length(inttostr(m))=1 then
        m1:='0'+inttostr(m)
       else
        m1:=inttostr(m);
       if length(inttostr(d))=1 then
        d1:='0'+inttostr(d)
       else
         d1:=inttostr(d);
       y1:=inttostr(y);
       if CWHLS.locate('HLYEAR;HLMONTH;HLDAY',vararrayof([y1,m1,d1]),[]) then
       begin
          while not eof do
            begin
              if ((fieldbyname('CWHL').isnull and fieldbyname('VNACC').isnull) or ((not fieldbyname('USACC').IsNull) and (fieldbyname('VNACC').isnull)))  then
                begin
                  edit;
                  fieldbyname('CWHL').value:=CWHLS.FieldByName('CWHL').value   ;
                  fieldbyname('VNprice').value:=trunc(fieldbyname('USprice').value*fieldbyname('CWHL').value+0.5);
                  fieldbyname('VNACC').value:=trunc(fieldbyname('USACC').value*fieldbyname('CWHL').value+0.5);
                  post;
                end;
              next;
            end;
          first;
        end else
        begin
            showmessage('Pls key in Exchange first.');
        end;
    end;
  end;
end;

procedure TEntryConfirm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    Button1Click(edit1);
end;

end.
