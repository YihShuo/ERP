unit PMR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh,
  ComCtrls, ShellAPI, ComObj;

type
  TPMR = class(TForm)
    Panel2: TPanel;
    B_QueryP1: TBitBtn;
    B_InsertP1: TBitBtn;
    B_DeleteP1: TBitBtn;
    B_ModifyP1: TBitBtn;
    B_SaveP1: TBitBtn;
    B_CancelP1: TBitBtn;
    B_ExitP1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    ED_PMR: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DS_PMRList: TDataSource;
    U_PMRList: TUpdateSQL;
    Panel3: TPanel;
    B_InsertP2: TBitBtn;
    B_DeleteP2: TBitBtn;
    B_ModifyP2: TBitBtn;
    B_SaveP2: TBitBtn;
    B_CancelP2: TBitBtn;
    B_ExitP2: TBitBtn;
    Panel4: TPanel;
    B_InsertP3: TBitBtn;
    B_DeleteP3: TBitBtn;
    B_ModifyP3: TBitBtn;
    B_SaveP3: TBitBtn;
    B_CancelP3: TBitBtn;
    B_ExitP3: TBitBtn;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DS_PMRListS: TDataSource;
    U_PMRListS: TUpdateSQL;
    DS_PMRListSS: TDataSource;
    U_PMRListSS: TUpdateSQL;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    B_ImportP3: TBitBtn;
    OpenDialog1: TOpenDialog;
    Q_PMRList: TQuery;
    Q_PMRListPMRNo: TStringField;
    Q_PMRListGSBH: TStringField;
    Q_PMRListApplicableForSKU: TBooleanField;
    Q_PMRListImpactPO: TBooleanField;
    Q_PMRListHQConfirmation: TBooleanField;
    Q_PMRListConfirmationSample: TBooleanField;
    Q_PMRListSPECModification: TBooleanField;
    Q_PMRListRefittingSample: TBooleanField;
    Q_PMRListProcessModification: TBooleanField;
    Q_PMRListPaperPattern: TBooleanField;
    Q_PMRListTooling: TBooleanField;
    Q_PMRListMaterial: TBooleanField;
    Q_PMRListCBD: TBooleanField;
    Q_PMRListFactoryCost: TBooleanField;
    Q_PMRListPMRFile: TStringField;
    Q_PMRListUserID: TStringField;
    Q_PMRListUserDate: TDateTimeField;
    Q_PMRListYN: TStringField;
    Q_PMRListS: TQuery;
    Q_PMRListSPMRNo: TStringField;
    Q_PMRListSChangeType: TStringField;
    Q_PMRListSChangeItem: TStringField;
    Q_PMRListSNewSpec: TStringField;
    Q_PMRListSUserID: TStringField;
    Q_PMRListSUserDate: TDateTimeField;
    Q_PMRListSYN: TStringField;
    Q_PMRListSS: TQuery;
    Q_PMRListSSPMRNo: TStringField;
    Q_PMRListSSColorwayID: TStringField;
    Q_PMRListSSSKU: TStringField;
    Q_PMRListSSBuyNo: TStringField;
    Q_PMRListSSSeason: TStringField;
    Q_PMRListSSYear: TStringField;
    Q_PMRListSSDevelopmentCenter: TStringField;
    Q_PMRListSSFactory: TStringField;
    Q_PMRListSSProductDescription: TStringField;
    Q_PMRListSSEffectSeason: TStringField;
    Q_PMRListSSEffectBuyNo: TStringField;
    Q_PMRListSSStatus: TStringField;
    Q_PMRListSSCost: TFloatField;
    Q_PMRListSSRemark: TStringField;
    Q_PMRListSSUserID: TStringField;
    Q_PMRListSSUserDate: TDateTimeField;
    Q_PMRListSSYN: TStringField;
    OpenDialog2: TOpenDialog;
    QUpdate: TQuery;
    Q_PMRListBOMCheck: TBooleanField;
    Q_PMRListSOldSpec: TStringField;
    Qtemp: TQuery;
    Q_PMRListSPMRID: TIntegerField;
    Label4: TLabel;
    Ed_Oldspec: TEdit;
    Label5: TLabel;
    Ed_Newspec: TEdit;
    Q_PMRListSSBOMCheck: TBooleanField;
    Label6: TLabel;
    ED_SR: TEdit;
    Label7: TLabel;
    ED_SR3: TEdit;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Label9: TLabel;
    Ed_SR4: TEdit;
    DBGridEh4: TDBGridEh;
    DS_PMR_BOM: TDataSource;
    Q_PMR_BOM: TQuery;
    Button2: TButton;
    SKU: TLabel;
    Ed_SKU: TEdit;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    Q_PMR_BOMColorwayID: TStringField;
    Q_PMR_BOMSKU: TStringField;
    Q_PMR_BOMPMR_BOMCHECK: TStringField;
    Q_PMR_BOMPMR_BOMUNCHECK: TStringField;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure B_QueryP1Click(Sender: TObject);
    procedure B_InsertP1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B_DeleteP1Click(Sender: TObject);
    procedure B_ModifyP1Click(Sender: TObject);
    procedure B_SaveP1Click(Sender: TObject);
    procedure B_CancelP1Click(Sender: TObject);
    procedure B_ExitP1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Q_PMRListAfterOpen(DataSet: TDataSet);
    procedure Q_PMRListSAfterOpen(DataSet: TDataSet);
    procedure Q_PMRListSSAfterOpen(DataSet: TDataSet);
    procedure B_InsertP2Click(Sender: TObject);
    procedure B_DeleteP2Click(Sender: TObject);
    procedure B_ModifyP2Click(Sender: TObject);
    procedure B_SaveP2Click(Sender: TObject);
    procedure B_CancelP2Click(Sender: TObject);
    procedure B_ExitP2Click(Sender: TObject);
    procedure B_InsertP3Click(Sender: TObject);
    procedure B_DeleteP3Click(Sender: TObject);
    procedure B_ModifyP3Click(Sender: TObject);
    procedure B_SaveP3Click(Sender: TObject);
    procedure B_CancelP3Click(Sender: TObject);
    procedure B_ExitP3Click(Sender: TObject);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Q_PMRListNewRecord(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure B_ImportP3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure ED_SR3Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PMR: TPMR;
const
  PMRFilePath: string = '\\192.168.123.111\Develop Team\PMR Tracking\';

implementation

uses main1;

{$R *.dfm}

procedure TPMR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (B_SaveP1.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TPMR.FormDestroy(Sender: TObject);
begin
  PMR := Nil;
end;

procedure TPMR.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TPMR.B_QueryP1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TPMR.Button1Click(Sender: TObject);
begin
  ED_SR3.Text := '';
  Q_PMRListS.Active := false;
  Q_PMRListSS.Active :=false;
  with Q_PMRList do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT PMRList.* FROM PMRList ');
    if (trim(ED_OldSpec.Text) <> '') or (trim(ED_NewSpec.Text) <> '') then begin
      SQL.Add(' left join PMRLists on PMRList.PMRNO = PMRLists.PMRNO WHERE 1 = 1 ');
      if trim(ED_OldSpec.Text) <> '' then
        SQL.Add('and PMRLists.OldSpec LIKE ''' + ED_OldSpec.Text + '%''');
      if trim(ED_NewSpec.Text) <> '' then
        SQL.Add('and PMRLists.NewSpec LIKE ''' + ED_NewSpec.Text + '%''');
      if trim(Ed_PMR.Text) <> '' then
        SQL.Add('and PMRList.PMRNo LIKE ''' + ED_PMR.Text + '%''');
      if trim(ED_SR.Text) <> '' then
        SQL.Add('and PMRListSS.ColorwayID LIKE ''' + ED_SR.Text + '%''');
    end
    else begin
      if trim(ED_SR.Text) <> '' then begin
        SQL.Add(' left join PMRListSS on PMRList.PMRNO = PMRListSS.PMRNO WHERE PMRListSS.ColorwayID LIKE ''' + ED_SR.Text + '%'' ');
        if trim(Ed_PMR.Text) <> '' then
          SQL.Add('and PMRList.PMRNo LIKE ''' + ED_PMR.Text + '%''');
      end
      else begin
        SQL.Add(' WHERE 1 = 1 ');
        if trim(Ed_PMR.Text) <> '' then
          SQL.Add('and PMRList.PMRNo LIKE ''' + ED_PMR.Text + '%''');
      end;
    end;

    Active := true;
  end;
  if Q_PMRList.RecordCount > 0 then
    B_ModifyP3.Enabled := true;
  B_InsertP1.Enabled := true;
  B_DeleteP1.Enabled := true;
  B_ModifyP1.Enabled := true;
  Q_PMRListS.Active := true;
  Q_PMRListSS.ParamByName('ColorwayID').Value := '%';
  Q_PMRListSS.Active :=true;
end;

procedure TPMR.B_InsertP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[13].ButtonStyle := cbsEllipsis;
end;

procedure TPMR.B_DeleteP1Click(Sender: TObject);
begin
  if (Q_PMRListS.RecordCount = 0) AND (Q_PMRListSS.RecordCount = 0) then
  begin
    with Q_PMRList do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;

    B_SaveP1.Enabled := true;
    B_CancelP1.Enabled := true;
  end
  else begin
    ShowMessage('Please delete all of the data in tab [What Change] and [Effective Data] first.');
  end;
end;

procedure TPMR.B_ModifyP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[13].ButtonStyle := cbsEllipsis;
end;

procedure TPMR.B_SaveP1Click(Sender: TObject);
var
  i: integer;
begin
  try
    Q_PMRList.First;
    for i := 1 to Q_PMRList.RecordCount do
    begin
      case Q_PMRList.UpdateStatus of
        usInserted:
        begin
          if (Q_PMRList.FieldByName('PMRNo').IsNull) then
          begin
            Q_PMRList.Delete;
          end
          else begin
            Q_PMRList.Edit;
            Q_PMRList.FieldByName('GSBH').Value := main.Edit2.Text;
            Q_PMRList.FieldByName('USERID').Value := main.Edit1.Text;
            Q_PMRList.FieldByName('YN').Value := 1;
            U_PMRList.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_PMRList.FieldByName('YN').Value = 0) then
          begin
            U_PMRList.Apply(ukDelete);
          end
          else begin
            Q_PMRList.Edit;
            Q_PMRList.FieldByName('UserID').Value := main.Edit1.text;
            U_PMRList.Apply(ukModify);
          end;
        end;
      end;

      Q_PMRList.Next;
    end;

    Q_PMRList.Active := false;
    Q_PMRList.CachedUpdates := false;
    Q_PMRList.RequestLive := false;
    Q_PMRList.Active := true;
    B_SaveP1.Enabled := false;
    B_CancelP1.Enabled := false;
    DBGridEh1.Columns[13].ButtonStyle := cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPMR.B_CancelP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
  DBGridEh1.Columns[13].ButtonStyle := cbsNone;
end;

procedure TPMR.B_ExitP1Click(Sender: TObject);
begin
  Close;
end;

procedure TPMR.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    Panel2.Visible := true;
    Panel3.Visible := false;
    Panel4.Visible := false;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    Label2.Caption := 'PMR No : ' + Q_PMRList.FieldByName('PMRNo').AsString;
    Panel3.Visible := true;
    Panel2.Visible := false;
    Panel4.Visible := false;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    Label3.Caption := 'PMR No : ' + Q_PMRList.FieldByName('PMRNo').AsString;
    Panel4.Visible := true;
    Panel2.Visible := false;
    Panel3.Visible := false;
  end;
end;

procedure TPMR.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (B_SaveP1.Enabled) OR (B_SaveP2.Enabled) OR (B_SaveP3.Enabled) then
  begin
    ShowMessage('Please save the data!');
    AllowChange := false;
  end;
end;

procedure TPMR.Q_PMRListAfterOpen(DataSet: TDataSet);
begin
  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
  B_SaveP2.Enabled := false;
  B_CancelP2.Enabled := false;
  B_SaveP3.Enabled := false;
  B_CancelP3.Enabled := false;
end;

procedure TPMR.Q_PMRListSAfterOpen(DataSet: TDataSet);
begin
  if Not (Q_PMRList.FieldByName('PMRNo').IsNull) then
  begin
    B_InsertP2.Enabled := true;
    B_DeleteP2.Enabled := true;
    B_ModifyP2.Enabled := true;
  end;
end;

procedure TPMR.B_InsertP2Click(Sender: TObject);
begin
  with Q_PMRListS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    FieldByName('PMRNo').Value := Q_PMRList.FieldByName('PMRNo').AsString;
  end;

  B_SaveP2.Enabled := true;
  B_CancelP2.Enabled := true;
  DBGridEh2.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TPMR.B_DeleteP2Click(Sender: TObject);
begin
  with Q_PMRListS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B_SaveP2.Enabled := true;
  B_CancelP2.Enabled := true;
end;

procedure TPMR.B_ModifyP2Click(Sender: TObject);
begin
  with Q_PMRListS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  B_SaveP2.Enabled := true;
  B_CancelP2.Enabled := true;
  DBGridEh2.Columns[1].ButtonStyle := cbsAuto; 
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TPMR.B_SaveP2Click(Sender: TObject);
var
  i,j: integer;
begin
  try
    Q_PMRListS.First;
    Qtemp.Active := false;
    Qtemp.SQL.Text := 'Select MAX(PMRID) from PMRListS where PMRNO = '''+Q_PMRList.fieldbyname('PMRNO').AsString+'''';
    Qtemp.Open;
    if Qtemp.IsEmpty then
      j := 0
    else
      j := Qtemp.fields[0].AsInteger;
    for i := 1 to Q_PMRListS.RecordCount do
    begin
      case Q_PMRListS.UpdateStatus of
        usInserted:
        begin
          if (Q_PMRListS.FieldByName('ChangeType').IsNull) OR (Q_PMRListS.FieldByName('ChangeItem').IsNull) then
          begin
            Q_PMRListS.Delete;
          end
          else begin
            Q_PMRListS.Edit;
            Q_PMRListS.FieldByName('PMRID').Value := i+j;
            Q_PMRListS.FieldByName('USERID').Value := main.Edit1.Text;
            Q_PMRListS.FieldByName('YN').Value := 1;
            U_PMRListS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_PMRListS.FieldByName('YN').Value = 0) then
          begin
            U_PMRListS.Apply(ukDelete);
          end
          else begin
            Q_PMRListS.Edit;
            Q_PMRListS.FieldByName('UserID').Value := main.Edit1.text;
            U_PMRListS.Apply(ukModify);
          end;
        end;
      end;

      Q_PMRListS.Next;
    end;

    Q_PMRListS.Active := false;
    Q_PMRListS.CachedUpdates := false;
    Q_PMRListS.RequestLive := false;
    Q_PMRListS.Active := true;
    B_SaveP2.Enabled := false;
    B_CancelP2.Enabled := false;
    DBGridEh2.Columns[1].ButtonStyle := cbsNone;
    DBGridEh2.Columns[2].ButtonStyle := cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPMR.B_CancelP2Click(Sender: TObject);
begin
  with Q_PMRListS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  B_SaveP2.Enabled := false;
  B_CancelP2.Enabled := false;         
  DBGridEh2.Columns[1].ButtonStyle := cbsNone;
  DBGridEh2.Columns[2].ButtonStyle := cbsNone;
end;
          
procedure TPMR.B_ExitP2Click(Sender: TObject);
begin
  Close;
end;

procedure TPMR.Q_PMRListSSAfterOpen(DataSet: TDataSet);
begin
  if Not (Q_PMRList.FieldByName('PMRNo').IsNull) then
  begin
    B_ImportP3.Enabled := true;
  end;
end;

procedure TPMR.B_InsertP3Click(Sender: TObject);
begin
  with Q_PMRListSS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    FieldByName('PMRNo').Value := Q_PMRList.FieldByName('PMRNo').AsString;
  end;

  B_SaveP3.Enabled := true;
  B_CancelP3.Enabled := true;
end;

procedure TPMR.B_DeleteP3Click(Sender: TObject);
begin
  with Q_PMRListSS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B_SaveP3.Enabled := true;
  B_CancelP3.Enabled := true;
end;

procedure TPMR.B_ModifyP3Click(Sender: TObject);
begin
  with Q_PMRListSS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  B_SaveP3.Enabled := true;
  B_CancelP3.Enabled := true;
end;

procedure TPMR.B_SaveP3Click(Sender: TObject);
var
  i: integer;
begin
  try

    Q_PMRListSS.First;
    for i := 1 to Q_PMRListSS.RecordCount do
    begin
      case Q_PMRListSS.UpdateStatus of
        usInserted:
        begin
          if i = 1 then begin
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('DELETE FROM PMRListSS WHERE PMRNo = ''' + Q_PMRList.FieldByName('PMRNo').AsString + ''' or PMRNO = ''Total''');     //2021/05/29 §R°£OMRNO=Total
              ExecSQL;
            end;
          end;
          if (Q_PMRListSS.FieldByName('ColorwayID').IsNull) then
          begin
            Q_PMRListSS.Delete;
          end
          else begin
            Q_PMRListSS.Edit;
            Q_PMRListSS.FieldByName('USERID').Value := main.Edit1.Text;
            Q_PMRListSS.FieldByName('YN').Value := 1;
            U_PMRListSS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          Q_PMRListSS.Edit;
          Q_PMRListSS.FieldByName('USERID').Value := main.Edit1.Text;
          U_PMRListSS.Apply(ukModify);
        end;
      end;

      Q_PMRListSS.Next;
    end;

    Q_PMRListSS.Active := false;
    Q_PMRListSS.CachedUpdates := false;
    Q_PMRListSS.RequestLive := false;
    Q_PMRListSS.Active := true;
    B_SaveP3.Enabled := false;
    B_CancelP3.Enabled := false;
    B_ModifyP3.Enabled := true;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPMR.B_CancelP3Click(Sender: TObject);
begin
  with Q_PMRListSS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  B_SaveP3.Enabled := false;
  B_CancelP3.Enabled := false;
end;

procedure TPMR.B_ExitP3Click(Sender: TObject);
begin
  Close;
end;

procedure TPMR.DBGridEh1Columns13EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  PMRFileName, PMRFilePath1: string;
begin
  if (OpenDialog1.Execute) then
  begin
    PMRFileName := ExtractFileName(OpenDialog1.FileName);
    PMRFilePath1 := PMRFilePath + copy(PMRFileName,3,4)+'\'+copy(PMRFileName,1,11)+'\';
//    if (FileExists(PMRFilePath + PMRFileName) = false) then
    if (FileExists(PMRFilePath1 + PMRFileName) = false) then
    begin
      Q_PMRList.FieldByName('PMRFile').Value := ExtractFileName(OpenDialog1.FileName);
//      CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), true);
      CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath1 + PMRFileName), true);
    end
    else begin
      if (MessageDlg('File ''' + PMRFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Q_PMRList.FieldByName('PMRFile').Value := ExtractFileName(OpenDialog1.FileName);
//        CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), true);
        CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath1 + PMRFileName), true);
      end
    end;
  end;
end;

procedure TPMR.Q_PMRListNewRecord(DataSet: TDataSet);
begin
  Q_PMRList.FieldByName('ApplicableForSKU').Value := 0;
  Q_PMRList.FieldByName('ImpactPO').Value := 0;
  Q_PMRList.FieldByName('HQConfirmation').Value := 0;
  Q_PMRList.FieldByName('ConfirmationSample').Value := 0;
  Q_PMRList.FieldByName('SPECModification').Value := 0;
  Q_PMRList.FieldByName('RefittingSample').Value := 0;
  Q_PMRList.FieldByName('ProcessModification').Value := 0;
  Q_PMRList.FieldByName('PaperPattern').Value := 0;
  Q_PMRList.FieldByName('Tooling').Value := 0;
  Q_PMRList.FieldByName('Material').Value := 0;
  Q_PMRList.FieldByName('CBD').Value := 0;        
  Q_PMRList.FieldByName('FactoryCost').Value := 0;
  Q_PMRList.FieldByName('BOMCheck').Value := 0;
end;
   
procedure TPMR.DBGridEh1DblClick(Sender: TObject);
var PMRFilePath1: String;
begin
  PMRFilePath1 := PMRFilePath + copy(Q_PMRList.FieldByName('PMRNO').AsString,3,4)+'\'+copy(Q_PMRList.FieldByName('PMRNO').AsString,1,11)+'\';
  if (DBGridEh1.SelectedField.FieldName = 'PMRFile') AND (Q_PMRList.FieldByName('PMRFile').AsString <> '') AND (B_SaveP1.Enabled = false) then
//    ShellExecute(0, 'open', PChar(PMRFilePath + Q_PMRList.FieldByName('PMRFile').AsString), nil, nil, SW_Normal);
    ShellExecute(0, 'open', PChar(PMRFilePath1 + Q_PMRList.FieldByName('PMRFile').AsString), nil, nil, SW_Normal);
end;

procedure TPMR.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Q_PMRList.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TPMR.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Q_PMRListS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TPMR.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Q_PMRListSS.FieldByName('YN').AsString = '0') then
    DBGridEh3.Canvas.Font.Color := clRed;
end;

procedure TPMR.B_ImportP3Click(Sender: TObject);
var
  eclApp, Sheet: Variant;
  Col, Row, MaxCol, MaxRow, i: integer;
  TargetCol: array of integer;
  SRList: string;
  Cost: Double;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.workbooks.Open(OpenDialog1.FileName);
      //eclApp.WorkSheets[1].Activate;
      Sheet := eclApp.WorkSheets[1];
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    MaxCol := Sheet.UsedRange.Columns.count;
    MaxRow := Sheet.UsedRange.Rows.count;
    SetLength(TargetCol, 14);
    for i := 0 to Length(TargetCol)-1 do
    begin
      TargetCol[i] := -1;
    end;

    for Col := 1 to MaxCol do
    begin
      if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'PMR#') then TargetCol[0] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'SUBMITTEDMONTH') then TargetCol[1] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'SUBMITTEDSEASON') then TargetCol[2] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'SUBMITTEDYEAR') then TargetCol[3] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'DEVELOPMENTCENTER') then TargetCol[4] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'PRODUCTIONFACTORY') then TargetCol[5] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'PRODUCTDESCRIPTION') then TargetCol[6] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'COLORWAYID') then TargetCol[7] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'MATERIALNUMBER') then TargetCol[8] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'EFFECTIVESEASON') then TargetCol[9] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'EFFECTIVEORDERBUYMONTH') then TargetCol[10] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'COSTIMPACTSTATUS') then TargetCol[11] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'COSTIMPACT/PAIR') then TargetCol[12] := Col
      else if (StringReplace(StringReplace(StringReplace(UpperCase(Sheet.Cells[1, Col]), ' ', '', [rfReplaceAll]), #13, '', [rfReplaceAll]), #10, '', [rfReplaceAll]) = 'REMARK') then TargetCol[13] := Col;
    end;

    with Q_PMRListSS do
    begin
      RequestLive := true;
      CachedUpdates := true;

      First;
      while not Eof do
      begin
        Delete;
      end;

      SRList := '';
      for Row := 2 to MaxRow do
      begin
        if (TargetCol[0] <> -1) then
        begin
          if (Sheet.Cells[Row, TargetCol[0]].Value <> '') then
          begin
            Insert;
            if (TargetCol[0] <> -1) then FieldByName('PMRNo').Value := Trim(Sheet.Cells[Row, TargetCol[0]]);
            if (TargetCol[1] <> -1) then FieldByName('BuyNo').Value := Trim(Sheet.Cells[Row, TargetCol[1]]);
            if (TargetCol[2] <> -1) then FieldByName('Season').Value := Trim(Sheet.Cells[Row, TargetCol[2]]);
            if (TargetCol[3] <> -1) then FieldByName('Year').Value := Trim(Sheet.Cells[Row, TargetCol[3]]);
            if (TargetCol[4] <> -1) then FieldByName('DevelopmentCenter').Value := Trim(Sheet.Cells[Row, TargetCol[4]]);
            if (TargetCol[5] <> -1) then FieldByName('Factory').Value := Trim(Sheet.Cells[Row, TargetCol[5]]);
            if (TargetCol[6] <> -1) then FieldByName('ProductDescription').Value := Trim(Sheet.Cells[Row, TargetCol[6]]);
            if (TargetCol[7] <> -1) then FieldByName('ColorwayID').Value := Trim(Sheet.Cells[Row, TargetCol[7]]);
            if (TargetCol[8] <> -1) then FieldByName('SKU').Value := Trim(Sheet.Cells[Row, TargetCol[8]]);
            if (TargetCol[9] <> -1) then FieldByName('EffectSeason').Value := Trim(Sheet.Cells[Row, TargetCol[9]]);
            if (TargetCol[10] <> -1) then FieldByName('EffectBuyNo').Value := Trim(Sheet.Cells[Row, TargetCol[10]]);
            if (TargetCol[11] <> -1) then FieldByName('Status').Value := Trim(Sheet.Cells[Row, TargetCol[11]]);
            if (TargetCol[12] <> -1) then
            begin
              if (TryStrToFloat(Sheet.Cells[Row, TargetCol[12]].Value, Cost) = true) then
              begin
                if (Sheet.Cells[Row, TargetCol[12]].Value = 0) then FieldByName('Cost').Value := Null
                else
                  FieldByName('Cost').Value := Sheet.Cells[Row, TargetCol[12]];
              end
              else
                FieldByName('Cost').Value := Null;
            end;
            if (TargetCol[13] <> -1) then FieldByName('Remark').Value := Trim(Sheet.Cells[Row, TargetCol[13]]);
            if (Pos(FieldByName('ColorwayID').AsString + '-' + FieldByName('SKU').AsString, SRList) > 0) then
              Q_PMRListSS.Delete
            else
              SRList := SRList + ';' + FieldByName('ColorwayID').AsString + '-' + FieldByName('SKU').AsString;
          end;
        end;
      end;
    end;

    eclApp.WorkBooks.Close;
    eclApp.Quit;
    B_SaveP3.Enabled := true;
    B_CancelP3.Enabled := true;
    ShowMessage('Effective data import is Completed.');
  end;
end;

procedure TPMR.DBGridEh2Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  PMRFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    PMRFileName := ExtractFileName(OpenDialog1.FileName);

    if (FileExists(PMRFilePath + PMRFileName) = false) then
    begin
      Q_PMRListS.FieldByName('ChangeItem').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), true);
    end
    else begin
      if (MessageDlg('File ''' + PMRFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Q_PMRListS.FieldByName('ChangeItem').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), true);
      end
    end;
  end;
end;

procedure TPMR.DBGridEh2CellClick(Column: TColumnEh);
begin
  if (Q_PMRListS.FieldByName('ChangeType').AsString = 'Unified material name') AND (B_SaveP2.Enabled) then
    DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis
  else
    DBGridEh2.Columns[2].ButtonStyle := cbsNone;
end;

procedure TPMR.DBGridEh2DblClick(Sender: TObject);
begin
  if (DBGridEh2.SelectedField.FieldName = 'ChangeItem') AND (Q_PMRListS.FieldByName('ChangeType').AsString = 'Unified material name') AND (Q_PMRListS.FieldByName('ChangeItem').AsString <> '') AND (B_SaveP2.Enabled = false) then
    ShellExecute(0, 'open', PChar(PMRFilePath + Q_PMRListS.FieldByName('ChangeItem').AsString), nil, nil, SW_Normal);
end;

procedure TPMR.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Q_PMRListS.FieldByName('ChangeType').AsString = 'Unified material name') AND (DataCol = 2) then
  begin
    if (Q_PMRListS.FieldByName('YN').AsString = '0') then
      DBGridEh2.Canvas.Font.Color := clRed
    else
      DBGridEh2.Canvas.Font.Color := clBlue;
    DBGridEh2.Canvas.Font.Style := [fsUnderline];
  end;

  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPMR.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if (DBGridEh2.SelectedIndex = 1) then
    Key := #0;
end;

procedure TPMR.ED_SR3Change(Sender: TObject);
begin
  Q_PMRListSS.Active :=false;
  if trim(ED_SR3.Text) <> '' then
    Q_PMRListSS.ParamByName('ColorwayID').Value := ED_SR3.Text+'%';
  Q_PMRListSS.Active :=true;
end;

procedure TPMR.Button2Click(Sender: TObject);
begin
  with Q_PMR_BOM do begin
    Active := false;
    SQL.Clear;
    SQL.Add('select distinct ColorwayID,SKU, ');
    SQL.Add('CAST(stuff ( ');
    SQL.Add('( ');
    SQL.Add('SELECT '',''+ PMRA.PMRNo FROM PMRListSS PMRA ');
    SQL.Add('WHERE PMRA.sku = PMRB.sku and PMRA.BOMCheck = 1 ');
    SQL.Add('for XML PATH('''') ');
    SQL.Add('),1,1,'''' ');
    SQL.Add(') AS VARCHAR(8000)) as PMR_BOMCheck ');
    SQL.Add(', ');
    SQL.Add('CAST(stuff ( ');
    SQL.Add('( ');
    SQL.Add('SELECT '',''+ PMRA.PMRNo FROM PMRListSS PMRA ');
    SQL.Add('WHERE PMRA.sku = PMRB.sku and isnull(PMRA.BOMCheck,0) = 0 ');
    SQL.Add('for XML PATH('''') ');
    SQL.Add('),1,1,'''' ');
    SQL.Add(')  AS VARCHAR(8000)) as PMR_BOMUnCheck ');
    SQL.Add('from PMRListSS PMRB ');
    SQL.Add('where Factory = ''LYN'' ');
    SQL.Add('and ColorwayID like '''+Ed_SR4.Text+'%'' ');
    SQL.Add('and SKU like '''+Ed_SKU.Text+'%'' ');
    if CheckBox1.Checked then
      SQL.Add('and substring(PMRNO,3,8) >= '''+formatdatetime('YYYYMMDD',DTP1.Date)+''' and substring(PMRNO,3,8) <= '''+formatdatetime('YYYYMMDD',DTP2.Date)+''' ');
    Active := true;
  end;
end;

procedure TPMR.Button3Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
      i,j:integer;
begin
    if  Q_PMR_BOM.active  then
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
        for   i:=0   to   Q_PMR_BOM.fieldcount-1   do
        begin
          if Q_PMR_BOM.fields[i].FieldName = 'Price' then
            eclApp.Cells(1,i+1):= 'VNPrice'
          else if Q_PMR_BOM.fields[i].FieldName = 'ACC' then
            eclApp.Cells(1,i+1):= 'ACCVN'
          else
            eclApp.Cells(1,i+1):=Q_PMR_BOM.fields[i].FieldName;
        end;

        Q_PMR_BOM.First;
        j:=2;
        while   not   Q_PMR_BOM.Eof   do
        begin
          for   i:=0   to  Q_PMR_BOM.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Q_PMR_BOM.Fields[i].Value;
          end;
          Q_PMR_BOM.Next;
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

end.
