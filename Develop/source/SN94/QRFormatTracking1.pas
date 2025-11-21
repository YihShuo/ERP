unit QRFormatTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask,
  Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, Menus, iniFiles;

type
  TQRFormatTracking = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB1: TBitBtn;
    Panel6: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BDT5: TBitBtn;
    PC2: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    DBGrid4: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    CB1: TCheckBox;
    DS4: TDataSource;
    SCDet: TQuery;
    SCDetUSERDATE: TDateTimeField;
    SCDetUSERID: TStringField;
    SCDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    SCMas: TQuery;
    SCMasUSERDATE: TDateTimeField;
    SCMasUSERID: TStringField;
    SCMasYN: TStringField;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    UpTemp: TQuery;
    BDelRec: TQuery;
    SCMasSCNO: TStringField;
    SCMasGSBH: TStringField;
    SCMasID: TStringField;
    SCMasName: TStringField;
    SCMasDept: TStringField;
    SCDetSCNO: TStringField;
    SCDetSKU: TStringField;
    SCDetSR: TStringField;
    SCDetbarcode: TStringField;
    SCDetQty: TIntegerField;
    SCDetRON: TBooleanField;
    SCDetReturn: TBooleanField;
    SCDetRemarks: TStringField;
    SCDetIDScanMove: TStringField;
    SCDetScanMoveDate: TDateTimeField;
    SCDetScanReDate: TDateTimeField;
    SCDetIDScanRe: TStringField;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Track: TQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    BooleanField2: TBooleanField;
    StringField5: TStringField;
    DS5: TDataSource;
    TrackID: TStringField;
    TrackName: TStringField;
    TrackDept: TStringField;
    TrackPurpose: TStringField;
    SCDetPurpose: TStringField;
    TrackDay: TIntegerField;
    Label9: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    DTP3: TDateTimePicker;
    Label10: TLabel;
    DTP4: TDateTimePicker;
    Button2: TButton;
    Label11: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    Edit8: TEdit;
    ComboBox5: TComboBox;
    Label13: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    RadioGroup1: TRadioGroup;
    TrackRON: TBooleanField;
    TrackSCNO: TStringField;
    TrackScanMoveDate: TStringField;
    TrackScanReDate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure SCDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure PC2Change(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure SCDetNewRecord(DataSet: TDataSet);
    procedure BDT5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFormatTracking: TQRFormatTracking;
  Ndate:Tdate;

implementation

uses main1, FunUnit, QRSKU1, QRFormatTracking_Print1;

{$R *.dfm}

procedure TQRFormatTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TQRFormatTracking.FormDestroy(Sender: TObject);
begin
  QRFormatTracking:=nil;
end;

procedure TQRFormatTracking.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  PC1.ActivePage:=TS1;
  PC2.ActivePage:=TS3;
  DTP1.Date:=date-15;
  DTP2.date:=date;
  DTP3.Date:=date-15;
  DTP4.date:=date;
  combobox5.ItemIndex:=0;
  RadioGroup1.ItemIndex:=0;
end;

procedure TQRFormatTracking.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TQRFormatTracking.Button1Click(Sender: TObject);
begin
  with SCMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from ShoeTestScan');
    sql.add('where convert(smalldatetime,convert(varchar,USERDATE,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    if edit1.Text<>'' then
    begin
      sql.add('    and SCNO like '+''''+edit1.Text+'%'+'''');
    end;
    if edit2.Text<>'' then
    begin
      sql.add('    and Dept like '+''''+'%'+edit2.text+'%'+'''');
    end;
    if edit5.Text<>'' then
    begin
      sql.add('    and ID like '+''''+'%'+edit5.text+'%'+'''');
    end;
    if CB1.Checked then
    begin
      sql.add('    and USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by SCNO DESC');
    //memo1.text:=sql.text;
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  SCDet.Active:=true;
end;

procedure TQRFormatTracking.BB2Click(Sender: TObject);
begin
  with SCMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQRFormatTracking.BB3Click(Sender: TObject);
begin
  if SCMas.FieldByName('USERID').value=main.Edit1.Text then
  begin
    if SCDet.recordcount=0 then
    begin
      with SCMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    end else
    begin
      showmessage('Pls delete Detail first.')
    end;
  end else
  begin
    showmessage('It is not yours, can not delete.');
    abort;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQRFormatTracking.BB4Click(Sender: TObject);
begin
  if SCDet.recordcount=0 then
  begin
    with SCMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
  end else
  begin
    showmessage('Pls delete Detail first.')
  end;
end;

procedure TQRFormatTracking.BB6Click(Sender: TObject);
begin
  with SCMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TQRFormatTracking.BB5Click(Sender: TObject);
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
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    SCDet.active:=false;
    SCMas.first;
    for i:=1 to SCMas.RecordCount do
    begin
      case SCMas.updatestatus of
        usinserted:
        begin
          if (SCMas.fieldbyname('ID').isnull) or (SCMas.fieldbyname('Name').isnull) or (SCMas.fieldbyname('Dept').isnull)then
          begin
            SCMas.delete;
          end else
          begin
            with query1 do    //計算領料單流水號
            begin
               active:=false;
               sql.Clear;
               sql.Add('select SCNO from ShoeTestScan where SCNO like '+''''+y+m+'%'+'''');
               sql.add('order by SCNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('SCNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<4 do
                 begin
                   a:='0'+a;
                 end;
               end else
               begin
                 a:='0001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             SCMas.edit;
             SCMas.fieldbyname('SCNO').Value:=a;
             SCMas.FieldByName('GSBH').Value:=main.edit2.text;
             SCMas.FieldByName('userID').Value:=main.edit1.text;
             SCMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
             SCMas.FieldByName('YN').Value:='1';
             upMas.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if (SCMas.fieldbyname('YN').value='0')  then
          begin
             upMas.apply(ukdelete);
          end else
          begin
            if SCMas.FieldByName('USERID').value<>main.Edit1.Text then
               showmessage('It is not yours, can not modify.')
            else
            begin
              SCMas.edit;
              SCMas.FieldByName('userID').Value:=main.edit1.text;
              SCMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              upMas.apply(ukmodify);
            end;
          end;
        end;
      end;
    SCMas.next;
  end;
  SCMas.active:=false;
  SCMas.cachedupdates:=false;
  SCMas.requestlive:=false;
  SCMas.active:=true;
  SCDet.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TQRFormatTracking.SCDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT5.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  if  SCMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    //BDT5.Enabled:=false;
   // BDT6.Enabled:=false;
  end;

  if SCMas.FieldByName('USERID').value<>main.Edit1.Text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    //BDT5.Enabled:=false;
   // BDT6.Enabled:=false;
  end;
end;

procedure TQRFormatTracking.BD2Click(Sender: TObject);
begin
  if SCMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC2.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with SCDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('Qty').Value:='1';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQRFormatTracking.BD3Click(Sender: TObject);
begin
  if SCMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC2.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with SCDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TQRFormatTracking.BD4Click(Sender: TObject);
begin
  if SCMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with SCDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQRFormatTracking.BD6Click(Sender: TObject);
begin
  with SCDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[1].ButtonStyle:=cbsNone;
end;

procedure TQRFormatTracking.BD5Click(Sender: TObject);
var n1,n2:extended;
    m1,m2:real;
    a,b,c,d,fk:string;
begin
  with SCDet do
  begin
    first;
    while not SCDet.Eof do
    begin
      if SCDet.FieldByName('Purpose').AsString='' then
      begin
        showmessage('Please fill Purpose !');
        exit;
      end;
      if SCDet.FieldByName('Qty').AsString=''  then
      begin
          edit;
          SCDet.FieldByName('Qty').value:=1;
      end;
      Next;
    end;
  end;
  try
    SCDet.first;
    while not SCDet.eof do
    begin
      case SCDet.updatestatus of
        usinserted:
        begin
          if (SCDet.FieldByName('SKU').IsNull) and (SCDet.FieldByName('SR').IsNull) then
          begin
            SCDet.Delete;
          end else begin
            with query1 do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select MAX(CAST(SUBSTRING(barcode, 0, LEN(barcode)) as bigint)) barcode from ShoeTestScanS where SCNO = '''+SCMas.fieldbyname('SCNO').Value+''' ');
              active:=true;
              if fieldbyname('barcode').AsString <>'' then
              begin
                a:=fieldbyname('barcode').AsString;
                b:=SCMas.fieldbyname('SCNO').AsString;
                if length(a) = (length(b)+1) then
                  a:=copy(a,length(a),1)
                else a:=copy(a,length(a)-1,2);
                a:=inttostr(strtoint(a)+1);
                a:=SCMas.fieldbyname('SCNO').AsString+a+'.';
              end else
              begin
                a:=SCMas.fieldbyname('SCNO').AsString+'1.';
              end;
              active:=false;
            end;
            SCDet.edit;
            SCDet.fieldbyname('SCNO').Value:=SCMas.fieldbyname('SCNO').Value;
            SCDet.fieldbyname('Returnn').Value:=0;
            SCDet.fieldbyname('barcode').Value:=a;
            SCDet.fieldbyname('USERID').Value:=main.Edit1.Text;
            SCDet.fieldbyname('USERDate').Value:=date;
            SCDet.fieldbyname('YN').Value:='1';
            Updet.Apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if SCDet.fieldbyname('YN').value='0' then
          begin
            if (SCDet.fieldbyname('IDScanMove').AsString='') then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'ShoeTestScanS'+''''+','+''''+SCMas.fieldbyname('SCNO').Value+'''');
                sql.add(','+''''+SCdet.fieldbyname('SR').Value+'***'+SCdet.fieldbyname('barcode').Value+''''+','+''''+SCdet.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              UpDet.Apply(ukdelete);
            end else showmessage('Shoe had scan move, can not delete!!!');
          end else
          begin
            if (SCDet.fieldbyname('IDScanMove').AsString='') then
            begin
              UpDet.Apply(ukmodify);
            end else if (SCDet.fieldbyname('IDScanMove').AsString<>'') and (SCDet.fieldbyname('RON').value=false) and (SCDet.fieldbyname('Returnn').value=true) then
            begin
              with Uptemp do
              begin
                active:=false;
                sql.Clear;
                sql.Add('update ShoeTestScanS');
                sql.Add('set Remarks='''+SCDet.fieldbyname('Remarks').AsString+''' ');
                sql.Add('where SCNO='''+SCDet.fieldbyname('SCNO').Value+''' ');
                //sql.Add('and SKU='''+SCDet.fieldbyname('SKU').Value+''' ');
                sql.Add('and SR='''+SCDet.fieldbyname('SR').Value+''' ');
                sql.Add('and barcode='''+SCDet.fieldbyname('barcode').Value+''' ');
                //fununit.funcObj.WriteErrorLog(sql.Text);
                execsql;
                active:=false;
              end;
            end else showmessage('Shoe had scan move, can not modify!!!');
          end;
        end;
      end;
      SCDet.next;
    end;
  SCDet.active:=false;
  SCDet.RequestLive:=false;
  SCDet.CachedUpdates:=false;
  SCDet.active:=true;
  bb6.enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[1].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TQRFormatTracking.PC2Change(Sender: TObject);
begin
  if PC2.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TQRFormatTracking.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SCMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;
end;

procedure TQRFormatTracking.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SCDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
  end;
  if SCDet.FieldByName('Returnn').value=true then
  begin
    dbgrid4.canvas.font.color:=clBlue;
  end;
end;

procedure TQRFormatTracking.DBGrid4EditButtonClick(Sender: TObject);
begin
  if (dbgrid4.Selectedfield.fieldname='SKU') or (dbgrid4.Selectedfield.fieldname='SR') then
  begin
    QRSKU:=TQRSKU.create(self);
    QRSKU.show;
  end;
end;

procedure TQRFormatTracking.SCDetNewRecord(DataSet: TDataSet);
begin
  SCDet.FieldByName('RON').Value := 0;
  SCDet.FieldByName('Returnn').Value := 0;
end;

procedure TQRFormatTracking.BDT5Click(Sender: TObject);
begin
  QRFormatTracking_Print:=TQRFormatTracking_Print.create(self);
  QRFormatTracking_Print.quickrep1.prepare;
  QRFormatTracking_Print.page1.caption:=inttostr(QRFormatTracking_Print.quickrep1.qrprinter.pagecount);
  QRFormatTracking_Print.quickrep1.preview;
end;

procedure TQRFormatTracking.Button2Click(Sender: TObject);
begin
  with Track do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, convert(varchar,ScanMoveDate,120)+ '' - '' + IDScanMove ScanMoveDate, ');
    sql.add('       convert(varchar,ScanReDate,120)+ '' - '' + IDScanRe ScanReDate, RON, Returnn, Remarks, ');
    sql.add('       case when isnull(IDScanRe,'''')='''' then DATEDIFF(day,ScanMoveDate,GETDATE()) else 0 end as Day ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where convert(smalldatetime,convert(varchar,ScanMoveDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    if edit3.Text<>'' then
    begin
      sql.add('    and ShoeTestScanS.SCNO like '+''''+edit3.Text+'%'+'''');
    end;
    if edit4.Text<>'' then
    begin
      sql.add('    and Dept like '+''''+'%'+edit4.text+'%'+'''');
    end;
    if edit6.Text<>'' then
    begin
      sql.add('    and ID like '+''''+'%'+edit6.text+'%'+'''');
    end;
    if edit7.Text<>'' then
    begin
      sql.add('    and SR like '+''''+'%'+edit7.text+'%'+'''');
    end;
    if edit8.Text<>'' then
    begin
      sql.add('    and SKU like '+''''+'%'+edit8.text+'%'+'''');
    end;
    if ComboBox5.ItemIndex=1 then
    begin
      sql.add('    and RON=1');
    end else if ComboBox5.ItemIndex=2 then
    begin
      sql.add('    and RON=0');
    end;
    if RadioGroup1.ItemIndex=1 then
    begin
      sql.add('    and isnull(IDScanRe,'''')<>'''' ');
    end else if RadioGroup1.ItemIndex=2 then
    begin
      sql.add('    and isnull(IDScanRe,'''')='''' ');
    end;
    sql.add('order by ShoeTestScanS.SCNO DESC');
    active:=true;
  end;
end;

procedure TQRFormatTracking.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Track.active  then
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
      eclApp.Cells(1,1):='#SKU';
      eclApp.Cells(1,2):='#SR';
      eclApp.Cells(1,3):='QTY';
      eclApp.Cells(1,4):='NAME';
      eclApp.Cells(1,5):='ID';
      eclApp.Cells(1,6):='DEPT';
      eclApp.Cells(1,7):='PURPOSE';
      eclApp.Cells(1,8):='MOVE OUT DATE';
      eclApp.Cells(1,9):='RECEIVE DATE';
      eclApp.Cells(1,10):='DAY';
      eclApp.Cells(1,11):='RETURN';
      eclApp.Cells(1,12):='REMARKS';
      eclApp.Cells(1,13):='RETURN OR NOT';
      eclApp.Cells(1,14):='SCNO';
      Track.First;
      j:=2;
      while   not   Track.Eof   do
      begin
        for   i:=0   to  Track.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Track.Fields[i].Value;
        end;
        Track.Next;
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

procedure TQRFormatTracking.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Track.FieldByName('Day').value>7) and (SCDet.FieldByName('RON').value=true) then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TQRFormatTracking.DBGrid3DblClick(Sender: TObject);
begin
  if  SCMas.Active then
  begin
    if  (SCMas.recordcount>0) then
      begin
        PC2.ActivePage:=TS4;
        panel6.visible:=true;
        panel1.visible:=false;
      end;
  end;
end;

end.
