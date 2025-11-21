unit ExtraPur1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,dateUtils,
  math,Menus,comobj, GridsEh, DBGridEh ,IniFiles;

type
  TExtraPur = class(TForm)
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasJGLX: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetQty: TCurrencyField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    JGDetZ: TQuery;
    JGDetZCLBH: TStringField;
    JGDetZZMLB: TStringField;
    JGDetZYWPM: TStringField;
    JGDetZDWBH: TStringField;
    JGDetZQty: TCurrencyField;
    DS2: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    JGDetUSPrice: TCurrencyField;
    pop1: TPopupMenu;
    SNP1: TMenuItem;
    Edit1: TEdit;
    Label2: TLabel;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGDetUSACC: TCurrencyField;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure SNP1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure DBGridEh2ColExit(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    
  end;

var
  ExtraPur: TExtraPur;
  NDate:Tdate;

implementation

uses main1, ExtraPur_BJ1;

{$R *.dfm}

procedure TExtraPur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  free;
end;

procedure TExtraPur.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('where JGZl.CFMID2='+''''+'NO'+''' ');
    //sql.add('and JGZl.JGLX='+''''+'2'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');  
    sql.add('and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by JGZL.JGNO  ');
    active:=true;
  end;
  JGDet.Active:=true;
end;

procedure TExtraPur.Button3Click(Sender: TObject);
begin
  JGDet.Active:=false;
  JGMas.Active:=false;
  JGMas.Active:=true;
  JGDet.Active:=true;
end;

procedure TExtraPur.ReadIni();
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
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TExtraPur.FormCreate(Sender: TObject);
begin
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
  ReadIni();
end;

procedure TExtraPur.Button2Click(Sender: TObject);
var y1,m1,d1,y2,m2,d2:word;
begin
  decodedate(JGMas.fieldbyname('JGDATE').value,y1,m1,d1);
  decodedate(date,y2,m2,d2);
  if  daysbetween(Ndate,JGMas.fieldbyname('JGDATE').Value)>240  then
  begin
    showmessage('Pls contect with data maintainer.');
    abort;
  end; {
if JGMas.fieldbyname('JGLX').value='1' then
  begin }
  with JGDet do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('VNPrice').isnull and fieldbyname('USPrice').isnull  then
      begin
        showmessage('Price can not be empty.');
        abort;
      end;
      if (not fieldbyname('VNPrice').isnull) and (not fieldbyname('USPrice').isnull)  then
      begin
        showmessage('Can not have two price.');
        abort;
      end;
      if  ((not fieldbyname('VNPrice').isnull) and fieldbyname('VNACC').isnull) then
      begin
        edit;
        fieldbyname('VNACC').value:=trunc(fieldbyname('VNPrice').value*fieldbyname('Qty').value+0.5);
      end;
      if  (not fieldbyname('USPrice').isnull) then
      begin
        edit;
        fieldbyname('USACC').value:=trunc(fieldbyname('USPrice').value*fieldbyname('Qty').value*100+0.5)/100;
      end;
      next;
    end;
  end;


  try  //更新真正庫存
    with JGDet do
    begin
      first;
      while not eof do
      begin
        if updatestatus=usmodified then
        begin
          UPdet.apply(ukmodify);
        end;
        next;
      end;
    end;
    with JGMas do
    begin
      edit;
      fieldbyname('CFMID2').Value:=main.edit1.text;
      fieldbyname('CFMDATE2').Value:=Ndate;
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TExtraPur.JGDetAfterOpen(DataSet: TDataSet);
begin
  JGDetZ.active:=true;
  if JGDet.recordcount=0 then
  begin
    SNP1.Enabled:=false;
  end else
  begin
    SNP1.Enabled:=true;
  end;
  DBGridEh2.Columns[6].ReadOnly:=true;
  DBGridEh2.Columns[7].ReadOnly:=true;
end;

procedure TExtraPur.SNP1Click(Sender: TObject);
begin
  JGDet.Edit;
  JGDet.FieldByName('VNPrice').Clear;
  JGDet.FieldByName('USPrice').Clear;
  JGDet.FieldByName('VNACC').Clear;
  JGDet.FieldByName('USACC').Clear;
  DBGridEh2.Columns[6].ReadOnly:=false;
  DBGridEh2.Columns[7].ReadOnly:=false;
end;

procedure TExtraPur.FormDestroy(Sender: TObject);
begin
  ExtraPur:=nil;
end;

procedure TExtraPur.EXCEL1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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
        JGDet.active:=false;
        JGDetZ.Active:=false;
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   JGMas.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=JGMas.fields[i].FieldName;
        end;

        JGMas.First;
        j:=2;
        while   not   JGMas.Eof   do
        begin
          for   i:=0   to  JGMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=JGMas.Fields[i].Value;
          end;
          JGMas.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
        JGDet.active:=true;
        JGDetZ.Active:=true;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;


end;

procedure TExtraPur.DBGridEh2ColExit(Sender: TObject);
begin
  if DBGridEh2.selectedfield.fieldname='USACC' then
  begin
    if not JGDet.FieldByName('USACC').isnull  then
    begin
      if DBGridEh2.Columns[6].readonly=false then
      begin
        if  JGDet.FieldByName('VNPrice').IsNull then
        begin
          JGDet.Edit;
          JGDet.FieldByName('USPrice').value:=trunc(JGDet.FieldByName('USACC').Value/JGDet.FieldByName('Qty').Value*10000+0.5)/10000;
        end else
        begin
          messagedlg('Can not have 2 price.',mterror,[mbYes,mbNo],0);
        end;
      end;
    end;
  end;

  if DBGridEh2.selectedfield.fieldname='VNACC' then
  begin
    if not JGDet.FieldByName('VNACC').isnull  then
    begin
      if DBGridEh2.Columns[7].readonly=false then
      begin
        if  JGDet.FieldByName('USPrice').IsNull then
        begin
          JGDet.Edit;
          JGDet.FieldByName('VNPrice').value:=trunc(JGDet.FieldByName('VNACC').Value/JGDet.FieldByName('Qty').Value+0.5);
        end else
        begin
          messagedlg('Can not have 2 price.',mterror,[mbYes,mbNo],0);
        end;
      end;
    end;
  end;
  if DBGridEh2.Selectedfield.fieldname='USPrice' then
  begin
    if ((JGDet.FieldByName('USACC').isnull) and (not JGDet.FieldByName('USPrice').isnull)) then
    begin
      JGDet.Edit;
      JGDet.FieldByName('USACC').value:=trunc(JGDet.FieldByName('USPrice').value*JGDet.FieldByName('Qty').value*100+0.5)/100 ;
    end;
  end;
  if DBGridEh2.Selectedfield.fieldname='VNPrice' then
  begin
    if (JGDet.FieldByName('VNACC').isnull) and (not JGDet.FieldByName('VNPrice').isnull )then
    begin
      JGDet.Edit;
      JGDet.FieldByName('VNACC').value:=trunc(JGDet.FieldByName('VNPrice').value*JGDet.FieldByName('Qty').value+0.5) ;
    end;
  end;
end;

procedure TExtraPur.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if not JGDet.fieldbyname('BJNO').isnull then
  begin
    ExtraPur_BJ:=TExtraPur_BJ.create(self);
    ExtraPur_BJ.edit1.text:=JGDet.fieldbyname('CLBH').Value;
    ExtraPur_BJ.button1click(nil);
    ExtraPur_BJ.show;
  end;
  with JGDet do
  begin
    edit;
    fieldbyname('USACC').value:=null; 
    fieldbyname('USPrice').value:=null;
    fieldbyname('VNACC').value:=null;
    fieldbyname('VNPrice').value:=null;
  end;
end;

end.
