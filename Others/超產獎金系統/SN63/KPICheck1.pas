unit KPICheck1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Data.DB, Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MyADOUpdateSQL, ComObj, Vcl.Menus, MyADOQuery;

type
  TKPICheck = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    cbFlowflag: TCheckBox;
    cbM1: TComboBox;
    cbY: TComboBox;
    cbID: TComboBox;
    Button2: TButton;
    GBN: TGroupBox;
    RBALL: TRadioButton;
    RBTW: TRadioButton;
    RBVN: TRadioButton;
    cbFAC: TComboBox;
    cbDEP: TComboBox;
    cbCFM: TComboBox;
    QTemp: TMyADOQuery;
    DBGridEh1: TDBGridEh;
    DSMas: TDataSource;
    QMaster: TADOQuery;
    QMasterFactory: TWideStringField;
    QMasterDepartment: TWideStringField;
    QMasterPosition: TWideStringField;
    QMasterUserID: TStringField;
    QMasterUserName: TWideStringField;
    QMasterJoinDate: TDateTimeField;
    QMasterTS1_1: TIntegerField;
    QMasterTS2_1: TIntegerField;
    QMasterTS3_1: TIntegerField;
    QMasterTS4_1: TIntegerField;
    QMasterTD_1: TIntegerField;
    QMasterCFM_1: TWideStringField;
    QMasterTD_2: TIntegerField;
    QMasterCFM_2: TWideStringField;
    QMasterTD_3: TIntegerField;
    QMasterCFM_3: TWideStringField;
    QMasterTimePR: TStringField;
    QMasterPNO: TStringField;
    QMasterYear: TStringField;
    QMasterMonth: TStringField;
    DSDet: TDataSource;
    QDetail: TMyADOQuery;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    RBKW: TRadioButton;
    RBKO: TRadioButton;
    RBKOVN: TRadioButton;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button3: TButton;
    cbM11: TComboBox;
    cbY1: TComboBox;
    cbM21: TComboBox;
    cbID1: TComboBox;
    Button4: TButton;
    GroupBox2: TGroupBox;
    RBALL1: TRadioButton;
    RBTW1: TRadioButton;
    RBVN1: TRadioButton;
    cbFAC1: TComboBox;
    cbDEP1: TComboBox;
    cbCFM1: TComboBox;
    GroupBox3: TGroupBox;
    RBKW1: TRadioButton;
    RBKO1: TRadioButton;
    RBKOVN1: TRadioButton;
    DBGridEh2: TDBGridEh;
    QMaster1: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    StringField1: TStringField;
    WideStringField4: TWideStringField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    DSMas1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbCFMChange(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KPICheck: TKPICheck;

implementation

uses DM1, main1, FunUnit;

{$R *.dfm}

procedure TKPICheck.Button1Click(Sender: TObject);
begin
  with QMaster do
  begin
    Active:=false;
    SQL.Clear;
    if RBKW.Checked=true then
    begin
      SQL.Add('select LYN_KPI.Factory, LYN_KPI.Department, LYN_KPI.Position, LYN_KPI.UserID, GROUPS.UserNameTW + '' '' + GROUPS.UserName as UserName, GROUPS.JoinDate, ');
      SQL.Add('	      LYN_KPIWorksite_1.TS1_1, LYN_KPIWorksite_1.TS2_1, LYN_KPIWorksite_1.TS3_1, LYN_KPIWorksite_1.TS4_1, ');
      SQL.Add('	      (LYN_KPIWorksite_1.TS1_1 + LYN_KPIWorksite_1.TS2_1 + LYN_KPIWorksite_1.TS3_1 + LYN_KPIWorksite_1.TS4_1) as TD_1, GROUPS1.NAME as CFM_1, ');
      SQL.Add('	      (LYN_KPIWorksite_2.TS1_2 + LYN_KPIWorksite_2.TS2_2 + LYN_KPIWorksite_2.TS3_2 + LYN_KPIWorksite_2.TS4_2) as TD_2, GROUPS2.NAME as CFM_2, ');
      SQL.Add('	      (LYN_KPIWorksite_3.TS1_3 + LYN_KPIWorksite_3.TS2_3 + LYN_KPIWorksite_3.TS3_3 + LYN_KPIWorksite_3.TS4_3) as TD_3, GROUPS3.NAME as CFM_3, ');
      SQL.Add('	      LYN_KPI.Year + ''年'' + LYN_KPI.Month + ''月'' TimePR, LYN_KPI.PNO, LYN_KPI.Year, LYN_KPI.Month ');
      SQL.Add('from LYN_KPIWorksite LYN_KPI ');
      SQL.Add('left join LYN_KPIWorksite_1 on LYN_KPIWorksite_1.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIWorksite_2 on LYN_KPIWorksite_2.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIWorksite_3 on LYN_KPIWorksite_3.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_USERGROUPS GROUPS on GROUPS.UserID=LYN_KPI.UserID ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS1 ON SUBSTRING(GROUPS1.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS1.ACCOUNT), LEN(GROUPS1.ACCOUNT))=LYN_KPIWorksite_1.CFMID_1 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS2 ON SUBSTRING(GROUPS2.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS2.ACCOUNT), LEN(GROUPS2.ACCOUNT))=LYN_KPIWorksite_2.CFMID_2 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS3 ON SUBSTRING(GROUPS3.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS3.ACCOUNT), LEN(GROUPS3.ACCOUNT))=LYN_KPIWorksite_3.CFMID_3 ');
    end else if RBKO.Checked=true then
    begin
      SQL.Add('select LYN_KPI.Factory, LYN_KPI.Department, LYN_KPI.Position, LYN_KPI.UserID, GROUPS.UserNameTW + '' '' + GROUPS.UserName as UserName, GROUPS.JoinDate, ');
      SQL.Add('	      LYN_KPIOffice_1.TS1_1, LYN_KPIOffice_1.TS2_1, LYN_KPIOffice_1.TS3_1, LYN_KPIOffice_1.TS4_1, ');
      SQL.Add('	      (LYN_KPIOffice_1.TS1_1 + LYN_KPIOffice_1.TS2_1 + LYN_KPIOffice_1.TS3_1 + LYN_KPIOffice_1.TS4_1) as TD_1, GROUPS1.NAME as CFM_1, ');
      SQL.Add('	      (LYN_KPIOffice_2.TS1_2 + LYN_KPIOffice_2.TS2_2 + LYN_KPIOffice_2.TS3_2 + LYN_KPIOffice_2.TS4_2) as TD_2, GROUPS2.NAME as CFM_2, ');
      SQL.Add('	      (LYN_KPIOffice_3.TS1_3 + LYN_KPIOffice_3.TS2_3 + LYN_KPIOffice_3.TS3_3 + LYN_KPIOffice_3.TS4_3) as TD_3, GROUPS3.NAME as CFM_3, ');
      SQL.Add('	      LYN_KPI.Year + ''年'' + LYN_KPI.Month + ''月'' TimePR, LYN_KPI.PNO, LYN_KPI.Year, LYN_KPI.Month ');
      SQL.Add('from LYN_KPIOffice LYN_KPI ');
      SQL.Add('left join LYN_KPIOffice_1 on LYN_KPIOffice_1.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIOffice_2 on LYN_KPIOffice_2.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIOffice_3 on LYN_KPIOffice_3.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_USERGROUPS GROUPS on GROUPS.UserID=LYN_KPI.UserID ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS1 ON SUBSTRING(GROUPS1.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS1.ACCOUNT), LEN(GROUPS1.ACCOUNT))=LYN_KPIOffice_1.CFMID_1 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS2 ON SUBSTRING(GROUPS2.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS2.ACCOUNT), LEN(GROUPS2.ACCOUNT))=LYN_KPIOffice_2.CFMID_2 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS3 ON SUBSTRING(GROUPS3.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS3.ACCOUNT), LEN(GROUPS3.ACCOUNT))=LYN_KPIOffice_3.CFMID_3 ');
    end else begin
      SQL.Add('select LYN_KPI.Factory, LYN_KPI.Department, LYN_KPI.Position, LYN_KPI.UserID, GROUPS.UserNameTW + '' '' + GROUPS.UserName as UserName, GROUPS.JoinDate, ');
      SQL.Add('	      LYN_KPIOfficeVN_1.TS1_1, LYN_KPIOfficeVN_1.TS2_1, LYN_KPIOfficeVN_1.TS3_1, LYN_KPIOfficeVN_1.TS4_1, ');
      SQL.Add('	      (LYN_KPIOfficeVN_1.TS1_1 + LYN_KPIOfficeVN_1.TS2_1 + LYN_KPIOfficeVN_1.TS3_1 + LYN_KPIOfficeVN_1.TS4_1) as TD_1, GROUPS1.NAME as CFM_1, ');
      SQL.Add('	      (LYN_KPIOfficeVN_2.TS1_2 + LYN_KPIOfficeVN_2.TS2_2 + LYN_KPIOfficeVN_2.TS3_2 + LYN_KPIOfficeVN_2.TS4_2) as TD_2, GROUPS2.NAME as CFM_2, ');
      SQL.Add('	      (LYN_KPIOfficeVN_3.TS1_3 + LYN_KPIOfficeVN_3.TS2_3 + LYN_KPIOfficeVN_3.TS3_3 + LYN_KPIOfficeVN_3.TS4_3) as TD_3, GROUPS3.NAME as CFM_3, ');
      SQL.Add('	      LYN_KPI.Year + ''年'' + LYN_KPI.Month + ''月'' TimePR, LYN_KPI.PNO, LYN_KPI.Year, LYN_KPI.Month ');
      SQL.Add('from LYN_KPIOfficeVN LYN_KPI ');
      SQL.Add('left join LYN_KPIOfficeVN_1 on LYN_KPIOfficeVN_1.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIOfficeVN_2 on LYN_KPIOfficeVN_2.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_KPIOfficeVN_3 on LYN_KPIOfficeVN_3.PNO=LYN_KPI.PNO ');
      SQL.Add('left join LYN_USERGROUPS GROUPS on GROUPS.UserID=LYN_KPI.UserID ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS1 ON SUBSTRING(GROUPS1.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS1.ACCOUNT), LEN(GROUPS1.ACCOUNT))=LYN_KPIOfficeVN_1.CFMID_1 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS2 ON SUBSTRING(GROUPS2.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS2.ACCOUNT), LEN(GROUPS2.ACCOUNT))=LYN_KPIOfficeVN_2.CFMID_2 ');
      SQL.Add('LEFT JOIN TB_EB_USER GROUPS3 ON SUBSTRING(GROUPS3.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS3.ACCOUNT), LEN(GROUPS3.ACCOUNT))=LYN_KPIOfficeVN_3.CFMID_3 ');
    end;
    SQL.Add('where 1=1 ');
    if cbFlowflag.Checked=true then  SQL.Add(' and flowflag=''Z'' ');
    if cbFAC.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Factory))) like LOWER(N''%'+cbFAC.Text+'%'') ');
    if cbDEP.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Department))) like LOWER(N''%'+cbDEP.Text+'%'') ');
    if cbCFM.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS1.NAME))) like LOWER(N''%'+cbCFM.Text+'%'') ');
    if cbID.Text<>'' then
      SQL.Add(' and LYN_KPI.UserID = '''+cbID.Text+''' ');
    if cbY.Text<>'' then
      SQL.Add(' and LYN_KPI.Year = '''+cbY.Text+''' ');
    if cbM1.Text<>'' then
      SQL.Add(' and LYN_KPI.Month = '''+cbM1.Text+''' ');
    if RBTW.Checked=true then  SQL.Add(' and GROUPS.Nation<>''VN'' ')
    else if RBVN.Checked=true then  SQL.Add(' and GROUPS.Nation=''VN'' ');
    SQL.Add('order by LYN_KPI.Month, LYN_KPI.Year, RTRIM(LTRIM(GROUPS.Factory)), RTRIM(LTRIM(GROUPS.Department)), LYN_KPI.UserID ');
    Active:=true;
  end;
  QDetail.Active:=true;
end;

procedure TKPICheck.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,k,offset:integer;
    DV:string;
begin
  if  QMaster.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN63.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN63.xlsx'),false);
    if FileExists(AppDir+'Additional\ProductionBonus_SN63.xlsx') then
    begin
      try
        if (cbFAC.Text<>'') and (cbDEP.Text='') then
          DV:=cbFAC.Text
        else if (cbFAC.Text='') and (cbDEP.Text<>'') then
          DV:=cbDEP.Text
        else if (cbFAC.Text<>'') and (cbDEP.Text<>'') then
          DV:=cbFAC.Text+'-'+cbDEP.Text
        else DV:=' ';

        eclApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN61_Month.xlsx');
        eclApp.Cells(1,1):='億春A-'+DV;
        eclApp.Cells(2,1):=QMaster.FieldByName('Year').AsString+'-'+QMaster.FieldByName('Month').AsString+'月份 外籍幹部考核表';
        if RBKW1.Checked=true then
        begin
          eclApp.Cells(3,8):='工作指標';
          eclApp.Cells(4,8):='50%';
          eclApp.Cells(3,9):='管理能力';
          eclApp.Cells(4,9):='15%';
          eclApp.Cells(3,10):='專業能力及人才培養';
          eclApp.Cells(4,10):='20%';
          eclApp.Cells(3,11):='工作態度';
          eclApp.Cells(4,11):='15%';
        end else if RBKO1.Checked=true then
        begin
          eclApp.Cells(3,8):='工作指標';
          eclApp.Cells(4,8):='30%';
          eclApp.Cells(3,9):='管理能力';
          eclApp.Cells(4,9):='20%';
          eclApp.Cells(3,10):='專業能力及人才培養';
          eclApp.Cells(4,10):='20%';
          eclApp.Cells(3,11):='工作態度';
          eclApp.Cells(4,11):='30%';
        end else begin
          eclApp.Cells(3,8):='工作指標';
          eclApp.Cells(4,8):='30%';
          eclApp.Cells(3,9):='管理能力';
          eclApp.Cells(4,9):='25%';
          eclApp.Cells(3,10):='專業能力及人才培養';
          eclApp.Cells(4,10):='20%';
          eclApp.Cells(3,11):='工作態度';
          eclApp.Cells(4,11):='25%';
        end;
        eclApp.workbooks[1].sheets[1].select;
        eclapp.workbooks[1].sheets[1].name:=DV;
        with QMaster do
        begin
          if QMaster.RecordCount>0 then
          begin
            Offset:=5;
            QMaster.First;
            for i:=0 to QMaster.RecordCount-1  do
            begin
              if i<>QMaster.RecordCount-1 then
              begin
                eclApp.ActiveSheet.Rows[5].Copy;
                eclApp.ActiveSheet.Rows[5].Insert(-4121);
              end;
            end;
            QMaster.First;
            for i:=0 to QMaster.RecordCount-1  do
            begin
              eclApp.Cells(Offset+i,1):=IntToStr(i+1);
              eclApp.Cells(Offset+i,2):=QMaster.FieldByName('Factory').AsString;
              eclApp.Cells(Offset+i,3):=QMaster.FieldByName('Department').AsString;
              eclApp.Cells(Offset+i,4):=QMaster.FieldByName('Position').AsString;
              eclApp.Cells(Offset+i,5):=QMaster.FieldByName('UserID').AsString;
              eclApp.Cells(Offset+i,6):=QMaster.FieldByName('UserName').AsString;
              eclApp.Cells(Offset+i,7):=QMaster.FieldByName('JoinDate').AsString;
              eclApp.Cells(Offset+i,8):=QMaster.FieldByName('TS1_1').AsString;
              eclApp.Cells(Offset+i,9):=QMaster.FieldByName('TS2_1').AsString;
              eclApp.Cells(Offset+i,10):=QMaster.FieldByName('TS3_1').AsString;
              eclApp.Cells(Offset+i,11):=QMaster.FieldByName('TS4_1').AsString;
              eclApp.Cells(Offset+i,12):=QMaster.FieldByName('TD_1').AsString;
              eclApp.Cells(Offset+i,13):=QMaster.FieldByName('CFM_1').AsString;
              eclApp.Cells(Offset+i,14):=QMaster.FieldByName('TD_2').AsString;
              eclApp.Cells(Offset+i,15):=QMaster.FieldByName('CFM_2').AsString;
              eclApp.Cells(Offset+i,16):=QMaster.FieldByName('TD_3').AsString;
              eclApp.Cells(Offset+i,17):=QMaster.FieldByName('CFM_3').AsString;
              for k:=1 to 4 do
              begin
                eclApp.range[eclApp.cells[Offset+i,1],eclApp.cells[Offset+i,18]].borders[k].linestyle:=1;
              end;
              Next;
            end;
          end else
          begin
            eclApp.ActiveSheet.Rows[5].Delete;
          end;
        end;
        eclApp.workbooks[1].sheets[1].Columns.AutoFit;

        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end;
end;

procedure TKPICheck.Button3Click(Sender: TObject);
begin
  with QMaster1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('with Months as( select ''01'' as Month union all select ''02'' union all select ''03'' union all select ''04'' union all select ''05'' union all select ''06''  ');
    SQL.Add('                union all select ''07'' union all select ''08'' union all select ''09'' union all select ''10'' union all select ''11'' union all select ''12'') ');
    SQL.Add('select GROUPS.UserID, GROUPS.UserNameTW + '' '' + GROUPS.UserName as UserName, GROUPS.JoinDate, GROUPS.Factory, GROUPS.Department, GROUPS.Position, ');
    SQL.Add('       '''+cbY1.Text+'年''+ Months.Month +''月'' as TimePR ');
    SQL.Add('from LYN_USERGROUPS GROUPS cross join Months ');
    if RBKW1.Checked=true then
    begin
      SQL.Add('left join LYN_KPIWorksite LYN_KPI on GROUPS.UserID = LYN_KPI.UserID and LYN_KPI.Month = Months.Month ');
      if cbY1.Text<>'' then
        SQL.Add(' and LYN_KPI.Year = '+cbY1.Text);
    end else if RBKO1.Checked=true then
    begin
      SQL.Add('left join LYN_KPIOffice LYN_KPI on GROUPS.UserID = LYN_KPI.UserID and LYN_KPI.Month = Months.Month ');
      if cbY1.Text<>'' then
        SQL.Add(' and LYN_KPI.Year = '+cbY1.Text);
    end else begin
      SQL.Add('left join LYN_KPIOfficeVN LYN_KPI on GROUPS.UserID = LYN_KPI.UserID and LYN_KPI.Month = Months.Month ');
      if cbY1.Text<>'' then
        SQL.Add(' and LYN_KPI.Year = '+cbY1.Text);
    end;
    SQL.Add('where LYN_KPI.UserID is null AND GROUPS.YN<>''0'' ');
    if RBKW1.Checked=true then
    begin
      SQL.Add(' AND GROUPS.Area=N''現場HT'' AND ISNULL(GROUPS.PositionCheck,0)=0 ');
    end else if RBKO1.Checked=true then
    begin
      SQL.Add(' AND GROUPS.Area=N''辦公室VP'' AND GROUPS.Nation<>''VN'' AND ISNULL(GROUPS.PositionCheck,0)=0 ');
    end else begin
      SQL.Add(' AND GROUPS.Area=N''辦公室VP'' AND GROUPS.Nation=''VN'' AND ISNULL(GROUPS.PositionCheck,0)=0 ');
    end;
    if cbFAC1.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Factory))) like LOWER(N''%'+cbFAC1.Text+'%'') ');
    if cbDEP1.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Department))) like LOWER(N''%'+cbDEP1.Text+'%'') ');
    if cbCFM1.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.CFMNAME))) like LOWER(N''%'+cbCFM1.Text+'%'') ');
    if cbID1.Text<>'' then
      SQL.Add(' and GROUPS.UserID = '''+cbID1.Text+''' ');
    if (cbM11.Text<>'') then
      SQL.Add(' and Months.Month >= '''+cbM11.Text+''' ');
    if (cbM21.Text<>'') then
      SQL.Add(' and Months.Month <= '''+cbM21.Text+''' ');
    if RBTW1.Checked=true then  SQL.Add(' and GROUPS.Nation<>''VN'' ')
    else if RBVN1.Checked=true then  SQL.Add(' and GROUPS.Nation=''VN'' ');
    SQL.Add('order by GROUPS.UserID, cast(Months.Month as int) ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TKPICheck.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  QMaster1.active  then
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
        for   i:=0   to   QMaster1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=QMaster1.fields[i].FieldName;
        end;
        QMaster1.First;
        j:=2;
        while   not   QMaster1.Eof   do
        begin
          for   i:=0   to  QMaster1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=QMaster1.Fields[i].AsString;
          end;
          QMaster1.Next;
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

procedure TKPICheck.cbCFMChange(Sender: TObject);
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT UserID FROM LYN_USERGROUPS WHERE LOWER(RTRIM(LTRIM(CFMNAME))) = '''+ cbCFM.Text+''' ');
    Active:=true;
    cbID.Items.Clear;
    cbID.Items.Add('');
    while not Eof do
    begin
      cbID.Items.Add(FieldByName('UserID').AsString);
      Next;
    end;
    Active:=false;
    cbID.ItemIndex:=0;
  end;
end;

procedure TKPICheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TKPICheck.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT UserID FROM LYN_USERGROUPS WHERE LYN_USERGROUPS.CFMID = '''+ main.UserID+''' ');
    Active:=true;
    cbID.Items.Add('');
    cbID1.Items.Add('');
    while not Eof do
    begin
      cbID.Items.Add(FieldByName('UserID').AsString);
      cbID1.Items.Add(FieldByName('UserID').AsString);
      Next;
    end;
    Active:=false;
    cbID.ItemIndex:=0;
    cbID1.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(Factory)) Factory FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbFAC.Items.Add(FieldByName('Factory').AsString);
      cbFAC1.Items.Add(FieldByName('Factory').AsString);
      Next;
    end;
    Active:=false;
    cbFAC.ItemIndex:=0;
    cbFAC1.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(Department)) Department FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbDEP.Items.Add(FieldByName('Department').AsString);
      cbDEP1.Items.Add(FieldByName('Department').AsString);
      Next;
    end;
    Active:=false;
    cbDEP.ItemIndex:=0;
    cbDEP1.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(CFMNAME)) CFMNAME FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbCFM.Items.Add(FieldByName('CFMNAME').AsString);
      cbCFM1.Items.Add(FieldByName('CFMNAME').AsString);
      Next;
    end;
    Active:=false;
    cbCFM.ItemIndex:=0;
    cbCFM1.ItemIndex:=0;
  end;
  DecodeDate(Date()-15, myYear, myMonth, myDay);
  for i:=0 to cbY.Items.Count-1 do
  begin
    if strtoint(cbY.Items[i])=myYear then
    begin
      cbY.ItemIndex:=i;
      cbY1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to cbM1.Items.Count-1 do
  begin
    if strtoint(cbM1.Items[i])=myMonth then
    begin
      cbM1.ItemIndex:=i;
      cbM11.ItemIndex:=i;
      cbM21.ItemIndex:=i;
      break;
    end;
  end;
end;

procedure TKPICheck.FormDestroy(Sender: TObject);
begin
  KPICheck := Nil;
end;

end.
