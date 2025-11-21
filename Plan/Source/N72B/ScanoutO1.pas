unit ScanoutO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Menus;

type
  TScanoutO = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Button4: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DepNo: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    ScanData: TQuery;
    ScanDataDDBH: TStringField;
    ScanDataXieMing: TStringField;
    ScanDataXXCC: TStringField;
    ScanDataQtyIn: TIntegerField;
    ScanDataQtyOut: TIntegerField;
    ScanDataTonKho: TIntegerField;
    ScanDataMa_Ke: TStringField;
    ScanDataCodebar: TStringField;
    Qtemp1: TQuery;
    PopupMenu1: TPopupMenu;
    Modify: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    UpScan: TUpdateSQL;
    ScanDataID: TFloatField;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CancelClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanoutO: TScanoutO;

implementation
 uses main1, DepID1;
{$R *.dfm}

procedure TScanoutO.FormDestroy(Sender: TObject);
begin
   ScanoutO:=nil;
end;

procedure TScanoutO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TScanoutO.Button4Click(Sender: TObject);
begin
  DepID:=TDepID.Create(self);
  DepID.ShowModal();
  DepID.Free;
end;

procedure TScanoutO.Button2Click(Sender: TObject);
begin
if edit3.Text='' then
  begin
 ShowMessage('Don hang khong duoc de trong!');
 exit;
 end;
  with ScanData do
  begin
  active:=false;
  sql.Clear;
  sql.Add('SELECT distinct c.DDBH, d.XieMing, c.XXCC, a.QtyIn,a.QtyOut,a.QtyIn - ISNULL(a.QtyOut, 0) AS TonKho,a.Codebar, a.Ma_Ke,a.ID');
  sql.Add('FROM SMZL_MAKE A ');
  sql.Add('LEFT JOIN smddss C ON a.CODEBAR = c.CODEBAR ');
  sql.Add('LEFT JOIN smdd D ON c.DDBH = d.DDBH ');
  sql.Add('WHERE okCTS > 0 ');
  sql.Add('AND c.GXLB = ''O'' ');
  sql.Add('AND c.DDBH LIKE ''%' + Trim(Edit3.Text) + '%'' ');
  if  edit4.Text<>'' then sql.Add('AND a.Ma_Ke LIKE ''%' + Trim(Edit4.Text) + '%'' ');
  sql.Add('ORDER BY c.DDBH, c.XXCC, a.Ma_Ke');
  active:=true;
 // scandata.ExecSQL;
  end;
end;
procedure TScanoutO.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then  // Ki?m tra n?u nh?n Enter
  begin
  if (edit1.text='') or (edit4.text='') or (edit2.text='') then
    begin
    ShowMessage('du lieu trong hoac chua chon ma ke');
        Exit;
    end;
    with Qtemp do
      begin
        Active := False;
        SQL.Clear;
        sql.Add('SELECT distinct c.DDBH, d.XieMing, c.XXCC, a.QtyIn,a.QtyOut,a.QtyIn - ISNULL(a.QtyOut, 0) AS TonKho,a.Codebar, a.Ma_Ke,c.Qty');
        sql.Add('FROM SMZL_MAKE A ');
        sql.Add('LEFT JOIN smddss C ON a.CODEBAR = c.CODEBAR ');
        sql.Add('LEFT JOIN smdd D ON c.DDBH = d.DDBH ');
        sql.Add('WHERE c.CODEBAR='''+edit1.Text+'''');
        sql.Add('and a.Ma_Ke='''+edit4.Text+'''');
        sql.Add('ORDER BY c.DDBH, c.XXCC');
        active:=true;
        if Qtemp.FieldByName('TonKho').AsInteger - Qtemp.FieldByName('Qty').AsInteger  <0 then
        begin
          ShowMessage('Loi: ScanOutQty vuot qua ScanInQty!');
          abort;
          edit1.Text:='';
        end;
        if RecordCount = 0 then
          begin
          ShowMessage('Khong tim thay du lieu, vui long kiem tra MA KE!');
          Abort; // D?ng thao tác ti?p theo
        end;

    with Qtemp1 do
      begin
        Active := False;
        SQL.Clear;
        Qtemp1.sql.Add('update SMZL_MAKE ');
        Qtemp1.sql.add('set QtyOut = QtyOut + ' + IntToStr(Qtemp.FieldByName('Qty').AsInteger));
        sql.Add('WHERE CODEBAR='''+edit1.Text+''' AND MA_KE = ''' + Edit4.Text + '''');
        Qtemp1.ExecSQL;
      end;
      end;
      //xoa du lieu textbo1 va load lai du lieu
      edit1.Text:='';
    end;
      with ScanData do
  begin
  active:=false;
  sql.Clear;
  sql.Add('SELECT distinct c.DDBH, d.XieMing, c.XXCC, a.QtyIn,a.QtyOut,a.QtyIn - ISNULL(a.QtyOut, 0) AS TonKho,a.Codebar, a.Ma_Ke,a.ID');
  sql.Add('FROM SMZL_MAKE A ');
  sql.Add('LEFT JOIN smddss C ON a.CODEBAR = c.CODEBAR ');
  sql.Add('LEFT JOIN smdd D ON c.DDBH = d.DDBH ');
  sql.Add('WHERE okCTS > 0 ');
  sql.Add('AND c.GXLB = ''O'' ');
  sql.Add('AND c.DDBH LIKE ''%' + Trim(Edit3.Text) + '%'' ');
  if  edit4.Text<>'' then sql.Add('AND a.Ma_Ke LIKE ''%' + Trim(Edit4.Text) + '%'' ');
  sql.Add('ORDER BY c.DDBH, c.XXCC, a.Ma_Ke');
  active:=true;
 // scandata.ExecSQL;
  end;
end;

procedure TScanoutO.CancelClick(Sender: TObject);
begin
  with ScanData do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TScanoutO.ModifyClick(Sender: TObject);
begin
    with ScanData do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save.Enabled:=true;
    Cancel.Enabled:=true;
end;

procedure TScanoutO.SaveClick(Sender: TObject);
var i:integer;
begin
  ScanData.First;
  for i:=0 to ScanData.RecordCount-1 do
  begin
    case ScanData.updatestatus of
      usmodified:
      begin
        ScanData.Edit;
        UpScan.apply(ukmodify);
      end;
    end;
    ScanData.Next;
  end;
  ScanData.active:=false;
  ScanData.cachedupdates:=false;
  ScanData.requestlive:=false;
  ScanData.active:=true;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TScanoutO.FormCreate(Sender: TObject);
begin
  if ((main.edit1.Text ='316118') or (main.edit1.Text='316503')) then
  begin
    Modify.Enabled:=true;
  end;
end;

procedure TScanoutO.Button1Click(Sender: TObject);
begin
edit2.Text :='';
edit4.Text :='';
end;

end.
