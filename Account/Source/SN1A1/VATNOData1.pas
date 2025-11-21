unit VATNOData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls,comobj,ShellApi,
  Menus,IniFiles;

type
  TVATNOData = class(TForm)
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    ZS_VATNO: TEdit;
    query_VATNO: TButton;
    import_VATNO: TButton;
    ex_VATNO: TButton;
    edt_VATNO: TEdit;
    Chk_StartDate: TCheckBox;
    DT1_VATNO: TDateTimePicker;
    DT2_VATNO: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    DT1_TK: TDateTimePicker;
    CL_TK: TEdit;
    edt_TK: TEdit;
    query_TK: TButton;
    excel_TK: TButton;
    import_TK: TButton;
    Chk_TKDate: TCheckBox;
    DT2_TK: TDateTimePicker;
    OpenDialog1: TOpenDialog;
    Qry_Import: TQuery;
    qry_VATNO: TQuery;
    qry_TKTong: TQuery;
    DS_VATNO: TDataSource;
    DS_TKTong: TDataSource;
    qry_temp: TQuery;
    qry_VATNOVATNO: TStringField;
    qry_VATNOVATDATE: TDateTimeField;
    qry_VATNOZSBH_MST: TStringField;
    qry_VATNOUSERID: TStringField;
    qry_VATNOUSERDATE: TDateTimeField;
    qry_VATNOYN: TStringField;
    qry_VATNOKYHIEU_MAUSO: TStringField;
    qry_VATNOKYHIEU_HOADON: TStringField;
    qry_VATNOTEN_NGUOIBAN: TStringField;
    qry_VATNOTONGTIEN_CHUATHUE: TCurrencyField;
    qry_VATNOTONGTIEN_THUE: TCurrencyField;
    qry_VATNOTONGTIEN_CHIETKHAU: TCurrencyField;
    qry_VATNOTONGTIEN_PHI: TCurrencyField;
    qry_VATNOTONGTIEN_THANHTOAN: TCurrencyField;
    qry_VATNODONVI_TIENTE: TStringField;
    qry_VATNOTRANGTHAI_HD: TStringField;
    qry_VATNOKETQUA_KIEMTRA: TStringField;
    Query1: TQuery;
    chk_UserDate_VATNO: TCheckBox;
    DT3_VATNO: TDateTimePicker;
    Label16: TLabel;
    DT4_VATNO: TDateTimePicker;
    chk_UserDate_TK: TCheckBox;
    DT3_TK: TDateTimePicker;
    Label17: TLabel;
    DT4_TK: TDateTimePicker;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGridEh;
    qry_TKChiTiet: TQuery;
    DS_TKChiTiet: TDataSource;
    qry_TKTongNGAYDANGKY: TDateTimeField;
    qry_TKTongMALOAIHINH: TStringField;
    qry_TKTongTENDOITAC: TStringField;
    qry_TKTongNGAYDEN: TDateTimeField;
    qry_TKTongTONGTRIGIA_HOADON: TCurrencyField;
    qry_TKTongUSERID: TStringField;
    qry_TKTongUSERDATE: TDateTimeField;
    qry_TKTongYN: TStringField;
    qry_TKChiTietSOTT: TIntegerField;
    qry_TKChiTietNGAYDANGKY: TDateTimeField;
    qry_TKChiTietMALOAIHINH: TStringField;
    qry_TKChiTietMANPL_SP: TStringField;
    qry_TKChiTietTONGSOLUONG: TCurrencyField;
    qry_TKChiTietDONVITINH: TStringField;
    qry_TKChiTietTRIGIANT: TCurrencyField;
    qry_TKChiTietTENDOITAC: TStringField;
    qry_TKChiTietUSERID: TStringField;
    qry_TKChiTietUSERDATE: TDateTimeField;
    qry_TKChiTietYN: TStringField;
    qry_TKTongDECLARATION: TStringField;
    qry_TKTongDOCNO: TStringField;
    qry_TKChiTietDECLARATION: TStringField;
    qry_TKChiTietDOCNO: TStringField;
    qry_VATNOMST_TOCHUCGIAIPHAP: TStringField;
    qry_VATNOMST_TOCHUCTRUYENNHAN: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BDelRec: TQuery;
    Up_VATNO: TUpdateSQL;
    Up_TKTong: TUpdateSQL;
    Up_TKChiTiet: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    PopupMenu3: TPopupMenu;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    qry_TKTongNGAYTHONGQUAN: TDateTimeField;
    N5: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure query_VATNOClick(Sender: TObject);
    procedure ex_VATNOClick(Sender: TObject);
    procedure import_VATNOClick(Sender: TObject);
    procedure query_TKClick(Sender: TObject);
    procedure excel_TKClick(Sender: TObject);
    procedure import_TKClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N5Click(Sender: TObject);

  private
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
    { Private declarations }
    sign: boolean;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  VATNOData: TVATNOData;
  NDate:Tdate;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TVATNOData.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
    finally
      MyIni.Free;
    end;
  end;

  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;

end;

procedure TVATNOData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if N3.Enabled or N23.Enabled or N33.Enabled  then
  begin
    showmessage('Pls save the first.');
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TVATNOData.FormDestroy(Sender: TObject);
begin
  VATNOData:=nil;
end;

procedure TVATNOData.FormCreate(Sender: TObject);
begin
  with qry_temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DT1_VATNO.Date:=Date-10;
  DT2_VATNO.Date:=Date;
  DT3_VATNO.Date:=Date;
  DT4_VATNO.Date:=Date;
  DT1_TK.Date:=Date-10;
  DT2_TK.Date:=Date;
  DT3_TK.Date:=Date;
  DT4_TK.Date:=Date;
  with Qry_Temp do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    Active:=true;
    if Qry_Temp.RecordCount>0 then sign:=true else sign:=false;
  end;
  ReadIni();

end;

procedure TVATNOData.query_VATNOClick(Sender: TObject);
begin
  with Qry_VATNO do
  begin
    active:=false;
    //Close;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    sql.Add('SELECT KYHIEU_MAUSO,KYHIEU_HOADON,VATNO,VATDATE,ZSBH_MST--TEN_NGUOIBAN,');
    if not sign then
        sql.Add('   ,TEN_NGUOIBAN')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(TEN_NGUOIBAN) AS VARCHAR(200)) AS TEN_NGUOIBAN');
    sql.Add('       ,MST_TOCHUCGIAIPHAP,MST_TOCHUCTRUYENNHAN,TONGTIEN_CHUATHUE,TONGTIEN_THUE,TONGTIEN_CHIETKHAU,TONGTIEN_PHI,TONGTIEN_THANHTOAN');
    if not sign then
        sql.Add('   ,DONVI_TIENTE')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(DONVI_TIENTE) AS VARCHAR(5)) AS DONVI_TIENTE');
    if not sign then
        sql.Add('   ,TRANGTHAI_HD')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(TRANGTHAI_HD) AS VARCHAR(50)) AS TRANGTHAI_HD');
    if not sign then
        sql.Add('   ,KETQUA_KIEMTRA')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(KETQUA_KIEMTRA) AS VARCHAR(50)) AS KETQUA_KIEMTRA');
    sql.Add('       ,USERID,USERDATE,YN');
    sql.Add('FROM '+SQL_LinkServer+'.CGZL_VATNO CGZL_VATNO  ');
    sql.Add('where  1=1  ');
    if Chk_StartDate.Checked=true then
    begin
      sql.add('and convert(varchar,VATDATE,111) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DT1_VATNO.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT2_VATNO.date)+'''');
    end;
    if Chk_UserDate_VATNO.Checked=true then
    begin
      sql.add('and convert(varchar,USERDATE,111) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DT3_VATNO.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT4_VATNO.date)+'''');
    end;
    if (trim(ZS_VATNO.Text)<>'') then
      sql.Add('  and  ZSBH_MST like ''%'+trim(ZS_VATNO.Text)+'%''  ');
    if (trim(edt_VATNO.Text)<>'') then
      sql.Add('  and  VATNO like ''%'+trim(edt_VATNO.Text)+'%''  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if qry_VATNO.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
    N5.Enabled:=true;
  end;
end;

procedure TVATNOData.ex_VATNOClick(Sender: TObject);
var i,j:integer;
    eclApp,WorkBook:olevariant;
begin
  if qry_VATNO.Active then
  begin
    if qry_VATNO.recordcount=0 then
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
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   qry_VATNO.fieldcount   do
    begin
      //eclApp.Cells(1,i+1):=qry_VATNO.fields[i-1].FieldName;
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i-1].Title.Caption;
    end;
    qry_VATNO.First;
    j:=2;
    while   not  qry_VATNO.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qry_VATNO.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=qry_VATNO.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        end;
        qry_VATNO.Next;
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
procedure TVATNOData.import_VATNOClick(Sender: TObject);
begin
  if (qry_VATNO.RequestLive) then
  begin
    showmessage('Pls. Save data first !');
    abort;
  end;
  if fileexists(extractfilepath(application.ExeName)+'import_VATNO.exe') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'import_VATNO.exe'),'0',pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end else
  begin
    showmessage('Pls setup the program first. Abort');
  end;
  //WinExec('D:\ERP_Xuan\Bin\import_VATNO.exe 0',SW_SHOW);
end;

procedure TVATNOData.query_TKClick(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with qry_TKTong do
    begin
      active:=false;
      //Close;
      sql.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.Add('  SELECT *  ');
      sql.Add('  FROM '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration   ');
      sql.Add('  where  1=1  ');
      if Chk_TKDate.Checked=true then
      begin
        sql.add(' and convert(varchar,NGAYDANGKY,111) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DT1_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT2_TK.date)+'''');
      end;
      if chk_UserDate_TK.checked=true then
      begin
        sql.add(' and convert(varchar,UserDate,111) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DT3_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT4_TK.date)+'''');
      end;
      if (trim(CL_TK.Text)<>'') then
        sql.Add('  and  DOCNO like ''%'+trim(CL_TK.Text)+'%''  ');
      if (trim(edt_TK.Text)<>'') then
        sql.Add('  and  Declaration like ''%'+trim(edt_TK.Text)+'%''  ');
      active:=true;
    end;
    if qry_TKTong.recordcount>0 then
    begin
      N21.Enabled:=true;
      N22.Enabled:=true;
    end;
   end else if  PC1.ActivePageIndex=1 then
   begin
      with qry_TKChiTiet do
      begin
        active:=false;
        //Close;
        sql.Clear;
        SQL.Add('SET ANSI_NULLS ON ');
        SQL.Add('SET ANSI_WARNINGS ON ');
        ExecSQL();
        sql.Clear;
        sql.Add('  SELECT DECLARATION,SOTT,NGAYDANGKY,MALOAIHINH,MANPL_SP,TONGSOLUONG ');
        if not sign then
          sql.Add('       ,DONVITINH')
        else
          sql.Add('       ,CAST(dbo.fSignsToNoSigns(DONVITINH) AS VARCHAR(100)) AS DONVITINH');
        sql.Add('         ,TRIGIANT,TENDOITAC,DOCNO,USERID,USERDATE,YN');
        sql.Add('  FROM '+SQL_LinkServer+'.CGZL_DeclarationS  CGZL_DeclarationS   ');
        sql.Add('  where  1=1  ');
        if Chk_TKDate.Checked=true then
        begin
          sql.add(' and convert(varchar,NGAYDANGKY,111) between ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',DT1_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT2_TK.date)+'''');
        end;
        if chk_UserDate_TK.checked=true then
        begin
          sql.add(' and convert(varchar,UserDate,111) between ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',DT3_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT4_TK.date)+'''');
        end;
        if (trim(CL_TK.Text)<>'') then
          sql.Add('  and  DOCNO like ''%'+trim(CL_TK.Text)+'%''  ');
        if (trim(edt_TK.Text)<>'') then
          sql.Add('  and  Declaration like ''%'+trim(edt_TK.Text)+'%''  ');
        active:=true;
      end;
      if qry_TKChiTiet.recordcount>0 then
      begin
        N31.Enabled:=true;
        N32.Enabled:=true;
      end;
   end;

end;

procedure TVATNOData.excel_TKClick(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if  PC1.ActivePageIndex=0 then
  begin
    if qry_TKTong.Active then
    begin
      if qry_TKTong.recordcount=0 then
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
      eclapp.Cells.NumberFormatLocal:='@';
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   qry_TKTong.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=DBGrid1.Columns[i-1].Title.Caption;
      end;
      qry_TKTong.First;
      j:=2;
      while   not  qry_TKTong.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   qry_TKTong.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=qry_TKTong.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='10';
          end;
          qry_TKTong.Next;
          inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else if  PC1.ActivePageIndex=1 then
  begin
    if qry_TKChiTiet.Active then
    begin
      if qry_TKChiTiet.recordcount=0 then
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
      eclapp.Cells.NumberFormatLocal:='@';
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   qry_TKChiTiet.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=DBGrid2.Columns[i-1].Title.Caption;
      end;
      qry_TKChiTiet.First;
      j:=2;
      while   not  qry_TKChiTiet.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   qry_TKChiTiet.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=qry_TKChiTiet.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='10';
          end;
          qry_TKChiTiet.Next;
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
end;

procedure TVATNOData.import_TKClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Chon Yes Import To Khai Tong / Chon No Import To Khai Chi Tiet'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
      if (qry_TKTong.RequestLive) then
      begin
        showmessage('Pls. Save data first !');
        abort;
      end;
      if fileexists(extractfilepath(application.ExeName)+'import_VATNO.exe') then
      begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'import_VATNO.exe'),'1',pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
      end else
      begin
        showmessage('Pls setup the program first. Abort');
      end;
   end else
   begin
      if (qry_TKChiTiet.RequestLive) then
      begin
        showmessage('Pls. Save data first !');
        abort;
      end;
      if fileexists(extractfilepath(application.ExeName)+'import_VATNO.exe') then
      begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'import_VATNO.exe'),'2',pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
      end else
      begin
        showmessage('Pls setup the program first. Abort');
      end;
   end;
end;

procedure TVATNOData.N1Click(Sender: TObject);
begin
  if qry_VATNO.recordcount>0 then
  begin
    with qry_VATNO do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end;
  N3.Enabled:=true;
  N4.Enabled:=true;
end;

procedure TVATNOData.N2Click(Sender: TObject);
  var i:integer;
begin
  if qry_VATNO.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  if qry_VATNO.recordcount>0 then
  begin
    with qry_VATNO do
    begin
      qry_VATNO.First;
      for i:=1 to qry_VATNO.RecordCount do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
          qry_VATNO.next;
        end else
        begin
          requestlive:=false;
          cachedupdates:=false;
          showmessage('It is not yours,can not delete.');
          N3.Enabled:=false;
          N4.Enabled:=false;
          abort;
        end;
      end;
    end;
  end;
  N3.Enabled:=true;
  N4.Enabled:=true;
end;

procedure TVATNOData.N3Click(Sender: TObject);
begin
  try
    with qry_VATNO do
    begin
      first;
      while not eof do
      begin
        case updatestatus of
          usmodified:
          begin
            if fieldbyname('YN').value='0' then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'CGZL_VATNO'+''''+','+''''+qry_VATNO.fieldbyname('VATNO').Value+'''');
                sql.add(','+''''+qry_VATNO.fieldbyname('ZSBH_MST').Value+''''+','+''''+qry_VATNO.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              Up_VATNO.apply(ukdelete);
            end else
            begin
              qry_VATNO.edit;
              qry_VATNO.FieldByName('userID').Value:=main.edit1.text;
              Up_VATNO.apply(ukmodify);
            end;
          end;
        end;
        next;
      end;
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
      N3.Enabled:=false;
      N4.Enabled:=false;
      showmessage('Succeed');
    end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TVATNOData.N4Click(Sender: TObject);
begin
  with qry_VATNO do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  N3.Enabled:=false;
  N4.Enabled:=false;
end;

procedure TVATNOData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_VATNO.FieldByName('YN').value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
end;

procedure TVATNOData.N21Click(Sender: TObject);
begin
  if qry_TKTong.recordcount>0 then
  begin
    with qry_TKTong do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end;
  N23.Enabled:=true;
  N24.Enabled:=true;
end;

procedure TVATNOData.N22Click(Sender: TObject);
  var i:integer;
begin
  if qry_TKTong.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  if qry_TKTong.recordcount>0 then
  begin
    with qry_TKTong do
    begin
      qry_TKTong.First;
      for i:=1 to qry_TKTong.RecordCount do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
          qry_TKTong.next;
        end else
        begin
          requestlive:=false;
          cachedupdates:=false;
          showmessage('It is not yours,can not delete.');
          N23.Enabled:=false;
          N24.Enabled:=false;
          abort;
        end;
      end;
    end;
  end;
  N23.Enabled:=true;
  N24.Enabled:=true;
end;

procedure TVATNOData.N23Click(Sender: TObject);
begin
  try
    with qry_TKTong do
    begin
      first;
      while not eof do
      begin
        case updatestatus of
          usmodified:
          begin
            if fieldbyname('YN').value='0' then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'CGZL_Declaration'+''''+','+''''+qry_TKTong.fieldbyname('DECLARATION').Value+'''');
                sql.add(','+''''+' '+''''+','+''''+qry_TKTong.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              Up_TKTong.apply(ukdelete);
            end;
          end;
        end;
        next;
      end;
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
      N23.Enabled:=false;
      N24.Enabled:=false;
      showmessage('Succeed');
    end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TVATNOData.N24Click(Sender: TObject);
begin
  with qry_TKTong do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  N23.Enabled:=false;
  N24.Enabled:=false;
end;

procedure TVATNOData.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TKTong.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TVATNOData.N31Click(Sender: TObject);
begin
  if qry_TKChiTiet.recordcount>0 then
  begin
    with qry_TKChiTiet do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end;
  N33.Enabled:=true;
  N34.Enabled:=true;
end;

procedure TVATNOData.N32Click(Sender: TObject);
  var i:integer;
begin
  if qry_TKChiTiet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  if qry_TKChiTiet.recordcount>0 then
  begin
    with qry_TKChiTiet do
    begin
      qry_TKChiTiet.First;
      for i:=1 to qry_TKChiTiet.RecordCount do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
          qry_TKChiTiet.next;
        end else
        begin
          requestlive:=false;
          cachedupdates:=false;
          showmessage('It is not yours,can not delete.');
          N33.Enabled:=false;
          N34.Enabled:=false;
          abort;
        end;
      end;
    end;
  end;
  N33.Enabled:=true;
  N34.Enabled:=true;
end;

procedure TVATNOData.N33Click(Sender: TObject);
begin
  try
    with qry_TKChiTiet do
    begin
      first;
      while not eof do
      begin
        case updatestatus of
          usmodified:
          begin
            if fieldbyname('YN').value='0' then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'CGZL_DeclarationS'+''''+','+''''+qry_TKChiTiet.fieldbyname('DECLARATION').Value+'''');
                sql.add(','+''''+qry_TKChiTiet.fieldbyname('SOTT').AsString+''''+','+''''+qry_TKChiTiet.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              Up_TKChiTiet.apply(ukdelete);
            end;
          end;
        end;
        next;
      end;
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
      N33.Enabled:=false;
      N34.Enabled:=false;
      showmessage('Succeed');
    end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TVATNOData.N34Click(Sender: TObject);
begin
  with qry_TKChiTiet do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  N33.Enabled:=false;
  N34.Enabled:=false;
end;

procedure TVATNOData.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TKChiTiet.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TVATNOData.N5Click(Sender: TObject);
begin
  with qry_VATNO do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
	N3.Enabled:=true;
	N4.Enabled:=true;
  DBGridEh1.FieldColumns['TRANGTHAI_HD'].ButtonStyle := cbsAuto;
  DBGridEh1.FieldColumns['TRANGTHAI_HD'].ReadOnly:=false;
end;

end.
