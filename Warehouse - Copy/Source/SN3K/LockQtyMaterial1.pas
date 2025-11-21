unit LockQtyMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB,ComObj,
  ComCtrls;

type
  TLockQtyMaterial = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1CLBH: TStringField;
    Query1CKBH: TStringField;
    Query1GSDH: TStringField;
    Query1Qty: TCurrencyField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1Memo: TStringField;
    QryTmp: TQuery;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn8: TBitBtn;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    DTP4: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    UpSQL2: TUpdateSQL;
    Query2ManualNo: TStringField;
    Query2DateReturn: TDateTimeField;
    Query2AutoNo: TIntegerField;
    Query2GSBH_Return: TStringField;
    Query2Article: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2QtyReturn: TCurrencyField;
    Query2UnitPrice: TCurrencyField;
    Query2TotalAmount: TCurrencyField;
    Query2Reason: TStringField;
    Query2DeductInventory: TStringField;
    Query2WarehouseNote: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    OpenDialog: TOpenDialog;
    QryImport: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LockQtyMaterial: TLockQtyMaterial;
  NDate: Tdate;

implementation

uses main1, CLBHLockQty1, CKBHLockQty1;

{$R *.dfm}

procedure TLockQtyMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TLockQtyMaterial.FormDestroy(Sender: TObject);
begin
  LockQtyMaterial:=nil;
end;

procedure TLockQtyMaterial.FormCreate(Sender: TObject);
var
  i: integer;
  ayear, amonth: string;
  Col: TColumnEh;
begin
  with QryTmp do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
end;


procedure TLockQtyMaterial.BitBtn6Click(Sender: TObject);
begin
  panel5.Visible:=true;
end;

procedure TLockQtyMaterial.Button2Click(Sender: TObject);
begin
  with Query2 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT * FROM InventoryReturn');
      SQL.Add('left join clzl on InventoryReturn.clbh = clzl.cldh');
      SQL.Add('where 1=1 and InventoryReturn.YN=1 ');
      if Edit2.Text<>'' then
      SQL.Add(' and InventoryReturn.Article like '''+Edit2.Text+'%'' ');
      if Edit3.Text<>'' then
      SQL.Add(' and InventoryReturn.CLBH like '''+Edit3.Text+'%'' ');

      if CheckBox1.Checked=true then
      begin
         SQL.Add(' and convert(smalldatetime,convert(varchar,InventoryReturn.DateReturn,111))  between  ');
         SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
      end;
      if CheckBox2.Checked=true then
      begin
        SQL.Add(' and convert(smalldatetime,convert(varchar,InventoryReturn.USERDATE,111))  between  ');
        SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +''' ');
      end;
      //
      //FuncObj.WriteErrorLog(SQL.Text);
      //ShowMessage(sql.Text);
      Active := true;
    end;
  panel5.visible:=false;
  BitBtn1.enabled:=true;
  BitBtn2.enabled:=true;
  BitBtn3.enabled:=true;
  BitBtn4.enabled:=false;
  BitBtn5.enabled:=false;
  BitBtn7.enabled:=true;
  BitBtn8.enabled:=true;
end;

procedure TLockQtyMaterial.BitBtn1Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
  BitBtn4.Enabled:=True;
  BitBtn5.Enabled:=True;
  DBGridEh3.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TLockQtyMaterial.BitBtn2Click(Sender: TObject);
begin
  with Query2 do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
        showmessage('It is not yours,can not delete.');
    end;
  end;
  BitBtn4.Enabled:=True;
  BitBtn5.Enabled:=True;
end;

procedure TLockQtyMaterial.BitBtn3Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BitBtn4.Enabled:=True;
  BitBtn5.Enabled:=True;
end;

procedure TLockQtyMaterial.BitBtn4Click(Sender: TObject);
var
  i: Integer;
begin
  try
      Query2.first;
      for i := 1 to Query2.RecordCount do
      begin
        case Query2.updatestatus of
          usinserted:
            begin
              Query2.edit;
              Query2.FieldByName('userID').Value := main.edit1.text;
              Query2.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd hh:nn:ss', Ndate);
              Query2.FieldByName('YN').Value := '1';
              UpSQL2.apply(ukinsert);
            end;
          usmodified:
            begin
              if Query2.FieldByName('USERID').value <> main.Edit1.Text then
              begin
                showmessage('Khong phai ban khong duoc tu sua');
              end
              else
              begin
                if Query2.fieldbyname('YN').value = '0' then
                begin
                  Query2.Edit;
                  UpSQL2.apply(ukmodify);
                end else
                begin
                  Query2.Edit;
                  UpSQL2.apply(ukmodify);
                end;
              end;
            end;
        end;
        Query2.next;
      end;
      Query2.active := false;
      Query2.cachedupdates := false;
      Query2.requestlive := false;
      Query2.active := true;
      BitBtn4.enabled := false;
      BitBtn5.enabled := false;
      DBGridEh3.columns[5].ButtonStyle:=cbsnone;
    except
      Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
    end;
end;

procedure TLockQtyMaterial.DBGridEh3EditButtonClick(Sender: TObject);
begin
  if DBGridEh3.SelectedIndex = 5 then
  begin
    CLBHLockQty := TCLBHLockQty.Create(Self);
    CLBHLockQty.CallerGrid := DBGridEh3;
    CLBHLockQty.Show;
  end;
end;

procedure TLockQtyMaterial.BitBtn5Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BitBtn4.enabled:=false;
  BitBtn5.enabled:=false;
end;

procedure TLockQtyMaterial.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').value = '0' then
  begin
    DBGridEh3.canvas.font.color := clred;
  end;
end;

procedure TLockQtyMaterial.BitBtn7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query2.active  then
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
            for   i:=0   to   Query2.fieldcount-1   do
            begin
              eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
            end;
            Query2.First;
            j:=2;
            while   not   Query2.Eof   do
            begin
              for   i:=0   to  Query2.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query2.Fields[i].AsString;
              end;
              Query2.Next;
              inc(j);
            end;
            eclapp.columns.autofit;
            showmessage('Succeed');
            eclApp.Visible:=True;
          except
            on  F:Exception   do
              showmessage(F.Message);
          end;
     end;
end;

procedure TLockQtyMaterial.BitBtn8Click(Sender: TObject);
var
  ExcelApp: Variant;
  Article, CLBH, ManualNo,GSBH_Return,YWPM,DWBH,Reason,DeductInventory,WarehouseNote: string;
  DateReturn: Variant;
  QtyReturn,UnitPrice,TotalAmount: Double;
  i, RowCount: Integer;
  ImportSuccess: Boolean;
begin

  if not OpenDialog.Execute then Exit;

  ImportSuccess := False;
  RowCount := 0;

  try
    DecimalSeparator := '.';
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;

    i := 2;
    while True do
    begin
      try ManualNo := Trim(VarToStr(ExcelApp.Cells[i, 1].Value)); except ManualNo := ''; end;
      try DateReturn := ExcelApp.Cells[i, 2].Value; except DateReturn := Null; end;
      try GSBH_Return := Trim(VarToStr(ExcelApp.Cells[i, 3].Value)); except GSBH_Return := ''; end;
      try Article := Trim(VarToStr(ExcelApp.Cells[i, 4].Value)); except Article := ''; end;
      try CLBH := Trim(VarToStr(ExcelApp.Cells[i, 5].Value)); except CLBH := ''; end;
      try YWPM := Trim(VarToStr(ExcelApp.Cells[i, 6].Value)); except YWPM := ''; end;
      try DWBH := Trim(VarToStr(ExcelApp.Cells[i, 7].Value)); except DWBH := ''; end;
      try QtyReturn := StrToCurrDef(VarToStr(ExcelApp.Cells[i, 8].Value), 0); except QtyReturn := 0; end;
      try UnitPrice := StrToCurrDef(VarToStr(ExcelApp.Cells[i, 9].Value), 0); except UnitPrice := 0; end;
      try TotalAmount := StrToCurrDef(VarToStr(ExcelApp.Cells[i, 10].Value), 0); except TotalAmount := 0; end;
      try Reason := Trim(VarToStr(ExcelApp.Cells[i, 11].Value)); except Reason := ''; end;
      try DeductInventory := Trim(VarToStr(ExcelApp.Cells[i, 12].Value)); except DeductInventory := ''; end;
      try WarehouseNote := Trim(VarToStr(ExcelApp.Cells[i, 13].Value)); except WarehouseNote := ''; end;

      //Kiem tra dong trong
      if (ManualNo = '') and (Article = '') and (CLBH = '') then
      begin
        if RowCount = 0 then
          ShowMessage('Khong tim thay du lieu phu hop de import');
        Break;
      end;

      // Kiem tra du 1 trong 3 cot
      if (ManualNo = '') or (Article = '') or (CLBH = '') then
      begin
        ShowMessage(Format('Dong %d thieu 1 trong 3 cot (ManualNo hoac Article hoac CLBH)', [i]));
        Inc(i);
        Continue;
      end;

      try
        with QryImport do
          begin
            Close;
            SQL.Clear;
            SQL.Add('INSERT INTO InventoryReturn');
            SQL.Add('(ManualNo, DateReturn, GSBH_Return, Article, CLBH, YWPM, DWBH, QtyReturn, UnitPrice, TotalAmount, Reason, DeductInventory, WarehouseNote, USERID, USERDATE, YN)');
            SQL.Add('VALUES');
            SQL.Add('(:ManualNo, :DateReturn, :GSBH_Return, :Article, :CLBH, :YWPM, :DWBH, :QtyReturn, :UnitPrice, :TotalAmount, :Reason, :DeductInventory, :WarehouseNote, :USERID, :USERDATE, :YN)');

            ParamByName('ManualNo').Value := ManualNo;

            if VarIsNull(DateReturn) or (Trim(VarToStr(DateReturn)) = '') then
              ParamByName('DateReturn').Clear
            else
              ParamByName('DateReturn').AsDateTime := VarToDateTime(DateReturn);

            ParamByName('GSBH_Return').Value := GSBH_Return;
            ParamByName('Article').Value := Article;
            ParamByName('CLBH').Value := CLBH;
            ParamByName('YWPM').Value := YWPM;
            ParamByName('DWBH').Value := DWBH;
            ParamByName('QtyReturn').Value := QtyReturn;
            ParamByName('UnitPrice').Value := UnitPrice;
            ParamByName('TotalAmount').Value := TotalAmount;
            ParamByName('Reason').Value := Reason;
            ParamByName('DeductInventory').Value := DeductInventory;
            ParamByName('WarehouseNote').Value := WarehouseNote;
            ParamByName('USERID').Value := main.Edit1.Text;
            ParamByName('USERDATE').Value := NDate;
            ParamByName('YN').Value := '1';

            ExecSQL;
            Inc(RowCount);
            ImportSuccess := True;
          end;
      except
        on E: Exception do
        begin
          ShowMessage(Format('Loi khi import dong %d: %s', [i, E.Message]));
          //Ngat khi phat hien dong loi
           if MessageDlg('Co tiep tuc import dong ke tiep khong?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
             Break;
        end;
      end;

      Inc(i);
    end;

    if ImportSuccess then
      ShowMessage(Format('Success!', [RowCount]))
    else
      ShowMessage('Khong co dong nao duoc import!');

  except
    on E: Exception do
    begin
      ShowMessage('Loi khi mo file Excel: ' + E.Message);
    end;
  end;

  try
    if not VarIsEmpty(ExcelApp) then
    begin
      ExcelApp.WorkBooks.Close;
      ExcelApp.Quit;
      ExcelApp := Unassigned;
    end;
  except
  end;

  if ImportSuccess then
    Button2Click(nil);
end;

end.
