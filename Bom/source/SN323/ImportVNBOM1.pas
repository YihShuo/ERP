unit ImportVNBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,comobj, iniFiles;

type
  TImportVNBOM = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    btnExcel: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit_Article: TEdit;
    Edit_Xiexing: TEdit;
    Edit_Shehao: TEdit;
    Button1: TButton;
    XXZLSVN: TQuery;
    DS_XXZLSVN: TDataSource;
    Qtemp: TQuery;
    XXZLSVNARTICLE: TStringField;
    XXZLSVNXieXing: TStringField;
    XXZLSVNSheHao: TStringField;
    XXZLSVNBWBH: TStringField;
    XXZLSVNywsm: TStringField;
    XXZLSVNCLBH: TStringField;
    XXZLSVNywpm: TStringField;
    XXZLSVNdwbh: TStringField;
    XXZLSVNCLSL: TCurrencyField;
    XXZLSVNDFL: TStringField;
    XXZLSVNXFL: TStringField;
    XXZLSVNCSBH: TStringField;
    XXZLSVNzsywjc: TStringField;
    Label4: TLabel;
    Edit_CLBH: TEdit;
    Label5: TLabel;
    Edit_YWPM: TEdit;
    UpXXZLSVN: TUpdateSQL;
    BB8: TBitBtn;
    XXZLSVNFLBH: TStringField;
    UpVNBWFL: TUpdateSQL;
    VNBWFL: TQuery;
    VNBWFLXieXing: TStringField;
    VNBWFLBWBH: TStringField;
    VNBWFLFLBH: TStringField;
    VNBWFLUSERDATE: TDateTimeField;
    VNBWFLUSERID: TStringField;
    VNBWFLYN: TStringField;
    XXZLSVNUSERID: TStringField;
    XXZLSVNUSERDATE: TDateTimeField;
    XXZLSVNYN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    ClickColumnIndex:integer;
    BOM_N31_KFCQ:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  ImportVNBOM: TImportVNBOM;

implementation

uses FunUnit,untClipboard, main1;

{$R *.dfm}

procedure TImportVNBOM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TImportVNBOM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TImportVNBOM.FormDestroy(Sender: TObject);
begin
  ImportVNBOM:=nil;
end;

procedure TImportVNBOM.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TImportVNBOM.Button1Click(Sender: TObject);
begin
  if ((Edit_Article.Text='')  and (Edit_Xiexing.Text='')) then
  begin
    showmessage('Pls key in Article or XieXing');
    abort;
  end;
  with XXZLSVN do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT XXZL.ARTICLE,XXZLSVN.XieXing,XXZLSVN.SheHao,XXZLSVN.BWBH,bwzl.ywsm,');
    sql.Add('		    XXZLSVN.CLBH,clzl.ywpm,clzl.dwbh,XXZLSVN.CLSL,XXZLSVN.FLBH,XXBWFLS.DFL,XXBWFLS.XFL, XXZLSVN.CSBH,zszl.zsywjc,');
    sql.Add('       XXZLSVN.USERID,XXZLSVN.USERDATE,XXZLSVN.YN');
    sql.Add('FROM XXZLSVN');
    sql.Add('LEFT JOIN XXZL on XXZLSVN.SheHao=XXZL.SheHao and  XXZLSVN.XieXing=XXZL.XieXing');
    sql.Add('left join clzl on XXZLSVN.CLBH=clzl.cldh');
    sql.Add('left join bwzl on XXZLSVN.BWBH=bwzl.bwdh');
    sql.Add('left join zszl on XXZLSVN.CSBH=zszl.zsdh');
    sql.Add('left join xxbwfl on xxbwfl.xiexing=xxzlsvn.xiexing and xxbwfl.bwbh=xxzlsvn.bwbh');
    sql.Add('left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH');
    sql.Add('WHERE 1=1');
    if BOM_N31_KFCQ<>'' then
      sql.add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
    if Edit_Article.Text<>'' then
      sql.Add(' and  XXZL.ARTICLE like '''+Edit_Article.Text+'%''');
    if Edit_Xiexing.Text<>'' then
      sql.Add(' and  XXZLSVN.XieXing like '''+Edit_XieXing.Text+'%''');
    if Edit_Shehao.Text<>'' then
      sql.Add(' and  XXZLSVN.Shehao like '''+Edit_Shehao.Text+'%''');
    if Edit_CLBH.Text<>'' then
      sql.Add(' and  XXZLSVN.CLBH like '''+Edit_CLBH.Text+'%''');
    if Edit_YWPM.Text<>'' then
      sql.Add(' and  CLZL.YWPM like ''%'+Edit_YWPM.Text+'%''');
    sql.Add('ORDER BY XXZL.XieXing, XXZL.SheHao');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  VNBWFL.Open;
  BB2.Enabled:=true;
end;

procedure TImportVNBOM.BB2Click(Sender: TObject);
begin
  with XXZLSVN do
  begin
    RequestLive:= true;
    CachedUpdates:= true;
    Insert;
  end;
  BB5.Enabled:= true;
  BB6.Enabled:= true;
  BB8.Enabled:=true;
end;

procedure TImportVNBOM.BB6Click(Sender: TObject);
begin
  with XXZLSVN do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BB8.Enabled:=false;
end;

procedure TImportVNBOM.BB8Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
  try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    XXZLSVN.First;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      XXZLSVN.Insert;
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
           XXZLSVN.FieldByName('Article').Value:=colList.Strings[1];
           XXZLSVN.FieldByName('BWBH').Value:=colList.Strings[2];
           XXZLSVN.FieldByName('CLBH').Value:=colList.Strings[3];
           XXZLSVN.FieldByName('CLSL').Value:=colList.Strings[4];
           XXZLSVN.FieldByName('DFL').Value:=colList.Strings[5];
           XXZLSVN.FieldByName('FLBH').Value:=colList.Strings[6];
           XXZLSVN.FieldByName('CSBH').Value:=colList.Strings[7];
        end;
      end;
      colList.Free;
      XXZLSVN.Post;
    end;
    rowList.Free;
   end;
  except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

procedure TImportVNBOM.btnExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if XXZLSVN.Active then
  begin
    if XXZLSVN.recordcount=0 then
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   XXZLSVN.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=XXZLSVN.fields[i-1].FieldName;
    end;
    XXZLSVN.First;
    j:=2;
    while   not  XXZLSVN.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   XXZLSVN.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=XXZLSVN.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      XXZLSVN.Next;
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

procedure TImportVNBOM.DBGridEh1ColExit(Sender: TObject);
var i:integer;
begin
  if XXZLSVN.FieldByName('UserID').isnull then
  begin
    if XXZLSVN.Active then
    begin
      XXZLSVN.First;
      for i:=0 to XXZLSVN.RecordCount-1 do
      begin
        if not XXZLSVN.FieldByName('Article').IsNull then
        begin
          if XXZLSVN.FieldByName('XieXing').IsNull  then
          begin
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select  XieXing, SheHao from xxzl where article='''+XXZLSVN.FieldByName('Article').Value+''' ');
              if BOM_N31_KFCQ<>'' then
                sql.add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
              active:=true;
              if RecordCount>0 then
              begin
                 XXZLSVN.Edit;
                 XXZLSVN.FieldByName('XieXing').Value:=Qtemp.FieldByName('XieXing').Value;
                 XXZLSVN.FieldByName('SheHao').Value:=Qtemp.FieldByName('SheHao').Value;
                 XXZLSVN.Post;
              end;
            end;
          end;
        end;
        //
        if not XXZLSVN.FieldByName('BWBH').IsNull then
        begin
          if XXZLSVN.FieldByName('YWSM').IsNull  then
          begin
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select YWSM from bwzl where bwdh='''+XXZLSVN.FieldByName('BWBH').Value+'''');
              active:=true;
              if RecordCount>0 then
              begin
                XXZLSVN.Edit;
                XXZLSVN.FieldByName('YWSM').Value:=Qtemp.FieldByName('YWSM').Value;
                XXZLSVN.Post;
              end;
            end;
          end;
        end;
        //
        if not XXZLSVN.FieldByName('CLBH').IsNull then
        begin
          if XXZLSVN.FieldByName('YWPM').IsNull then
          begin
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select YWPM,DWBH from CLZL where CLDH='''+XXZLSVN.FieldByName('CLBH').Value+'''');
              active:=true;
              if RecordCount>0 then
              begin
                XXZLSVN.Edit;
                XXZLSVN.FieldByName('YWPM').Value:=Qtemp.FieldByName('YWPM').Value;
                XXZLSVN.FieldByName('DWBH').Value:=Qtemp.FieldByName('DWBH').Value;
                XXZLSVN.Post;
              end;
            end;
          end;
        end;
        //
        if not XXZLSVN.FieldByName('CSBH').IsNull then
        begin
          if XXZLSVN.FieldByName('ZSYWJC').IsNull then
          begin
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select ZSYWJC from ZSZL where ZSDH='''+XXZLSVN.FieldByName('CSBH').Value+'''');
              active:=true;
              if RecordCount>0 then
              begin
                XXZLSVN.Edit;
                XXZLSVN.FieldByName('ZSYWJC').Value:=Qtemp.FieldByName('ZSYWJC').Value;
                XXZLSVN.Post;
              end;
            end;
          end;
        end;
        if (not XXZLSVN.FieldByName('FLBH').IsNull and not XXZLSVN.FieldByName('DFL').IsNull) then
        begin
          if XXZLSVN.FieldByName('XFL').IsNull then
          begin
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select XFL from XXBWFLS where FLBH='''+XXZLSVN.FieldByName('FLBH').Value+''' and DFL='''+XXZLSVN.FieldByName('DFL').Value+'''');
              active:=true;
              if RecordCount>0 then
              begin
                XXZLSVN.Edit;
                XXZLSVN.FieldByName('XFL').Value:=Qtemp.FieldByName('XFL').Value;
                XXZLSVN.Post;
              end;
            end;
          end;
        end;
        XXZLSVN.Next;
      end;
    end;
  end;  
end;

procedure TImportVNBOM.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    XXZLSVN.first;
    for i:=1 to XXZLSVN.RecordCount do
    begin
        case XXZLSVN.updatestatus of
        usinserted:
          begin
            if ((XXZLSVN.fieldbyname('XieXing').isnull)  or (XXZLSVN.fieldbyname('SheHao').isnull) or (XXZLSVN.fieldbyname('YWSM').isnull)
                or (XXZLSVN.fieldbyname('YWPM').isnull) or (XXZLSVN.fieldbyname('DWBH').isnull) or (XXZLSVN.fieldbyname('XFL').isnull) ) then
            begin
              showmessage('Pls full information ');
              abort;
            end;
            XXZLSVN.edit;
            XXZLSVN.FieldByName('userID').Value:=main.edit1.text;
            XXZLSVN.FieldByName('userdate').Value:=date;
            XXZLSVN.FieldByName('YN').Value:='1';
            UPXXZLSVN.apply(ukinsert);
            with VNBWFL do
            begin
              if not locate('BWBH',XXZLSVN.fieldbyname('BWBH').value,[]) then
              begin
                 VNBWFL.insert ;
                 VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                 VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                 VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                 VNBWFL.FieldByName('USERDATE').Value:=date;
                 VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                 VNBWFL.FieldByName('YN').Value:='1';
                 UpVNBWFL.Apply(ukinsert);
              end else
              begin
                 VNBWFL.edit ;
                 VNBWFL.FieldByName('XieXing').Value:=XXZLSVN.FieldByName('XieXing').Value;
                 VNBWFL.FieldByName('BWBH').Value:=XXZLSVN.FieldByName('BWBH').Value;
                 VNBWFL.FieldByName('FLBH').Value:=XXZLSVN.FieldByName('FLBH').Value;
                 VNBWFL.FieldByName('USERDATE').Value:=date;
                 VNBWFL.FieldByName('USERID').Value:=main.Edit1.Text;
                 VNBWFL.FieldByName('YN').Value:='1';
                 UpVNBWFL.Apply(ukmodify);
              end;
            end;
          end;
      end;
      XXZLSVN.next;
    end;
    XXZLSVN.active:=false;
    XXZLSVN.cachedupdates:=false;
    XXZLSVN.requestlive:=false;
    XXZLSVN.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TImportVNBOM.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if XXZLSVN.FieldByName('UserID').isnull then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TImportVNBOM.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
