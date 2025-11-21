unit SupervisorData1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  MyADOUpdateSQL, Vcl.Menus, MyADOQuery, ComObj;

type
  TSupervisorData = class(TForm)
    DSCertificate: TDataSource;
    U_Certificate: TMyADOUpdateSQL;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ProgressBar1: TProgressBar;
    CertificateQry: TMyADOQuery;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    ED_ID1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB7: TBitBtn;
    QUpdate: TMyADOQuery;
    CertificateQryOnBoard: TWideStringField;
    CertificateQryName: TWideStringField;
    CertificateQryEngName: TWideStringField;
    CertificateQryID: TStringField;
    CertificateQryGender: TStringField;
    CertificateQryFID: TStringField;
    CertificateQryFactory: TStringField;
    CertificateQryDID: TStringField;
    CertificateQryDepartment: TStringField;
    CertificateQryPID: TStringField;
    CertificateQryPosition: TWideStringField;
    CertificateQryBirthDate: TDateTimeField;
    CertificateQryBirthPlace: TWideStringField;
    CertificateQryBirthProvince: TWideStringField;
    CertificateQryIDCard: TStringField;
    CertificateQryPassPort: TStringField;
    CertificateQryPassPortSD: TDateTimeField;
    CertificateQryPassPortED: TDateTimeField;
    CertificateQryVisa: TWideStringField;
    CertificateQryVisaDate: TDateTimeField;
    CertificateQryWorkPermit: TWideStringField;
    CertificateQryIssueDate: TDateTimeField;
    CertificateQryExpireDate: TDateTimeField;
    CertificateQryNID: TStringField;
    CertificateQryNationality: TWideStringField;
    CertificateQryDutyDate: TDateTimeField;
    CertificateQryArrivalDate: TDateTimeField;
    CertificateQryResigned: TBooleanField;
    CertificateQryResignedDate: TDateTimeField;
    CertificateQryType: TWideStringField;
    CertificateQryUserID: TStringField;
    CertificateQryUserDate: TDateTimeField;
    CertificateQryYN: TStringField;
    CertificateQryMemo: TWideStringField;
    CertificateQryDirectoryID: TStringField;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    RB21: TRadioButton;
    RB22: TRadioButton;
    RB23: TRadioButton;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    RB11: TRadioButton;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    CertificateQryFactoryS: TStringField;
    Label11: TLabel;
    Edit6: TEdit;
    CertificateQryContractDate: TDateTimeField;
    CertificateQryContractExpireDate: TDateTimeField;
    CertificateQryAge: TIntegerField;
    CheckBox3: TCheckBox;
    CB12: TCheckBox;
    CB13: TCheckBox;
    CB14: TCheckBox;
    CB15: TCheckBox;
    CB16: TCheckBox;
    CertificateQryProvinceResidence: TWideStringField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure CertificateQryAfterOpen(DataSet: TDataSet);
    procedure CertificateQryBeforeClose(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure Update_Directory(Flag:String);
  public
    { Public declarations }
  end;

var
  SupervisorData: TSupervisorData;

implementation

uses DM1, main1, History1, Directory_Nationality1, Directory_Position1,
     Directory_Department1, Directory_Factory1, FunUnit;

{$R *.dfm}

procedure TSupervisorData.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TSupervisorData.BB2Click(Sender: TObject);
begin
  with CertificateQry do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;
  DBGridEh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[8].ButtonStyle:=cbsellipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupervisorData.BB3Click(Sender: TObject);
begin
  with CertificateQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;

  DBGridEh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[8].ButtonStyle:=cbsellipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupervisorData.BB4Click(Sender: TObject);
var
  KeyValue: string;
begin
  if (Date()-CertificateQry.FieldByName('UserDate').Value)>1 then
  begin
    Showmessage('日期超過一天，不能刪除');
    Exit;
  end;

  with CertificateQry do
  begin
    KeyValue := FieldByName('ID').AsString;
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Locate('ID', KeyValue, []);
    Edit;
    FieldByName('YN').Value := '0';
  end;
  DBGridEh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGridEh1.Columns[8].ButtonStyle:=cbsellipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;
//更新或新增
procedure TSupervisorData.Update_Directory(Flag:String);
begin
  if Flag='Insert'  then
  begin
    with QUpdate do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into Directory  ');
      SQL.Add(' (ID, FID, DID, PID, FactoryS, UserID, UserDate, YN) ');
      SQL.Add('Values ');
      SQL.Add(' ('''+CertificateQry.FieldByName('ID').AsString+''','''+CertificateQry.FieldByName('FID').AsString+''','''+CertificateQry.FieldByName('DID').AsString+''','''+CertificateQry.FieldByName('PID').AsString+''','''+CertificateQry.FieldByName('FactoryS').AsString+''','''+main.UserID+''',GetDate(),''1'') ');
      ExecSQL();
    end;
  end else if Flag='Modify' then
  begin
    with QUpdate do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update  Directory  Set ');
      SQL.Add(' FID='''+CertificateQry.FieldByName('FID').AsString+''',');
      SQL.Add(' DID='''+CertificateQry.FieldByName('DID').AsString+''',');
      SQL.Add(' PID='''+CertificateQry.FieldByName('PID').AsString+''', ');
      SQL.Add(' FactoryS='''+CertificateQry.FieldByName('FactoryS').AsString+''', ');
      SQL.Add(' USERID='''+main.UserID+''',UserDate=GetDate() ');
      SQL.Add(' where ID='''+CertificateQry.FieldByName('ID').AsString+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
  end else if Flag='Delete' then
  begin
    with QUpdate do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete  from Directory where ID='''+CertificateQry.FieldByName('ID').AsString+''' ');
      ExecSQL();
    end;
  end;
end;
procedure TSupervisorData.BB5Click(Sender: TObject);
var i: integer;
begin
  CertificateQry.First;
  for i := 0 to CertificateQry.RecordCount-1 do
  begin
    case CertificateQry.UpdateStatus of
      usInserted:
      begin
        if (CertificateQry.FieldByName('ID').Value = '') then
        begin
          CertificateQry.Delete;
        end
        else begin
          CertificateQry.Edit;
          if ((not CertificateQry.FieldByName('DutyDate').IsNull) or (not CertificateQry.FieldByName('DutyDate').IsNull)) then
          begin
            CertificateQry.FieldByName('OnBoard').AsString :=FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('DutyDate').Value)+'到職'+#1310+FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('ArrivalDate').Value)+'入職';
          end;
          CertificateQry.FieldByName('UserID').AsString := main.UserID;
          U_Certificate.Apply(ukInsert);
          Update_Directory('Insert');
        end;
      end;

      usModified:
      begin
        if (CertificateQry.FieldByName('YN').AsString = '0') then
        begin
          Update_Directory('Delete');
          U_Certificate.Apply(ukDelete);
        end
        else begin
          //VISA 修改紀錄
          if (CertificateQry.FieldByName('Visa').AsString <> CertificateQry.FieldByName('Visa').OldValue) then
          begin
            if (not CertificateQry.FieldByName('VisaDate').IsNull) then
            begin
              if (( CertificateQry.FieldByName('Visa').OldValue<>null) and  (  CertificateQry.FieldByName('VisaDate').OldValue<>null)) then
              begin
                QUpdate.SQL.Clear;
                QUpdate.SQL.Add('INSERT INTO CertificateHis (ID, Category, CredentialNo, ExpireDate)');
                QUpdate.SQL.Add('VALUES (''' + CertificateQry.FieldByName('ID').AsString + ''', ''TTT/VISA'', N''' + CertificateQry.FieldByName('Visa').OldValue + ''', ''' + FormatDateTime('yyyy/MM/dd', CertificateQry.FieldByName('VisaDate').OldValue) + ''')');
                QUpdate.ExecSQL;
              end;
            end;
          end;
          if (CertificateQry.FieldByName('WorkPermit').AsString <> CertificateQry.FieldByName('WorkPermit').OldValue) then
          begin
            if (not CertificateQry.FieldByName('ExpireDate').IsNull) then
            begin
              if (( CertificateQry.FieldByName('WorkPermit').OldValue<>null) and  (  CertificateQry.FieldByName('ExpireDate').OldValue<>null)) then
              begin
                QUpdate.SQL.Clear;
                QUpdate.SQL.Add('INSERT INTO CertificateHis (ID, Category, CredentialNo, ExpireDate)');
                QUpdate.SQL.Add('VALUES (''' + CertificateQry.FieldByName('ID').AsString + ''', N''GPLĐ'', N''' + CertificateQry.FieldByName('WorkPermit').OldValue + ''', ''' + FormatDateTime('yyyy/MM/dd', CertificateQry.FieldByName('ExpireDate').OldValue) + ''')');
                QUpdate.ExecSQL;
              end;
            end;
          end;
          //到職日 入廠日
          CertificateQry.Edit;
          if ((not CertificateQry.FieldByName('DutyDate').IsNull) or (not CertificateQry.FieldByName('ArrivalDate').IsNull)) then
          begin
            if CertificateQry.FieldByName('DutyDate').IsNull then
            begin
              CertificateQry.FieldByName('OnBoard').AsString :=FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('ArrivalDate').Value)+'入職';
            end else if CertificateQry.FieldByName('ArrivalDate').IsNull then
            begin
              CertificateQry.FieldByName('OnBoard').AsString :=FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('DutyDate').Value)+'到職';
            end else
            begin
              CertificateQry.FieldByName('OnBoard').AsString :=FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('DutyDate').Value)+'到職 '+#13#10+FormatDatetime('YYYY.MM.DD',CertificateQry.FieldByName('ArrivalDate').Value)+'入職';
            end;
          end;
          //
          if CertificateQry.FieldByName('Department').AsString='' then   CertificateQry.FieldByName('DID').Value:=null;
          if CertificateQry.FieldByName('Factory').AsString='' then   CertificateQry.FieldByName('FID').Value:=null;
          if CertificateQry.FieldByName('Position').AsString='' then   CertificateQry.FieldByName('PID').Value:=null;
          CertificateQry.FieldByName('UserID').AsString := main.UserID;
          U_Certificate.Apply(ukModify);
          Update_Directory('Modify');
        end;
      end;
    end;
    CertificateQry.Next;
  end;

  CertificateQry.Active:=false;
  CertificateQry.LockType:=ltReadOnly;
  CertificateQry.Active:=true;
  DBGridEh1.Columns[5].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[6].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[8].ButtonStyle:=cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSupervisorData.BB6Click(Sender: TObject);
begin
  with CertificateQry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;

  DBGridEh1.Columns[5].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[6].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[8].ButtonStyle:=cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSupervisorData.BB7Click(Sender: TObject);
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  offset,i, j: integer;
begin
  try
    ExcelApp := CreateOleObject('Excel.Application');
    //WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN12.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN12.xlsx'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN12.xlsx') then
  begin

    try
      ExcelApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN12.xlsx');
      //台籍
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory_Factory.Name as Factory, ');
        SQL.Add('       Directory_Department.Name as Department, Directory_Position.Name as Position, ');
        SQL.Add('        Certificate.BirthPlace,Certificate.ProvinceResidence,Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.BirthDate,Certificate.PassPortSD,Certificate.PassPortED, ');
        SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate, ');
        SQL.Add('       Certificate.ExpireDate,Certificate.ContractDate,Certificate.ContractExpireDate, Certificate.Memo,Certificate.ResignedDate ');
        SQL.Add('	  ');
        SQL.Add('FROM Certificate ');
        SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
        SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID ');
        SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID ');
        SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID ');
        SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
        SQL.Add('where 1=1 and Certificate.NID=''TW'' and IsNull(Certificate.Resigned,0)=0 ');
        SQL.Add('ORDER BY Directory.Sequence ');
        Active:=true;
      end;
      if QUpdate.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[1].Activate;
        QUpdate.First;
        offset := 3;
        while not QUpdate.Eof do
        begin
          for i:=0 to QUpdate.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := QUpdate.Fields[i].AsString;
          end;
          QUpdate.Next;
          Inc(offset);
        end;
        //
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[1].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[2].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[3].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[4].LineStyle := 1;
      end;
      //陸籍
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory_Factory.Name as Factory, ');
        SQL.Add('       Directory_Department.Name as Department, Directory_Position.Name as Position, ');
        SQL.Add('        Certificate.BirthPlace,Certificate.ProvinceResidence,Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.BirthDate,Certificate.PassPortSD,Certificate.PassPortED, ');
        SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate, ');
        SQL.Add('       Certificate.ExpireDate,Certificate.ContractDate,Certificate.ContractExpireDate, Certificate.Memo,Certificate.ResignedDate ');
        SQL.Add('	  ');
        SQL.Add('FROM Certificate ');
        SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
        SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID ');
        SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID ');
        SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID ');
        SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
        SQL.Add('where 1=1 and Certificate.NID=''CN'' and IsNull(Certificate.Resigned,0)=0 ');
        SQL.Add('ORDER BY Directory.Sequence ');
        Active:=true;
      end;
      if QUpdate.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[2].Activate;
        QUpdate.First;
        offset := 3;
        while not QUpdate.Eof do
        begin
          for i:=0 to QUpdate.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := QUpdate.Fields[i].AsString;
          end;
          QUpdate.Next;
          Inc(offset);
        end;
        //
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[1].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[2].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[3].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[4].LineStyle := 1;
      end;
      //菲律賓
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory_Factory.Name as Factory, ');
        SQL.Add('       Directory_Department.Name as Department, Directory_Position.Name as Position, ');
        SQL.Add('        Certificate.BirthPlace,Certificate.ProvinceResidence,Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.BirthDate,Certificate.PassPortSD,Certificate.PassPortED, ');
        SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate, ');
        SQL.Add('       Certificate.ExpireDate,Certificate.ContractDate,Certificate.ContractExpireDate, Certificate.Memo,Certificate.ResignedDate ');
        SQL.Add('	  ');
        SQL.Add('FROM Certificate ');
        SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
        SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID ');
        SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID ');
        SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID ');
        SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
        SQL.Add('where 1=1 and Certificate.NID in (''PH'',''IN'') and IsNull(Certificate.Resigned,0)=0 ');
        SQL.Add('ORDER BY Directory.Sequence ');
        Active:=true;
      end;
      if QUpdate.RecordCount>0  then
      begin
        ExcelApp.WorkSheets[3].Activate;
        QUpdate.First;
        offset := 3;
        while not QUpdate.Eof do
        begin
          for i:=0 to QUpdate.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := QUpdate.Fields[i].AsString;
          end;
          QUpdate.Next;
          Inc(offset);
        end;
        //
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[1].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[2].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[3].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[4].LineStyle := 1;
      end;
      //台灣離職
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory_Factory.Name as Factory, ');
        SQL.Add('       Directory_Department.Name as Department, Directory_Position.Name as Position, ');
        SQL.Add('        Certificate.BirthPlace,Certificate.ProvinceResidence,Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.BirthDate,Certificate.PassPortSD,Certificate.PassPortED, ');
        SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate, ');
        SQL.Add('       Certificate.ExpireDate,Certificate.ContractDate,Certificate.ContractExpireDate, Certificate.Memo,Certificate.ResignedDate ');
        SQL.Add('	  ');
        SQL.Add('FROM Certificate ');
        SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
        SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID ');
        SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID ');
        SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID ');
        SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
        SQL.Add('where 1=1 and Certificate.NID=''TW'' and IsNull(Certificate.Resigned,0)=1 ');
        SQL.Add('ORDER BY Directory.Sequence ');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
      if QUpdate.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[4].Activate;
        QUpdate.First;
        offset := 3;
        while not QUpdate.Eof do
        begin
          for i:=0 to QUpdate.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := QUpdate.Fields[i].AsString;
          end;
          QUpdate.Next;
          Inc(offset);
        end;
        //
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[1].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[2].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[3].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[4].LineStyle := 1;
      end;
      //陸籍離職
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory_Factory.Name as Factory, ');
        SQL.Add('       Directory_Department.Name as Department, Directory_Position.Name as Position, ');
        SQL.Add('        Certificate.BirthPlace,Certificate.ProvinceResidence, Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.BirthDate,Certificate.PassPortSD,Certificate.PassPortED, ');
        SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate, ');
        SQL.Add('       Certificate.ExpireDate,Certificate.ContractDate,Certificate.ContractExpireDate, Certificate.Memo,Certificate.ResignedDate ');
        SQL.Add('	  ');
        SQL.Add('FROM Certificate ');
        SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
        SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID ');
        SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID ');
        SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID ');
        SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
        SQL.Add('where 1=1 and Certificate.NID in (''CN'',''PH'',''IN'') and IsNull(Certificate.Resigned,0)=1 ');
        SQL.Add('ORDER BY Directory.Sequence ');
        Active:=true;
      end;
      if QUpdate.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[5].Activate;
        QUpdate.First;
        offset := 3;
        while not QUpdate.Eof do
        begin
          for i:=0 to QUpdate.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := QUpdate.Fields[i].AsString;
          end;
          QUpdate.Next;
          Inc(offset);
        end;
        //
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[1].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[2].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[3].LineStyle := 1;
        ExcelApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(25)+inttostr(offset-1)].Borders[4].LineStyle := 1;
      end;
      ExcelApp.WorkSheets[1].Activate;
      QUpdate.Active:=false;
      Showmessage('Succeed.');
      ExcelApp.Visible:=True;
    except on ex: Exception do
      ShowMessage(ex.Message);
    end;
  end;
end;

procedure TSupervisorData.Button1Click(Sender: TObject);
  var NID: string;
begin
  with CertificateQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Certificate.OnBoard, Certificate.Name, Certificate.EngName, Certificate.ID, Certificate.Gender,Directory.FID,Directory_Factory.Name as Factory, ');
    SQL.Add('       Directory.DID,Directory_Department.Name as Department, Directory.PID,Directory_Position.Name as Position,');
    SQL.Add('       Certificate.BirthDate,Certificate.ProvinceResidence, Certificate.BirthPlace,Certificate.ProvinceResidence,Certificate.BirthProvince,Certificate.IDCard,Certificate.PassPort,Certificate.PassPortSD,Certificate.PassPortED,');
    SQL.Add('       Certificate.Visa, Certificate.VisaDate, Certificate.WorkPermit, Certificate.IssueDate,');
    SQL.Add('       Certificate.ExpireDate, Certificate.NID, Directory_Nationality.Name as Nationality,Certificate.DutyDate, Certificate.ArrivalDate, Certificate.Resigned, Certificate.ResignedDate, ');
    SQL.Add('       Certificate.Type, Certificate.Memo, Certificate.UserID, Certificate.UserDate, Certificate.YN,Directory.ID as DirectoryID,Directory.FactoryS,Certificate.ContractDate, Certificate.ContractExpireDate,    ');
    SQL.Add('       DATEDIFF(YEAR, Certificate.BirthDate, GETDATE()) - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, Certificate.BirthDate, GETDATE()), Certificate.BirthDate) > GETDATE() THEN 1 ELSE 0 END as Age');
    SQL.Add('FROM Certificate');
    SQL.Add('left join Directory on Directory.ID=Certificate.ID');
    SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
    SQL.Add('Left join Directory_FactoryS on Directory_FactoryS.FIDS=Directory.FactoryS');
    SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID');
    SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID');
    SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('where 1=1 ');
    if ED_ID1.Text<>'' then
    SQL.Add(' and Certificate.ID like '''+ED_ID1.Text+'%'' ');
    if Edit1.Text<>'' then
    SQL.Add(' and Certificate.Name like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    SQL.Add(' and Certificate.EngName like '''+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
    SQL.Add(' and Directory_Factory.Name like '''+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
    SQL.Add(' and Directory_Department.Name like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
    SQL.Add(' and Directory_Position.Name like '''+Edit5.Text+'%'' ');
    if Edit6.Text<>'' then
    SQL.Add(' and Directory_FactoryS.Name like '''+Edit6.Text+'%'' ');
    //國籍
    if CB12.Checked=true then NID:=NID+'''TW'',';
    if CB13.Checked=true then NID:=NID+'''CN'',';
    if CB14.Checked=true then NID:=NID+'''PH'',';
    if CB15.Checked=true then NID:=NID+'''VN'',';
    if CB16.Checked=true then NID:=NID+'''IN'',';
    if NID <> '' then
    begin
      NID := Copy(NID, 1, Length(NID) - 1);
      SQL.Add(' and Certificate.NID IN (' + NID + ') ');
    end;

    //離職
    if RB22.Checked=true then  SQL.Add(' and IsNull(Certificate.Resigned,0)=0 ');
    if RB23.Checked=true then  SQL.Add(' and IsNull(Certificate.Resigned,0)=1 ');
    //簽證或工作證過期
    if CheckBox1.Checked=true then
    begin
    SQL.Add(' and ( (convert(smalldatetime,convert(varchar,Certificate.VisaDate,111))  between  ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ) or ');
    SQL.Add('       (convert(smalldatetime,convert(varchar,Certificate.ExpireDate,111))  between  ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ) ) ');
    end;
    //離職日
    if CheckBox2.Checked=true then
    begin
    SQL.Add(' and convert(smalldatetime,convert(varchar,Certificate.ResignedDate,111))  between  ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +''' ');
    end;
    //
    SQL.Add('ORDER BY ID ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TSupervisorData.CertificateQryAfterOpen(DataSet: TDataSet);
var
i: Integer;
msg,gender: string;
birth,dt55,dt60: TDateTime;

begin
  CertificateQry.AfterOpenRecNo(DataSet);
  //mirror 20230828 在職年齡逾期判斷---------------------------------------
  if CheckBox3.Checked then
  begin
  dt55:=IncMonth(Date,-(55*12+3));
  dt60:=IncMonth(Date,-(60*12+3));
  DataSet.Filter:='Age >= 54';
  //DataSet.Filter:='BirthDate > '+DateTimeToStr(dt55);
  if DataSet.FindFirst  then
    repeat
    //Gender
    gender:=DataSet.FieldByName('Gender').AsString;
    birth:=DataSet.FieldByName('BirthDate').AsDateTime;

    if ((gender='女') and (birth<dt55)) or ((gender='男') and (birth<dt60)) then
    begin
       msg:=msg+gender+'  ['+DataSet.FieldByName('ID').AsString+']  '+DataSet.FieldByName('Name').AsString+' '+DataSet.FieldByName('EngName').AsString+'  '+DateToStr(birth)+'  ['+DataSet.FieldByName('Age').AsString+']'+#13;
    end;
    until not DataSet.FindNext;
    DataSet.First;
    if msg<>'' then
    begin
      Showmessage(msg) ;
    end;
  end;
  //------------------------------------------------
end;

procedure TSupervisorData.CertificateQryBeforeClose(DataSet: TDataSet);
begin
  CertificateQry.BeforeCloseRecNo(DataSet);

end;

procedure TSupervisorData.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if  DBGridEh1.SelectedField.FieldName='Nationality' then
  begin
   Directory_Nationality:=TDirectory_Nationality.create(self);
   Directory_Nationality.show;
  end;
  if  DBGridEh1.SelectedField.FieldName='Factory' then
  begin
   Directory_Factory:=TDirectory_Factory.create(self);
   Directory_Factory.show;
  end;
  if  DBGridEh1.SelectedField.FieldName='Department' then
  begin
   Directory_Department:=TDirectory_Department.create(self);
   Directory_Department.ParentForm:='SupervisorData';
   Directory_Department.show;
  end;
  if  DBGridEh1.SelectedField.FieldName='Position' then
  begin
    Directory_Position:=TDirectory_Position.create(self);
    Directory_Position.ParentForm:='SupervisorData';
    Directory_Position.ed_NID.Text:=CertificateQry.FieldByName('NID').AsString;
    Directory_Position.show;
  end;

end;

procedure TSupervisorData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((CertificateQry.FieldByName('VisaDate').value<=Date()+45) or (CertificateQry.FieldByName('ExpireDate').value<=Date()+45)) then
    DBGridEh1.Canvas.Font.Color := clBlue;
  if (CertificateQry.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;

end;

procedure TSupervisorData.DBGridEh2EditButtonClick(Sender: TObject);
begin
  Directory_Position:=TDirectory_Position.create(self);
  Directory_Position.show;
  Directory_Position.ed_NID.Text:= 'CN';
end;

procedure TSupervisorData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSupervisorData.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  //廠區
  with QUpdate do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select FIDS,Name from Directory_FactoryS order by FIDS ');
    Active:=true;
    while not Eof do
    begin
      DBGridEh1.Columns[9].KeyList.add(FieldByName('FIDS').AsString);
      DBGridEh1.Columns[9].PickList.add(FieldByName('Name').AsString);
      Next;
    end;
    Active:=false;
  end;
  PC1.ActivePageIndex := 0;
  DTP1.Date:=Date();
  DTP2.Date:=Date()+45;
  DTP3.Date:=Date();
  DTP4.Date:=Date()+45;
end;

procedure TSupervisorData.FormDestroy(Sender: TObject);
begin
  SupervisorData := Nil;
end;

procedure TSupervisorData.N1Click(Sender: TObject);
begin
  if (History <> Nil) then
    History.Close;
  History := THistory.Create(Self);
  History.LoadHistoryData(CertificateQry.FieldByName('ID').AsString, 'TTT/VISA');
  History.Show;
end;

procedure TSupervisorData.N2Click(Sender: TObject);
begin

  if (History <> Nil) then
    History.Close;
  History := THistory.Create(Self);
  History.LoadHistoryData(CertificateQry.FieldByName('ID').AsString, 'GPLĐ');
  History.Show;
end;

end.
