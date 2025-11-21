unit RDispatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBCtrls, ComCtrls, StdCtrls,
  ExtCtrls, Buttons, comobj;

type
  TRDispatch = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    seleb: TButton;
    sd: TDateTimePicker;
    dbg1: TDBGridEh;
    Qtemp: TQuery;
    UpdateSQL1: TUpdateSQL;
    showdata: TQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Label5: TLabel;
    Query1: TQuery;
    showdataRDWNO: TStringField;
    showdataMOLD_NO: TStringField;
    showdataCOLOR_NO: TStringField;
    showdataSIZE: TStringField;
    showdataModel_Name: TStringField;
    showdataMCS_CODE: TStringField;
    showdataMiltiple_MCS: TStringField;
    showdataComponent_Color_Code: TStringField;
    showdataDWDATE: TDateTimeField;
    showdataDWCLASS: TStringField;
    showdataStardard_Qty: TIntegerField;
    showdataUSERID: TStringField;
    showdataUSERDATE: TDateTimeField;
    showdataYN: TStringField;
    EdRDWNO: TEdit;
    EdMOLD_NO: TEdit;
    Label3: TLabel;
    EdColor_NO: TEdit;
    Label4: TLabel;
    EdSIZE: TEdit;
    ed: TDateTimePicker;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    OpenDialog: TOpenDialog;
    showdataPageNO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure selebClick(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RDispatch: TRDispatch;

var
  p: integer;
  NDate: TDate;

implementation
uses FunUnit, main1;

{$R *.dfm}

procedure TRDispatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qtemp.Active := false;
  showdata.Active := false;
  action := cafree;
end;

procedure TRDispatch.FormDestroy(Sender: TObject);
begin
  RDispatch := nil;
end;

procedure TRDispatch.FormCreate(Sender: TObject);
var
  i, j: integer;
begin
  sd.Date := now;
  ed.Date := now;
end;

procedure TRDispatch.selebClick(Sender: TObject);
var
  monthstr: string;
begin
  with showdata do
  begin
    active := false;
    sql.Clear;
    sql.add('select * from RDispatch');
    sql.Add('where DWDATE BETWEEN ' + '''' + formatdatetime('yyyy/MM/dd', sd.date) + '''');
    sql.Add(' and ' + '''' + formatdatetime('yyyy/MM/dd', ed.date) + '''');
    sql.add(' and RDWNO like ' + '''' + '%' + trim(edRDWNO.Text) + '%' + '''');
    sql.add(' and MOLD_NO like ' + '''' + '%' + trim(edMOLD_NO.Text) + '%' + '''');
    sql.add(' and COLOR_NO like ' + '''' + '%' + trim(edCOLOR_NO.Text) + '%' + '''');
    sql.add(' and SIZE like ' + '''' + '%' + trim(edSIZE.Text) + '%' + '''');
    //memo1.Text:=sql.Text;
    active := true;
  end;
  BB2.Enabled := true;
  bb3.Enabled := true;
  bb4.Enabled := true;
  BitBtn1.Enabled := true;

end;

procedure TRDispatch.BB2Click(Sender: TObject);
begin
  with showdata do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRDispatch.BB3Click(Sender: TObject);
begin
  if showdata.FieldByName('USERID').value <> main.Edit1.Text then
  begin
    showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
    exit;
  end;
  with showdata do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRDispatch.BB4Click(Sender: TObject);
begin
  if showdata.FieldByName('USERID').value <> main.Edit1.Text then
  begin
    showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
    exit;
  end;
  showdataRDWNO.Readonly := true;
  with showdata do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRDispatch.BB6Click(Sender: TObject);
begin
  with showdata do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  bb5.enabled := false;
  bb6.enabled := false;
end;

procedure TRDispatch.BB5Click(Sender: TObject);
var
  i: integer;
begin
  with query1 do //取服務器的年月值
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').value;
    active := false;
  end;
  try
    showdata.First;
    for i := 1 to showdata.RecordCount do
    begin
      case showdata.updatestatus of
        usinserted:
          begin
            UpdateSQL1.apply(ukInsert);
          end;
        usmodified:
          begin
            if showdata.fieldbyname('YN').value = '0' then
            begin
              UpdateSQL1.apply(ukdelete);
            end
            else
            begin
              showdata.edit;
              showdata.FieldByName('Userid').AsString := main.Edit1.Text;
              showdata.FieldByName('UserDate').Value := NDate;
              UpdateSQL1.apply(ukmodify);
            end;
          end;
      end;
      showdata.next;
    end;
    showdata.active := false;
    showdata.cachedupdates := false;
    showdata.requestlive := false;
    showdata.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TRDispatch.BitBtn1Click(Sender: TObject);
var
  y, m, a: string;
  ExcelApp: Variant;
  Model_Name, MCS_CODE, Miltiple_MCS, Component_Color_Code, Stardard_Qty: string;
  DWDate, MOLD_NO, COLOR_NO, SIZE: string;
  i, j, Pageno, newpage: integer;
begin
  with query1 do //取服務器的年月值
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active := true;
    y := copy(fieldbyname('FY').asstring, 3, 2);
    m := fieldbyname('FM').asstring;
    NDate := fieldbyname('NDate').value;
    active := false;
  end;
  if length(m) < 2 then
    m := '0' + m;

  with query1 do //計算領料單流水號
  begin
    active := false;
    sql.Clear;
    sql.Add('select top 1 RDWNO from RDispatch where RDWNO like ''' + y + m + '%' + ''' order by RDWNO DESC');
    active := true;
    if recordcount > 0 then
    begin
      last;
      a := copy(fieldbyname('RDWNO').AsString, 5, 5);
      a := inttostr(strtoint(a) + 1);
      while length(a) < 5 do
      begin
        a := '0' + a;
      end;
    end
    else
    begin
      a := '00001';
    end;
    a := y + m + a;
    active := false;
  end;

  if OpenDialog.Execute then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    DWDate := ExcelApp.Cells[2, 35].Value;
    i := 6;
    newpage := 6;
    Pageno := 1;
    MOLD_NO := ExcelApp.Cells[i, 2].Value;
    COLOR_NO := ExcelApp.Cells[i, 3].Value;
    SIZE := ExcelApp.Cells[i, 4].Value;
    Model_Name := ExcelApp.Cells[i, 5].Value;
    MCS_CODE := ExcelApp.Cells[i, 6].Value;
    Miltiple_MCS := ExcelApp.Cells[i, 7].Value;
    Component_Color_Code := ExcelApp.Cells[i, 8].Value;
    Stardard_Qty := ExcelApp.Cells[i, 10].Value;
    with showdata do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      Active := true;
      RequestLive := true;
      CachedUpdates := true;
      while (trim(MOLD_NO) <> '') do
      begin
        Insert;
        FieldByName('RDWNO').Value := a;
        FieldByName('MOLD_NO').Value := MOLD_NO;
        FieldByName('COLOR_NO').Value := COLOR_NO;
        FieldByName('SIZE').Value := SIZE;
        FieldByName('Model_Name').Value := Model_Name;
        FieldByName('MCS_CODE').Value := MCS_CODE;
        FieldByName('Miltiple_MCS').Value := Miltiple_MCS;
        FieldByName('Component_Color_Code').Value := Component_Color_Code;
        FieldByName('DWDATE').AsString := DWDate;
        FieldByName('Userid').AsString := main.Edit1.Text;
        FieldByName('Userdate').Value := NDate;
        FieldByName('YN').AsString := '1';
        FieldByName('Pageno').Value := Pageno;
        FieldByName('Stardard_Qty').AsString := Stardard_Qty;
        Post;
        i := i + 2;          
        SIZE := ExcelApp.Cells[i, 4].Value;
        if Size <> '' then begin
          if ExcelApp.Cells[i, 2].Value <> '' then
            MOLD_NO := ExcelApp.Cells[i, 2].Value;
          if ExcelApp.Cells[i, 3].Value <> '' then
            COLOR_NO := ExcelApp.Cells[i, 3].Value;
        end
        else begin
          newpage := newpage + 32;
          i := newpage;
          pageno := pageno + 1;
          MOLD_NO := ExcelApp.Cells[i, 2].Value;
          COLOR_NO := ExcelApp.Cells[i, 3].Value;
        end;
        SIZE := ExcelApp.Cells[i, 4].Value;
        Model_Name := ExcelApp.Cells[i, 5].Value;
        MCS_CODE := ExcelApp.Cells[i, 6].Value;
        Miltiple_MCS := ExcelApp.Cells[i, 7].Value;
        Component_Color_Code := ExcelApp.Cells[i, 8].Value;
        Stardard_Qty := ExcelApp.Cells[i, 10].Value;
        a := inttostr(strtoint(a) + 1);
      end;
      CommitUpdates
    end;
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
  end;
  showdata.requestlive := false;
  showdata.cachedupdates := false;
  showdata.active := false;
  showdata.active := true;
end;

end.
