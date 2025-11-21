unit DKorganization1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, Data.Win.ADODB, MyADOQuery,
  Vcl.StdCtrls, Vcl.Buttons, MyADOUpdateSQL,comobj;

type
  TDKorganization = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DS1: TDataSource;
    UsersQry: TMyADOQuery;
    DBGridEh1: TDBGridEh;
    UsersQryUSERID: TStringField;
    UsersQryUSERNAME: TWideStringField;
    UsersQryAGENT: TWideStringField;
    UsersQryCREATEDATE: TWideStringField;
    UsersQryCREATER: TWideStringField;
    UsersQryDESCRIPTION: TWideStringField;
    UsersQryEMAIL: TWideStringField;
    UsersQryAUTOLOGIN: TWideStringField;
    UsersQryLASTDATE: TWideStringField;
    UsersQrySIGNATURE: TWideStringField;
    UsersQryMSAD: TWideStringField;
    Panel2: TPanel;
    Button1: TButton;
    UserIDEdit: TEdit;
    NVMa: TLabel;
    Label1: TLabel;
    USERNAMEEdit: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    ORG_NOEdit: TEdit;
    ORG_DESCEdit: TEdit;
    SYS_ORGQry: TMyADOQuery;
    DS3: TDataSource;
    SYS_ORGQryORG_NO: TWideStringField;
    SYS_ORGQryORG_DESC: TWideStringField;
    SYS_ORGQryORG_KIND: TWideStringField;
    SYS_ORGQryUPPER_ORG: TWideStringField;
    SYS_ORGQryORG_MAN: TWideStringField;
    SYS_ORGQryGROUPNAME: TWideStringField;
    SYS_ORGQryDESCRIPTION: TWideStringField;
    SYS_ORGQryLEVEL_NO: TWideStringField;
    SYS_ORGQryLEVEL_DESC: TWideStringField;
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt1: TBitBtn;
    Panel5: TPanel;
    DD2: TBitBtn;
    DD4: TBitBtn;
    DD3: TBitBtn;
    DD5: TBitBtn;
    DD6: TBitBtn;
    DD7: TBitBtn;
    DD1: TBitBtn;
    bbt3: TBitBtn;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    CC2: TBitBtn;
    CC4: TBitBtn;
    CC3: TBitBtn;
    CC5: TBitBtn;
    CC6: TBitBtn;
    CC7: TBitBtn;
    CC1: TBitBtn;
    bbt2: TBitBtn;
    Panel7: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    GroupIDEdit: TEdit;
    GroupNameEdit: TEdit;
    GroupQry: TMyADOQuery;
    GroupQryGROUPID: TStringField;
    GroupQryGROUPNAME: TWideStringField;
    GroupQryDESCRIPTION: TWideStringField;
    GroupQryMSAD: TWideStringField;
    GroupQryISROLE: TStringField;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh4: TDBGridEh;
    USERGroup2Qry: TMyADOQuery;
    DS5: TDataSource;
    Panel8: TPanel;
    Splitter2: TSplitter;
    Panel10: TPanel;
    DBGridEh5: TDBGridEh;
    Panel11: TPanel;
    EE2: TBitBtn;
    EE4: TBitBtn;
    EE3: TBitBtn;
    EE5: TBitBtn;
    EE6: TBitBtn;
    USERGroup1Qry: TMyADOQuery;
    DS4: TDataSource;
    SYS_ORGQryROLE_ID: TStringField;
    SYS_ORGQryROLE_GROUPNAME: TWideStringField;
    SYS_ORGQryROLE_DESCRIPTION: TWideStringField;
    Panel12: TPanel;
    Panel9: TPanel;
    FF2: TBitBtn;
    FF4: TBitBtn;
    FF3: TBitBtn;
    FF5: TBitBtn;
    FF6: TBitBtn;
    DBGridEh3: TDBGridEh;
    Splitter3: TSplitter;
    Panel13: TPanel;
    Panel14: TPanel;
    GG2: TBitBtn;
    GG4: TBitBtn;
    GG3: TBitBtn;
    GG5: TBitBtn;
    GG6: TBitBtn;
    DBGridEh6: TDBGridEh;
    USERGroup3Qry: TMyADOQuery;
    DS6: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ORG_KINDEdit: TEdit;
    UpdateSQL2: TMyADOUpdateSQL;
    GroupQryYN: TStringField;
    USERGroup1QryGROUPID: TStringField;
    USERGroup1QryUSERID: TStringField;
    USERGroup1QryUSERNAME: TWideStringField;
    USERGroup1QryDESCRIPTION: TWideStringField;
    USERGroup1QrySYSUSERID: TStringField;
    USERGroup1QrySYSUSERDATE: TDateTimeField;
    USERGroup1QryYN: TStringField;
    USERGroup3QryGROUPID: TStringField;
    USERGroup3QryUSERID: TStringField;
    USERGroup3QryUSERNAME: TWideStringField;
    USERGroup3QryDESCRIPTION: TWideStringField;
    USERGroup3QrySYSUSERID: TStringField;
    USERGroup3QrySYSUSERDATE: TDateTimeField;
    USERGroup3QryYN: TStringField;
    USERGroup2QryGROUPID: TStringField;
    USERGroup2QryUSERID: TStringField;
    USERGroup2QryUSERNAME: TWideStringField;
    USERGroup2QryDESCRIPTION: TWideStringField;
    USERGroup2QrySYSUSERID: TStringField;
    USERGroup2QrySYSUSERDATE: TDateTimeField;
    USERGroup2QryYN: TStringField;
    UpdateSQL4: TMyADOUpdateSQL;
    UpdateSQL5: TMyADOUpdateSQL;
    UpdateSQL6: TMyADOUpdateSQL;
    SYS_ORGQryYN: TStringField;
    UpdateSQL3: TMyADOUpdateSQL;
    SYS_ORGQryORG_TREE: TWideStringField;
    SYS_ORGQryEND_ORG: TWideStringField;
    SYS_ORGQryORG_FULLNAME: TWideStringField;
    tmpQry: TMyADOQuery;
    GroupQrySYSUSERID: TStringField;
    GroupQrySYSUSERDATE: TDateTimeField;
    SYS_ORGQrySYSUSERID: TStringField;
    SYS_ORGQrySYSUSERDATE: TDateTimeField;
    Label9: TLabel;
    USEREdit: TEdit;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    UONameEdit: TEdit;
    OrgCheckBox: TCheckBox;
    Label11: TLabel;
    RNOEdit: TEdit;
    RNOTypeCombo: TComboBox;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure GroupQryAfterOpen(DataSet: TDataSet);
    procedure CC2Click(Sender: TObject);
    procedure CC3Click(Sender: TObject);
    procedure CC5Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CC6Click(Sender: TObject);
    procedure CC4Click(Sender: TObject);
    procedure USERGroup1QryAfterOpen(DataSet: TDataSet);
    procedure EE2Click(Sender: TObject);
    procedure EE3Click(Sender: TObject);
    procedure EE4Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure EE6Click(Sender: TObject);
    procedure EE5Click(Sender: TObject);
    procedure USERGroup2QryAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FF2Click(Sender: TObject);
    procedure FF3Click(Sender: TObject);
    procedure FF4Click(Sender: TObject);
    procedure FF6Click(Sender: TObject);
    procedure FF5Click(Sender: TObject);
    procedure USERGroup3QryAfterOpen(DataSet: TDataSet);
    procedure GG2Click(Sender: TObject);
    procedure GG3Click(Sender: TObject);
    procedure GG4Click(Sender: TObject);
    procedure GG6Click(Sender: TObject);
    procedure GG5Click(Sender: TObject);
    procedure SYS_ORGQryAfterOpen(DataSet: TDataSet);
    procedure DD2Click(Sender: TObject);
    procedure DD3Click(Sender: TObject);
    procedure DD4Click(Sender: TObject);
    procedure DD6Click(Sender: TObject);
    procedure DD5Click(Sender: TObject);
    procedure DBGridEh4EditButtonClick(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt2Click(Sender: TObject);
    procedure bbt3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DKorganization: TDKorganization;

implementation
  uses main1, DKorganization_ORG_KIND1, DKOrganization_Group1, DKorganization_ORGLEVEL1,
       DKorganization_Role1, DKorganization_Org1, FunUnit;
{$R *.dfm}

procedure TDKorganization.bbt2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  USERGroup1Qry.Active:=false;
  if GroupQry.Active then
  begin
    if GroupQry.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end else
    begin
      showmessage('No record.');
      abort;
    end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   GroupQry.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=GroupQry.fields[i].FieldName;
    end;
    GroupQry.First;
    j:=2;

    while  not GroupQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   GroupQry.fieldcount-1   do
      begin
       eclApp.Cells(j,i+1):=GroupQry.Fields[i].AsString;
      end;
      GroupQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  USERGroup1Qry.Active:=true;
end;

procedure TDKorganization.bbt3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  USERGroup2Qry.Active:=false;
  USERGroup3Qry.Active:=false;
  if SYS_ORGQry.Active then
  begin
    if SYS_ORGQry.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end else
    begin
      showmessage('No record.');
      abort;
    end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   SYS_ORGQry.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=SYS_ORGQry.fields[i].FieldName;
    end;
    SYS_ORGQry.First;
    j:=2;

    while  not SYS_ORGQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   SYS_ORGQry.fieldcount-1   do
      begin
       eclApp.Cells(j,i+1):=SYS_ORGQry.Fields[i].AsString;
      end;
      SYS_ORGQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  USERGroup2Qry.Active:=true;
  USERGroup3Qry.Active:=true;
end;

procedure TDKorganization.Button1Click(Sender: TObject);
begin
  //
  with UsersQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select USERID,USERNAME,AGENT,CREATEDATE,CREATER,DESCRIPTION,EMAIL,AUTOLOGIN,LASTDATE,SIGNATURE,MSAD  ');
    SQL.Add('FROM [EEP].[LingYi].[dbo].[USERS] ');
    SQL.Add('where 1=1 ');
    if UserIDEdit.Text<>'' then
    SQL.Add(' and USERID like '''+UserIDEdit.Text+'%'' ');
    if USERNAMEEdit.Text<>'' then
    SQL.Add(' and USERNAME like ''%'+USERNAMEEdit.Text+'%'' ');
    Active:=true;
  end;
  //
end;

procedure TDKorganization.Button2Click(Sender: TObject);
begin
  //
  with GroupQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * ');
    SQL.Add('from [EEP].[LingYi].[dbo].[GROUPS] GROUPS ');
    SQL.Add('where 1=1 ');
    if GroupIDEdit.Text<>'' then
    SQL.Add(' and GROUPID like '''+GroupIDEdit.Text+'%'' ');
    if GroupNameEdit.Text<>'' then
    SQL.Add(' and GROUPNAME like ''%'+GroupNameEdit.Text+'%'' ');
    if CheckBox1.Checked=true then
    SQL.Add(' and GROUPS.GROUPID in (Select ORG_MAN from [EEP].[LingYi].[dbo].[SYS_ORG] ) ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  USERGroup1Qry.Active:=true;
end;

procedure TDKorganization.Button3Click(Sender: TObject);
var ORG_NO_Group:String;
begin
  //RNO單據號碼
  if RNOEdit.Text<>'' then
  begin
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select S_USER_ID,USERNAME from [EEP].[LingYi].[dbo].[SYS_TODOHIS] SYS_TODOHIS where ');
      SQL.Add(' (FORM_PRESENTATION =''INO='''''+RNOEdit.text+''''''') AND (FORM_TABLE = '''+RNOTypeCombo.Text+''') AND    (S_STEP_DESC = ''申請人'')  ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      if RecordCount>0 then
      begin
        USEREdit.Text:=FieldByName('S_USER_ID').AsString;
        UONameEdit.Text:=FieldByName('USERNAME').AsString;
      end;
      Active:=false;
    end;
  end;
  //
  if OrgCheckBox.Checked=true  then
  begin
    with tmpQry do
    begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select SYS_ORG.ORG_NO ');
     SQL.Add('from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG ');
     SQL.Add('where 1=1');
     if ORG_NOEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_NO like ''%'+ORG_NOEdit.Text+'%'' ');
     if ORG_DESCEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_DESC like ''%'+ORG_DESCEdit.Text+'%'' ');
     if ORG_KINDEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_KIND = '''+ORG_KINDEdit.Text+''' ');
     if ((USEREdit.Text<>'') or (UONameEdit.Text<>'')) then
     begin
     SQL.Add(' and');
     SQL.Add(' (');
     //
     SQL.Add('   (SYS_ORG.ORG_MAN in (Select GROUPID from  [EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS where ((USERID like '''+USEREdit.Text+'%'') and (USERID in (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS  where UserName like ''%'+UONameEdit.Text+'%'')))   GROUP BY GROUPID))');
     SQL.Add('    or');
     SQL.Add('   (SYS_ORG.ORG_NO in (Select SYS_ORGROLES.ORG_NO from  [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES,[EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS where SYS_ORGROLES.ROLE_ID=USERGROUPS.GROUPID and ((USERGROUPS.USERID like '''+USEREdit.Text+'%'') and (USERGROUPS.USERID in ');
     SQL.Add('     (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS  where UserName like ''%'+UONameEdit.Text+'%'')))  GROUP BY SYS_ORGROLES.ORG_NO))');
     //
     SQL.Add(' )');
     end;
     SQL.Add('Group by SYS_ORG.ORG_NO');
     Active:=true;
      if RecordCount>0 then
      begin
        while not eof do
        begin
          ORG_NO_Group:=ORG_NO_Group+''''+FieldByName('ORG_NO').AsString+''',';
          Next;
        end;
      end;
      Active:=false;
    end;
  end;
  if ORG_NO_Group<>'' then ORG_NO_Group:='('+Copy(ORG_NO_Group,1,length(ORG_NO_Group)-1)+')';

  //
  with SYS_ORGQry do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select SYS_ORG.*,GROUPS.GROUPNAME,GROUPS.DESCRIPTION,SYS_ORGLEVEL.LEVEL_DESC ');
     SQL.Add('       ,SYS_ORGROLES.ROLE_ID,GROUPS_ROLE.GROUPNAME as ROLE_GROUPNAME,GROUPS_ROLE.DESCRIPTION as ROLE_DESCRIPTION  ');
     SQL.Add('from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG ');
     SQL.Add('Left join [EEP].[LingYi].[dbo].[GROUPS] GROUPS on GROUPS.GROUPID=SYS_ORG.ORG_MAN ');
     SQL.Add('left join [EEP].[LingYi].[dbo].[SYS_ORGLEVEL] SYS_ORGLEVEL on SYS_ORGLEVEL.LEVEL_NO=SYS_ORG.LEVEL_NO ');
     SQL.Add('left join [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES on SYS_ORGROLES.ORG_NO=SYS_ORG.ORG_NO ');
     SQL.Add('Left join [EEP].[LingYi].[dbo].[GROUPS] GROUPS_ROLE on GROUPS_ROLE.GROUPID=SYS_ORGROLES.ROLE_ID ');
     SQL.Add('where 1=1');
     if ORG_NOEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_NO like ''%'+ORG_NOEdit.Text+'%'' ');
     if ORG_DESCEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_DESC like ''%'+ORG_DESCEdit.Text+'%'' ');
     if ORG_KINDEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_KIND = '''+ORG_KINDEdit.Text+''' ');
     if ((USEREdit.Text<>'') or (UONameEdit.Text<>'')) then
     begin
     SQL.Add(' and');
     SQL.Add(' (');
     //
     SQL.Add('   (SYS_ORG.ORG_MAN in (Select GROUPID from  [EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS where ((USERID like '''+USEREdit.Text+'%'') and (USERID in (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS  where UserName like ''%'+UONameEdit.Text+'%'')))   GROUP BY GROUPID))');
     SQL.Add('    or');
     SQL.Add('   (SYS_ORG.ORG_NO in (Select SYS_ORGROLES.ORG_NO from  [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES,[EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS where SYS_ORGROLES.ROLE_ID=USERGROUPS.GROUPID and ((USERGROUPS.USERID like '''+USEREdit.Text+'%'') and (USERGROUPS.USERID in ');
     SQL.Add('     (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS  where UserName like ''%'+UONameEdit.Text+'%'')))  GROUP BY SYS_ORGROLES.ORG_NO))');
     //
     SQL.Add(' )');
     end;
     if ORG_NO_Group<>'' then
     begin
        SQL.Add(' or  SYS_ORG.ORG_NO in ( ');
        SQL.Add('');
        SQL.Add('	 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in '+ORG_NO_Group);
        SQL.Add('	 Union all');
        SQL.Add('	 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('		Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in '+ORG_NO_Group);
        SQL.Add('	 )');
        SQL.Add('	 Union all');
        SQL.Add('	 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('		 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('			Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in '+ORG_NO_Group);
        SQL.Add('		 )');
        SQL.Add('	  )');
        SQL.Add('	 Union all');
        SQL.Add('	 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('		 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('			 Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in (');
        SQL.Add('				Select UPPER_ORG from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG where ORG_NO in '+ORG_NO_Group);
        SQL.Add('			 )');
        SQL.Add('		  )');
        SQL.Add('	  )');
        SQL.Add('  )');
     end;
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
  end;
  //
  USERGroup2Qry.Active:=true;
  USERGroup3Qry.Active:=true;
end;

procedure TDKorganization.CC2Click(Sender: TObject);
begin
  with GroupQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;
  CC5.Enabled := true;
  CC6.Enabled := true;
end;

procedure TDKorganization.CC3Click(Sender: TObject);
begin
  with GroupQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  CC5.Enabled := true;
  CC6.Enabled := true;
end;

procedure TDKorganization.CC4Click(Sender: TObject);
begin
  if USERGroup1Qry.RecordCount>0 then
  begin
    Showmessage('Please delete detail first');
    Exit;
  end;
  with GroupQry do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  CC5.Enabled := true;
  CC6.Enabled := true;
end;

procedure TDKorganization.CC5Click(Sender: TObject);
var i: integer;
begin
  try
    GroupQry.First;
    for i := 0 to GroupQry.RecordCount-1 do
    begin
      case GroupQry.UpdateStatus of
        usInserted:
        begin
          if (GroupQry.FieldByName('GROUPID').Value = '') then
          begin
            GroupQry.Delete;
          end else
          begin
            GroupQry.Edit;
            GroupQry.FieldByName('SYSUSERID').AsString := main.UserID;
            GroupQry.FieldByName('SYSUSERDATE').Value:=Date();
            GroupQry.FieldByName('YN').Value:='1';
            UpdateSQL2.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (GroupQry.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL2.Apply(ukDelete);
          end else
          begin
            GroupQry.Edit;
            GroupQry.FieldByName('SYSUSERID').AsString := main.UserID;
            GroupQry.FieldByName('SYSUSERDATE').Value:=Date();
            UpdateSQL2.Apply(ukModify);
          end;
        end;
      end;
      GroupQry.Next;
    end;

    GroupQry.Active := false;
    GroupQry.LockType := ltReadOnly;
    GroupQry.Active := true;
    CC5.Enabled := false;
    CC6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;


procedure TDKorganization.CC6Click(Sender: TObject);
begin
  with GroupQry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  CC5.Enabled := false;
  CC6.Enabled := false;
end;

procedure TDKorganization.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if GroupQry.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;    
end;

procedure TDKorganization.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if USERGroup2Qry.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDKorganization.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SYS_ORGQry.FieldByName('YN').value='0' then
  begin
    DBGridEh4.canvas.font.color:=clred;
    DBGridEh4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDKorganization.DBGridEh4EditButtonClick(Sender: TObject);
begin
  if DBGridEh4.SelectedField.FieldName='ORG_KIND' then
  begin
    DKorganization_ORG_KIND:=TDKorganization_ORG_KIND.Create(self);
    DKorganization_ORG_KIND.Show;
  end;
  if DBGridEh4.SelectedField.FieldName='ORG_MAN' then
  begin
    DKOrganization_Group:=TDKOrganization_Group.Create(self);
    DKOrganization_Group.Show;
  end;
  if DBGridEh4.SelectedField.FieldName='LEVEL_NO' then
  begin
    DKorganization_ORGLEVEL:=TDKorganization_ORGLEVEL.Create(self);
    DKorganization_ORGLEVEL.Show;
  end;
  if DBGridEh4.SelectedField.FieldName='ROLE_ID' then
  begin
    DKorganization_Role:=TDKorganization_Role.Create(self);
    DKorganization_Role.Show;
  end;
  if DBGridEh4.SelectedField.FieldName='UPPER_ORG' then
  begin
    DKorganization_Org:=TDKorganization_Org.Create(self);
    DKorganization_Org.Show;
  end;
end;

procedure TDKorganization.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if USERGroup1Qry.FieldByName('YN').value='0' then
  begin
    DBGridEh5.canvas.font.color:=clred;
    DBGridEh5.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
end;

procedure TDKorganization.DBGridEh6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if USERGroup3Qry.FieldByName('YN').value='0' then
  begin
    DBGridEh6.canvas.font.color:=clred;
    DBGridEh6.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
end;

procedure TDKorganization.DD2Click(Sender: TObject);
begin
  with SYS_ORGQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;
  DBGridEh4.Columns[3].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[4].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[5].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[8].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[10].ButtonStyle := cbsEllipsis;
  DD5.Enabled := true;
  DD6.Enabled := true;
end;

procedure TDKorganization.DD3Click(Sender: TObject);
begin
  with SYS_ORGQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  DBGridEh4.Columns[3].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[4].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[5].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[8].ButtonStyle := cbsEllipsis;
  DBGridEh4.Columns[10].ButtonStyle := cbsEllipsis;
  DD5.Enabled := true;
  DD6.Enabled := true;
end;

procedure TDKorganization.DD4Click(Sender: TObject);
begin
  with SYS_ORGQry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
    Edit;
  end;
  DD5.Enabled := true;
  DD6.Enabled := true;
end;

procedure TDKorganization.DD5Click(Sender: TObject);
var i: integer;
    Old_Role_ID:string;
begin
  SYS_ORGQry.First;
  for i := 0 to SYS_ORGQry.RecordCount-1 do
  begin
    if (SYS_ORGQry.FieldByName('ORG_NO').Value <> '') then
    begin
      if SYS_ORGQry.FieldByName('ORG_DESC').AsString='' then
      begin
         Showmessage('ORG_DESC can''t empty');
         Exit
      end;
      if SYS_ORGQry.FieldByName('ORG_KIND').AsString='' then
      begin
         Showmessage('ORG_KIND can''t empty');
         Exit;
      end;
      if SYS_ORGQry.FieldByName('ORG_MAN').AsString='' then
      begin
         Showmessage('ORG_MAN can''t empty');
         Exit;
      end;
      if SYS_ORGQry.FieldByName('LEVEL_NO').AsString='' then
      begin
         Showmessage('LEVEL_NO can''t empty');
         Exit;
      end;
    end;
    SYS_ORGQry.Next;
  end;

  try
    SYS_ORGQry.First;
    for i := 0 to SYS_ORGQry.RecordCount-1 do
    begin
      case SYS_ORGQry.UpdateStatus of
        usInserted:
        begin
          if (SYS_ORGQry.FieldByName('ORG_NO').AsString = '') then
          begin
            SYS_ORGQry.Delete;
          end else
          begin
            SYS_ORGQry.Edit;
            SYS_ORGQry.FieldByName('SYSUSERID').AsString := main.UserID;
            SYS_ORGQry.FieldByName('SYSUSERDATE').Value:=Date();
            SYS_ORGQry.FieldByName('YN').Value:='1';
            UpdateSQL3.Apply(ukInsert);
            //SYS_ORGROLES
            if SYS_ORGQry.FieldByName('ROLE_ID').AsString<>'' then
            begin
              with  tmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('IF NOT EXISTS (Select ORG_NO from [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES  where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+SYS_ORGQry.FieldByName('ROLE_ID').AsString+''')');
                SQL.Add('BEGIN');
                SQL.Add('  Insert into   [EEP].[LingYi].[dbo].[SYS_ORGROLES] ( ORG_NO, ROLE_ID, ORG_KIND)  Values ('''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''','''+SYS_ORGQry.FieldByName('ROLE_ID').AsString+''','''+SYS_ORGQry.FieldByName('ORG_KIND').AsString+''')');
                SQL.Add('END');
                ExecSQL();
              end;
            end;
            //
          end;
        end;

        usModified:
        begin
          if (SYS_ORGQry.FieldByName('YN').AsString = '0') then
          begin
            if SYS_ORGQry.FieldByName('ROLE_ID').OldValue=NULL then Old_Role_ID:='' else Old_Role_ID:=SYS_ORGQry.FieldByName('ROLE_ID').OldValue;
            //SYS_ORGROLES
            if Old_Role_ID<>'' then
            begin
              with  tmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('IF  EXISTS (Select ORG_NO from [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES  where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+SYS_ORGQry.FieldByName('ROLE_ID').OldValue+''')');
                SQL.Add('BEGIN');
                SQL.Add('  Delete from  [EEP].[LingYi].[dbo].[SYS_ORGROLES] where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+SYS_ORGQry.FieldByName('ROLE_ID').OldValue+'''');
                SQL.Add('END');
                ExecSQL();
              end;
            end;
            UpdateSQL3.Apply(ukDelete);
          end else
          begin
            if SYS_ORGQry.FieldByName('ROLE_ID').OldValue=NULL then Old_Role_ID:='' else Old_Role_ID:=SYS_ORGQry.FieldByName('ROLE_ID').OldValue;
            SYS_ORGQry.Edit;
            SYS_ORGQry.FieldByName('SYSUSERID').AsString := main.UserID;
            SYS_ORGQry.FieldByName('SYSUSERDATE').Value:=Date();
            UpdateSQL3.Apply(ukModify);
            //
            if SYS_ORGQry.FieldByName('ROLE_ID').AsString<>'' then
            begin
              //SYS_ORGROLES
              with  tmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('IF NOT EXISTS (Select ORG_NO from [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES  where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+Old_Role_ID+''')');
                SQL.Add('BEGIN');
                SQL.Add('  Insert into   [EEP].[LingYi].[dbo].[SYS_ORGROLES] ( ORG_NO, ROLE_ID, ORG_KIND)  Values ('''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''','''+SYS_ORGQry.FieldByName('ROLE_ID').AsString+''','''+SYS_ORGQry.FieldByName('ORG_KIND').AsString+''')');
                SQL.Add('END ELSE');
                SQL.Add('BEGIN');
                SQL.Add('  Delete from  [EEP].[LingYi].[dbo].[SYS_ORGROLES] where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+Old_Role_ID+'''');
                SQL.Add('  Insert into  [EEP].[LingYi].[dbo].[SYS_ORGROLES] ( ORG_NO, ROLE_ID, ORG_KIND)  Values ('''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''','''+SYS_ORGQry.FieldByName('ROLE_ID').AsString+''','''+SYS_ORGQry.FieldByName('ORG_KIND').AsString+''')');
                SQL.Add('END');
                //funcObj.WriteErrorLog(sql.Text);
                ExecSQL();
              end;
            end else
            begin
              if Old_Role_ID<>'' then
              begin
                with  tmpQry do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('IF  EXISTS (Select ORG_NO from [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES  where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+Old_Role_ID+''')');
                  SQL.Add('BEGIN');
                  SQL.Add('  Delete from  [EEP].[LingYi].[dbo].[SYS_ORGROLES] where ORG_NO='''+SYS_ORGQry.FieldByName('ORG_NO').AsString+''' and ROLE_ID='''+Old_Role_ID+'''');
                  SQL.Add('END');
                  //funcObj.WriteErrorLog(sql.Text);
                  ExecSQL();
                end;
              end;
            end;
          end;
        end;
      end;
      SYS_ORGQry.Next;
    end;

    SYS_ORGQry.Active := false;
    SYS_ORGQry.LockType := ltReadOnly;
    SYS_ORGQry.Active := true;
    //
    DBGridEh4.Columns[3].ButtonStyle := cbsNone;
    DBGridEh4.Columns[4].ButtonStyle := cbsNone;
    DBGridEh4.Columns[5].ButtonStyle := cbsNone;
    DBGridEh4.Columns[8].ButtonStyle := cbsNone;
    DBGridEh4.Columns[10].ButtonStyle := cbsNone;
    DD5.Enabled := false;
    DD6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDKorganization.DD6Click(Sender: TObject);
begin
  with SYS_ORGQry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  DBGridEh4.Columns[3].ButtonStyle := cbsNone;
  DBGridEh4.Columns[4].ButtonStyle := cbsNone;
  DBGridEh4.Columns[5].ButtonStyle := cbsNone;
  DBGridEh4.Columns[8].ButtonStyle := cbsNone;
  DBGridEh4.Columns[10].ButtonStyle := cbsNone;
  DD5.Enabled := false;
  DD6.Enabled := false;
end;

procedure TDKorganization.EE2Click(Sender: TObject);
begin
  with USERGroup1Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;
  EE5.Enabled := true;
  EE6.Enabled := true;
end;

procedure TDKorganization.EE3Click(Sender: TObject);
begin
  with USERGroup1Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  EE5.Enabled := true;
  EE6.Enabled := true;
end;

procedure TDKorganization.EE4Click(Sender: TObject);
begin
  with USERGroup1Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
    Edit;
  end;
  EE5.Enabled := true;
  EE6.Enabled := true;
end;

procedure TDKorganization.EE5Click(Sender: TObject);
var i: integer;
begin
  try
    USERGroup1Qry.First;
    for i := 0 to USERGroup1Qry.RecordCount-1 do
    begin
      case USERGroup1Qry.UpdateStatus of
        usInserted:
        begin
          if (USERGroup1Qry.FieldByName('USERID').Value = '') then
          begin
            USERGroup1Qry.Delete;
          end else
          begin
            USERGroup1Qry.Edit;
            USERGroup1Qry.FieldByName('GROUPID').AsString := GroupQry.FieldByName('GROUPID').AsString;
            USERGroup1Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup1Qry.FieldByName('SYSUSERDATE').Value:=Date();
            USERGroup1Qry.FieldByName('YN').Value:='1';
            UpdateSQL4.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (USERGroup1Qry.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL4.Apply(ukDelete);
          end else
          begin
            USERGroup1Qry.Edit;
            USERGroup1Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup1Qry.FieldByName('SYSUSERDATE').Value:=Date();
            UpdateSQL4.Apply(ukModify);
          end;
        end;
      end;
      USERGroup1Qry.Next;
    end;

    USERGroup1Qry.Active := false;
    USERGroup1Qry.LockType := ltReadOnly;
    USERGroup1Qry.Active := true;
    EE5.Enabled := false;
    EE6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TDKorganization.EE6Click(Sender: TObject);
begin
  with USERGroup1Qry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  CC5.Enabled := false;
  CC6.Enabled := false;
end;

procedure TDKorganization.FF2Click(Sender: TObject);
begin
  with USERGroup2Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;
  FF5.Enabled := true;
  FF6.Enabled := true;
end;

procedure TDKorganization.FF3Click(Sender: TObject);
begin
  with USERGroup2Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  FF5.Enabled := true;
  FF6.Enabled := true;
end;

procedure TDKorganization.FF4Click(Sender: TObject);
begin
  with USERGroup2Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
    Edit;
  end;
  FF5.Enabled := true;
  FF6.Enabled := true;
end;

procedure TDKorganization.FF5Click(Sender: TObject);
var i: integer;
begin
  try
    USERGroup2Qry.First;
    for i := 0 to USERGroup2Qry.RecordCount-1 do
    begin
      case USERGroup2Qry.UpdateStatus of
        usInserted:
        begin
          if (USERGroup2Qry.FieldByName('USERID').Value = '') then
          begin
            USERGroup2Qry.Delete;
          end else
          begin
            USERGroup2Qry.Edit;
            USERGroup2Qry.FieldByName('GROUPID').AsString := SYS_ORGQry.FieldByName('ORG_MAN').AsString;
            USERGroup2Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup2Qry.FieldByName('SYSUSERDATE').Value:=Date();
            USERGroup2Qry.FieldByName('YN').Value:='1';
            UpdateSQL5.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (USERGroup2Qry.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL5.Apply(ukDelete);
          end else
          begin
            USERGroup2Qry.Edit;
            USERGroup2Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup2Qry.FieldByName('SYSUSERDATE').Value:=Date();
            UpdateSQL5.Apply(ukModify);
          end;
        end;
      end;
      USERGroup2Qry.Next;
    end;

    USERGroup2Qry.Active := false;
    USERGroup2Qry.LockType := ltReadOnly;
    USERGroup2Qry.Active := true;
    FF5.Enabled := false;
    FF6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TDKorganization.FF6Click(Sender: TObject);
begin
  with USERGroup2Qry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  FF5.Enabled := false;
  FF6.Enabled := false;
end;

procedure TDKorganization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKorganization.FormDestroy(Sender: TObject);
begin
  DKorganization:=nil;
end;

procedure TDKorganization.GG2Click(Sender: TObject);
begin
  if SYS_ORGQry.FieldByName('ROLE_ID').AsString='' then
  begin
    Showmessage('ROLE_ID is empty');
    Exit;
  end;
  
  with USERGroup3Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;
  GG5.Enabled := true;
  GG6.Enabled := true;
end;

procedure TDKorganization.GG3Click(Sender: TObject);
begin
  if SYS_ORGQry.FieldByName('ROLE_ID').AsString='' then
  begin
    Showmessage('ROLE_ID is empty');
    Exit;
  end;
  with USERGroup3Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  GG5.Enabled := true;
  GG6.Enabled := true;
end;

procedure TDKorganization.GG4Click(Sender: TObject);
begin
  if SYS_ORGQry.FieldByName('ROLE_ID').AsString='' then
  begin
    Showmessage('ROLE_ID is empty');
    Exit;
  end;
  with USERGroup3Qry do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
    Edit;
  end;
  GG5.Enabled := true;
  GG6.Enabled := true;
end;

procedure TDKorganization.GG5Click(Sender: TObject);
var i: integer;
begin
  try
    USERGroup3Qry.First;
    for i := 0 to USERGroup3Qry.RecordCount-1 do
    begin
      case USERGroup3Qry.UpdateStatus of
        usInserted:
        begin
          if (USERGroup3Qry.FieldByName('USERID').Value = '') then
          begin
            USERGroup2Qry.Delete;
          end else
          begin
            USERGroup3Qry.Edit;
            USERGroup3Qry.FieldByName('GROUPID').AsString := SYS_ORGQry.FieldByName('ROLE_ID').AsString;
            USERGroup3Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup3Qry.FieldByName('SYSUSERDATE').Value:=Date();
            USERGroup3Qry.FieldByName('YN').Value:='1';
            UpdateSQL6.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (USERGroup3Qry.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL6.Apply(ukDelete);
          end else
          begin
            USERGroup3Qry.Edit;
            USERGroup3Qry.FieldByName('SYSUSERID').AsString := main.UserID;
            USERGroup3Qry.FieldByName('SYSUSERDATE').Value:=Date();
            UpdateSQL6.Apply(ukModify);
          end;
        end;
      end;
      USERGroup3Qry.Next;
    end;

    USERGroup3Qry.Active := false;
    USERGroup3Qry.LockType := ltReadOnly;
    USERGroup3Qry.Active := true;
    GG5.Enabled := false;
    GG6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TDKorganization.GG6Click(Sender: TObject);
begin
  with USERGroup3Qry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  GG5.Enabled := false;
  GG6.Enabled := false;
end;

procedure TDKorganization.GroupQryAfterOpen(DataSet: TDataSet);
begin
  GroupQry.AfterOpenRecNo(DataSet);
  CC2.Enabled := true;
  CC3.Enabled := true;
  CC4.Enabled := true;
end;

procedure TDKorganization.SYS_ORGQryAfterOpen(DataSet: TDataSet);
begin
  SYS_ORGQry.AfterOpenRecNo(DataSet);
  DD2.Enabled := true;
  DD3.Enabled := true;
  DD4.Enabled := true;  
end;

procedure TDKorganization.USERGroup1QryAfterOpen(DataSet: TDataSet);
begin
  USERGroup1Qry.AfterOpenRecNo(DataSet);
  EE2.Enabled := true;
  EE3.Enabled := true;
  EE4.Enabled := true;
end;

procedure TDKorganization.USERGroup2QryAfterOpen(DataSet: TDataSet);
begin
  USERGroup2Qry.AfterOpenRecNo(DataSet);
  FF2.Enabled := true;
  FF3.Enabled := true;
  FF4.Enabled := true;
end;

procedure TDKorganization.USERGroup3QryAfterOpen(DataSet: TDataSet);
begin
  USERGroup3Qry.AfterOpenRecNo(DataSet);
  GG2.Enabled := true;
  GG3.Enabled := true;
  GG4.Enabled := true;  
end;

end.
