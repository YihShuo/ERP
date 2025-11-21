unit RSLCFM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,math,
  GridsEh, DBGridEh, Menus,comobj, ShellApi, DateUtils, IniFiles;

type
  TRSLCFM = class(TForm)
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    CLZL: TQuery;
    CLZLcldh: TStringField;
    CLZLcllb: TStringField;
    CLZLzsdh: TStringField;
    CLZLzsywjc: TStringField;
    CLZLzwpm: TStringField;
    CLZLywpm: TStringField;
    CLZLdwbh: TStringField;
    CLZLcqdh: TStringField;
    CLZLDCYN: TStringField;
    CLZLPDYN: TStringField;
    CLZLDCDate: TDateTimeField;
    CLZLDCFilePage: TStringField;
    CLZLPDDate: TDateTimeField;
    CLZLPDFilePage: TStringField;
    CLZLCreateID: TStringField;
    CLZLCreateDate: TDateTimeField;
    CLZLUpdateID: TStringField;
    CLZLUpdateDate: TDateTimeField;
    DBGrid1: TDBGridEh;
    CLZLDCCFMDate: TDateTimeField;
    CLZLPDCFMDate: TDateTimeField;
    CLZLDCCFMID: TStringField;
    CLZLPDCFMID: TStringField;
    CLZLDCCFM: TStringField;
    CLZLPDCFM: TStringField;
    CLZLPDUpdateID: TStringField;
    CLZLPDUpdateDate: TDateTimeField;
    CLZLGSBH: TStringField;
    Button5: TButton;
    Button6: TButton;
    CLZLPDFilePageT2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  RSLCFM: TRSLCFM;
  DCFilePath:string;
  PDFilePath:string;
  
implementation

uses main1;

{$R *.dfm}

procedure TRSLCFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRSLCFM.FormDestroy(Sender: TObject);
begin
  RSLCFM:=nil;
end;
procedure TRSLCFM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\DC\';                    // 先設定上傳的檔案路徑
  PDFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\PD\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCFilePath:=MyIni.ReadString('RSL','Bom_N472_DCFilePath','');
      PDFilePath:=MyIni.ReadString('RSL','Bom_N472_PDFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TRSLCFM.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TRSLCFM.Button1Click(Sender: TObject);
begin
  with CLZL do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select clzl.cldh, clzl.cllb, rstlist.zsdh, zszl.zsywjc, clzl.ywpm, clzl.zwpm,    ');
    sql.add('clzl.dwbh, clzl.cqdh, rstlist.DCYN, rstlist.PDYN, rstlist.DCCFMDate, rstlist.DCCFMID,  ');
    sql.add('rstlist.PDCFMDate, rstlist.PDCFMID, rstlist.DCDate, rstlist.PDDate,              ');
    sql.add('rstlist.DCFilePage, rstlist.PDFilePage, rstlist.createID, rstlist.createDate,    ');
    sql.add('rstlist.DCUpdateID, rstlist.DCUpdateDate,                                        ');
    sql.add('rstlist.PDUpdateID, rstlist.PDUpdateDate, rstlist.DCCFM,  rstlist.PDCFM,         ');
    sql.add('rstlist.UpdateID, rstlist.UpdateDate,rstlist.gsbh ,rstlist.PDFilePageT2          ');
    sql.add('from clzl                                       ');
    sql.add('left join rstlist on clzl.cldh = rstlist.cldh   ');
    sql.add('left join zszl on rstlist.zsdh = zszl.zsdh      ');
    sql.add('where ((rstlist.dcyn = ''Y'' and rstlist.DCCFM = ''N'' and rstlist.DCFilePage is not null and left(convert(varchar, DateAdd(year,1,DCDate),112), 12) > left(convert(varchar, getdate(),112), 6) )  ');
    sql.add('   or  (rstlist.pdyn = ''Y'' and rstlist.PDCFM = ''N'' and (rstlist.PDFilePage is not null or rstlist.PDFilePageT2 is not null )and left(convert(varchar, DateAdd(year,1,PDDate),112), 12) > left(convert(varchar, getdate(),112), 6) )) ');
    //
    sql.Add('and rstlist.gsbh='''+main.edit2.text+'''');
    //
    sql.add('  and clzl.cldh like ''' + Edit1.Text + '%''           ');
    sql.add('  and zszl.zsywjc like ''%' + Edit2.Text + '%''        ');
    active:=true;
  end;
end;

procedure TRSLCFM.Button2Click(Sender: TObject);
begin

  if CLZL.fieldbyname('DCYN').Value = 'N'  then
  begin
    ShowMessage('No need to confirm DC');
    abort;
  end;

  if CLZL.fieldbyname('DCDate').isnull then
  begin
    ShowMessage('Pls inform DC input DCDate');
    abort;
  end;

  if CLZL.fieldbyname('DCFilePage').isnull then
  begin
    ShowMessage('Pls inform DC upload DCFile');
    abort;
  end;

  if CLZL.fieldbyname('DCCFM').Value = 'N'  then
  begin
    if messagedlg('DC Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        with CLZL do
        begin
          edit;
          fieldbyname('DCCFM').Value := 'Y';
          fieldbyname('DCCFMDate').Value := now;
          fieldbyname('DCCFMID').Value := main.edit1.text;
          UpMas.Apply(ukmodify);
          active:=false;
          active:=true;
        end;
        showmessage('Succeed.');
      except
        showmessage('Have wrong.');
      end;
    end;
  end
  else
  begin
    ShowMessage('already confirm DC');
  end;

end;

procedure TRSLCFM.Button3Click(Sender: TObject);
begin

  if CLZL.fieldbyname('PDYN').Value = 'N'  then
  begin
    ShowMessage('No need to confirm PD');
    abort;
  end;

  if CLZL.fieldbyname('PDDate').isnull then
  begin
    ShowMessage('Pls inform PD input PDDate');
    abort;
  end;

  if (( CLZL.fieldbyname('PDFilePage').isnull) and (CLZL.fieldbyname('PDFilePageT2').isnull) )then
  begin
    ShowMessage('Pls inform PD upload PDFile');
    abort;
  end;

  if CLZL.fieldbyname('PDCFM').Value = 'N'  then
  begin
    if messagedlg('PD Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        with CLZL do
        begin
          edit;
          fieldbyname('PDCFM').Value := 'Y';
          fieldbyname('PDCFMDate').Value := now;
          fieldbyname('PDCFMID').Value := main.edit1.text;
          UpMas.Apply(ukmodify);
          active:=false;
          active:=true;
        end;
        showmessage('Succeed.');
      except
        showmessage('Have wrong.');
      end;
    end;
  end
  else
  begin
    ShowMessage('already confirm PD');
  end;

end;

procedure TRSLCFM.DBGrid1CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGrid1.SelectedField.FieldName = 'DCFilePage') and (not CLZL.FieldByName('DCFilePage').isnull) then
  begin
    path:= pchar( DCFilePath + string(CLZL.FieldByName('DCFilePage').value) );
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid1.SelectedField.FieldName = 'PDFilePage') and (not CLZL.FieldByName('PDFilePage').isnull) then
  begin
    path:= pchar( PDFilePath + string(CLZL.FieldByName('PDFilePage').value) );
    ShellExecute(Handle, nil, path ,  nil, nil, SW_SHOWNORMAL);
  end;
  if (DBGrid1.SelectedField.FieldName = 'PDFilePageT2') and (not CLZL.FieldByName('PDFilePageT2').isnull) then
  begin
    path:= pchar( PDFilePath + string(CLZL.FieldByName('PDFilePageT2').value) );
    ShellExecute(Handle, nil, path ,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TRSLCFM.Button4Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if CLZL.Active then
  begin
    if CLZL.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end
  else
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   CLZL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CLZL.fields[i-1].FieldName;
    end;
    CLZL.First;
    j:=2;
    while  not  CLZL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CLZL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CLZL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CLZL.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  except
  on   F:Exception   do
    showmessage(F.Message);
  end;
end;

procedure TRSLCFM.Button5Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('PD Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      CLZL.First;
      for i:=0 to CLZL.RecordCount-1 do
      begin
        if CLZL.fieldbyname('PDYN').Value = 'Y'  then
        begin
          if not CLZL.fieldbyname('PDDate').isnull then
          begin
             if ((not CLZL.fieldbyname('PDFilePage').isnull) or (not CLZL.fieldbyname('PDFilePageT2').isnull)) then
             begin
                with CLZL do
                begin
                  edit;
                  fieldbyname('PDCFM').Value := 'Y';
                  fieldbyname('PDCFMDate').Value := now;
                  fieldbyname('PDCFMID').Value := main.edit1.text;
                  UpMas.Apply(ukmodify);
                end;
             end;
          end;
        end;
        CLZL.Next;
      end;
      CLZL.Active:=false;
      CLZL.Active:=true;
      showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;
  end;

end;

procedure TRSLCFM.Button6Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('DC Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      CLZL.First;
      for i:=0 to CLZL.RecordCount-1 do
      begin
        if CLZL.fieldbyname('DCYN').Value = 'Y'  then
        begin
          if not CLZL.fieldbyname('DCDate').isnull then
          begin
             if not CLZL.fieldbyname('DCFilePage').isnull then
             begin
                with CLZL do
                begin
                  edit;
                  fieldbyname('DCCFM').Value := 'Y';
                  fieldbyname('DCCFMDate').Value := now;
                  fieldbyname('DCCFMID').Value := main.edit1.text;
                  UpMas.Apply(ukmodify);
                end;
             end;
          end;
        end;
        CLZL.Next;
      end;
      CLZL.Active:=false;
      CLZL.Active:=true;
      showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;
  end;
end;

end.
