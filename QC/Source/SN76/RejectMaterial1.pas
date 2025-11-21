unit RejectMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls,comobj,fununit;

type
  TRejectMaterial = class(TForm)
    Splitter1: TSplitter;
    Label3: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label42: TLabel;
    cbDate: TComboBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    cbType: TComboBox;
    edtMatID: TEdit;
    edtSupID: TEdit;
    edtSupN: TEdit;
    edtMatN: TEdit;
    btnExcel: TButton;
    edtRMNO: TEdit;
    cbo_Factory: TComboBox;
    pnl_WH: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btninsert1: TBitBtn;
    btnmodify1: TBitBtn;
    btndelete1: TBitBtn;
    btnsave1: TBitBtn;
    btncancel1: TBitBtn;
    DB_WH: TDBGridEh;
    Panel2: TPanel;
    Splitter2: TSplitter;
    pnl_RY: TPanel;
    pnlRY: TPanel;
    btnInsRY: TBitBtn;
    btnModRY: TBitBtn;
    btnDelRY: TBitBtn;
    btnSavRY: TBitBtn;
    btnCanRY: TBitBtn;
    DB_RY: TDBGridEh;
    pnl_Mat: TPanel;
    pnlMat: TPanel;
    btnInsMat: TBitBtn;
    btnModMat: TBitBtn;
    btnDelMat: TBitBtn;
    btnSavMat: TBitBtn;
    btnCanMat: TBitBtn;
    DB_Mat: TDBGridEh;
    DS_WH: TDataSource;
    Qry_WH: TQuery;
    Qry_WHRMNO: TStringField;
    Qry_WHCKBH: TStringField;
    Qry_WHTypes: TStringField;
    Qry_WHRejectDate: TDateTimeField;
    Qry_WHRemark: TStringField;
    Qry_WHUserID: TStringField;
    Qry_WHUserDate: TDateTimeField;
    Qry_WHYN: TStringField;
    Qry_WHGSBH: TStringField;
    Qry_WHDestroyDate: TDateTimeField;
    Up_WH: TUpdateSQL;
    DS_Mat: TDataSource;
    Qry_Mat: TQuery;
    Qry_MatRMNO: TStringField;
    Qry_MatNo_ID: TIntegerField;
    Qry_MatCGNO: TStringField;
    Qry_MatZSBH: TStringField;
    Qry_MatCLBH: TStringField;
    Qry_MatQty: TCurrencyField;
    Qry_MatRemark: TStringField;
    Qry_MatUserID: TStringField;
    Qry_MatUserDate: TDateTimeField;
    Qry_MatYN: TStringField;
    Qry_MatRKDate: TDateTimeField;
    Qry_Matywpm: TStringField;
    Qry_Matdwbh: TStringField;
    Qry_Matzsywjc: TStringField;
    Qry_MatRacks: TStringField;
    Qry_MatRack: TStringField;
    Up_Mat: TUpdateSQL;
    DS_RY: TDataSource;
    Qry_RY: TQuery;
    Qry_RYRMNO: TStringField;
    Qry_RYRY: TStringField;
    Qry_RYCGNO: TStringField;
    Qry_RYCLBH: TStringField;
    Qry_RYStage: TStringField;
    Qry_RYRemark: TStringField;
    Qry_RYUserID: TStringField;
    Qry_RYUserDate: TDateTimeField;
    Qry_RYYN: TStringField;
    Qry_RYSeason: TStringField;
    Up_RY: TUpdateSQL;
    Qrytemp: TQuery;
    btnQ: TButton;
    BDelRec: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnQClick(Sender: TObject);
    procedure btninsert1Click(Sender: TObject);
    procedure btnmodify1Click(Sender: TObject);
    procedure btndelete1Click(Sender: TObject);
    procedure btnsave1Click(Sender: TObject);
    procedure btncancel1Click(Sender: TObject);
    procedure Qry_WHAfterOpen(DataSet: TDataSet);
    procedure Qry_WHBeforeClose(DataSet: TDataSet);
    procedure DB_WHDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DB_WHGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure btnInsMatClick(Sender: TObject);
    procedure btnModMatClick(Sender: TObject);
    procedure btnDelMatClick(Sender: TObject);
    procedure btnSavMatClick(Sender: TObject);
    procedure btnCanMatClick(Sender: TObject);
    procedure Qry_MatAfterOpen(DataSet: TDataSet);
    procedure Qry_MatBeforeClose(DataSet: TDataSet);
    procedure DB_MatGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnInsRYClick(Sender: TObject);
    procedure btnModRYClick(Sender: TObject);
    procedure btnDelRYClick(Sender: TObject);
    procedure btnSavRYClick(Sender: TObject);
    procedure btnCanRYClick(Sender: TObject);
    procedure Qry_RYAfterOpen(DataSet: TDataSet);
    procedure Qry_RYBeforeClose(DataSet: TDataSet);
    procedure DB_RYGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DB_MatColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DB_RYColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RejectMaterial: TRejectMaterial;
  NDate:TDate;

implementation

uses main1, RejectMat1, RejectRY1;

{$R *.dfm}

function ChangeExcelCol(col: Integer): string;
const Ai = 65;
begin
  if col > 256 then
  begin
    raise ERangeError.CreateFmt('Column (%d) exceeds the maximum allowed number of columns [256]', [col]);
    Exit;
  end;
  if col <= 26 then
    Result := chr(Ai + col - 1)
  else
    Result := chr(Ai + col div 26 - 1) + chr(Ai + (col - 1) mod 26);
end;

procedure TRejectMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Qry_WH.RequestLive)or (Qry_Mat.RequestLive) or (Qry_RY.RequestLive) then
  begin
    ShowMessage('Please, Save data firts!');
    Abort;
  end;
  Action:=caFree;
end;

procedure TRejectMaterial.FormDestroy(Sender: TObject);
begin
  RejectMaterial:=nil;
end;

procedure TRejectMaterial.FormCreate(Sender: TObject);
begin
  with Qrytemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select getdate() as NDate');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    DTP1.Date:=NDate-30;
    DTP2.Date:=NDate;
    //
    active:=false;
    SQL.Clear;
    SQL.add('select Racks from Racks where gsbh='''+main.Edit2.Text+'''  ');
    SQL.add('and Rack=''Y''');
    active:=true;
    //
    DB_Mat.FieldColumns['Racks'].PickList.Clear;
    while not eof do
    begin
      DB_Mat.FieldColumns['Racks'].PickList.Add(Trim(fieldbyname('Racks').AsString));
      next;
    end;
    //
    active:=False;
    SQL.Clear;
    //SQL.Add('SELECT GSDH FROM BGSZL WHERE CZ<>''00'' ORDER BY CZ');
    SQL.add('Select gsdh from bgszl ');
    SQL.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    SQL.Add('order by gsdh ');
    active:=true;
    while not Eof do
    begin
      cbo_Factory.Items.Add(FieldByName('gsdh').AsString);
      Next;
    end;
    cbo_Factory.ItemIndex:=cbo_Factory.Items.IndexOf(main.Edit2.Text);
  end;
  cbDate.ItemIndex:=1;
end;

procedure TRejectMaterial.btnQClick(Sender: TObject);
begin
  if (Qry_WH.RequestLive) or (Qry_Mat.RequestLive) or (Qry_RY.RequestLive) then
  begin
    ShowMessage('Please, save data firts!');
    Abort;
  end;
  //
  with Qry_WH do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#N76_RejectMaterial'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #N76_RejectMaterial END');
    SQL.add('SELECT RejectMaterial.RMNO, RejectMaterial.CKBH, RejectMaterial.Types,');
    SQL.add('       RejectMaterial.RejectDate, RejectMaterial.Remark,');
    SQL.add('       RejectMaterial.UserID, RejectMaterial.UserDate,');
    SQL.add('       RejectMaterial.YN, RejectMaterial.GSBH ,A.DestroyDate');
    SQL.Add('INTO #N76_RejectMaterial');
    SQL.add('FROM RejectMaterial');
    SQL.add('LEFT JOIN (SELECT DestroyRejectMs.RMNO,max(drm.DestroyDate) DestroyDate ');
    SQL.add('           FROM DestroyRejectMs ');
    SQL.Add('           LEFT JOIN DestroyRejectM drm ON drm.DRNO = DestroyRejectMs.DRNO');
    SQL.add('           GROUP BY DestroyRejectMs.RMNO )A ON A.RMNO = RejectMaterial.RMNO');
    SQL.Add('LEFT JOIN RejectMaterialS Rs ON Rs.RMNO = RejectMaterial.RMNO ');
    SQL.add('LEFT JOIN clzl ON clzl.cldh=Rs.CLBH');
    SQL.add('LEFT JOIN zszl ON zszl.zsdh=Rs.ZSBH');
    SQL.add('WHERE GSBH='''+cbo_Factory.Text+''' ');
    if cbDate.Text='Date' then
    begin
      SQL.Add('AND CONVERT(VARCHAR(10),RejectMaterial.UserDate,111) BETWEEN');
      SQL.add('    '''+FormatDateTime('yyyy/MM/dd',DTP1.Date)+''' AND '''+FormatDateTime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if cbDate.Text='Reject Date' then
    begin
      SQL.Add('AND CONVERT(VARCHAR(10),RejectMaterial.RejectDate,111) BETWEEN');
      SQL.add('    '''+FormatDateTime('yyyy/MM/dd',DTP1.Date)+''' AND '''+FormatDateTime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if cbDate.Text='Destroy Date' then
    begin
      SQL.Add('AND CONVERT(VARCHAR(10),A.DestroyDate,111) BETWEEN');
      SQL.add('    '''+FormatDateTime('yyyy/MM/dd',DTP1.Date)+''' AND '''+FormatDateTime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if cbDate.Text='W.H Date' then
    begin
      SQL.Add('AND CONVERT(VARCHAR(10),Rs.RKDate,111) BETWEEN');
      SQL.add('    '''+FormatDateTime('yyyy/MM/dd',DTP1.Date)+''' AND '''+FormatDateTime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if edtRMNO.Text <> '' then
      SQL.add('AND RejectMaterial.RMNO like '''+edtRMNO.Text+'%'' ');
    if cbType.Text <> '' then
      SQL.Add('AND RejectMaterial.Types='''+cbType.Text+''' ');
    if edtMatID.Text<>'' then
      SQL.Add('AND Rs.CLBH like '''+edtMatID.Text+'%'' ');
    if edtMatN.Text<>'' then
      SQL.Add('AND clzl.ywpm like ''%'+edtMatN.Text+'%'' ');
    if edtSupID.Text<>'' then
      SQL.Add('AND Rs.ZSBH = '''+edtSupID.Text+''' ');
    if edtSupN.Text<>'' then
      SQL.Add('AND zszl.zsywjc like ''%'+edtSupN.Text+'%'' ');
    SQL.Add('GROUP BY RejectMaterial.RMNO, RejectMaterial.CKBH, RejectMaterial.Types,RejectMaterial.RejectDate, RejectMaterial.Remark, ');
    SQL.Add('RejectMaterial.UserID, RejectMaterial.UserDate,RejectMaterial.YN, RejectMaterial.GSBH ,A.DestroyDate');
    //
    SQL.Add('SELECT * FROM #N76_RejectMaterial');
    SQL.add('ORDER BY RejectDate DESC');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TRejectMaterial.btninsert1Click(Sender: TObject);
begin
   with Qry_WH do
   begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
   end;
   btnsave1.Enabled:=true;
   btncancel1.Enabled:=true;
   DB_WH.FieldColumns['Types'].ButtonStyle:=cbsAuto;
   DB_WH.FieldColumns['RejectDate'].ButtonStyle:=cbsAuto;
   pnl_Mat.Enabled:=false;
   pnl_RY.Enabled:=false;
end;

procedure TRejectMaterial.btnmodify1Click(Sender: TObject);
begin
   with Qry_WH do
   begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
   end;
   btnsave1.Enabled:=true;
   btncancel1.Enabled:=true;
   DB_WH.FieldColumns['Types'].ButtonStyle:=cbsAuto;
   DB_WH.FieldColumns['RejectDate'].ButtonStyle:=cbsAuto;
   pnl_Mat.Enabled:=false;
   pnl_RY.Enabled:=false;
end;

procedure TRejectMaterial.btndelete1Click(Sender: TObject);
begin
  if Qry_WH.FieldByName('UserID').AsString <>main.Edit1.Text then
  begin
    ShowMessage('It is not your, you can not delete!!!');
    Abort;
  end;
  if (Qry_Mat.RecordCount>0) then
  begin
    ShowMessage('Delete data detail first!!!');
    Abort;
  end;
  with Qry_WH do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  btnsave1.Enabled:=true;
  btncancel1.Enabled:=true;
  pnl_Mat.Enabled:=false;
  pnl_RY.Enabled:=false;
end;

procedure TRejectMaterial.btnsave1Click(Sender: TObject);
var i:integer;
    y,m,a:string;
begin
  with Qrytemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  //
  try
    Qry_Mat.Active:=false;
    Qry_RY.Active:=false;
    Qry_WH.First;
    for i:=1 to Qry_WH.RecordCount do
      begin
        case Qry_WH.UpdateStatus of
          usInserted:
            begin
              if (Qry_WH.FieldByName('Types').AsString='')then
              begin
                ShowMessage('Type can not empty ! ');
                Exit;
              end;
              //
              with Qrytemp do
              begin
                active:=false;
                sql.Clear;
                sql.Add('select RMNO from RejectMaterial where RMNO like '''+y+m+'%''');
                sql.add('order by RMNO ');
                active:=true;
                if recordcount >0 then
                begin
                  last;
                  a:=fieldbyname('RMNO').AsString;
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
              Qry_WH.edit;
              Qry_WH.FieldByName('RMNO').Value:=a;
              Qry_WH.FieldByName('RejectDate').Value:=FormatDateTime('yyyy/MM/dd',NDate);
              Qry_WH.FieldByName('UserID').Value:=main.edit1.text;
              Qry_WH.FieldByName('GSBH').Value:=main.edit2.text;
              Up_WH.apply(ukinsert);
            end;
          usModified:
            begin
              if Qry_WH.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'RejectMaterial'+''''+','+''''+Qry_WH.fieldbyname('RMNO').Value+'''');
                  sql.add(','+''''+' '+''''+','+''''+Qry_WH.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_WH.apply(ukdelete);
              end else
              begin
                if Qry_WH.FieldByName('UserID').AsString <>main.Edit1.Text then
                begin
                  ShowMessage('It is not your, you can not modify!!!');
                  Exit;
                end;
                if (Qry_WH.FieldByName('Types').AsString='')then
                begin
                  ShowMessage('Type can not empty ! ');
                  Exit;
                end;
                if (Qry_WH.FieldByName('RejectDate').AsString='')then
                begin
                  ShowMessage('RejectDate can not empty ! ');
                  Exit;
                end;
                Qry_WH.edit;
                Qry_WH.FieldByName('userID').Value:=main.edit1.text;
                Up_WH.apply(ukmodify);
              end;
            end;
        end;
        Qry_WH.Next;
      end;
    Qry_WH.Active:=False;
    Qry_WH.CachedUpdates:=False;
    Qry_WH.RequestLive:=False;
    Qry_WH.Active:=True;
    btnsave1.Enabled:=false;
    btncancel1.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TRejectMaterial.btncancel1Click(Sender: TObject);
begin
  with Qry_WH do
  begin
    Active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  btnsave1.Enabled:=false;
  btncancel1.Enabled:=false;
end;

procedure TRejectMaterial.Qry_WHAfterOpen(DataSet: TDataSet);
begin
  btninsert1.Enabled:=true;
  if Qry_WH.RecordCount>0 then
  begin
     Qry_Mat.Active:=true;
     btnmodify1.Enabled:=true;
     btndelete1.Enabled:=true;
  end;
end;

procedure TRejectMaterial.Qry_WHBeforeClose(DataSet: TDataSet);
begin
  Qry_Mat.Active:=false;
  btninsert1.Enabled:=false;
  btnmodify1.Enabled:=false;
  btndelete1.Enabled:=false;
  btnsave1.Enabled:=false;
  btncancel1.Enabled:=false;
  DB_WH.FieldColumns['Types'].ButtonStyle:=cbsNone;
  DB_WH.FieldColumns['RejectDate'].ButtonStyle:=cbsNone;
  pnl_Mat.Enabled:=true;
  pnl_RY.Enabled:=true;
end;

procedure TRejectMaterial.DB_WHDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var year,month,day:word ;
		DATE1,SMonth,SDay: string ;
    DATE2: TDate ;
begin
  if not(Qry_WH.FieldByName('RejectDate').IsNull) then
  begin
     decodedate(Qry_WH.FieldByName('RejectDate').Value,Year,Month,Day);
     incAMonth(Year,Month,Day,6);
     if Length(FloatToStr(month))<2 then
        SMonth:='0'+ FloatToStr(month)
     else
        SMonth:=FloatToStr(month);
     if Length(FloatToStr(Day))<2 then
        SDay:='0'+ FloatToStr(Day)
     else
        SDay:='0'+ FloatToStr(Day);
     DATE1:=FloatToStr(year)+'/'+ SMonth+'/'+ SDay;
     DATE2:= StrToDate(DATE1);
    if (Column.FieldName = 'RejectDate') and (FormatDateTime('yyyy/MM/dd',DATE2) <= FormatDateTime('yyyy/MM/dd',NDate)) then
       DB_WH.Canvas.Brush.Color := clRed;
    if (Column.FieldName = 'RejectDate') and( Qry_WH.FieldByName('DestroyDate').AsString<>'' ) then
       DB_WH.Canvas.Brush.Color := clYellow;
  end;
  DB_WH.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TRejectMaterial.DB_WHGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_WH.FieldByName('YN').AsString='0' then
    DB_WH.Canvas.Font.Color:=clRed;
end;

procedure TRejectMaterial.btnExcelClick(Sender: TObject);
var eclApp,WorkBook,xlSheet :olevariant;
    i,j:integer;
begin
  if (Qry_WH.Active)and(Qry_WH.RecordCount=0) then
  begin
    ShowMessage('No data!');
    Abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application'); //tao moi file excel
  except
    Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Caption := 'RejectMaterial';
    xlSheet := workbook.Worksheets.Item[1];
    xlSheet.Select;
    eclApp.Cells(1,1):='KIEM KE VAT TU KHU REJECT';
    eclApp.Cells(2,1):='(INVENTORY OF MATERIALS AT REJECTED AREA)';
    eclApp.Cells(3,1):='Type';
    eclApp.Cells(3,2):='MatID';
    eclApp.Cells(3,3):='Mat Name';
    eclApp.Cells(3,4):='Sup Name';
    eclApp.Cells(3,5):='RY';
    eclApp.Cells(3,6):='Qty';
    eclApp.Cells(3,7):='RMNO';
    eclApp.Cells(3,8):='Shipment';
    eclApp.Cells(3,9):='W.H Date';
    eclApp.Cells(3,10):='Reject Date';
    eclApp.Cells(3,11):='Reject > 6 Month';
    eclApp.Cells(3,12):='Destroy Date';
    eclApp.Cells(3,13):='Location';
    eclApp.Cells(3,14):='Remark';
    with Qrytemp do
    begin
      Active:=False;
      sql.Clear;
      sql.add('SELECT NR.Types,RS.CLBH,clzl.ywpm, zszl.zsywjc');
      sql.add('      ,CAST((SELECT RY+'' ;''');
      sql.add('             FROM(SELECT RY FROM RejectMaterialSS Rss');
      sql.add('                  WHERE Rss.RMNO=Rs.RMNO AND Rss.CGNO=Rs.CGNO AND Rss.CLBH=Rs.CLBH ');
      sql.add('                  GROUP BY RY)a FOR XML PATH(''''))AS VARCHAR(MAX))RY');
      sql.add('      ,RS.Qty,NR.RMNO, RS.CGNO, RS.RKDate , NR.RejectDate');
      sql.Add('			 ,CASE WHEN DATEADD(MONTH,6,NR.RejectDate)>=GETDATE() THEN NULL ELSE DATEADD(MONTH,6,NR.RejectDate) END Reject6month');
      sql.add('      ,(SELECT TOP 1 d.DestroyDate');
      sql.add('        FROM DestroyRejectM d LEFT JOIN DestroyRejectMS ds ON ds.DRNO = d.DRNO');
      sql.add('        WHERE ds.RMNO=RS.RMNO AND ds.ZSBH=RS.ZSBH AND ds.CLBH=RS.CLBH)DestroyDate,RS.Racks, RS.Remark');
      SQL.Add('FROM #N76_RejectMaterial NR');
      SQL.Add('INNER JOIN RejectMaterialS RS ON RS.RMNO = NR.RMNO');
      SQL.Add('LEFT JOIN clzl ON clzl.cldh=RS.CLBH');
      SQL.Add('LEFT JOIN zszl ON zszl.zsdh = RS.ZSBH');
      Active:=true;
    end;
    Qrytemp.First;
    j:=4;
    while not Qrytemp.Eof do
    begin
      for i:=0 to Qrytemp.FieldCount -1 do
      begin
          eclApp.Cells(j,i+1):=Qrytemp.Fields[i].AsString;
          if (i=11) and (Qrytemp.Fields[i].AsString<>'') then	
            eclApp.ActiveSheet.Range[''+ChangeExcelCol(i+1)+''+IntToStr(j)+':'+ChangeExcelCol(i+1)+''+IntToStr(j)+''].Interior.Color:=RGB(255,255,0)								
          else if (i=10) and (Qrytemp.Fields[i].AsString<>'') then	
            eclApp.ActiveSheet.Range[''+ChangeExcelCol(i+1)+''+IntToStr(j)+':'+ChangeExcelCol(i+1)+''+IntToStr(j)+''].Interior.Color:=RGB(255,0,0);
      end;
      Qrytemp.Next;
      inc(j);
    end;
    eclApp.ActiveSheet.Rows[1].Font.Bold := True;
    eclApp.ActiveSheet.Rows[1].Entirerow.Font.Size := 22;				 
    eclApp.ActiveSheet.Rows[1].RowHeight := 30;
    eclApp.ActiveSheet.Rows[2].RowHeight := 30;
    eclApp.ActiveSheet.Range['A1:N1'].Merge;
    eclApp.ActiveSheet.Range['A1:N1'].VerticalAlignment := 2;
    eclApp.ActiveSheet.Range['A1:N1'].HorizontalAlignment := 3;
    eclApp.ActiveSheet.Rows[2].Font.Bold := True;
    eclApp.ActiveSheet.Rows[2].Entirerow.Font.Size := 20;				 
    eclApp.ActiveSheet.Range['A2:N2'].Merge;
    eclApp.ActiveSheet.Range['A2:N2'].VerticalAlignment := 2;
    eclApp.ActiveSheet.Range['A2:N2'].HorizontalAlignment := 3;
    eclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].Borders[1].weight:=2;
    eclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].Borders[2].weight:=2;
    eclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].Borders[3].weight:=2;
    eclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].Borders[4].weight:=2;
    EclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].HorizontalAlignment :=2;
    EclApp.ActiveSheet.Range['A3:N'+IntToStr(j-1)].VerticalAlignment :=2;
    eclApp.ActiveSheet.Columns['A'].ColumnWidth:=20;
    eclApp.ActiveSheet.Columns['B'].ColumnWidth:=15;
    eclApp.ActiveSheet.Columns['C'].ColumnWidth:=40;
    eclApp.ActiveSheet.Columns['D'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['E'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['F'].ColumnWidth:=6;
    eclApp.ActiveSheet.Columns['G'].ColumnWidth:=15;
    eclApp.ActiveSheet.Columns['H'].ColumnWidth:=15;
    eclApp.ActiveSheet.Columns['I'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['J'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['K'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['L'].ColumnWidth:=10;
    eclApp.ActiveSheet.Columns['M'].ColumnWidth:=8;
    eclApp.ActiveSheet.Columns['N'].ColumnWidth:=20;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on  F:Exception do
    begin
      showmessage(F.Message);
    end;
  end;
  
end;

procedure TRejectMaterial.btnInsMatClick(Sender: TObject);
begin
  with Qry_Mat do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  btnSavMat.Enabled:=true;
  btnCanMat.Enabled:=true;
  DB_Mat.FieldColumns['CLBH'].ButtonStyle:=cbsEllipsis;
  DB_Mat.FieldColumns['Racks'].ButtonStyle:=cbsAuto;
  pnl_WH.Enabled:=false;
  DB_WH.Enabled:=false;
end;

procedure TRejectMaterial.btnModMatClick(Sender: TObject);
begin
  with Qry_Mat do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  btnSavMat.Enabled:=true;
  btnCanMat.Enabled:=true;
  DB_Mat.FieldColumns['Racks'].ButtonStyle:=cbsAuto;
  pnl_WH.Enabled:=false;
  DB_WH.Enabled:=false;
end;

procedure TRejectMaterial.btnDelMatClick(Sender: TObject);
begin
  if Qry_Mat.FieldByName('UserID').AsString <>main.Edit1.Text then
  begin
    ShowMessage('It is not your, you can not delete!!!');
    Abort;
  end;
  if (Qry_RY.RecordCount>0)then
  begin
    ShowMessage('Delete data detail first!!!');
    Abort;
  end;
  //
  with Qry_Mat do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  btnSavMat.Enabled:=true;
  btnCanMat.Enabled:=true;
  pnl_WH.Enabled:=false;
  DB_WH.Enabled:=false;
end;

procedure TRejectMaterial.btnSavMatClick(Sender: TObject);
var i:integer;
begin
  try
    Qry_RY.Active:=false;
    Qry_Mat.First;
    for i:=1 to Qry_Mat.RecordCount do
      begin
        case Qry_Mat.UpdateStatus of
          usInserted:
            begin
              if  Qry_Mat.FieldByName('CLBH').AsString='' then
              begin
                ShowMessage('CLBH can not empty ! ');
                Exit;
              end;
              if Qry_Mat.FieldByName('Rack').AsString='' then
              begin
                ShowMessage('Rack can not empty ! ');
                Exit;
              end;
              if Qry_Mat.FieldByName('Racks').AsString='' then
              begin
                ShowMessage('Location can not empty ! ');
                Exit;
              end;
              if (Qry_Mat.FieldByName('Qty').AsString='')or (Qry_Mat.FieldByName('Qty').AsString='0') then
              begin
                ShowMessage('Qty can not empty ! ');
                Exit;
              end;
              //
              with Qrytemp do
              begin
                Active:=false;
                sql.Clear;
                sql.add('select Racks from Racks ');
                sql.add('where GSBH='''+main.Edit2.Text+'''  and Racks=''' + Qry_Mat.fieldbyname('Racks').AsString + '''');
                sql.Add('and Rack=''Y'' ') ;
                Active:=true;
                if RecordCount=0 then
                begin
                  ShowMessage('Location not exists ! ');
                  Exit;
                end;
              end;
              Qry_Mat.edit;
              Qry_Mat.FieldByName('RMNO').AsString:= Qry_WH.FieldByName('RMNO').AsString;
              Qry_Mat.FieldByName('UserID').Value:=main.edit1.text;
              Up_Mat.apply(ukinsert);
            end;
          usModified:
            begin
              if Qry_Mat.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'RejectMaterialS'+''''+','+''''+Qry_Mat.fieldbyname('RMNO').Value+'''');
                  sql.add(','+''''+' '+''''+','+''''+Qry_Mat.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_Mat.apply(ukdelete);
              end else
              begin
                if Qry_Mat.FieldByName('UserID').AsString <>main.Edit1.Text then
                begin
                  ShowMessage('It is not your, you can not modify!!!');
                  Exit;
                end;
                if  Qry_Mat.FieldByName('CLBH').AsString=''then
                begin
                  ShowMessage('CLBH can not empty ! ');
                  Exit;
                end;
                if Qry_Mat.FieldByName('Rack').AsString='' then
                begin
                  ShowMessage('Rack can not empty ! ');
                  Exit;
                end;
                if Qry_Mat.FieldByName('Racks').AsString='' then
                begin
                  ShowMessage('Location can not empty ! ');
                  Exit;
                end;
                if (Qry_Mat.FieldByName('Qty').AsString='') or (Qry_Mat.FieldByName('Qty').AsString='0') then
                begin
                  ShowMessage('Qty can not empty ! ');
                  Exit;
                end;
                //
                with Qrytemp do
                  begin
                    Active:=false;
                    sql.Clear;
                    sql.add('SELECT Racks from Racks ');
                    sql.add('WHERE GSBH='''+main.Edit2.Text+''' AND Rack=''Y'' AND Racks=''' + Qry_Mat.fieldbyname('Racks').AsString + '''');
                    Active:=true;
                    if RecordCount=0 then
                    begin
                      ShowMessage('Location not exists ! ');
                      Exit;
                    end;
                  end;
                Qry_Mat.edit;
                Qry_Mat.FieldByName('UserID').Value:=main.edit1.text;
                Up_Mat.apply(ukmodify);
              end;
            end;
        end;
        Qry_Mat.Next;
      end;
    Qry_Mat.Active:=False;
    Qry_Mat.CachedUpdates:=False;
    Qry_Mat.RequestLive:=False;
    Qry_Mat.Active:=True;
    btnSavMat.Enabled:=false;
    btnCanMat.Enabled:=false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TRejectMaterial.btnCanMatClick(Sender: TObject);
begin
  with Qry_Mat do
  begin
    Active:=False;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  btnSavMat.Enabled:=false;
  btnCanMat.Enabled:=false;
end;

procedure TRejectMaterial.Qry_MatAfterOpen(DataSet: TDataSet);
begin
  if Qry_WH.FieldByName('DestroyDate').AsString='' then
    btnInsMat.Enabled:=true;
  if Qry_Mat.RecordCount>0  then
    Qry_RY.Active:=true;
  if (Qry_Mat.RecordCount>0) AND (Qry_WH.FieldByName('DestroyDate').AsString='') then
  begin
    btnModMat.Enabled:=true;
    btnDelMat.Enabled:=true;
  end;
end;

procedure TRejectMaterial.Qry_MatBeforeClose(DataSet: TDataSet);
begin
  Qry_RY.Active:=false;
  btnInsMat.Enabled:=false;
  btnModMat.Enabled:=false;
  btnDelMat.Enabled:=false;
  btnSavMat.Enabled:=false;
  btnCanMat.Enabled:=false;
  DB_Mat.FieldColumns['CLBH'].ButtonStyle:=cbsNone;
  DB_Mat.FieldColumns['Racks'].ButtonStyle:=cbsNone;
  pnl_WH.Enabled:=true;
  DB_WH.Enabled:=true;
end;

procedure TRejectMaterial.DB_MatGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_Mat.FieldByName('YN').AsString='0' then
    DB_Mat.Canvas.Font.Color:=clRed;
end;

procedure TRejectMaterial.btnInsRYClick(Sender: TObject);
begin
  with Qry_RY do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  btnSavRY.Enabled:=true;
  btnCanRY.Enabled:=true;
  DB_RY.FieldColumns['RY'].ButtonStyle:=cbsEllipsis;
  pnl_WH.Enabled:=false;
  DB_WH.Enabled:=false;
  pnl_Mat.Enabled:=false;
end;

procedure TRejectMaterial.btnModRYClick(Sender: TObject);
begin
  with Qry_RY do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
  btnSavRY.Enabled:=true;
  btnCanRY.Enabled:=true;
  DB_RY.FieldColumns['RY'].ButtonStyle:=cbsEllipsis;
  pnl_WH.Enabled:=false;
  DB_WH.Enabled:=false;
  pnl_Mat.Enabled:=false;
end;

procedure TRejectMaterial.btnDelRYClick(Sender: TObject);
begin
  if Qry_RY.FieldByName('UserID').AsString <> main.Edit1.Text then
  begin
    ShowMessage('It is not your, you can not delete!!!');
    Abort;
  end;
  with Qry_RY do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  btnSavRY.Enabled:=true;
  btnCanRY.Enabled:=true;
end;

procedure TRejectMaterial.btnSavRYClick(Sender: TObject);
var i:integer;
begin
  try
    Qry_RY.First;
    for i:=1 to Qry_RY.RecordCount do
      begin
        case Qry_RY.UpdateStatus of
          usInserted:
          begin
            if (Qry_RY.FieldByName('RY').AsString='')then
            begin
              ShowMessage('RY can not empty ! ');
              Exit;
            end;
            Qry_RY.edit;
            Qry_RY.FieldByName('RMNO').AsString:= Qry_Mat.FieldByName('RMNO').AsString;
            Qry_RY.FieldByName('CGNO').AsString:= Qry_Mat.FieldByName('CGNO').AsString;
            Qry_RY.FieldByName('CLBH').AsString:= Qry_Mat.FieldByName('CLBH').AsString;
            Qry_RY.FieldByName('UserID').Value:=main.edit1.text;
            if Qry_RY.FieldByName('Stage').AsString='' then
              Qry_RY.FieldByName('Stage').AsString:='ZZZZ';
            Up_RY.apply(ukinsert);
          end;
          usModified:
          begin
            if Qry_RY.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'RejectMaterialSS'+''''+','+''''+Qry_RY.fieldbyname('RMNO').Value+'''');
                sql.add(','+''''+' '+''''+','+''''+Qry_RY.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              Up_RY.apply(ukdelete);
            end else
            begin
              if Qry_RY.FieldByName('UserID').AsString <>main.Edit1.Text then
              begin
                ShowMessage('It is not your, you can not modify!!!');
                Exit;
              end;
              if (Qry_RY.FieldByName('RY').AsString='')then
              begin
                ShowMessage('RY can not empty ! ');
                Exit;
              end;
              Qry_RY.edit;
              Qry_RY.FieldByName('userID').Value:=main.edit1.text;
              Up_RY.apply(ukmodify);
            end;
          end;
        end;
        Qry_RY.Next;
      end;
    Qry_RY.Active:=False;
    Qry_RY.CachedUpdates:=False;
    Qry_RY.RequestLive:=False;
    Qry_RY.Active:=True;
    btnSavRY.Enabled:=false;
    btnCanRY.Enabled:=false;
  except
     Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TRejectMaterial.btnCanRYClick(Sender: TObject);
begin
  with Qry_RY do
  begin
    Active:=False;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  btnSavRY.Enabled:=false;
  btnCanRY.Enabled:=false;
end;

procedure TRejectMaterial.Qry_RYAfterOpen(DataSet: TDataSet);
begin
  if Qry_WH.FieldByName('DestroyDate').AsString='' then
    btnInsRY.Enabled:=true;
  if (Qry_RY.RecordCount>0) AND (Qry_WH.FieldByName('DestroyDate').AsString='') then
  begin
    btnModRY.Enabled:=true;
    btnDelRY.Enabled:=true;
  end;
end;

procedure TRejectMaterial.Qry_RYBeforeClose(DataSet: TDataSet);
begin
  btnInsRY.Enabled:=false;
  btnModRY.Enabled:=false;
  btnDelRY.Enabled:=false;
  btnSavRY.Enabled:=false;
  btnCanRY.Enabled:=false;
  DB_RY.FieldColumns['RY'].ButtonStyle:=cbsNone;
  pnl_WH.Enabled:=true;
  DB_WH.Enabled:=true;
  pnl_Mat.Enabled:=true;
end;

procedure TRejectMaterial.DB_RYGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_RY.FieldByName('YN').AsString='0' then
    DB_RY.Canvas.Font.Color:=clRed;
end;

procedure TRejectMaterial.DB_MatColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if RejectMat=nil then
    RejectMat:=TRejectMat.Create(self);
  RejectMat.show;
end;

procedure TRejectMaterial.DB_RYColumns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if RejectRY=nil then
    RejectRY:=TRejectRY.Create(self);
  RejectRY.show;
end;


end.
