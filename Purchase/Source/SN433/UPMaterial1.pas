unit UPMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComObj,
  strutils, ComCtrls;

type
  TUPMaterial = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Query1FTY: TStringField;
    Query1EffectiveDate: TDateTimeField;
    Query1Season: TStringField;
    Query1ZSDH: TStringField;
    Query1CLBH: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1zsywjc: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    Excel1: TMenuItem;
    Copy1: TMenuItem;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Query1dwbh: TStringField;
    Query1Price_USD: TFloatField;
    Query1Price_FOB: TFloatField;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    N3: TMenuItem;
    Query1Prod_nfc_USD: TFloatField;
    Button2: TButton;
    QryTmp: TQuery;
    OpenDialog1: TOpenDialog;
    Query1ModelName: TStringField;
    Query1Price_MMK: TFloatField;
    Query1Price_TWD: TFloatField;
    Query1Price_EUR: TFloatField;
    Label8: TLabel;
    Query1Remark: TStringField;
    Query1MOQ: TIntegerField;
    Query1Prod_nfc_VND: TIntegerField;
    Query1Price_VND: TIntegerField;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label15: TLabel;
    Edit12: TEdit;
    Button3: TButton;
    GroupBox6: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox7: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    PopupMenu2: TPopupMenu;
    Excel2: TMenuItem;
    Query2FTY: TStringField;
    Query2Season: TStringField;
    Query2clbh: TStringField;
    Query2YWPM: TStringField;
    UpdateSQL2: TUpdateSQL;
    Query2Remark: TStringField;
    Edit8: TEdit;
    Label14: TLabel;
    Label16: TLabel;
    Edit13: TEdit;
    Excel3: TMenuItem;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject; var Handled: Boolean);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject; var Handled: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPMaterial: TUPMaterial;
  BQry, BIns: Boolean; //permission of user
  SeaStrCheck: string;

implementation

uses
  main1, UPSelectMaterial1, UPSupplierName_N7431, FunUnit;

{$R *.dfm}

function IsInt(Str: string): Boolean;
var
  tmp: Integer;
begin
  try
    tmp := StrToInt(Str);
    Result := true;
  except
    Result := false;
  end;
end;

function IsFloat(Str: string): Boolean;
var
  tmp: Extended;
begin
  try
    tmp := StrToFloat(Str);
    Result := true;
  except
    Result := false;
  end;
end;

function IsDate(Str: string): Boolean;
var
  tmp: TDateTime;
begin
  try
    tmp := strtodatetime(Str);
    Result := true;
  except
    Result := false;
  end;
end;

procedure TUPMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Query1.RequestLive then
  begin
    messagedlg('You have to save data first.', mtwarning, [mbyes], 0);
    abort;
  end;
  Action := Cafree;
end;

procedure TUPMaterial.FormDestroy(Sender: TObject);
begin
  UPMaterial := nil;
end;

procedure TUPMaterial.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  edit5.SetFocus;
  //take time
  DateTimePicker1.Date := now;
  DateTimePicker2.Date := now;
  CheckBox1.checked := true; //avoid to query too many data
end;

procedure TUPMaterial.Button1Click(Sender: TObject);
begin

  with Query1 do
  begin
    active := false;
    sql.Clear;
    sql.Add('select ');
    sql.Add(' m.FTY, m.EffectiveDate, m.Season, ');
    SQL.Add(' m.clbh, CLZL.ywpm, CLZL.zwpm, CLZL.dwbh, ');
    sql.Add(' m.MOQ, m.Price_FOB, m.Prod_nfc_USD, m.Prod_nfc_VND, m.Price_USD, m.Price_VND, m.Price_MMK, m.Price_TWD, m.Price_EUR, ');
    sql.Add(' m.zsdh, ZSZL.zsywjc, ');
    sql.Add(' m.ModelName,m.remark, m.UserID, m.UserDate, m.YN ');
    sql.Add('from Data_UP_Material m ');
    sql.Add('left join CLZL  on CLZL.CLDH = m.CLBH ');
    sql.Add('left join ZSZL  on ZSZL.ZSDH = m.ZSDH ');
    sql.Add('where m.YN=''1'' ');
    if (trim(Edit1.Text) <> '') then
      sql.add('and m.FTY Like ''' + trim(Edit1.Text) + '%' + ''' ');
    if (trim(Edit2.Text) <> '') then
      sql.add('and m.Season Like ''' + trim(Edit2.Text) + '%' + ''' ');
    if (trim(Edit3.Text) <> '') then
      sql.add('and m.ZSDH Like ''' + trim(Edit3.Text) + '%' + ''' ');
    if (trim(Edit4.Text) <> '') then
      sql.add('and ZSZL.zsywjc Like ''' + '%' + trim(edit4.Text) + '%' + ''' ');
    if (trim(Edit5.Text) <> '') then
      sql.add('and m.CLBH Like ''' + trim(Edit5.Text) + '%' + ''' ');
    if (trim(Edit6.Text) <> '') then
      sql.add('and CLZL.ywpm Like ''' + '%' + trim(edit6.Text) + '%' + ''' ');
    if (trim(Edit7.Text) <> '') then
      sql.add('and CLZL.ywpm Like ''' + '%' + trim(edit7.Text) + '%' + ''' ');
    if checkbox1.Checked then
    begin
      SQL.Add('and m.UserDate between ');
      sql.add('convert(datetime,''' + formatdatetime('yyyy-MM-dd', DateTimePicker1.date) + ' 00:00:00'') ');
      sql.add(' ' + ' and  ' + ' ');
      sql.add('convert(datetime,''' + formatdatetime('yyyy-MM-dd', DateTimePicker2.date) + ' 23:59:59'') ');
    end;

    if (trim(Edit9.Text) <> '') then
      sql.add('and m.ModelName Like ''' + '%' + trim(Edit9.Text) + '%' + ''' ');
    if (trim(Edit10.Text) <> '') then
      sql.add('and m.remark Like ''' + '%' + trim(Edit10.Text) + '%' + ''' ');
    if (trim(Edit11.Text) <> '') then
      sql.add('and m.UserID Like ''' + trim(Edit11.Text) + '%' + ''' ');
    //funcObj.WriteErrorLog(sql.Text);
    active := true;
  end;
 
end;

procedure TUPMaterial.Insert1Click(Sender: TObject);
begin

  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  //
  dbgrideh1.FieldColumns['FTY'].ButtonStyle := cbsAuto;
  dbgrideh1.FieldColumns['EffectiveDate'].ButtonStyle := cbsAuto;
  dbgrideh1.FieldColumns['CLBH'].ButtonStyle := cbsEllipsis;
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle := cbsEllipsis;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TUPMaterial.Copy1Click(Sender: TObject);
var
  MatNo: string;
begin

  //Copy material price data
  if query1.RecordCount > 0 then
  begin
    MatNo := inputbox('Copy material price data', 'Please enter material number:', '');
  end
  else
  begin
    abort;
  end;

  with QryTmp do
  begin
    Close;
    SQL.Clear;
    sql.Add(' select ');
    sql.Add(' m.FTY, m.EffectiveDate, m.Season,');
    SQL.Add(' m.clbh, c.ywpm, c.zwpm, c.dwbh,');
    sql.Add(' m.MOQ, m.Price_FOB, m.Prod_nfc_USD, m.Prod_nfc_VND, m.Price_USD, m.Price_VND, m.Price_MMK, m.Price_TWD, m.Price_EUR, ');
    sql.Add(' m.zsdh, z.zsywjc, ');
    sql.Add(' m.ModelName,m.remark, m.YN ');
    SQL.Add(' from Data_UP_Material m ');
    SQL.Add(' left join CLZL C on m.CLBH = C.cldh ');
    SQL.Add(' left join ZSZL Z on m.ZSDH=Z.ZSDH ');
    SQL.Add(' where ');
    SQL.Add(' 1 = 1 ');
    SQL.Add(' and m.FTY = ''' + Query1.fieldbyname('FTY').AsString + ''' ');
    SQL.Add(' and m.EffectiveDate = ''' + Query1.fieldbyname('EffectiveDate').AsString + ''' ');
    SQL.Add(' and m.ZSDH = ''' + Query1.fieldbyname('ZSDH').AsString + ''' ');
    SQL.Add(' and m.CLBH = ''' + Query1.fieldbyname('CLBH').AsString + ''' ');
    Open;

    if (not eof) and (length(MatNo) > 0) then
    begin
      with Query1 do
      begin
        cachedupdates := true;
        requestlive := True;
        active := true;
        insert;
        fieldbyname('FTY').Value := QryTmp.fieldbyname('FTY').Value;
        fieldbyname('EffectiveDate').Value := QryTmp.fieldbyname('EffectiveDate').Value;
        fieldbyname('Season').Value := QryTmp.fieldbyname('Season').Value;
        fieldbyname('clbh').Value := MatNo;
        fieldbyname('ywpm').Value := QryTmp.fieldbyname('ywpm').Value;
        fieldbyname('zwpm').Value := QryTmp.fieldbyname('zwpm').Value;
        fieldbyname('dwbh').Value := QryTmp.fieldbyname('dwbh').Value;
        fieldbyname('MOQ').Value := QryTmp.fieldbyname('MOQ').Value;
        fieldbyname('Price_FOB').Value := QryTmp.fieldbyname('Price_FOB').Value;
        fieldbyname('Prod_nfc_USD').Value := QryTmp.fieldbyname('Prod_nfc_USD').Value;
        fieldbyname('Prod_nfc_VND').Value := QryTmp.fieldbyname('Prod_nfc_VND').Value;
        fieldbyname('Price_USD').Value := QryTmp.fieldbyname('Price_USD').Value;
        fieldbyname('Price_VND').Value := QryTmp.fieldbyname('Price_VND').Value;
        fieldbyname('Price_MMK').Value := QryTmp.fieldbyname('Price_MMK').Value;
        fieldbyname('Price_TWD').Value := QryTmp.fieldbyname('Price_TWD').Value;
        fieldbyname('Price_EUR').Value := QryTmp.fieldbyname('Price_EUR').Value;
        fieldbyname('zsdh').Value := QryTmp.fieldbyname('zsdh').Value;
        fieldbyname('zsywjc').Value := QryTmp.fieldbyname('zsywjc').Value;
        fieldbyname('ModelName').Value := QryTmp.fieldbyname('ModelName').Value;
        fieldbyname('Remark').Value := QryTmp.fieldbyname('Remark').Value;
        FieldByName('UserID').Value := main.edit1.text;
        FieldByName('UserDate').Value := formatdatetime('yyyy/MM/dd hh:mm:ss', Now);
      end;
    end;
  end;
  //
  dbgrideh1.FieldColumns['FTY'].ButtonStyle := cbsAuto;
  dbgrideh1.FieldColumns['EffectiveDate'].ButtonStyle := cbsAuto;
  dbgrideh1.FieldColumns['CLBH'].ButtonStyle := cbsEllipsis;
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle := cbsEllipsis;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TUPMaterial.Modify1Click(Sender: TObject);
begin

  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    edit;
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TUPMaterial.Delete1Click(Sender: TObject);
begin

  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    edit;
    FieldByName('YN').value := '0';
  end;
  //
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TUPMaterial.Save1Click(Sender: TObject);
var
  i: integer;
begin
  with Query1 do
  begin
    first;
    for i := 1 to RecordCount do
    begin
      case updatestatus of
        usinserted:
          begin
            if (FieldByName('FTY').AsString <> '') and (FieldByName('EffectiveDate').AsString <> '') and (FieldByName('CLBH').AsString <> '') and (FieldByName('ZSDH').AsString <> '') then
            begin
              Edit;
              FieldByName('UserID').Value := main.edit1.text;
              FieldByName('UserDate').Value := formatdatetime('yyyy/MM/dd', Date);
              FieldByName('YN').value := '1';
              UpdateSQL1.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if (FieldByName('YN').AsString = '0') then
            begin
              UpdateSQL1.apply(ukDelete);
            end else
            begin
              Edit;
              FieldByName('UserID').Value := main.edit1.text;
              FieldByName('UserDate').Value := formatdatetime('yyyy/MM/dd', Date);
              UpdateSQL1.apply(ukmodify);
            end;
          end;
      end;
      Next;
    end;
  end;
  //
  Query1.Active:=false;
  Query1.requestlive := false;
  Query1.cachedupdates := false;
  Query1.Active:=true;
  dbgrideh1.FieldColumns['FTY'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['EffectiveDate'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['CLBH'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle := cbsNone;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

end;

procedure TUPMaterial.Cancel1Click(Sender: TObject);
begin

  with Query1 do
  begin
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  //
  dbgrideh1.FieldColumns['FTY'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['EffectiveDate'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['CLBH'].ButtonStyle := cbsNone;
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle := cbsNone;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TUPMaterial.Excel1Click(Sender: TObject);
var
  eclApp, workBook, xlSheet: OleVariant;
  i, j: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    workBook := eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i := 0 to DBGrideh1.Columns.Count - 2 do
    begin
      eclApp.cells(1, i + 1) := DBGrideh1.Columns[i].Title.Caption;
    end;

    j := 2;
    eclApp.Columns[2].NumberFormat := 'yyyy-mm-dd'; //EffectiveDate
    eclApp.Columns[8].NumberFormat := '#,##0'; //MOQ
    eclApp.Columns[9].NumberFormat := '#,##0.00000'; //FOB
    eclApp.Columns[10].NumberFormat := '#,##0.00000'; //Prod_nfc_USD
    eclApp.Columns[11].NumberFormat := '#,##0'; //Prod_nfc_VND
    eclApp.Columns[12].NumberFormat := '#,##0.00000'; //Prod. USD
    eclApp.Columns[13].NumberFormat := '#,##0'; //Prod. VND
    eclApp.Columns[14].NumberFormat := '#,##0.00000'; //Prod. MMK
    eclApp.Columns[15].NumberFormat := '#,##0.00000'; //Prod. TWD
    eclApp.Columns[16].NumberFormat := '#,##0.00000'; //Prod. EUR
    Query1.First;
    while not Query1.Eof do
    begin
      for i := 0 to DBGrideh1.Columns.Count - 2 do
      begin
        eclApp.cells(j, i + 1) := (DBGrideh1.Fields[i].AsString);
      end;
      Query1.Next;
      Inc(j);
    end;
    eclApp.columns.autofit;
    eclApp.ActiveWindow.FreezePanes := False;
    showmessage(' Export to Excel Succeed! ');
    eclApp.Visible := True;
  except
    on F: Exception do
      showmessage(F.Message);
  end;

end;

procedure TUPMaterial.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  Y, M, S: string;
  dtGetDate: TDateTime;
begin
  dtGetDate := StrToDate(Text);
  Y := FormatDateTime('yy', dtGetDate);
  M := FormatDateTime('mm', dtGetDate);

  if (Strtoint(M) > 1) and (Strtoint(M) < 8) then
  begin
    S := 'FW' + Y
  end
  else if (Strtoint(M) > 7) then
  begin
    S := 'SS' + inttostr(strtoint(Y) + 1)
  end
  else
  begin
    S := 'SS' + Y
  end;

  with Query1 do   //update Season in Query1
  begin
    FieldByName(DBGridEh1.Fields[DBGridEh1.Col].FieldName).Value := S;
  end;
end;

procedure TUPMaterial.DBGridEh1Columns3EditButtonClick(Sender: TObject; var Handled: Boolean);
begin
  //find material
  if UPSelectMaterial <> nil then
  begin
    UPSelectMaterial.show;
    UPSelectMaterial.windowstate := wsmaximized;
  end
  else
  begin
    UPSelectMaterial := TUPSelectMaterial.Create(self);
    UPSelectMaterial.Show;
  end;
end;

procedure TUPMaterial.DBGridEh1Columns9EditButtonClick(Sender: TObject; var Handled: Boolean);
begin
//find supplier
  if UPSupplierName_N743 <> nil then
  begin
    UPSupplierName_N743.show;
    UPSupplierName_N743.windowstate := wsmaximized;
  end
  else
  begin
    UPSupplierName_N743 := TUPSupplierName_N743.Create(self);
    UPSupplierName_N743.Show;
  end;
end;

procedure TUPMaterial.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin

  if not (Query1.FieldByName('Price_FOB').IsNull) then
  begin
    if (Query1.FieldByName('Price_FOB').Value) > (Query1.FieldByName('Price_USD').Value) then
    begin
      DBGridEh1.Canvas.Font.Color := clblue;
    end
  end;

  if (Query1.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TUPMaterial.Button2Click(Sender: TObject);
  function CheckFTYStr(FTY:String):boolean;
  var i:integer;
      IsFind:boolean;
  begin
    IsFind:=false;
    for i:=0 to DBGridEh1.Columns[0].PickList.Count-1 do
    begin
      if  FTY=DBGridEh1.Columns[0].PickList.Strings[i] then
      begin
        IsFind:=true;
        break;
      end;
    end;
    result:=IsFind;
  end;
var
  Excel: Variant; // for excel
  i, j, Rows, tmp: Integer; //for rows in excel
  Tmp1: string;
  FTYStr, SeaStr, MatStr, SupStr, EffDateStr: string; //for string of primary column values in excel
  E: Extended;
begin
  Tmp1 := inputbox('Excel Row Number', 'How many rows in the excel file need to import?', '');
  if Tmp1 = '' then
  begin
    showmessage('The input is not an integer!');
    Abort;
  end;

  if IsInt(Tmp1) = false then
  begin
    showmessage('The input is not an integer!');
    Abort;
  end;
  showmessage('Please close your excel file first!');
  Rows := StrToInt(Tmp1);
  OpenDialog1.Execute;
  Excel := CreateOleObject('Excel.Application');
  Excel.WorkBooks.Open(OpenDialog1.FileName);
  Excel.WorkSheets[1].Activate;
  Excel.Columns[2].NumberFormat := 'yyyy-mm-dd'; //EffectiveDate
  Excel.Columns[8].NumberFormat := '#,##0'; //MOQ
  Excel.Columns[9].NumberFormat := '#,##0.00000'; //FOB
  Excel.Columns[10].NumberFormat := '#,##0.00000'; //Prod_nfc_USD
  Excel.Columns[11].NumberFormat := '#,##0'; //Prod_nfc_VND
  Excel.Columns[12].NumberFormat := '#,##0.00000'; //Prod. USD
  Excel.Columns[13].NumberFormat := '#,##0'; //Prod. VND
  Excel.Columns[14].NumberFormat := '#,##0.00000'; //Prod. MMK
  Excel.Columns[15].NumberFormat := '#,##0.00000'; //Prod. TWD
  Excel.Columns[16].NumberFormat := '#,##0.00000'; //Prod. EUR


  for i := 2 to Rows do
  begin
    FTYStr := '';
    FTYStr := UpperCase(trim(Excel.Cells[i, 1]));
    EffDateStr := '';
    EffDateStr := UpperCase(trim(Excel.Cells[i, 2]));
    SeaStr := '';
    SeaStr := UpperCase(trim(Excel.Cells[i, 3]));
    MatStr := '';
    MatStr := UpperCase(trim(Excel.Cells[i, 4]));
    SupStr := '';
    SupStr := UpperCase(trim(Excel.Cells[i, 17]));

    //Step1:to check the info format is correcte
    if (FTYStr <> '') then
    begin
      //check factory format
      if CheckFTYStr(FTYStr)=true then
      begin
      end else
      begin
        Excel.Cells[i, 23] := 'FTY wrong';
        Continue;
      end;
    end
    else
    begin
      Excel.Cells[i, 23] := 'FTY wrong';
      Continue;
    end;

    //check EffectiveDate
    if (EffDateStr <> '') then
    begin
      if IsDate(EffDateStr) = true then
      begin
      end
      else
      begin
        Excel.Cells[i, 23] := 'EffectiveDate wrong';
        Continue;
      end;
    end
    else
    begin
      Excel.Cells[i, 23] := 'EffectiveDate wrong';
      Continue;
    end;

    //check season format
    if (SeaStr <> '') then
    begin
      if (length(SeaStr) = 4) and ((LeftStr(SeaStr, 2) = 'SS') or (LeftStr(SeaStr, 2) = 'FW')) and (IsInt(RightStr(SeaStr, 2))) then
      begin
      end
      else
      begin
        Excel.Cells[i, 23] := 'Season wrong';
        Continue;
      end;
    end
    else
    begin
      Excel.Cells[i, 23] := 'Season wrong';
      Continue;
    end;

    //check MaterialID format
    if (MatStr <> '') then
    begin
      with QryTmp do
      begin
        active := false;
        sql.clear;
        sql.add('select top 1 CLDH from clzl where CLDH=''' + MatStr + '''');
        active := true;
      end;
      if QryTmp.RecordCount > 0 then
      begin
      end
      else
      begin
        Excel.Cells[i, 23] := 'MaterialID wrong';
        Continue;
      end;
    end
    else
    begin
      Excel.Cells[i, 23] := 'MaterialID wrong';
      Continue;
    end;

    //check Supplier format
    if (SupStr <> '') then
    begin
      with QryTmp do
      begin
        active := false;
        sql.clear;
        sql.add('select top 1 ZSDH from ZSZL where ZSDH=''' + SupStr + '''');
        active := true;
      end;
      if QryTmp.RecordCount > 0 then
      begin
      end
      else
      begin
        Excel.Cells[i, 23] := 'SupplierID wrong';
        Continue;
      end;
    end
    else
    begin
      Excel.Cells[i, 23] := 'SupplierID wrong';
      Continue;
    end;

    with QryTmp do
    begin
      active := false;
      sql.clear;
      sql.add('delete Data_UP_Material ');
      sql.add('where FTY=''' + FTYStr + ''' and  ');
      sql.add('EffectiveDate=''' + EffDateStr + '''  and   ');
      sql.add('CLBH=''' + MatStr + '''  and ');
      sql.add('ZSDH=''' + SupStr + '''');
      sql.add('insert into Data_UP_Material  ');
      sql.add('(FTY,  EffectiveDate,  Season, CLBH, ');
      sql.add('MOQ,  Price_FOB, Prod_nfc_USD,  Prod_nfc_VND,  ');
      sql.add('Price_USD, Price_VND,  Price_MMK,  Price_TWD,  Price_EUR,  ');
      sql.add('ZSDH, ModelName,remark, UserID, UserDate,YN) ');
      sql.add('values ');
      sql.add('(''' + FTYStr + ''', ''' + EffDateStr + ''', ''' + SeaStr + ''', ''' + MatStr + ''', ');
      if UpperCase(trim(Excel.Cells[i, 8])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 8]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 8])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'MOQ wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 9])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 9]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 9])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'FOB wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 10])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 10]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 10])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod_nfc_USD wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 11])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 11]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 11])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod_nfc_VND wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 12])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 12]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 12])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod. USD wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 13])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 13]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 13])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod. VND wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 14])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 14]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 14])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod. MMK wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 15])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 15]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 15])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod. TWD wrong';
          Continue;
        end;
      end;

      if UpperCase(trim(Excel.Cells[i, 16])) = '' then
      begin
        sql.add('null, ');
      end
      else
      begin
        if (IsFloat(UpperCase(trim(Excel.Cells[i, 16]))) = True) then
        begin
          sql.add(UpperCase(trim(Excel.Cells[i, 16])) + ', ');
        end
        else
        begin
          Excel.Cells[i, 23] := 'Prod. EUR wrong';
          Continue;
        end;
      end;
      sql.add('''' + SupStr + ''', ''' + UpperCase(trim(Excel.Cells[i, 19])) + ''', ''' + UpperCase(trim(Excel.Cells[i, 20])) + ''',''' + main.Edit1.Text + ''', getdate(), ''1'') ');
      try
        Excel.Cells[i, 23] := 'save ok';
        ExecSQL;

      except
        on E: Exception do
          Excel.Cells[i, 23] := 'fail to save';

      end;
    end;
  end;

  Excel.ActiveWorkBook.Close(SaveChanges := 1);
  Excel.Quit;
  Excel := Unassigned;
  showmessage('Done! Please check the import status in the last column in your excel file!');
  //reset all search condition, then show new data
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit7.Text := '';
  Edit9.Text := '';
  Edit10.Text := '';

  with Query1 do
  begin
    active := false;
    sql.Clear;
    sql.Add(' select ');
    sql.Add(' m.FTY, m.EffectiveDate, m.Season,');
    SQL.Add(' m.clbh, c.ywpm, c.zwpm, c.dwbh,');
    sql.Add(' m.MOQ, m.Price_FOB, m.Prod_nfc_USD, m.Prod_nfc_VND, m.Price_USD, m.Price_VND, m.Price_MMK, m.Price_TWD, m.Price_EUR, ');
    sql.Add(' m.zsdh, z.zsywjc, ');
    sql.Add(' m.ModelName,m.remark, m.UserID, m.UserDate, m.YN ');
    sql.Add(' from Data_UP_Material m ');
    sql.Add(' left join CLZL c on c.CLDH = m.CLBH ');
    sql.Add(' left join ZSZL z on z.ZSDH = m.ZSDH ');
    sql.Add(' where m.YN=''1'' ');
    SQL.Add(' and m.UserDate >= dateadd(minute,-10,getdate())');
    active := true;
  end;

end;

procedure TUPMaterial.Button3Click(Sender: TObject);
begin
  SeaStrCheck := '';
  SeaStrCheck := UpperCase(Trim(Edit12.Text));
  if (length(SeaStrCheck) = 4) and ((LeftStr(SeaStrCheck, 2) = 'SS') or (LeftStr(SeaStrCheck, 2) = 'FW')) and (IsInt(RightStr(SeaStrCheck, 2))) then
  begin
  end
  else
  begin
    showmessage('wrong season!');
    abort;
  end;

  with Query2 do
  begin
    active := false;
    sql.Clear;
    sql.Add('SET ANSI_NULLS ON');
    sql.Add('SET ANSI_WARNINGS ON');
    execsql;
    sql.Clear;
    sql.Add('if object_id(''tempdb..#CGNOCLBHLYV'') is not null  begin   drop table #CGNOCLBHLYV end ');
    sql.Add('if object_id(''tempdb..#ZLBHCLBHLYV'') is not null  begin   drop table #ZLBHCLBHLYV end ');

    sql.Add('if object_id(''tempdb..#CGNOCLBHLVL'') is not null  begin   drop table #CGNOCLBHLVL end ');
    sql.Add('if object_id(''tempdb..#ZLBHCLBHLVL'') is not null  begin   drop table #ZLBHCLBHLVL end ');

    sql.Add('if object_id(''tempdb..#CGNOCLBHLHG'') is not null  begin   drop table #CGNOCLBHLHG end ');
    sql.Add('if object_id(''tempdb..#ZLBHCLBHLHG'') is not null  begin   drop table #ZLBHCLBHLHG end ');

    sql.Add('if object_id(''tempdb..#CGNOCLBHLYM'') is not null  begin   drop table #CGNOCLBHLYM end ');
    sql.Add('if object_id(''tempdb..#ZLBHCLBHLYM'') is not null  begin   drop table #ZLBHCLBHLYM end ');

    if RadioButton2.Checked then
    begin 
      //PurOrder
      if (RadioButton3.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #CGNOCLBHLYV ');
        sql.Add('from openquery (lyv,'' ');
        sql.Add('select cgss.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.cgzlss cgss ');
        sql.Add('left join liy_erp.dbo.CGZL cg on cgss.CGNO=cg.CGNO ');
        sql.Add('left join liy_erp.dbo.ddzl d on d.ddbh=cgss.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=cgss.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and cg.GSBH=''''LYV''''  ');
        sql.Add('      and cg.SEASON=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  cgss.CLBH, d.article '') ');
      end
      else
      begin
        sql.Add('select top 0 CLBH,'''' as Remark ');
        sql.Add('into #CGNOCLBHLYV ');
        sql.Add('from liy_erp.dbo.cgzls ');
      end;

      if (RadioButton4.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #CGNOCLBHLVL ');
        sql.Add('from openquery (lvl,'' ');
        sql.Add('select cgss.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.cgzlss cgss ');
        sql.Add('left join liy_erp.dbo.CGZL cg on cgss.CGNO=cg.CGNO ');
        sql.Add('left join liy_erp.dbo.ddzl d on d.ddbh=cgss.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=cgss.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and cg.GSBH=''''VB7''''  ');
        sql.Add('      and cg.SEASON=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  cgss.CLBH, d.article '') ');
      end
      else
      begin
        sql.Add('select top 0 CLBH,'''' as Remark ');
        sql.Add('into #CGNOCLBHLVL ');
        sql.Add('from liy_erp.dbo.cgzls ');
      end;

      if (RadioButton5.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #CGNOCLBHLHG ');
        sql.Add('from openquery (lhg,'' ');
        sql.Add('select cgss.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.cgzlss cgss ');
        sql.Add('left join liy_erp.dbo.CGZL cg on cgss.CGNO=cg.CGNO ');
        sql.Add('left join liy_erp.dbo.ddzl d on d.ddbh=cgss.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=cgss.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and cg.GSBH=''''LHG''''  ');
        sql.Add('      and cg.SEASON=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  cgss.CLBH, d.article '') ');
      end
      else
      begin
        sql.Add('select top 0 CLBH,'''' as Remark ');
        sql.Add('into #CGNOCLBHLHG ');
        sql.Add('from liy_erp.dbo.cgzls ');
      end;

      if (RadioButton6.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #CGNOCLBHLYM ');
        sql.Add('from openquery (lym,'' ');
        sql.Add('select cgss.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.cgzlss cgss ');
        sql.Add('left join liy_erp.dbo.CGZL cg on cgss.CGNO=cg.CGNO ');
        sql.Add('left join liy_erp.dbo.ddzl d on d.ddbh=cgss.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=cgss.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and cg.GSBH=''''LYM''''  ');
        sql.Add('      and cg.SEASON=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  cgss.CLBH, d.article '') ');
      end
      else
      begin
        sql.Add('select top 0 CLBH,'''' as Remark ');
        sql.Add('into #CGNOCLBHLYM ');
        sql.Add('from liy_erp.dbo.cgzls ');
      end;

      sql.Add('select ''LYV'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select cg.Remark from #CGNOCLBHLYV cg where cg.CLBH=aa.CLBH group by cg.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #CGNOCLBHLYV cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LYV'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LVL'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select cg.Remark from #CGNOCLBHLVL cg where cg.CLBH=aa.CLBH group by cg.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #CGNOCLBHLVL cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LVL'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LHG'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select cg.Remark from #CGNOCLBHLHG cg where cg.CLBH=aa.CLBH group by cg.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #CGNOCLBHLHG cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LHG'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LYM'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select cg.Remark from #CGNOCLBHLYM cg where cg.CLBH=aa.CLBH group by cg.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #CGNOCLBHLYM cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LYM'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
    end;

    if RadioButton1.Checked then
    begin
      //ProdBom
      if (RadioButton3.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #ZLBHCLBHLYV  ');
        sql.Add('from openquery (lyv,'' ');
        sql.Add('select z2.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.zlzls2 z2 ');
        sql.Add('left join liy_erp.dbo.DE_ORDERM m on m.ORDERNO=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.DDZL d on d.DDBH=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=z2.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and m.PRCID=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.GSBH=''''LYV'''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  z2.CLBH, d.article '') ')
      end
      else
      begin
        sql.Add('select top 0 CLBH, '''' as Remark ');
        sql.Add('into #ZLBHCLBHLYV ');
        sql.Add('from liy_erp.dbo.zlzls2 ');
      end;

      if (RadioButton4.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #ZLBHCLBHLVL  ');
        sql.Add('from openquery (lvl,'' ');
        sql.Add('select z2.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.zlzls2 z2 ');
        sql.Add('left join liy_erp.dbo.DE_ORDERM m on m.ORDERNO=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.DDZL d on d.DDBH=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=z2.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and m.PRCID=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.GSBH=''''VB7'''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  z2.CLBH, d.article '') ')
      end
      else
      begin
        sql.Add('select top 0 CLBH, '''' as Remark ');
        sql.Add('into #ZLBHCLBHLVL ');
        sql.Add('from liy_erp.dbo.zlzls2 ');
      end;

      if (RadioButton5.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #ZLBHCLBHLHG  ');
        sql.Add('from openquery (lhg,'' ');
        sql.Add('select z2.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.zlzls2 z2 ');
        sql.Add('left join liy_erp.dbo.DE_ORDERM m on m.ORDERNO=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.DDZL d on d.DDBH=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=z2.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and m.PRCID=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.GSBH=''''LHG'''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  z2.CLBH, d.article '') ')
      end
      else
      begin
        sql.Add('select top 0 CLBH, '''' as Remark ');
        sql.Add('into #ZLBHCLBHLHG ');
        sql.Add('from liy_erp.dbo.zlzls2 ');
      end;

      if (RadioButton6.checked) or (RadioButton7.checked) then
      begin
        sql.Add('select * ');
        sql.Add('into #ZLBHCLBHLYM  ');
        sql.Add('from openquery (lym,'' ');
        sql.Add('select z2.CLBH, d.article as Remark ');
        sql.Add('from liy_erp.dbo.zlzls2 z2 ');
        sql.Add('left join liy_erp.dbo.DE_ORDERM m on m.ORDERNO=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.DDZL d on d.DDBH=z2.ZLBH ');
        sql.Add('left join liy_erp.dbo.clzl c on c.cldh=z2.CLBH ');
        sql.Add('where 1=1 ');
        sql.Add('      and m.PRCID=''''' + SeaStrCheck + ''''' ');
        sql.Add('      and d.GSBH=''''LYM'''' ');
        sql.Add('      and d.DDZT=''''Y'''' ');
        if (trim(Edit13.Text) <> '') then
        begin
          sql.Add('      and d.article like ''''' + trim(Edit13.Text) + '%''''  ');
        end;
        if (trim(Edit8.Text) <> '') then
        begin
          sql.Add('      and c.ywpm like ''''%' + trim(Edit8.Text) + '%'''' ');
        end;
        sql.Add('group by  z2.CLBH, d.article '') ')
      end
      else
      begin
        sql.Add('select top 0 CLBH, '''' as Remark ');
        sql.Add('into #ZLBHCLBHLYM ');
        sql.Add('from liy_erp.dbo.zlzls2 ');
      end;

      sql.Add('select ''LYV'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select zl.Remark from #ZLBHCLBHLYV zl where zl.CLBH=aa.CLBH group by zl.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #ZLBHCLBHLYV cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LYV'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LVL'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select zl.Remark from #ZLBHCLBHLVL zl where zl.CLBH=aa.CLBH group by zl.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #ZLBHCLBHLVL cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LVL'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LHG'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select zl.Remark from #ZLBHCLBHLHG zl where zl.CLBH=aa.CLBH group by zl.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #ZLBHCLBHLHG cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LHG'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
      sql.Add('UNION ALL ');
      sql.Add('select ''LYM'' as FTY, ''' + SeaStrCheck + ''' as Season, aa.CLBH , (select top 1 ywpm from clzl c where c.cldh=aa.CLBH) as ywpm, ');
      sql.Add('convert(varchar(200),(select a.Remark+'','' from (select zl.Remark from #ZLBHCLBHLYM zl where zl.CLBH=aa.CLBH group by zl.Remark ) a for xml path(''''))) as Remark ');
      sql.Add('from ');
      sql.Add('(select  cl.clbh ');
      sql.Add('from #ZLBHCLBHLYM cl ');
      sql.Add('group by cl.clbh ) aa ');
      sql.Add('where not exists (select 1 from Data_UP_Material dum where dum.FTY=''LYM'' and dum.Season=''' + SeaStrCheck + ''' and dum.CLBH=aa.CLBH) ');
    end;
    funcObj.WriteErrorLog(sql.Text);
    active := true;
    requestlive := false;
    cachedupdates := false;
  end;

  if (Query2.RecordCount > 0) then
  begin
   //default
    dbgrideh2.FieldColumns['FTY'].Title.TitleButton := true; //clickable when Qry mode
    dbgrideh2.FieldColumns['Season'].Title.TitleButton := true; //clickable when Qry mode
    dbgrideh2.FieldColumns['CLBH'].Title.TitleButton := true; //clickable when Qry mode
    dbgrideh2.FieldColumns['ywpm'].Title.TitleButton := true; //clickable when Qry mode
    dbgrideh2.FieldColumns['Remark'].Title.TitleButton := true; //clickable when Qry mode
    excel2.Enabled := true; //available when some data in grid
    excel3.Enabled := true; //available when some data in grid
  end
  else
  begin
    dbgrideh2.FieldColumns['FTY'].Title.TitleButton := false; //clickable when Qry mode
    dbgrideh2.FieldColumns['Season'].Title.TitleButton := false; //clickable when Qry mode
    dbgrideh2.FieldColumns['CLBH'].Title.TitleButton := false; //clickable when Qry mode
    dbgrideh2.FieldColumns['ywpm'].Title.TitleButton := false; //clickable when Qry mode
    dbgrideh2.FieldColumns['Remark'].Title.TitleButton := false; //clickable when Qry mode
    excel2.Enabled := false; //available when some data in grid
    excel3.Enabled := false; //available when some data in grid
  end;
end;

procedure TUPMaterial.Excel2Click(Sender: TObject);
var
  eclApp, workBook, xlSheet: OleVariant;
  i, j: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    workBook := eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i := 0 to DBGrideh2.Columns.Count - 1 do
    begin
      eclApp.cells(1, i + 1) := DBGrideh2.Columns[i].Title.Caption;
    end;

    j := 2;
    eclApp.Columns[1].NumberFormat := '@'; //text
    eclApp.Columns[2].NumberFormat := '@'; //text
    eclApp.Columns[3].NumberFormat := '@'; //text
    eclApp.Columns[4].NumberFormat := '@'; //text
    eclApp.Columns[5].NumberFormat := '@'; //text

    Query2.First;
    while not Query2.Eof do
    begin
      for i := 0 to DBGrideh2.Columns.Count - 1 do
      begin
        eclApp.cells(j, i + 1) := (DBGrideh2.Fields[i].AsString);
      end;
      Query2.Next;
      Inc(j);
    end;
    eclApp.columns.autofit;
    eclApp.ActiveWindow.FreezePanes := False;
    showmessage(' Export to Excel Succeed! ');
    eclApp.Visible := True;
  except
    on F: Exception do
      showmessage(F.Message);
  end;
end;

procedure TUPMaterial.Excel3Click(Sender: TObject);
var
  eclApp, workBook, xlSheet: OleVariant;
  i, j: Integer;
  clbhlistLYV, clbhlistLYM: string;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    workBook := eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i := 0 to DBGrideh1.Columns.Count - 2 do
    begin
      eclApp.cells(1, i + 1) := DBGrideh1.Columns[i].Title.Caption;
    end;

    j := 2;
    eclApp.Columns[2].NumberFormat := 'yyyy-mm-dd'; //EffectiveDate
    eclApp.Columns[8].NumberFormat := '#,##0'; //MOQ
    eclApp.Columns[9].NumberFormat := '#,##0.00000'; //FOB
    eclApp.Columns[10].NumberFormat := '#,##0.00000'; //Prod_nfc_USD
    eclApp.Columns[11].NumberFormat := '#,##0'; //Prod_nfc_VND
    eclApp.Columns[12].NumberFormat := '#,##0.00000'; //Prod. USD
    eclApp.Columns[13].NumberFormat := '#,##0'; //Prod. VND
    eclApp.Columns[14].NumberFormat := '#,##0.00000'; //Prod. MMK
    eclApp.Columns[15].NumberFormat := '#,##0.00000'; //Prod. TWD
    eclApp.Columns[16].NumberFormat := '#,##0.00000'; //Prod. EUR

    with Query2 do
    begin
      First;
      while not Eof do
      begin
        if (FieldByName('FTY').AsString <> 'LYM') then
        begin
          clbhlistLYV := clbhlistLYV + '''' + FieldByName('CLBH').AsString + ''',';
        end
        else
        begin
          clbhlistLYM := clbhlistLYM + '''' + FieldByName('CLBH').AsString + ''',';
        end;
        Next;
      end;
    end;
    clbhlistLYV := LeftStr(clbhlistLYV, Length(clbhlistLYV) - 1);
    clbhlistLYM := LeftStr(clbhlistLYM, Length(clbhlistLYM) - 1);

//fill excel for LYV/LVL/LHG
    if (clbhlistLYV <> '') then
    begin
      with QryTmp do
      begin
        active := false;
        sql.Clear;
        sql.Add('select aa.clbh, c.ywpm, c.zwpm, c.dwbh ');
        sql.Add('from (  ');
        sql.Add('select ');
        sql.Add('(select top 1 cldh from clzlnocolor ');
        sql.Add(' where clbmNOCOLOR=a.clbmNOCOLOR ) as clbh ');
        sql.Add('from clzlnocolor a ');
        sql.Add('where a.cldh in (' + clbhlistLYV + ') ');
        sql.Add('group by a.clbmNOCOLOR ');
        sql.Add(') aa ');
        sql.Add('left join clzl c on c.cldh=aa.clbh ');
        active := true;

        First;
        while not Eof do
        begin
          eclApp.cells(j, 1) := 'LYV';
          eclApp.cells(j, 2) := formatdatetime('yyyy/MM/dd', Now);
          eclApp.cells(j, 3) := SeaStrCheck;
          eclApp.cells(j, 4) := FieldByName('CLBH').AsString;
          eclApp.cells(j, 5) := FieldByName('ywpm').AsString;
          eclApp.cells(j, 6) := FieldByName('zwpm').AsString;
          eclApp.cells(j, 7) := FieldByName('dwbh').AsString;
          eclApp.cells(j, 21) := main.edit1.text;
          eclApp.cells(j, 22) := formatdatetime('yyyy/MM/dd hh:mm:ss', Now);
          Next;
          Inc(j);
        end;
      end;
    end;
 
 //fill excel for LYM
    if (clbhlistLYM <> '') then
    begin
      with QryTmp do
      begin
        active := false;
        sql.Clear;
        sql.Add('select aa.clbh, c.ywpm, c.zwpm, c.dwbh ');
        sql.Add('from (  ');
        sql.Add('select ');
        sql.Add('(select top 1 cldh from clzlnocolor ');
        sql.Add(' where clbmNOCOLOR=a.clbmNOCOLOR ) as clbh ');
        sql.Add('from clzlnocolor a ');
        sql.Add('where a.cldh in (' + clbhlistLYM + ') ');
        sql.Add('group by a.clbmNOCOLOR ');
        sql.Add(') aa ');
        sql.Add('left join clzl c on c.cldh=aa.clbh ');
        active := true;

        First;
        while not Eof do
        begin
          eclApp.cells(j, 1) := 'LYM';
          eclApp.cells(j, 2) := formatdatetime('yyyy/MM/dd', Now);
          eclApp.cells(j, 3) := SeaStrCheck;
          eclApp.cells(j, 4) := FieldByName('CLBH').AsString;
          eclApp.cells(j, 5) := FieldByName('ywpm').AsString;
          eclApp.cells(j, 6) := FieldByName('zwpm').AsString;
          eclApp.cells(j, 7) := FieldByName('dwbh').AsString;
          eclApp.cells(j, 21) := main.edit1.text;
          eclApp.cells(j, 22) := formatdatetime('yyyy/MM/dd hh:mm:ss', Now);
          Next;
          Inc(j);
        end;
      end;
    end;

    eclApp.columns.autofit;
    eclApp.ActiveWindow.FreezePanes := False;
    showmessage(' Export to Excel Succeed! ');
    eclApp.Visible := True;
  except
    showmessage('Fail to Export!');
    abort;
  end;
end;

procedure TUPMaterial.Query1AfterOpen(DataSet: TDataSet);
begin

  Insert1.Enabled := true; 
  Modify1.Enabled := true;
  Delete1.Enabled := true;
  Copy1.Enabled := true;
  Excel1.Enabled := true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

end.

