unit RejectMat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  Buttons, ExtCtrls;

type
  TRejectMat = class(TForm)
    pgc1: TPageControl;
    ts_QC: TTabSheet;
    Label3: TLabel;
    Panel1: TPanel;
    Label15: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edtMatID: TEdit;
    edtSupID: TEdit;
    edtSupN: TEdit;
    edtMatN: TEdit;
    DB_Mat: TDBGridEh;
    edtShipment: TEdit;
    ts_WH: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dtp3: TDateTimePicker;
    dtp4: TDateTimePicker;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    Edit1: TEdit;
    dbgrdh_WH: TDBGridEh;
    DSMat: TDataSource;
    QryMat: TQuery;
    QryMatNo_ID: TIntegerField;
    QryMatCLBH: TStringField;
    QryMatCGNO: TStringField;
    QryMatDateInput: TDateTimeField;
    QryMatZSBH: TStringField;
    QryMatGSBH: TStringField;
    QryMatywpm: TStringField;
    QryMatdwbh: TStringField;
    QryMatzsywjc: TStringField;
    UpMat: TUpdateSQL;
    Qrytemp: TQuery;
    PopupMenu1: TPopupMenu;
    btnCOPY: TMenuItem;
    dsWH: TDataSource;
    qryWH: TQuery;
    strngfldWHNo_ID: TStringField;
    strngfldWHCLBH: TStringField;
    strngfldWHCGNO: TStringField;
    dtmfldWHDateInput: TDateTimeField;
    strngfldWHZSBH: TStringField;
    strngfldWHGSBH: TStringField;
    strngfldWHywpm: TStringField;
    strngfldWHdwbh: TStringField;
    strngfldWHzsywjc: TStringField;
    upWH: TUpdateSQL;
    pm1: TPopupMenu;
    pmCopy: TMenuItem;
    btn1: TButton;
    btnQ: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnQClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DB_MatDblClick(Sender: TObject);
    procedure btnCOPYClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrdh_WHDblClick(Sender: TObject);
    procedure pmCopyClick(Sender: TObject);
    procedure pm1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RejectMat: TRejectMat;
  NDate:TDate;

implementation

uses main1 , RejectMaterial1;

{$R *.dfm}

procedure TRejectMat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRejectMat.FormDestroy(Sender: TObject);
begin
  RejectMat:=nil;
end;

procedure TRejectMat.FormCreate(Sender: TObject);
begin
  with Qrytemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('SELECT GETDATE() as NDate');
    Active:=true;
    Ndate:=fieldbyname('NDate').Value;
    DTP1.Date:=NDate-30;
    DTP2.Date:=NDate;
    DTP3.Date:=NDate-30;
    DTP4.Date:=NDate;
  end;
  pgc1.ActivePage:=ts_QC;
end;

procedure TRejectMat.btnQClick(Sender: TObject);
begin
  with QryMat do
  begin
    Active:=false;
    sql.Clear;
    sql.add('SELECT mc.No_ID, mc.CLBH, mc.CGNO, mc.DateInput, mc.ZSBH,');
    sql.add('       mc.GSBH ,clzl.ywpm, clzl.dwbh, ZSZL.zsywjc');
    sql.add('FROM MaterialQCcheck mc');
    sql.add('left join clzl on clzl.CLDH = mc.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH =mc.ZSBH');
    sql.add('WHERE CONVERT(VARCHAR(10),DateInput,111) BETWEEN');
    sql.add('    '''+FormatDateTime('yyyy/MM/dd',DTP1.Date)+''' AND '''+FormatDateTime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add('AND mc.GSBH='''+main.Edit2.Text+'''');
    sql.add('  AND NOT EXISTS (SELECT 1 FROM RejectMaterialS r WHERE r.No_ID=mc.No_ID');
    sql.add('  AND r.CGNO=mc.CGNO AND r.ZSBH=mc.ZSBH AND r.CLBH=mc.CLBH)');
    if edtMatID.Text<>'' then
       sql.Add('   AND mc.CLBH like '''+edtMatID.Text+'%''');
    if edtMatN.Text<>'' then
       sql.Add('   AND clzl.ywpm like ''%'+edtMatN.Text+'%''');
    if edtSupID.Text<>'' then
       sql.Add('   AND mc.ZSBH = '''+edtSupID.Text+'''');
    if edtSupN.Text<>'' then
       sql.Add('   AND zszl.zsywjc like ''%'+edtSupN.Text+'%''');
    if edtShipment.Text<>'' then
       sql.Add('   AND mc.CGNO like ''%'+edtShipment.Text+'%''');
    Active:=true;
  end;
end;

procedure TRejectMat.PopupMenu1Popup(Sender: TObject);
begin
  btnCOPY.Enabled:=false;
  if (QryMat.Active) AND (QryMat.RecordCount>0) then
      btnCOPY.Enabled:=true;
end;

procedure TRejectMat.DB_MatDblClick(Sender: TObject);
begin
  with RejectMaterial.Qry_Mat do
  begin
    if FieldByName('YN').AsString='' then
      Insert
    else
      Edit;
    FieldByName('No_ID').AsString:=QryMat.fieldbyname('No_ID').AsString;
    FieldByName('CLBH').AsString:=QryMat.fieldbyname('CLBH').AsString;
    FieldByName('CGNO').AsString:=QryMat.fieldbyname('CGNO').AsString;
    FieldByName('RKDate').Value:=QryMat.fieldbyname('DateInput').Value;
    FieldByName('ZSBH').AsString:=QryMat.fieldbyname('ZSBH').AsString;
    FieldByName('ywpm').AsString:=QryMat.fieldbyname('ywpm').AsString;
    FieldByName('dwbh').AsString:=QryMat.fieldbyname('dwbh').AsString;
    FieldByName('zsywjc').AsString:=QryMat.fieldbyname('zsywjc').AsString;
    FieldByName('Rack').AsString:='Y';
    QryMat.Delete;
  end;
end;

procedure TRejectMat.btnCOPYClick(Sender: TObject);
var bm:Tbookmark;
    k:integer;
    bookmarklist:tbookmarklistEH;
begin
  if messagedlg('Do you really want to add these record?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
     abort;
  QryMat.disablecontrols;
  bm:=QryMat.getbookmark;
  bookmarklist:=DB_Mat.selectedrows;
  try
    for k:=0 to bookmarklist.count-1 do
    begin
      QryMat.gotobookmark(pointer(bookmarklist[k]));
      DB_MatDblClick(nil);
    end;
   finally
    begin
     //Query1.gotobookmark(bm);
      QryMat.freebookmark(bm);
      QryMat.enablecontrols;
    end;
  end;
end;

procedure TRejectMat.btn1Click(Sender: TObject);
begin
  with qryWH do
  begin
    Active := false;
    sql.Clear;
    SQL.Add('  SELECT Distinct''0'' No_ID, mc.CLBH, KCRK.ZSNO CGNO, KCRK.UserDate DateInput, KCRK.ZSBH, ');
    SQL.Add('         KCRK.GSBH ,clzl.ywpm, clzl.dwbh, ZSZL.zsywjc  ');
    SQL.Add('  FROM KCRKS mc  ');
    SQL.Add('  left join kcrk on kcrk.RKNO= mc.RKNO  ');
    SQL.Add('  left join clzl on clzl.CLDH = mc.CLBH  ');
    SQL.Add('  left Join ZSZL on ZSZL.ZSDH =kcrk.ZSBH  ');
    sql.add('WHERE CONVERT(VARCHAR(10),KCRK.UserDate,111) BETWEEN');
    sql.add('    ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');
    sql.Add('AND KCRK.GSBH='''+main.Edit2.Text+'''');
    sql.add('  AND Not EXISTS (SELECT 1 FROM RejectMaterialS r WHERE r.No_ID=''0'' ');
    sql.add('  AND r.CGNO=KCRK.ZSNO AND r.ZSBH=KCRK.ZSBH AND r.CLBH=mc.CLBH )');
    sql.add('  AND NOT EXISTS (SELECT 1 FROM MaterialQCcheck WHERE CGNO=KCRK.ZSNO AND ZSBH=KCRK.ZSBH AND CLBH=mc.CLBH )');
    if edt1.Text <> '' then
      sql.Add('   AND mc.CLBH like ''' + edt1.Text + '%''');
    if edt4.Text <> '' then
      sql.Add('   AND clzl.ywpm like ''%' + edt4.Text + '%''');
    if edt2.Text <> '' then
      sql.Add('   AND KCRK.ZSBH = ''' + edt2.Text + '''');
    if edt3.Text <> '' then
      sql.Add('   AND zszl.zsywjc like ''%' + edt3.Text + '%''');
    if Edit1.Text <> '' then
      sql.Add('   AND KCRK.ZSNO  like ''%' + Edit1.Text + '%''');
    Active := true;
  end;
end;

procedure TRejectMat.dbgrdh_WHDblClick(Sender: TObject);
begin
  with RejectMaterial.Qry_Mat do
  begin
    if FieldByName('YN').AsString='' then
       Insert
    else
       Edit;
    FieldByName('No_ID').AsString:=qryWH.fieldbyname('No_ID').AsString;
    FieldByName('CLBH').AsString:=qryWH.fieldbyname('CLBH').AsString;
    FieldByName('CGNO').AsString:=qryWH.fieldbyname('CGNO').AsString;
    FieldByName('RKDate').Value:=qryWH.fieldbyname('DateInput').Value;
    FieldByName('ZSBH').AsString:=qryWH.fieldbyname('ZSBH').AsString;
    FieldByName('ywpm').AsString:=qryWH.fieldbyname('ywpm').AsString;
    FieldByName('dwbh').AsString:=qryWH.fieldbyname('dwbh').AsString;
    FieldByName('zsywjc').AsString:=qryWH.fieldbyname('zsywjc').AsString;
    FieldByName('Rack').AsString:='Y';
    qryWH.Delete;
  end;
end;

procedure TRejectMat.pmCopyClick(Sender: TObject);
var bm:Tbookmark;
    k:integer;
    bookmarklist:tbookmarklistEH;
begin
  if messagedlg('Do you really want to add these record?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
     abort;
  qryWH.disablecontrols;
  bm:=qryWH.getbookmark;
  bookmarklist:=DB_Mat.selectedrows;
  try
    for k:=0 to bookmarklist.count-1 do
    begin
      qryWH.gotobookmark(pointer(bookmarklist[k]));
      dbgrdh_WHDblClick(nil);
    end;
   finally
    begin
     //Query1.gotobookmark(bm);
      qryWH.freebookmark(bm);
      qryWH.enablecontrols;
    end;
  end;
  
end;

procedure TRejectMat.pm1Popup(Sender: TObject);
begin
  pmCopy.Enabled:=false;
  if (QryMat.Active) AND (QryMat.RecordCount>0) then
    pmCopy.Enabled:=true;
end;

end.
