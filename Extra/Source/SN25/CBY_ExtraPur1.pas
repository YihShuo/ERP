unit CBY_ExtraPur1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,dateUtils,
  math,Menus,comobj, GridsEh, DBGridEh ,IniFiles;

type
  TCBY_ExtraPur = class(TForm)
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetMemo: TStringField;
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
    JGDetBJNO: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
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
  CBY_ExtraPur: TCBY_ExtraPur;
  NDate: TDate;

implementation

uses
  main1, CBY_ExtraPur_BJ1,fununit;

{$R *.dfm}

procedure TCBY_ExtraPur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
   
procedure TCBY_ExtraPur.FormDestroy(Sender: TObject);
begin
  CBY_ExtraPur := Nil;
end;

procedure TCBY_ExtraPur.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT JGZL.LSNO AS JGNO, JGZL.ZSBH, ZSZL.ZSYWJC, JGZL.UserID, CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.UserDate, 111))  as UserDate, JGZL.CFMID1, JGZL.CFMDate1, JGZL.CFMID2, JGZL.CFMDate2, JGZL.YN FROM CBY_LineSideStockS AS JGZL');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = JGZL.ZSBH');
    SQL.Add('WHERE JGZL.Memo = ''Outsourced'' AND JGZL.CFMID1 <> ''NO'' AND JGZL.CFMID2 = ''NO''');
    SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.UserDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) +''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('AND JGZL.LSNO LIKE ''' + Edit1.Text + '%''');
    SQL.Add('ORDER BY JGZL.LSNO');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  JGDet.Active:=true;
end;

procedure TCBY_ExtraPur.Button3Click(Sender: TObject);
begin
  JGDet.Active := false;
  JGMas.Active := false;
  JGMas.Active := true;
  JGDet.Active := true;
end;

procedure TCBY_ExtraPur.ReadIni();
var
  MyIni: TIniFile;
  AppDir: string;
begin
  VNPrice_DiplayFormat := '#,##0';
  VNPrice_Decimal := 0;
  AppDir := ExtractFilePath(Application.ExeName);
  if (FileExists(AppDir + '\ComName.ini')) then
  begin
    try
      MyIni := TIniFile.Create(AppDir + '\ComName.ini');
      VNPrice_DiplayFormat := MyIni.ReadString('VNPrice', 'DiplayFormat', '#,##0');
      VNPrice_Decimal := StrToInt(MyIni.ReadString('VNPrice', 'Decimal', '0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat := VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat := VNPrice_DiplayFormat;
end;

procedure TCBY_ExtraPur.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GetDate() AS NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  DTP1.Date := NDate-3;
  DTP2.Date := NDate;
  ReadIni();
end;

procedure TCBY_ExtraPur.Button2Click(Sender: TObject);
var
  y1, m1, d1, y2, m2, d2: Word;
begin
  {DecodeDate(JGMas.FieldByName('JGDATE').Value, y1, m1, d1);
  DecodeDate(Date, y2, m2, d2);
  if (DaysBetween(NDate, JGMas.FieldByName('JGDATE').Value) > 240) then
  begin
    Showmessage('Pls contact with data maintainer.');
    Abort;
  end;}

  with JGDet do
  begin
    First;
    while not eof do
    begin
      if (FieldByName('VNPrice').IsNull) AND (FieldByName('USPrice').IsNull) then
      begin
        ShowMessage('Price can not be empty.');
        Abort;
      end;
      if (not FieldByName('VNPrice').IsNull) AND (not FieldByName('USPrice').IsNull) then
      begin
        ShowMessage('Can not have muiltiple price.');
        Abort;
      end;
      if (not FieldByName('VNPrice').IsNull) AND (FieldByName('VNACC').IsNull) then
      begin
        Edit;
        FieldByName('VNACC').Value := Trunc(FieldByName('VNPrice').Value * FieldByName('Qty').Value + 0.5);
      end;
      if (not FieldByName('USPrice').IsNull) then
      begin
        Edit;
        FieldByName('USACC').Value := Trunc(FieldByName('USPrice').Value * FieldByName('Qty').Value * 100 + 0.5) / 100;
      end;
      Next;
    end;
  end;

  try  //更新真正庫存
    with JGDet do
    begin
      First;
      while not eof do
      begin
        if (UpdateStatus = usModified) then
          UPDet.Apply(ukModify);
        Next;
      end;
    end;

    with JGMas do
    begin
      Qtemp.Active := false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.Add('UPDATE CBY_LineSideStockS SET CFMID2 = ''' + main.Edit1.Text + ''', CFMDate2 = GetDate()');
      Qtemp.SQL.Add('WHERE LSNO = ''' + FieldByName('JGNO').AsString + '''');
      Qtemp.ExecSQL;
      Qtemp.SQL.Clear;
      Active := false;
      Active := true;
    end;
    ShowMessage('Succeed.');
  except
    ShowMessage('Have wrong.');
  end;
end;

procedure TCBY_ExtraPur.JGDetAfterOpen(DataSet: TDataSet);
begin
  JGDetZ.Active := true;
  if (JGDet.RecordCount = 0) then
    SNP1.Enabled := false
  else
    SNP1.Enabled := true;
  DBGridEh2.Columns[6].ReadOnly := true;
  DBGridEh2.Columns[7].ReadOnly := true;
end;

procedure TCBY_ExtraPur.SNP1Click(Sender: TObject);
begin
  JGDet.Edit;
  JGDet.FieldByName('VNPrice').Clear;
  JGDet.FieldByName('USPrice').Clear;
  JGDet.FieldByName('VNACC').Clear;
  JGDet.FieldByName('USACC').Clear;
  DBGridEh2.Columns[6].ReadOnly := false;
  DBGridEh2.Columns[7].ReadOnly := false;
end;

procedure TCBY_ExtraPur.EXCEL1Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (JGMas.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      JGDet.Active := false;
      JGDetZ.Active:=false;
      WorkBook := eclApp.Workbooks.Add;
      for i:=0 to JGMas.FieldCount-1 do
      begin
        eclApp.Cells[1, i+1] := JGMas.Fields[i].FieldName;
      end;

      JGMas.First;
      j:=2;
      while not JGMas.Eof do
      begin
        for i:=0 to JGMas.FieldCount-1 do
        begin
          eclApp.Cells[j, i+1] := JGMas.Fields[i].Value;
        end;
        JGMas.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit;
      eclApp.Visible := true;
      ShowMessage('Succeed');
      JGDet.Active := true;
      JGDetZ.Active := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TCBY_ExtraPur.DBGridEh2ColExit(Sender: TObject);
begin
  if (DBGridEh2.SelectedField.FieldName = 'USACC') then
  begin
    if (JGDet.FieldByName('USACC').IsNull = false) then
    begin
      if (DBGridEh2.Columns[6].ReadOnly = false) then
      begin
        if (JGDet.FieldByName('VNPrice').IsNull) then
        begin
          JGDet.Edit;
          JGDet.FieldByName('USPrice').Value := Trunc(JGDet.FieldByName('USACC').Value/JGDet.FieldByName('Qty').Value*10000+0.5)/10000;
        end
        else begin
          MessageDlg('Can not have muiltiple price.', mtError, [mbYes, mbNo], 0);
        end;
      end;
    end;
  end;

  if (DBGridEh2.SelectedField.FieldName = 'VNACC') then
  begin
    if (JGDet.FieldByName('VNACC').isnull = false) then
    begin
      if (DBGridEh2.Columns[7].ReadOnly = false) then
      begin
        if (JGDet.FieldByName('USPrice').IsNull) then
        begin
          JGDet.Edit;
          JGDet.FieldByName('VNPrice').Value := Trunc(JGDet.FieldByName('VNACC').Value/JGDet.FieldByName('Qty').Value+0.5);
        end
        else begin
          MessageDlg('Can not have muiltiple price.', mtError, [mbYes, mbNo], 0);
        end;
      end;
    end;
  end;

  if (DBGridEh2.SelectedField.FieldName = 'USPrice') then
  begin
    if ((JGDet.FieldByName('USACC').IsNull) AND (not JGDet.FieldByName('USPrice').IsNull)) then
    begin
      JGDet.Edit;
      JGDet.FieldByName('USACC').Value := Trunc(JGDet.FieldByName('USPrice').Value*JGDet.FieldByName('Qty').Value*100+0.5)/100 ;
    end;
  end;

  if (DBGridEh2.SelectedField.FieldName = 'VNPrice') then
  begin
    if (JGDet.FieldByName('VNACC').IsNull) AND (not JGDet.FieldByName('VNPrice').IsNull) then
    begin
      JGDet.Edit;
      JGDet.FieldByName('VNACC').Value := Trunc(JGDet.FieldByName('VNPrice').Value*JGDet.FieldByName('Qty').Value+0.5) ;
    end;
  end;
end;

procedure TCBY_ExtraPur.DBGridEh2EditButtonClick(Sender: TObject);
begin
  {if not JGDet.FieldByName('BJNO').IsNull then
  begin
    CBY_ExtraPur_BJ := TCBY_ExtraPur_BJ.Create(Self);
    CBY_ExtraPur_BJ.Edit1.Text := JGDet.FieldByName('CLBH').Value;
    CBY_ExtraPur_BJ.Button1Click(Nil);
    CBY_ExtraPur_BJ.Show;
  end;}
  
  with JGDet do
  begin
    Edit;
    FieldByName('USACC').Value := Null;
    FieldByName('USPrice').Value := Null;
    FieldByName('VNACC').Value := Null;
    FieldByName('VNPrice').Value := Null;
    DBGridEh2.Columns[4].ReadOnly := false;
    DBGridEh2.Columns[5].ReadOnly := false;
  end;
end;

end.
