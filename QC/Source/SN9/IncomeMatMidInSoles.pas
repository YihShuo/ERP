unit IncomeMatMidInSoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh, Menus;

type
  TIncomeMatMidInSole = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    edtDDBH: TEdit;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    edtZSBH: TEdit;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    Query1ReportID: TIntegerField;
    Query1InspecDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1Supplier: TStringField;
    Query1XieMing: TStringField;
    Query1DDBH: TStringField;
    Query1TOderQty: TIntegerField;
    Query1RQty: TIntegerField;
    Query1Article: TStringField;
    Query1Size: TStringField;
    Query1TArrQty: TIntegerField;
    Query1IQty: TIntegerField;
    Query1SHard: TStringField;
    Query1LWeight: TStringField;
    Query1RWeight: TStringField;
    Query1SWeight: TStringField;
    Query1Issues: TStringField;
    Query1DeQty: TIntegerField;
    Query1DeRate: TFloatField;
    Query1WPLLen: TIntegerField;
    Query1WPRLen: TIntegerField;
    Query1WPLSize: TIntegerField;
    Query1WPRSize: TIntegerField;
    Query1SendDate: TDateTimeField;
    Query1Reject: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1YN: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    dtpInsDate: TDateTimePicker;
    Label5: TLabel;
    edtStyle: TEdit;
    Label6: TLabel;
    edtTOQty: TEdit;
    Label7: TLabel;
    edtMatID: TEdit;
    Label8: TLabel;
    edtRQty: TEdit;
    Label9: TLabel;
    edtSKU: TEdit;
    btClear: TButton;
    ckInsDate: TCheckBox;
    Label4: TLabel;
    edtSHard: TEdit;
    btCopy: TButton;
    Query1LabUID: TStringField;
    Query1LabChgDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    QSig: TQuery;
    btnCfm: TButton;
    Query1LabID: TStringField;
    Query1LabResult: TStringField;
    Label10: TLabel;
    edtSize: TEdit;
    PopupMenu1: TPopupMenu;
    mnu4: TMenuItem;
    mnu1: TMenuItem;
    upmnu1: TMenuItem;
    upmnu2: TMenuItem;
    mnu2: TMenuItem;
    mnu3: TMenuItem;
    Query1RpFile: TStringField;
    QUp: TQuery;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    function NewID: string;
    function GetUsernameByID(const AID: string): string;
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure bExcelClick(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetColumnsReadOnly;
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btCopyClick(Sender: TObject);
    procedure btnCfmClick(Sender: TObject);
    procedure mnu3Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure mnu4Click(Sender: TObject);
    procedure upmnu1Click(Sender: TObject);
    procedure upmnu2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncomeMatMidInSole: TIncomeMatMidInSole;

implementation

uses main1;

{$R *.dfm}

procedure TIncomeMatMidInSole.SetColumnsReadOnly;
begin
if MenuCode.Text = 'N941' then
  begin
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
  end else if MenuCode.Text = 'N942' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['TOderQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['Size'].ReadOnly := True;
    DBGrid1.FieldColumns['TArrQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['ALeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BLeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['ARightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BRightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['TempRoom'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['SHard'].ReadOnly := True;
    DBGrid1.FieldColumns['LWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['RWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['SWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeRate'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLSize'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRSize'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    btnCfm.Enabled := true;
  end else if MenuCode.Text = 'N943' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['TOderQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['Size'].ReadOnly := True;
    DBGrid1.FieldColumns['TArrQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['ALeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BLeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['ARightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BRightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['TempRoom'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['SHard'].ReadOnly := True;
    DBGrid1.FieldColumns['LWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['RWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['SWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeRate'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLSize'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRSize'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    btnCfm.Enabled := true;
  end else if MenuCode.Text = 'N944' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['TOderQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['Size'].ReadOnly := True;
    DBGrid1.FieldColumns['TArrQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['ALeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BLeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['ARightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BRightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['TempRoom'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['SHard'].ReadOnly := True;
    DBGrid1.FieldColumns['LWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['RWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['SWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeRate'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLSize'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRSize'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    btnCfm.Enabled := true;
  end else if MenuCode.Text = 'N945' then
  begin
    DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
    DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['TOderQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['Size'].ReadOnly := True;
    DBGrid1.FieldColumns['TArrQty'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['ALeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BLeftHard'].ReadOnly := True;
    DBGrid1.FieldColumns['ARightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['BRightHard'].ReadOnly := True;
    DBGrid1.FieldColumns['TempRoom'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['SHard'].ReadOnly := True;
    DBGrid1.FieldColumns['LWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['RWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['SWeight'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeRate'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRLen'].ReadOnly := True;
    DBGrid1.FieldColumns['WPLSize'].ReadOnly := True;
    DBGrid1.FieldColumns['WPRSize'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['LabResult'].ReadOnly := True;
    DBGrid1.FieldColumns['Reject'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
    DBGrid1.FieldColumns['USERID'].ReadOnly := True;
    DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
    btnCfm.Enabled := true;
  end;
end;

function TIncomeMatMidInSole.GetUsernameByID(const AID: string): string;
begin
  Result := '';
  if AID = '' then Exit;

  with QSig do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select USERNAME from Busers where USERID = :USERID');
    ParamByName('USERID').AsString := AID;
    Active := True;

    if not EOF then
      Result := FieldByName('USERNAME').AsString;
  end;
end;

function TIncomeMatMidInSole.NewID: string;
var
  Prefix, LastID: string;
  Seq: Integer;
begin
  Prefix := FormatDateTime('yymm', Date);

  with QGetID do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(
      'select top 1 ReportID ' +
      'from QC_MidInSole ' +
      'where left(ReportID, 4) = :P ' +
      'order by ReportID desc');
    ParamByName('P').AsString := Prefix;
    Active := true;
  end;

  if QGetID.IsEmpty then
    Seq := 1
  else
  begin
    LastID := QGetID.FieldByName('ReportID').AsString;
    Seq := StrToInt(Copy(LastID, 5, 5)) + 1;
  end;

  Result := Prefix + FormatFloat('00000', Seq);
end;

procedure TIncomeMatMidInSole.Button1Click(Sender: TObject);
begin

  SetColumnsReadOnly;

  with Query1 do
  begin
    Active:= false;
    SQL.Clear;
    SQL.Add('select ReportID, InspecDate, CLBH, clzl.ywpm as MatName, TempRoom, Supplier, Mold, XieMing, DDBH, TOderQty, RQty, Article, Size, TArrQty, IQty, ALeftHard, BLeftHard,');
    SQL.Add(' ARightHard, BRightHard, SHard, LWeight, RWeight, SWeight, Issues, DeQty, WPLLen, WPRLen, WPLSize, WPRSize, SendDate, LabID, LabResult, ');
    SQL.Add('Reject, SCFID, SCFDate, LCFID, LCFDate, MSCFID, MSCFDate, QC_MidInSole.YN, QC_MidInSole.USERID, QC_MidInSole.USERDate, LabUID, LabChgDate, ');
    SQL.Add('CAST(ROUND((DeQty * 100.0) / IQty, 1) AS DECIMAL(10,1)) as DeRate, PreparedID, PreparedDate, RpFile ');
    SQL.Add('from QC_MidInSole ');
    SQL.Add('left join clzl on clzl.cldh = QC_MidInSole.CLBH ');
    SQL.Add('where DDBH like '''+edtDDBH.Text+'%'' and QC_MidInSole.YN <> 0 ');
    if ckInsDate.Checked then
      SQL.Add('and CAST(InspecDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpInsDate.Date)+''' ');
    if edtMatID.Text <> '' then
      SQL.Add('and CLBH like '''+edtMatID.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier like '''+edtZSBH.Text+'%'' ');
    if edtSKU.Text <> '' then
      SQL.Add('and Article like '''+edtSKU.Text+'%'' ');
    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtSHard.Text <> '' then
      SQL.Add('and SHard = '''+edtSHard.Text+''' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(QC_MidInSole.USERDate as DATE) = '''+FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date)+''' ');
    if edtStyle.Text <> '' then
      SQL.Add('and XieMing like ''%'+edtStyle.Text+'%'' ');
    if edtSize.Text <> '' then
      SQL.Add('and Size = '''+edtSize.Text+''' ');
    SQL.Add(' order by ReportID');
    Active := true;
  end;
end;

procedure TIncomeMatMidInSole.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TIncomeMatMidInSole.BB2Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
    dbgrid1.ReadOnly := true;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TIncomeMatMidInSole.BB3Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
//DBGrid1.SetFocus;
//DBGrid1.SelectedIndex := DBGrid1.FieldColumns['SCFID'].Index;
end;

procedure TIncomeMatMidInSole.BB4Click(Sender: TObject);
var i: integer;
begin
  if not QGetID.Active then QGetID.Active;
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if Query1.FieldByName('DDBH').IsNull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('YN').Value := 1;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    Query1.Edit;
                    Query1.FieldByName('USERID').Value := main.Edit1.Text;
                    UpSQL1.Apply(ukdelete)
                   end;
                 end else
                 begin
                  Query1.Edit;
                  if DBGrid1.SelectedField.FieldName = 'PreparedID' then
                    Query1.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd', Now)
                  else if MenuCode.Text = 'N941' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N942' then
                    begin
                      Query1.FieldByName('LabUID').Value := main.Edit1.Text;
                      Query1.FieldByName('LabChgDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N943' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N944' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N945' then
                    begin
                      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  upsql1.apply(ukmodify);
                 end;
              end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb4.enabled:=false;
    bb5.enabled:=false;
    dbgrid1.ReadOnly := false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TIncomeMatMidInSole.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := false;
    RequestLive := false;
    BB4.Enabled := false;
    BB5.Enabled := false;
    dbgrid1.ReadOnly := false;
  end;
end;

procedure TIncomeMatMidInSole.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N943') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N944') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and (MenuCode.Text = 'N945') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'CLBH') then
    begin
      // Chi lam neu Query1 dang bat CachedUpdates
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select ywpm as MatName from clzl where cldh = :CLBH');
        Qtemp.ParamByName('CLBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('MatName').AsString := Qtemp.FieldByName('MatName').AsString;
          Query1.Post;
        end else
        begin
          Query1.Edit;
          Query1.FieldByName('MatName').AsString := '';
          Query1.Post;
        end;
      end;
    end;

    if (DBGrid1.SelectedField.FieldName = 'DDBH') then
    begin
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs, xxzl.XieMing from DDZL ');
        Qtemp.SQL.Add('left join xxzl on xxzl.XieXing = DDZL.XieXing and xxzl.SheHao = DDZL.SheHao ');
        Qtemp.SQL.Add('where DDZL.DDBH = :DDBH');
        Qtemp.ParamByName('DDBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := Qtemp.FieldByName('ARTICLE').AsString;
          Query1.FieldByName('XieMing').AsString := Qtemp.FieldByName('XieMing').AsString;
          Query1.FieldByName('TOderQty').AsString := Qtemp.FieldByName('Pairs').AsString;
          Query1.Post;
        end else
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := '';
          Query1.FieldByName('XieMing').AsString := '';
          Query1.FieldByName('TOderQty').AsString := '';
          Query1.Post;
        end;
      end;
    end;
  end;
end;

procedure TIncomeMatMidInSole.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
  
  if MenuCode.Text = 'N941' then
    btCopy.Visible := true;
  {if (MenuCode.Text = 'N943') or (MenuCode.Text = 'N944') or (MenuCode.Text = 'N945') then
    btnCfm.Visible := true;}
  if Query1.Active then
    begin
       mnu1.Enabled:=true;
       mnu2.Enabled:=true;
       mnu3.Enabled:=true;
       mnu4.Enabled:=true;
    end;
end;

procedure TIncomeMatMidInSole.bExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  Row, Col: Integer;
begin
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;

  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];

  for Col := 0 to Query1.FieldCount - 1 do
    Worksheet.Cells[1, Col + 1] := Query1.Fields[Col].FieldName;

  Row := 2;
  Query1.First;
  while not Query1.Eof do
  begin
    for Col := 0 to Query1.FieldCount - 1 do
      Worksheet.Cells[Row, Col + 1] := Query1.Fields[Col].AsString;
    Inc(Row);
    Query1.Next;
  end;
  Worksheet.Columns.AutoFit;
end;

procedure TIncomeMatMidInSole.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, AppDir, SrcFile, DstFile: string;
  i, p: Integer;
  MaxHeight: Double;
  SigS, SigMS, SigL, SigP: Boolean;
  s: WideString;
begin
  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS001-02D.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS001-02D.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS001-02D.xlsx';

  StartRow := 10;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS001-02D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS001-02D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
      SaveDialog.Title := 'Chon noi luu file PDF moi';
    end;

    if not SaveDialog.Execute then
      Exit;

    SaveFile := SaveDialog.FileName;
  finally
    SaveDialog.Free;
  end;

  ExcelApp := CreateOleObject('Excel.Application');

  Workbook := ExcelApp.Workbooks.Open(DuongDanFile);
  Worksheet := Workbook.WorkSheets[1];

  //hang 2
  for i := 1 to 20 do
  begin
    s := VarToStr(Worksheet.Cells[2, i].Value);
    p := Pos(Chr(10), s);

    if p = 0 then
      p := Length(s) + 1
    else
      p := p + 1;

    case i of
      1: Worksheet.Cells[2, i].Characters(p, 0).Text :=
            ' ' + FormatDateTime('dd-mm-yyyy', dtpInsDate.Date);

      {8: Worksheet.Cells[2, i].Characters(p, 0).Text :=
            ' ' + Query1.FieldByName('MatName').AsString;}
    end;
  end;

  if edtMatID.Text <> '' then
  begin
    s := Worksheet.Cells[2, 13].Value;
    Worksheet.Cells[2, 13].Value := s + ' ' + edtMatID.Text;
  end;

  if edtZSBH.Text <> '' then
  begin
    s := Worksheet.Cells[2, 17].Value;
    Worksheet.Cells[2, 17].Value := s + ' ' + edtZSBH.Text;
  end;

  if edtTOQty.Text <> '' then
  begin
    s := Worksheet.Cells[4, 11].Value;
    Worksheet.Cells[4, 11].Value := s + ' ' + edtTOQty.Text;
  end;

  if edtRQty.Text <> '' then
  begin
    s := Worksheet.Cells[4, 14].Value;
    Worksheet.Cells[4, 14].Value := s + ' ' + edtRQty.Text;
  end;

  if Query1.RecordCount > 0 then
  begin
    s := Worksheet.Cells[3, 1].Value;
    Worksheet.Cells[3, 1].Value := s + ' ' + Query1.FieldByName('TempRoom').Value;
  end;

  //hang 3
  for i := 1 to 20 do
  begin
    s := VarToStr(Worksheet.Cells[3, i].Value);
    p := Pos(Chr(10), s);

    if p = 0 then
      p := Length(s) + 1
    else
      p := p + 1;

    case i of
      8: Worksheet.Cells[3, i].Characters(p, 0).Text :=
            ' ' + Query1.FieldByName('Mold').AsString;
      13: Worksheet.Cells[3, i].Characters(p, 0).Text :=
            ' ' + Query1.FieldByName('DDBH').AsString;
    end;
  end;

  //hang 4
  for i := 1 to 20 do
  begin
    s := VarToStr(Worksheet.Cells[4, i].Value);
    p := Pos(Chr(10), s);

    if p = 0 then
      p := Length(s) + 1
    else
      p := p + 1;

    case i of
      1: Worksheet.Cells[4, i].Characters(p, 0).Text :=
            ' ' + edtStyle.Text;

      8: Worksheet.Cells[4, i].Characters(p, 0).Text :=
            ' ' + edtSKU.Text;
      19:
    end;
  end;

  //hang 9
  if edtSHard.Text <> '' then
  begin
    s := VarToStr(Worksheet.Cells[9, 4].Value);
    p := Pos(Chr(10), s);

    if p = 0 then
      p := Length(s) + 1
    else
      p := p + 1;
    Worksheet.Cells[9, 4].Characters(p, 0).Text :=
            ' ' + edtSHard.Text;
  end;

  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:U%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('Size').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('TArrQty').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('IQty').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('ALeftHard').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('BLeftHard').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('ARightHard').AsString;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('BRightHard').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('SWeight').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('LWeight').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('RWeight').AsString;
    Worksheet.Cells[InsertRow, 11].Value := Query1.FieldByName('Issues').AsString;
    Worksheet.Cells[InsertRow, 12].Value := Query1.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 13].Value := Query1.FieldByName('DeRate').AsString + '%';
    Worksheet.Cells[InsertRow, 14].Value := Query1.FieldByName('WPLLen').AsString;
    Worksheet.Cells[InsertRow, 15].Value := Query1.FieldByName('WPRLen').AsString;
    Worksheet.Cells[InsertRow, 16].Value := Query1.FieldByName('WPLSize').AsString;
    Worksheet.Cells[InsertRow, 17].Value := Query1.FieldByName('WPRSize').AsString;
    Worksheet.Cells[InsertRow, 18].Value := FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SendDate').AsDateTime);
    Worksheet.Cells[InsertRow, 19].Value := Query1.FieldByName('LabID').AsString;
    Worksheet.Cells[InsertRow, 20].Value := Query1.FieldByName('LabResult').AsString;
    Worksheet.Cells[InsertRow, 21].Value := Query1.FieldByName('Reject').AsString;
    Worksheet.Rows[InsertRow].AutoFit;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  //Kiem tra ky KCS Super
  Query1.First;
  SigS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('SCFID').AsString = '') or Query1.FieldByName('SCFID').IsNull then
      SigS := true;
  Query1.Next
  end;

  if SigS = false then
  begin
    Worksheet.Cells[InsertRow + 2, 8].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 8].Value := GetUsernameByID(Query1.FieldByName('SCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SCFDate').AsDateTime);
  end;

  //Kiem tra ky Material Super
  Query1.First;
  SigMS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('MSCFID').AsString = '') or Query1.FieldByName('MSCFID').IsNull then
      SigMS := true;
  Query1.Next
  end;

  if SigMS = false then
  begin
    Worksheet.Cells[InsertRow + 2, 1].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 1].Value := GetUsernameByID(Query1.FieldByName('MSCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('MSCFDate').AsDateTime);
  end;

  //Kiem tra ky KCS Leader
  Query1.First;
  SigL := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('LCFID').AsString = '') or Query1.FieldByName('LCFID').IsNull then
      SigL := true;
  Query1.Next
  end;

  if SigL = false then
  begin
    Worksheet.Cells[InsertRow + 2, 14].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 14].Value := GetUsernameByID(Query1.FieldByName('LCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('LCFDate').AsDateTime);
  end;

  //Kiem tra ky PreparedID
  Query1.First;
  SigP := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('PreparedID').AsString = '') or Query1.FieldByName('PreparedID').IsNull then
      SigP := true;
  Query1.Next
  end;

  if SigP = false then
  begin
    Worksheet.Cells[InsertRow + 2, 18].WrapText := True;
    Worksheet.Cells[InsertRow + 2, 18].Value := Query1.FieldByName('PreparedID').AsString
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;

  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$9';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$9';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TIncomeMatMidInSole.btClearClick(Sender: TObject);
begin
  edtMatID.Clear;
  edtDDBH.Clear;
  edtZSBH.Clear;
  edtRID.Clear;
  edtSKU.Clear;
  edtRQty.Clear;
  edtTOQty.Clear;
  edtStyle.Clear;
  edtSHard.Clear;
end;

procedure TIncomeMatMidInSole.FormCreate(Sender: TObject);
begin
 DBGrid1.FrozenCols := 8;
end;

procedure TIncomeMatMidInSole.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TIncomeMatMidInSole.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TIncomeMatMidInSole.FormDestroy(Sender: TObject);
begin
  IncomeMatMidInSole := nil;
end;

procedure TIncomeMatMidInSole.DBGrid1CellClick(Column: TColumnEh);
begin
if not Query1.Active then exit;
if Query1.RecordCount = 0 then exit;
if (Query1.RecordCount > 0)  and not Query1.CachedUpdates then
  begin
    dtpInsDate.Date := Query1.FieldByName('InspecDate').AsDateTime;
    edtTOQty.Text := Query1.FieldByName('TOderQty').AsString;
    edtStyle.Text := Query1.FieldByName('XieMing').AsString;
    edtRQty.Text := Query1.FieldByName('RQty').AsString;
    edtSKU.Text := Query1.FieldByName('Article').AsString;
    edtRID.Text := Query1.FieldByName('ReportID').AsString;
    edtDDBH.Text := Query1.FieldByName('DDBH').AsString;
    edtMatID.Text := Query1.FieldByName('CLBH').AsString;
    edtZSBH.Text := Query1.FieldByName('Supplier').AsString;
    edtSHard.Text := Query1.FieldByName('SHard').AsString;
    dtpUSERDate.Date := Query1.FieldByName('USERDate').AsDateTime;
  end;
end;

procedure TIncomeMatMidInSole.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TIncomeMatMidInSole.btCopyClick(Sender: TObject);
var
  OldReportID   : Variant;
  OldInspecDate : TDateTime;
  OldCLBH       : string;
  OldMatName    : string;
  OldTempRoom   : string;
  OldSupplier   : string;
  OldMold       : string;
  OldXieMing    : string;
  OldDDBH       : string;
  OldTOderQty   : Integer;
  OldRQty       : Integer;
  OldArticle    : string;
  OldSize       : string;
  OldTArrQty    : Integer;
  OldIQty       : Integer;
  OldALeftHard  : string;
  OldBLeftHard  : string;
  OldARightHard : string;
  OldBRightHard : string;
  OldSHard      : string;
  OldLWeight    : string;
  OldRWeight    : string;
  OldSWeight    : string;
  OldWPLLen     : Double;
  OldWPRLen     : Double;
  OldWPLSize    : Double;
  OldWPRSize    : Double;
  OldSendDate   : TDateTime;
begin
  if not Query1.Active then exit;
  if Query1.RecordCount = 0 then exit;
  bb4.enabled:=true;
  bb5.enabled:=true;
  Query1.CachedUpdates := true;
  Query1.RequestLive := true;
  Query1.Edit;

  OldInspecDate  := Query1.FieldByName('InspecDate').AsDateTime;
  OldCLBH        := Query1.FieldByName('CLBH').AsString;
  OldMatName     := Query1.FieldByName('MatName').AsString;
  OldTempRoom    := Query1.FieldByName('TempRoom').AsString;
  OldSupplier    := Query1.FieldByName('Supplier').AsString;
  OldMold        := Query1.FieldByName('Mold').AsString;
  OldXieMing     := Query1.FieldByName('XieMing').AsString;
  OldDDBH        := Query1.FieldByName('DDBH').AsString;
  OldTOderQty    := Query1.FieldByName('TOderQty').AsInteger;
  OldRQty        := Query1.FieldByName('RQty').AsInteger;
  OldArticle     := Query1.FieldByName('Article').AsString;
  OldSize        := Query1.FieldByName('Size').AsString;
  OldTArrQty     := Query1.FieldByName('TArrQty').AsInteger;
  OldIQty        := Query1.FieldByName('IQty').AsInteger;
  OldALeftHard   := Query1.FieldByName('ALeftHard').AsString;
  OldBLeftHard   := Query1.FieldByName('BLeftHard').AsString;
  OldARightHard  := Query1.FieldByName('ARightHard').AsString;
  OldBRightHard  := Query1.FieldByName('BRightHard').AsString;
  OldSHard       := Query1.FieldByName('SHard').AsString;
  OldLWeight     := Query1.FieldByName('LWeight').AsString;
  OldRWeight     := Query1.FieldByName('RWeight').AsString;
  OldSWeight     := Query1.FieldByName('SWeight').AsString;
  OldWPLLen      := Query1.FieldByName('WPLLen').AsFloat;
  OldWPRLen      := Query1.FieldByName('WPRLen').AsFloat;
  OldWPLSize     := Query1.FieldByName('WPLSize').AsFloat;
  OldWPRSize     := Query1.FieldByName('WPRSize').AsFloat;
  OldSendDate    := Query1.FieldByName('SendDate').AsDateTime;

  Query1.Append;
  Query1.FieldByName('InspecDate').AsDateTime:= OldInspecDate;
  Query1.FieldByName('CLBH').AsString        := OldCLBH;
  Query1.FieldByName('MatName').AsString     := OldMatName;
  Query1.FieldByName('TempRoom').AsString    := OldTempRoom;
  Query1.FieldByName('Supplier').AsString    := OldSupplier;
  Query1.FieldByName('Mold').AsString        := OldMold;
  Query1.FieldByName('XieMing').AsString     := OldXieMing;
  Query1.FieldByName('DDBH').AsString        := OldDDBH;
  Query1.FieldByName('TOderQty').AsInteger   := OldTOderQty;
  Query1.FieldByName('RQty').AsInteger       := OldRQty;
  Query1.FieldByName('Article').AsString     := OldArticle;
  Query1.FieldByName('Size').AsString        := OldSize;
  Query1.FieldByName('TArrQty').AsInteger    := OldTArrQty;
  Query1.FieldByName('IQty').AsInteger       := OldIQty;
  Query1.FieldByName('ALeftHard').AsString    := OldALeftHard;
  Query1.FieldByName('BLeftHard').AsString    := OldBLeftHard;
  Query1.FieldByName('ARightHard').AsString   := OldARightHard;
  Query1.FieldByName('BRightHard').AsString   := OldBRightHard;
  Query1.FieldByName('SHard').AsString        := OldSHard;
  Query1.FieldByName('LWeight').AsString      := OldLWeight;
  Query1.FieldByName('RWeight').AsString      := OldRWeight;
  Query1.FieldByName('SWeight').AsString      := OldSWeight;
  Query1.FieldByName('WPLLen').AsFloat       := OldWPLLen;
  Query1.FieldByName('WPRLen').AsFloat       := OldWPRLen;
  Query1.FieldByName('WPLSize').AsFloat      := OldWPLSize;
  Query1.FieldByName('WPRSize').AsFloat      := OldWPRSize;
  Query1.FieldByName('SendDate').AsDateTime  := OldSendDate;
  Query1.Post;
end;

procedure TIncomeMatMidInSole.btnCfmClick(Sender: TObject);
begin
  Query1.RequestLive := true;
  Query1.CachedUpdates := true;
  BB4.Enabled := true;
  BB5.Enabled := true;

  if not Query1.Active then
    Query1.Open;
  Query1.DisableControls;
  try
    Query1.First; // quay ve dong dau
    while not Query1.Eof do
    begin
      Query1.Edit;

      // Gan gia tri Sign vao cache
      if MenuCode.Text = 'N943' then
      begin
        Query1.FieldByName('SCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      end else if MenuCode.Text = 'N944' then
      begin
        Query1.FieldByName('LCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      end else if MenuCode.Text = 'N945' then
      begin
        Query1.FieldByName('MSCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now)
      end;

      Query1.Post; // Post chi vao cache, chua xuong SQL
      Query1.Next;
    end;
  finally
    Query1.EnableControls;
  end;
end;

procedure TIncomeMatMidInSole.mnu3Click(Sender: TObject);
var
  FileName, BasePath, FullPath: string;
begin
  // kiem tra co file trong database khong
  if Query1.FieldByName('RpFile').IsNull then Exit;
  if Query1.FieldByName('RpFile').AsString = '' then Exit;

  // hoi nguoi dung co muon xoa file khong
  if MessageDlg('You want to delete guarantee letter?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  // duong dan server share
  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N94\';
  FullPath := BasePath + FileName;

  try
    // kiem tra file ton tai tren server
    if FileExists(FullPath) then
    begin
      // xoa file tren network share
      DeleteFile(FullPath);
    end;

    // update database set null
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_MidInSole SET RpFile = NULL');
      SQL.Add('WHERE ReportID = ' + Query1.FieldByName('ReportID').AsString);
      ExecSQL;
    end;

    ShowMessage('Delete OK');

    // refresh data
    Query1.Active := False;
    Query1.Active := True;

  except
    on E: Exception do
      ShowMessage('Delete fail: ' + E.Message);
  end;
end;

procedure TIncomeMatMidInSole.mnu2Click(Sender: TObject);
var
  SourceFile, DestFile, FileName: string;
begin
  if Query1.FieldByName('RpFile').IsNull then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  SaveDialog1.FileName := FileName;

  if not SaveDialog1.Execute then Exit;

  SourceFile := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N94\' + FileName;

  DestFile := SaveDialog1.FileName;

  // kiem tra file nguon
  if not FileExists(SourceFile) then
  begin
    ShowMessage('Khong tim thay file tren server');
    Exit;
  end;

  // kiem tra file dich
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai. Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  // copy file
  if CopyFile(PChar(SourceFile), PChar(DestFile), False) then
    ShowMessage('Download file OK')
  else
    ShowMessage('Download file error');
end;

procedure TIncomeMatMidInSole.mnu4Click(Sender: TObject);
var
  SourceFile, FileName: string;
begin
  if Query1.FieldByName('RpFile').IsNull then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  SourceFile := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N94\' + FileName;

  // kiem tra file nguon
  if not FileExists(SourceFile) then
  begin
    ShowMessage('Khong tim thay file tren server');
    Exit;
  end;

  // mo file truc tiep
  ShellExecute(0, 'open', PChar(SourceFile), nil, nil, SW_SHOWNORMAL);
end;

procedure TIncomeMatMidInSole.upmnu1Click(Sender: TObject);
var
  SaveFN, BasePath, DestFile: string;
  CopyResult: Boolean;
begin
  if Query1.Active = False then Exit;

  if not OpenDialog1.Execute then Exit;
  if OpenDialog1.FileName = '' then Exit;

  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N94\';
  SaveFN := ExtractFileName(OpenDialog1.FileName);
  DestFile := BasePath + SaveFN;

  // check file ton tai
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai, Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  try
    // copy file len server
    CopyResult := CopyFile(PChar(OpenDialog1.FileName), PChar(DestFile), False);

    if not CopyResult then
    begin
      ShowMessage('Upload fail: ' + SysErrorMessage(GetLastError) + ' ');
      Exit;
    end;

    // update DB
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_MidInSole');
      SQL.Add('SET RpFile = ''' + SaveFN + '''');
      SQL.Add('WHERE ReportID = ' + Query1.FieldByName('ReportID').AsString);
      ExecSQL;
    end;

    Query1.Active := False;
    Query1.Active := True;

    ShowMessage('Upload OK');
  except
    on E: Exception do
      ShowMessage('Upload fail: ' + E.Message);
  end;
end;

procedure TIncomeMatMidInSole.upmnu2Click(Sender: TObject);
var
  SaveFN, BasePath, DestFile: string;
  CopyResult: Boolean;
begin
  if Query1.Active = False then Exit;
  if Query1.FieldByName('LabID').IsNull then Exit;
  if not OpenDialog1.Execute then Exit;
  if OpenDialog1.FileName = '' then Exit;

  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N94\';
  SaveFN := ExtractFileName(OpenDialog1.FileName);
  DestFile := BasePath + SaveFN;

  // check file ton tai
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai, Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  try
    // copy file len server
    CopyResult := CopyFile(PChar(OpenDialog1.FileName), PChar(DestFile), False);

    if not CopyResult then
    begin
      ShowMessage('Upload fail: ' + SysErrorMessage(GetLastError) + ' ');
      Exit;
    end;

    // update DB
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_MidInSole');
      SQL.Add('SET RpFile = ''' + SaveFN + '''');
      SQL.Add('WHERE LabID = ''' + Query1.FieldByName('LabID').AsString + ''' ');
      ExecSQL;
    end;

    Query1.Active := False;
    Query1.Active := True;

    ShowMessage('Upload OK');
  except
    on E: Exception do
      ShowMessage('Upload fail: ' + E.Message);
  end;
end;


end.
