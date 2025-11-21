unit PerformanceRating1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Data.DB, Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MyADOUpdateSQL, ComObj, Vcl.Menus, MyADOQuery;

type
  TPerformanceRating = class(TForm)
    Panel3: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Button1: TButton;
    cbFlowflag: TCheckBox;
    DBGridEh2: TDBGridEh;
    QMaster: TADOQuery;
    DSMas: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    cbM1: TComboBox;
    cbY: TComboBox;
    cbM2: TComboBox;
    Label1: TLabel;
    QTemp: TMyADOQuery;
    cbID: TComboBox;
    QMasterUserID: TStringField;
    QMasterJoinDate: TDateTimeField;
    QMasterTMT_1: TIntegerField;
    QMasterTNL_1: TIntegerField;
    QMasterTPD_1: TIntegerField;
    QMasterTKT_1: TIntegerField;
    QMasterTD_1: TIntegerField;
    QMasterTD_2: TIntegerField;
    QMasterTimePR: TStringField;
    QMasterPNO: TStringField;
    QMasterFactory: TWideStringField;
    QMasterDepartment: TWideStringField;
    QMasterPosition: TWideStringField;
    QMasterUserName: TWideStringField;
    QMasterCFM_1: TWideStringField;
    QMasterCFM_2: TWideStringField;
    Button2: TButton;
    QDetail: TMyADOQuery;
    DSDet: TDataSource;
    QMasterYear: TStringField;
    QMasterMonth: TStringField;
    Label5: TLabel;
    GBN: TGroupBox;
    RBALL: TRadioButton;
    RBTW: TRadioButton;
    RBVN: TRadioButton;
    cbFAC: TComboBox;
    cbDEP: TComboBox;
    QMasterTD_3: TIntegerField;
    QMasterCFM_3: TWideStringField;
    Label6: TLabel;
    cbCFM: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbIDChange(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportFormatExcel_All();
    procedure ExportFormatExcel_Month();
    procedure ExportFormatExcel_ID();
  public
    { Public declarations }
  end;

var
  PerformanceRating: TPerformanceRating;

implementation

uses DM1, main1, FunUnit;

{$R *.dfm}

procedure TPerformanceRating.Button1Click(Sender: TObject);
begin
  with QMaster do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GROUPS.Factory, GROUPS.Department, GROUPS.Position, LYN_PerformanceRating.UserID, GROUPS.UserNameTW + '' '' + GROUPS.UserName as UserName, GROUPS.JoinDate, ');
    SQL.Add('	      LYN_PerformanceRating_1.TMT_1, LYN_PerformanceRating_1.TNL_1, LYN_PerformanceRating_1.TPD_1, LYN_PerformanceRating_1.TKT_1, ');
    SQL.Add('	      (LYN_PerformanceRating_1.TMT_1 + LYN_PerformanceRating_1.TNL_1 + LYN_PerformanceRating_1.TPD_1 + LYN_PerformanceRating_1.TKT_1) as TD_1, GROUPS1.NAME as CFM_1, ');
    SQL.Add('	      (LYN_PerformanceRating_2.TMT_2 + LYN_PerformanceRating_2.TNL_2 + LYN_PerformanceRating_2.TPD_2 + LYN_PerformanceRating_2.TKT_2) as TD_2, GROUPS2.NAME as CFM_2, ');
    SQL.Add('	      (LYN_PerformanceRating_3.TMT_3 + LYN_PerformanceRating_3.TNL_3 + LYN_PerformanceRating_3.TPD_3 + LYN_PerformanceRating_3.TKT_3) as TD_3, GROUPS3.NAME as CFM_3, ');
    SQL.Add('	      LYN_PerformanceRating.Month + '''' + LYN_PerformanceRating.Year + ''る'' TimePR, LYN_PerformanceRating.PNO, LYN_PerformanceRating.Year, LYN_PerformanceRating.Month ');
    SQL.Add('from LYN_PerformanceRating ');
    SQL.Add('left join LYN_PerformanceRating_1 on LYN_PerformanceRating_1.PNO=LYN_PerformanceRating.PNO ');
    SQL.Add('left join LYN_PerformanceRating_2 on LYN_PerformanceRating_2.PNO=LYN_PerformanceRating.PNO ');
    SQL.Add('left join LYN_PerformanceRating_3 on LYN_PerformanceRating_3.PNO=LYN_PerformanceRating.PNO ');
    SQL.Add('left join LYN_USERGROUPS GROUPS on GROUPS.UserID=LYN_PerformanceRating.UserID ');
    SQL.Add('LEFT JOIN TB_EB_USER GROUPS1 ON SUBSTRING(GROUPS1.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS1.ACCOUNT), LEN(GROUPS1.ACCOUNT))=LYN_PerformanceRating_1.CFMID_1 ');
    SQL.Add('LEFT JOIN TB_EB_USER GROUPS2 ON SUBSTRING(GROUPS2.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS2.ACCOUNT), LEN(GROUPS2.ACCOUNT))=LYN_PerformanceRating_2.CFMID_2 ');
    SQL.Add('LEFT JOIN TB_EB_USER GROUPS3 ON SUBSTRING(GROUPS3.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS3.ACCOUNT), LEN(GROUPS3.ACCOUNT))=LYN_PerformanceRating_3.CFMID_3 ');
    SQL.Add('where 1=1 ');
    if cbFlowflag.Checked=true then  SQL.Add(' and flowflag=''Z'' ');
    if cbFAC.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Factory))) like LOWER(N''%'+cbFAC.Text+'%'') ');
    if cbDEP.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Department))) like LOWER(N''%'+cbDEP.Text+'%'') ');
    if cbCFM.Text<>'' then
      SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS1.NAME))) like LOWER(N''%'+cbCFM.Text+'%'') ');
    if cbID.Text<>'' then
      SQL.Add(' and LYN_PerformanceRating.UserID = '''+cbID.Text+''' ');
    if cbY.Text<>'' then
      SQL.Add(' and LYN_PerformanceRating.Year = '''+cbY.Text+''' ');
    if (cbM1.Text<>'') and (cbM2.Text<>'') then
      SQL.Add(' and LYN_PerformanceRating.Month >= '''+cbM1.Text+''' and LYN_PerformanceRating.Month <= '''+cbM2.Text+''' ')
    else if (cbM1.Text<>'') or (cbM2.Text<>'') then
      SQL.Add(' and LYN_PerformanceRating.Month = '''+cbM1.Text+cbM2.Text+''' ');
    if RBTW.Checked=true then  SQL.Add(' and GROUPS.Nation<>''VN'' ')
    else if RBVN.Checked=true then  SQL.Add(' and GROUPS.Nation=''VN'' ');
    SQL.Add('order by LYN_PerformanceRating.Month, LYN_PerformanceRating.Year, RTRIM(LTRIM(GROUPS.Factory)), RTRIM(LTRIM(GROUPS.Department)), LYN_PerformanceRating.UserID ');
    Active:=true;
  end;
  QDetail.Active:=true;
end;

procedure TPerformanceRating.Button2Click(Sender: TObject);
begin
  if (cbID.Text<>'') and (((cbM1.Text<>'') or (cbM2.Text<>'')) and (cbM1.Text=cbM2.Text)) then
  begin
    ExportFormatExcel_ID;
  end else if (cbY.Text='') and (cbID.Text='') then
  begin
    showmessage('Pls key in right one year');
    abort;
  end else if (((cbM1.Text<>'') and (cbM2.Text<>'') and (cbM1.Text<>cbM2.Text)) or ((cbM1.Text='') and (cbM2.Text=''))) and (cbY.Text<>'') then
  begin
    {if (cbFAC.Text='') and (cbDEP.Text='') then
    begin
      showmessage('Pls key in right Factory or Department');
      abort;
    end else
    begin
      Button1.Click;
      ExportFormatExcel_All;
    end;}
    Button1.Click;
    ExportFormatExcel_All;
  end else if (cbID.Text='') and ((cbM1.Text<>'') or (cbM2.Text<>'') or ((cbM1.Text<>'') and (cbM2.Text<>'') and (cbM1.Text=cbM2.Text))) and (cbY.Text<>'') then
  begin
    {if (cbFAC.Text='') and (cbDEP.Text='') then
    begin
      showmessage('Pls key in right Factory or Department');
      abort;
    end else
    begin
      Button1.Click;
      ExportFormatExcel_Month;
    end;}
    Button1.Click;
    ExportFormatExcel_Month;
  end;
end;

procedure TPerformanceRating.cbIDChange(Sender: TObject);
begin
  Button1.Click;
end;

procedure TPerformanceRating.ExportFormatExcel_ID();
var eclApp,WorkBook:olevariant;
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
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN61_ID.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN61_ID.xlsx'),false);
     if FileExists(AppDir+'Additional\ProductionBonus_SN61_ID.xlsx') then
     begin
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN61_ID.xlsx');
        eclApp.WorkSheets[1].Name:=QDetail.FieldByName('UserID').AsString+' '+QDetail.FieldByName('UserNameTW').AsString;
        eclApp.Cells(2,2):=QMaster.FieldByName('TimePR').AsString;
        eclApp.Cells(2,6):=QDetail.FieldByName('UserNameTW').AsString;
        eclApp.Cells(3,6):=QDetail.FieldByName('UserID').AsString;
        eclApp.Cells(4,6):=QDetail.FieldByName('JoinDate').AsString;
        eclApp.Cells(2,8):=QDetail.FieldByName('Factory').AsString;
        eclApp.Cells(3,8):=QDetail.FieldByName('Department').AsString;
        eclApp.Cells(4,8):=QDetail.FieldByName('Position').AsString;
        eclApp.Cells(2,10):=QDetail.FieldByName('CFMID_1').AsString;
        eclApp.Cells(3,10):=QMaster.FieldByName('CFM_1').AsString;
        eclApp.Cells(2,12):=QDetail.FieldByName('CFMID_2').AsString;
        eclApp.Cells(3,12):=QMaster.FieldByName('CFM_2').AsString;

        eclApp.Cells(7,15):=QDetail.FieldByName('MT1_1').AsString;
        eclApp.Cells(8,15):=QDetail.FieldByName('MT2_1').AsString;
        eclApp.Cells(9,15):=QDetail.FieldByName('MT3_1').AsString;
        eclApp.Cells(10,15):=QDetail.FieldByName('MT4_1').AsString;
        eclApp.Cells(11,15):=QDetail.FieldByName('MT5_1').AsString;
        eclApp.Cells(7,16):=QDetail.FieldByName('TMT_1').AsString;
        eclApp.Cells(12,15):=QDetail.FieldByName('NL1_1').AsString;
        eclApp.Cells(13,15):=QDetail.FieldByName('NL2_1').AsString;
        eclApp.Cells(14,15):=QDetail.FieldByName('NL3_1').AsString;
        eclApp.Cells(15,15):=QDetail.FieldByName('NL4_1').AsString;
        eclApp.Cells(16,15):=QDetail.FieldByName('NL5_1').AsString;
        eclApp.Cells(12,16):=QDetail.FieldByName('TNL_1').AsString;
        eclApp.Cells(17,15):=QDetail.FieldByName('PD1_1').AsString;
        eclApp.Cells(18,15):=QDetail.FieldByName('PD2_1').AsString;
        eclApp.Cells(19,15):=QDetail.FieldByName('PD3_1').AsString;
        eclApp.Cells(20,15):=QDetail.FieldByName('PD4_1').AsString;
        eclApp.Cells(21,15):=QDetail.FieldByName('PD5_1').AsString;
        eclApp.Cells(17,16):=QDetail.FieldByName('TPD_1').AsString;
        eclApp.Cells(22,15):=QDetail.FieldByName('KT1_1').AsString;
        eclApp.Cells(23,15):=QDetail.FieldByName('KT2_1').AsString;
        eclApp.Cells(24,15):=QDetail.FieldByName('KT3_1').AsString;
        eclApp.Cells(25,15):=QDetail.FieldByName('KT4_1').AsString;
        eclApp.Cells(26,15):=QDetail.FieldByName('KT5_1').AsString;
        eclApp.Cells(22,16):=QDetail.FieldByName('TKT_1').AsString;

        eclApp.Cells(7,18):=QDetail.FieldByName('MT1_2').AsString;
        eclApp.Cells(8,18):=QDetail.FieldByName('MT2_2').AsString;
        eclApp.Cells(9,18):=QDetail.FieldByName('MT3_2').AsString;
        eclApp.Cells(10,18):=QDetail.FieldByName('MT4_2').AsString;
        eclApp.Cells(11,18):=QDetail.FieldByName('MT5_2').AsString;
        eclApp.Cells(7,19):=QDetail.FieldByName('TMT_2').AsString;
        eclApp.Cells(12,18):=QDetail.FieldByName('NL1_2').AsString;
        eclApp.Cells(13,18):=QDetail.FieldByName('NL2_2').AsString;
        eclApp.Cells(14,18):=QDetail.FieldByName('NL3_2').AsString;
        eclApp.Cells(15,18):=QDetail.FieldByName('NL4_2').AsString;
        eclApp.Cells(16,18):=QDetail.FieldByName('NL5_2').AsString;
        eclApp.Cells(12,19):=QDetail.FieldByName('TNL_2').AsString;
        eclApp.Cells(17,18):=QDetail.FieldByName('PD1_2').AsString;
        eclApp.Cells(18,18):=QDetail.FieldByName('PD2_2').AsString;
        eclApp.Cells(19,18):=QDetail.FieldByName('PD3_2').AsString;
        eclApp.Cells(20,18):=QDetail.FieldByName('PD4_2').AsString;
        eclApp.Cells(21,18):=QDetail.FieldByName('PD5_2').AsString;
        eclApp.Cells(17,19):=QDetail.FieldByName('TPD_2').AsString;
        eclApp.Cells(22,18):=QDetail.FieldByName('KT1_2').AsString;
        eclApp.Cells(23,18):=QDetail.FieldByName('KT2_2').AsString;
        eclApp.Cells(24,18):=QDetail.FieldByName('KT3_2').AsString;
        eclApp.Cells(25,18):=QDetail.FieldByName('KT4_2').AsString;
        eclApp.Cells(26,18):=QDetail.FieldByName('KT5_2').AsString;
        eclApp.Cells(22,19):=QDetail.FieldByName('TKT_2').AsString;

        eclApp.Cells(7,21):=QDetail.FieldByName('MT1_3').AsString;
        eclApp.Cells(8,21):=QDetail.FieldByName('MT2_3').AsString;
        eclApp.Cells(9,21):=QDetail.FieldByName('MT3_3').AsString;
        eclApp.Cells(10,21):=QDetail.FieldByName('MT4_3').AsString;
        eclApp.Cells(11,21):=QDetail.FieldByName('MT5_3').AsString;
        eclApp.Cells(7,22):=QDetail.FieldByName('TMT_3').AsString;
        eclApp.Cells(12,21):=QDetail.FieldByName('NL1_3').AsString;
        eclApp.Cells(13,21):=QDetail.FieldByName('NL2_3').AsString;
        eclApp.Cells(14,21):=QDetail.FieldByName('NL3_3').AsString;
        eclApp.Cells(15,21):=QDetail.FieldByName('NL4_3').AsString;
        eclApp.Cells(16,21):=QDetail.FieldByName('NL5_3').AsString;
        eclApp.Cells(12,22):=QDetail.FieldByName('TNL_3').AsString;
        eclApp.Cells(17,21):=QDetail.FieldByName('PD1_3').AsString;
        eclApp.Cells(18,21):=QDetail.FieldByName('PD2_3').AsString;
        eclApp.Cells(19,21):=QDetail.FieldByName('PD3_3').AsString;
        eclApp.Cells(20,21):=QDetail.FieldByName('PD4_3').AsString;
        eclApp.Cells(21,21):=QDetail.FieldByName('PD5_3').AsString;
        eclApp.Cells(17,22):=QDetail.FieldByName('TPD_3').AsString;
        eclApp.Cells(22,21):=QDetail.FieldByName('KT1_3').AsString;
        eclApp.Cells(23,21):=QDetail.FieldByName('KT2_3').AsString;
        eclApp.Cells(24,21):=QDetail.FieldByName('KT3_3').AsString;
        eclApp.Cells(25,21):=QDetail.FieldByName('KT4_3').AsString;
        eclApp.Cells(26,21):=QDetail.FieldByName('KT5_3').AsString;
        eclApp.Cells(22,22):=QDetail.FieldByName('TKT_3').AsString;

        eclApp.Cells(27,2):=QMaster.FieldByName('TD_1').AsString;
        eclApp.Cells(27,5):=QDetail.FieldByName('Comment_1').AsString;
        eclApp.Cells(28,2):=QMaster.FieldByName('TD_2').AsString;
        eclApp.Cells(28,5):=QDetail.FieldByName('Comment_2').AsString;
        eclApp.Cells(29,2):=QDetail.FieldByName('BLD').AsString;

        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
     end;
   end;
end;

procedure TPerformanceRating.ExportFormatExcel_All();
var eclApp,WorkBook:olevariant;
    i,j,k,offset:integer;
    m1,m2,y,DV:string;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN61_All.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN61_All.xlsx'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN61_All.xlsx') then
  begin
    try
      y:=cbY.Text;
      m1:=cbM1.Text;
      m2:=cbM2.Text;
      if (m1='') and (m2='') then
      begin
        m1:='01';
        m2:='12';
      end;
      if (cbFAC.Text<>'') and (cbDEP.Text='') then
        DV:=cbFAC.Text
      else if (cbFAC.Text='') and (cbDEP.Text<>'') then
        DV:=cbDEP.Text
      else if (cbFAC.Text<>'') and (cbDEP.Text<>'') then
        DV:=cbFAC.Text+'-'+cbDEP.Text
      else DV:=' ';


      eclApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN61_All.xlsx');
      eclApp.Cells(1,1):='货琄A-'+DV;
      eclApp.Cells(2,1):=y+'-'+m1+'る~'+y+'-'+m2+'る 膟稦场σ';
      eclApp.workbooks[1].sheets[1].select;
      eclapp.workbooks[1].sheets[1].name:='稦σ蝶羆-'+DV;

      for i := StrToInt(m1) to StrToInt(m2) do
      begin
        eclApp.ActiveSheet.Columns[7].Copy;
        eclApp.ActiveSheet.Columns[7].Insert(-4121);   
      end;
      j:=1;
      with Qtemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('SELECT MAX(GROUPS.Factory) AS Factory, MAX(GROUPS.Department) AS Department, MAX(GROUPS.Position) AS Position, LYN_PerformanceRating.UserID, ');
        SQL.Add('       MAX(GROUPS.UserNameTW + '' '' + GROUPS.UserName) AS UserName, MAX(CONVERT(VARCHAR, GROUPS.JoinDate, 111)) AS JoinDate ');
        for i := StrToInt(m1) to StrToInt(m2) do
        begin
          if (i<10) then 
          eclApp.Cells(3,7+j):=y+'/0'+IntToStr(i)+'る'
          else 
          eclApp.Cells(3,7+j):=y+'/'+IntToStr(i)+'る';
          if (i<10) then 
            SQL.Add('   ,ISNULL(MAX(CASE WHEN LYN_PerformanceRating.Month = 0'+IntToStr(i)+' THEN TD_2 END),0) AS TD_2_0'+IntToStr(i)+' ')
          else
            SQL.Add('   ,ISNULL(MAX(CASE WHEN LYN_PerformanceRating.Month = '+IntToStr(i)+' THEN TD_2 END),0) AS TD_2_'+IntToStr(i)+' ');
          inc(j);
        end;
        SQL.Add('       , sum(TD_2)/'+IntToStr(j-1)+' TBC ');
        SQL.Add('FROM LYN_PerformanceRating LEFT JOIN LYN_USERGROUPS GROUPS ON GROUPS.UserID = LYN_PerformanceRating.UserID ');
        SQL.Add('left join LYN_PerformanceRating_1 on LYN_PerformanceRating_1.PNO=LYN_PerformanceRating.PNO ');
        SQL.Add('LEFT JOIN TB_EB_USER GROUPS1 ON SUBSTRING(GROUPS1.ACCOUNT, PATINDEX(''%[0-9]%'', GROUPS1.ACCOUNT), LEN(GROUPS1.ACCOUNT))=LYN_PerformanceRating_1.CFMID_1 ');
        SQL.Add('LEFT JOIN  ');
        SQL.Add('(select LYN_PerformanceRating.PNO, (isnull(isnull(TMT_3,TMT_2),0) + isnull(isnull(TNL_3,TNL_2),0) + isnull(isnull(TPD_3,TPD_2),0) + isnull(isnull(TKT_3,TKT_2),0)) as TD_2 ');
        SQL.Add(' from LYN_PerformanceRating left join LYN_PerformanceRating_2 on LYN_PerformanceRating_2.PNO=LYN_PerformanceRating.PNO ');
        SQL.Add(' left join LYN_PerformanceRating_3 on LYN_PerformanceRating_3.PNO=LYN_PerformanceRating.PNO ');
        SQL.Add(') LYN_PerformanceRating_2 ON LYN_PerformanceRating_2.PNO = LYN_PerformanceRating.PNO ');  
        SQL.Add('WHERE LYN_PerformanceRating.Year = '''+y+''' and LYN_PerformanceRating.Month BETWEEN '''+m1+''' and '''+m2+''' ');  
        if cbFlowflag.Checked=true then  SQL.Add(' and flowflag=''Z'' ');
        if cbFAC.Text<>'' then
          SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Factory))) like LOWER(N''%'+cbFAC.Text+'%'') ');
        if cbDEP.Text<>'' then
          SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS.Department))) like LOWER(N''%'+cbDEP.Text+'%'') ');
        if cbCFM.Text<>'' then
          SQL.Add(' and LOWER(RTRIM(LTRIM(GROUPS1.NAME))) like LOWER(N''%'+cbCFM.Text+'%'') ');
        if cbID.Text<>'' then
          SQL.Add(' and LYN_PerformanceRating.UserID = '''+cbID.Text+''' ');
        if RBTW.Checked=true then  SQL.Add(' and GROUPS.Nation<>''VN'' ')
        else if RBVN.Checked=true then  SQL.Add(' and GROUPS.Nation=''VN'' ');
        SQL.Add('GROUP BY LYN_PerformanceRating.UserID ');      
        SQL.Add('ORDER BY MAX(GROUPS.Factory), MAX(GROUPS.Department), LYN_PerformanceRating.UserID ');
        Active:=true;
        
        if RecordCount>0 then
        begin
          Offset:=5;
          First;
          for i:=0 to RecordCount-1  do
          begin
            if i<>RecordCount-1 then
            begin
              eclApp.ActiveSheet.Rows[5].Copy;
              eclApp.ActiveSheet.Rows[5].Insert(-4121);
            end;
          end;
          First;
          for i:=0 to RecordCount-1  do
          begin
            eclApp.Cells(Offset+i,1):=IntToStr(i+1);
            eclApp.Cells(Offset+i,2):=FieldByName('Factory').AsString;
            eclApp.Cells(Offset+i,3):=FieldByName('Department').AsString;
            eclApp.Cells(Offset+i,4):=FieldByName('Position').AsString;
            eclApp.Cells(Offset+i,5):=FieldByName('UserID').AsString;
            eclApp.Cells(Offset+i,6):=FieldByName('UserName').AsString;
            eclApp.Cells(Offset+i,7):=FieldByName('JoinDate').AsString;
            j:=1;
            for k := StrToInt(m1) to StrToInt(m2) do
            begin
              if (k<10) then 
                eclApp.Cells(Offset+i,7+j):=FieldByName('TD_2_0'+IntToStr(k)).AsString
              else 
                eclApp.Cells(Offset+i,7+j):=FieldByName('TD_2_'+IntToStr(k)).AsString;
              inc(j);
            end;
            eclApp.Cells(Offset+i,7+j):=FieldByName('TBC').AsString;
            for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[Offset+i,1],eclApp.cells[Offset+i,7+j]].borders[k].linestyle:=1;
            end;
            Next;
          end;
        end else
        begin
          eclApp.ActiveSheet.Rows[5].Delete;
        end;
      end;

      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on  F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TPerformanceRating.ExportFormatExcel_Month();
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
    CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN61_Month.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN61_Month.xlsx'),false);
    if FileExists(AppDir+'Additional\ProductionBonus_SN61_Month.xlsx') then
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
        eclApp.Cells(1,1):='货琄A-'+DV;
        eclApp.Cells(2,1):=QMaster.FieldByName('Year').AsString+'-'+QMaster.FieldByName('Month').AsString+'る 膟稦场σ';
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
              eclApp.Cells(Offset+i,8):=QMaster.FieldByName('TMT_1').AsString;
              eclApp.Cells(Offset+i,9):=QMaster.FieldByName('TNL_1').AsString;
              eclApp.Cells(Offset+i,10):=QMaster.FieldByName('TPD_1').AsString;
              eclApp.Cells(Offset+i,11):=QMaster.FieldByName('TKT_1').AsString;
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

procedure TPerformanceRating.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPerformanceRating.FormCreate(Sender: TObject);
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
    while not Eof do
    begin
      cbID.Items.Add(FieldByName('UserID').AsString);
      Next;
    end;
    Active:=false;
    cbID.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(Factory)) Factory FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbFAC.Items.Add(FieldByName('Factory').AsString);
      Next;
    end;
    Active:=false;
    cbFAC.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(Department)) Department FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbDEP.Items.Add(FieldByName('Department').AsString);
      Next;
    end;
    Active:=false;
    cbCFM.ItemIndex:=0;
    SQL.Clear;
    SQL.Add('SELECT distinct RTRIM(LTRIM(CFMNAME)) CFMNAME FROM LYN_USERGROUPS ');
    Active:=true;
    while not Eof do
    begin
      cbCFM.Items.Add(FieldByName('CFMNAME').AsString);
      Next;
    end;
    Active:=false;
    cbCFM.ItemIndex:=0;
  end;
  DecodeDate(Date()-15, myYear, myMonth, myDay);
  for i:=0 to cbY.Items.Count-1 do
  begin
    if strtoint(cbY.Items[i])=myYear then
    begin
      cbY.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to cbM1.Items.Count-1 do
  begin
    if strtoint(cbM1.Items[i])=myMonth then
    begin
      cbM1.ItemIndex:=i;
      cbM2.ItemIndex:=i;
      break;
    end;
  end;
end;

procedure TPerformanceRating.FormDestroy(Sender: TObject);
begin
  PerformanceRating := Nil;
end;

end.
