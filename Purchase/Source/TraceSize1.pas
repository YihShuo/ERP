unit TraceSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, Comobj;

type
  TTraceSize = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    Panel2: TPanel;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    TS4: TTabSheet;
    Panel3: TPanel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    Panel5: TPanel;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel7: TPanel;
    DS5: TDataSource;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSQty: TCurrencyField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetVNPrice: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBJNO: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    DS4: TDataSource;
    DS3: TDataSource;
    CGMas: TQuery;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    tmpQuery: TQuery;
    UPDet: TUpdateSQL;
    UpOrdMat: TUpdateSQL;
    CGSArticle: TStringField;
    CGSAdate: TDateTimeField;
    CGSdepname: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    BO6: TBitBtn;
    ImportETDBtn: TButton;
    InfoLable: TLabel;
    OpenDialog: TOpenDialog;
    Splitter1: TSplitter;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Check: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    CGSMaterialETC: TDateTimeField;
    ImportETCBtn: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BO6Click(Sender: TObject);
    procedure ImportETDBtnClick(Sender: TObject);
    procedure ImportETCBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceSize: TTraceSize;
  NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TTraceSize.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS4;
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
end;

procedure TTraceSize.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TTraceSize.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CGZL.ZSBH like ');
    sql.add(''''+edit2.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add('''%'+edit3.Text+'%''');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''2''');
    if Check.Checked then
    begin
      sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    end;    
    sql.add('order by CGZL.CGNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  CGDet.Active:=true;
end;

procedure TTraceSize.FormCreate(Sender: TObject);
begin
  with tmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
end;

procedure TTraceSize.BB4Click(Sender: TObject);
begin
  PC1.ActivePage:=TS4;
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TTraceSize.BB5Click(Sender: TObject);
var i:integer;
    isUpdate:boolean;
begin
try
  CGS.Active:=false;
  CGDet.first;
  for i:=1 to CGDet.RecordCount do
    begin
      if CGDet.updatestatus=usmodified then
      begin
          with tmpQuery do
          begin
             Active:=false;
             sql.Clear;
             sql.add('Select CGNO from CGZLSS where CFMDate is not null ');
              sql.add('and CGNO='''+CGDet.FieldByName('CGNO').Value+''' ');
              sql.add('and CLBH='''+CGDet.FieldByName('CLBH').Value+''' ');
              active:=true;
              if RecordCount>0 then
              begin
                if messagedlg('Do you want to override CFDate ',mtCustom,[mbYes,mbNO], 0)=mrYes then isUpdate:=true else isUpdate:=false;
              end;
              active:=false;
          end;
          if isUpdate=true then
          with tmpQuery do
          begin
              active:=false;
              sql.Clear;
              sql.add('update CGZLSS set CFMDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('CFMdate').Value)+'''');
              sql.add(', YQDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('YQdate').Value)+'''');
              sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
              sql.add(',USERID='+''''+CGDet.FieldByName('USERID').Value+'''');
              sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
              sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
              execsql;
              close;
          end;
          CGDet.edit;
          CGDet.FieldByName('userID').Value:=main.edit1.text;
          CGDet.FieldByName('userdate').Value:=date;
          upDet.apply(ukmodify);
      end;
      CGDet.next;
    end;
    CGDet.active:=false;
    CGDet.cachedupdates:=false;
    CGDet.requestlive:=false;
    CGDet.active:=true;
    CGS.Active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    CGS.Active:=true;
  end;
end;

procedure TTraceSize.BB6Click(Sender: TObject);
begin 
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TTraceSize.BBT1Click(Sender: TObject);
begin
  CGDet.first;
end;

procedure TTraceSize.BBT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TTraceSize.BBT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TTraceSize.BBT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TTraceSize.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TTraceSize.CGDetAfterOpen(DataSet: TDataSet);
begin
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  CGS.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  if CGDet.recordcount>0 then
  begin
    CGS.Active:=true;
    BO5.Enabled:=true;
    BO6.Enabled:=true;
  end ;

end;

procedure TTraceSize.Edit1KeyPress(Sender: TObject; var Key: Char);
begin  
  if key=#13 then
  edit2.SetFocus;
end;

procedure TTraceSize.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TTraceSize.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TTraceSize.BO3Click(Sender: TObject);
var i:integer;
MDate:TDate;
begin
  try
  CGs.first;
  for i:=1 to CGs.RecordCount do
    begin
      case CGs.updatestatus of
      usmodified:
        begin
          with tmpQuery do
          begin
              active:=false;
              sql.Clear;
              sql.add('update CGZLSS set CFMDate='+''''+formatdatetime('yyyy/mm/dd',CGS.fieldbyname('CFMDate').Value)+'''');
              sql.add(', YQDate='+''''+formatdatetime('yyyy/mm/dd',CGS.fieldbyname('YQDate').Value)+'''');
              sql.add(', MaterialETC='+''''+formatdatetime('yyyy/mm/dd',CGS.fieldbyname('MaterialETC').Value)+'''');
              sql.add(',USERDATE='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
              sql.add(',USERID='+''''+main.edit1.Text+'''');
              sql.add('where CGZLSS.CGNO='+''''+CGS.fieldbyname('CGNO').Value+'''');
              sql.add('and CGZLSS.CLBH='+''''+CGS.fieldbyname('CLBH').Value+'''');
              sql.add('and CGZLSS.ZLBH='+''''+CGS.fieldbyname('ZLBH').Value+'''');
              execsql;
              close;
          end;
          CGs.edit;
        end;
      end;
      CGs.next;
    end;
  CGs.active:=false;
  CGs.cachedupdates:=false;
  CGs.requestlive:=false;
  CGs.active:=true;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BB4.Enabled:=true;
  BB7.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
end;

procedure TTraceSize.BO4Click(Sender: TObject);
begin
  with CGs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BB4.Enabled:=true;
  BB7.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
end;

procedure TTraceSize.BO5Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with CGs do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BB4.Enabled:=false;
  BB7.Enabled:=false;
  BBT1.Enabled:=false;
  BBT2.Enabled:=false;
  BBT3.Enabled:=false;
  BBT4.Enabled:=false;
end;

procedure TTraceSize.FormDestroy(Sender: TObject);
begin
  TraceSize:=nil;
end;

procedure TTraceSize.DBGridEh1DblClick(Sender: TObject);
begin
  if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
      end;
  end;
end;

procedure TTraceSize.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TTraceSize.BO6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
      IsExoportAll:boolean;
 begin
  if  CGS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      //是否匯出全部資料
      if messagedlg('Excel all material list?',mtinformation,[mbYes,mbNo],0)=mrYes then
        IsExoportAll:=true
      else
        IsExoportAll:=false;
      //
      if IsExoportAll=false then
      begin
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CGS.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=CGS.fields[i].FieldName;
        end;

        CGS.First;
        j:=2;
        while   not   CGS.Eof   do
        begin
          for   i:=0   to  CGS.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGS.Fields[i].Value;
          end;
          CGS.Next;
          inc(j);
        end;
       end else
       begin
        //全部資料
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CGS.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=CGS.fields[i].FieldName;
        end;
        //
        CGDet.First;
        j:=2;
        while not CGDet.Eof do
        begin
          CGS.First;
          while   not   CGS.Eof   do
          begin
            for   i:=0   to  CGS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGS.Fields[i].Value;
            end;
            CGS.Next;
            inc(j);
          end;
          CGDet.Next;
        end;
        //
       end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TTraceSize.ImportETDBtnClick(Sender: TObject);
var OrderListExcel:Variant;
    OrderExcFN,ZLBH,CLBH,CFMDate,CGNO,ColumnNM:string;
    offset,RowSIndex:integer;
    ZLBH_index,CLBH_index,CFMDate_index,CGNO_index:integer;
    Isbreak:boolean;
begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
      if OpenDialog.Execute=true then
      begin
        ZLBH_index:=-1;
        CLBH_index:=-1;
        CFMDate_index:=-1;
        CGNO_index:=-1;
        //開啟Excel
        OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
        OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
        OrderListExcel.WorkSheets[1].Activate;//第一頁為主
        //
        offset:=0;
        RowSIndex:=1;
        //找到紀錄Excel 欄位是在哪一列
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,1];
          if ColumnNM='ZLBH' then ZLBH_index:=1; if ColumnNM='CLBH' then CLBH_index:=1; if ColumnNM='CFMDate' then CFMDate_index:=1; if ColumnNM='CGNO' then CGNO_index:=1;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,2];
          if ColumnNM='ZLBH' then ZLBH_index:=2; if ColumnNM='CLBH' then CLBH_index:=2; if ColumnNM='CFMDate' then CFMDate_index:=2; if ColumnNM='CGNO' then CGNO_index:=2;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,3];
          if ColumnNM='ZLBH' then ZLBH_index:=3; if ColumnNM='CLBH' then CLBH_index:=3; if ColumnNM='CFMDate' then CFMDate_index:=3; if ColumnNM='CGNO' then CGNO_index:=3;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,4];
          if ColumnNM='ZLBH' then ZLBH_index:=4; if ColumnNM='CLBH' then CLBH_index:=4; if ColumnNM='CFMDate' then CFMDate_index:=4; if ColumnNM='CGNO' then CGNO_index:=4;
        //
        if ((ZLBH_index>0) and (CLBH_index>0) and (CFMDate_index>0) and (CGNO_index>0) ) then
        begin
          //開始更新
          Isbreak:=false;
          RowSIndex:=1;
          repeat
             Application.ProcessMessages;
             InfoLable.Caption:='Count:'+inttostr(RowSIndex);
             RowSIndex:=RowSIndex+1;
             //Progress
             ZLBH:=OrderListExcel.Cells[RowSIndex+offset,ZLBH_index];
             CLBH:=OrderListExcel.Cells[RowSIndex+offset,CLBH_index];
             CFMDate:=OrderListExcel.Cells[RowSIndex+offset,CFMDate_index];
             CGNO:=OrderListExcel.Cells[RowSIndex+offset,CGNO_index];
             //
             if ((trim(ZLBH)<>'') and (trim(CLBH)<>'') and (trim(CFMDate)<>'') and (trim(CGNO)<>'')) then
             begin
               with tmpQuery do
               begin
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('Update CGZLSS set CFMDate='''+CFMDate+''' where CGNO='''+CGNO+''' and ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and Convert(smalldatetime,'''+CFMDate+''')>GetDate()-180 and CGNO=(select CGNO from CGZL where CGNO='''+CGNO+''' and USERID='''+main.Edit1.Text+''')  ');
                 //funcObj.WriteErrorLog(sql.Text);
                 ExecSQL;
               end;
             end;
             //
             if ((trim(ZLBH)='') or (trim(CLBH)='') or (trim(CFMDate)='') or (trim(CGNO)='')) then  Isbreak:=true;
             //
          until IsBreak=true;
          OrderListExcel.Quit;
          Showmessage('Success');
        end else
        begin
          OrderListExcel.Quit;
          Showmessage('Excel not exact format!');
        end;
      end;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        OrderListExcel.Quit;
        Exit;
      end;
    end;

end;

procedure TTraceSize.ImportETCBtnClick(Sender: TObject);
var OrderListExcel:Variant;
    OrderExcFN,ZLBH,CLBH,ETCDate,CGNO,ColumnNM:string;
    offset,RowSIndex:integer;
    ZLBH_index,CLBH_index,ETCDate_index,CGNO_index:integer;
    Isbreak:boolean;
begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
      if OpenDialog1.Execute=true then
      begin
        ZLBH_index:=-1;
        CLBH_index:=-1;
        ETCDate_index:=-1;
        CGNO_index:=-1;
        //開啟Excel
        OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
        OrderListExcel.WorkBooks.Open(OpenDialog1.FileName);
        OrderListExcel.WorkSheets[1].Activate;//第一頁為主
        //
        offset:=0;
        RowSIndex:=1;
        //找到紀錄Excel 欄位是在哪一列
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,1];
          if ColumnNM='ZLBH' then ZLBH_index:=1; if ColumnNM='CLBH' then CLBH_index:=1; if ColumnNM='MaterialETC' then ETCDate_index:=1; if ColumnNM='CGNO' then CGNO_index:=1;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,2];
          if ColumnNM='ZLBH' then ZLBH_index:=2; if ColumnNM='CLBH' then CLBH_index:=2; if ColumnNM='MaterialETC' then ETCDate_index:=2; if ColumnNM='CGNO' then CGNO_index:=2;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,3];
          if ColumnNM='ZLBH' then ZLBH_index:=3; if ColumnNM='CLBH' then CLBH_index:=3; if ColumnNM='MaterialETC' then ETCDate_index:=3; if ColumnNM='CGNO' then CGNO_index:=3;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,4];
          if ColumnNM='ZLBH' then ZLBH_index:=4; if ColumnNM='CLBH' then CLBH_index:=4; if ColumnNM='MaterialETC' then ETCDate_index:=4; if ColumnNM='CGNO' then CGNO_index:=4;
        //
        if ((ZLBH_index>0) and (CLBH_index>0) and (ETCDate_index>0) and (CGNO_index>0) ) then
        begin
          //開始更新
          Isbreak:=false;
          RowSIndex:=1;
          repeat
             Application.ProcessMessages;
             InfoLable.Caption:='Count:'+inttostr(RowSIndex);
             RowSIndex:=RowSIndex+1;
             //Progress
             ZLBH:=OrderListExcel.Cells[RowSIndex+offset,ZLBH_index];
             CLBH:=OrderListExcel.Cells[RowSIndex+offset,CLBH_index];
             ETCDate:=OrderListExcel.Cells[RowSIndex+offset,ETCDate_index];
             CGNO:=OrderListExcel.Cells[RowSIndex+offset,CGNO_index];
             //
             if ((trim(ZLBH)<>'') and (trim(CLBH)<>'') and (trim(ETCDate)<>'') and (trim(CGNO)<>'')) then
             begin
               with tmpQuery do
               begin
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('Update CGZLSS set MaterialETC='''+ETCDate+''' where CGNO='''+CGNO+''' and ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and Convert(smalldatetime,'''+ETCDate+''')>GetDate()-180 and CGNO=(select CGNO from CGZL where CGNO='''+CGNO+''' and USERID='''+main.Edit1.Text+''')  ');
                 //funcObj.WriteErrorLog(sql.Text);
                 ExecSQL;
               end;
             end;
             //
             if ((trim(ZLBH)='') or (trim(CLBH)='') or (trim(ETCDate)='') or (trim(CGNO)='')) then  Isbreak:=true;
             //
          until IsBreak=true;
          OrderListExcel.Quit;
          Showmessage('Success');
        end else
        begin
          OrderListExcel.Quit;
          Showmessage('Excel not exact format!');
        end;
      end;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        OrderListExcel.Quit;
        Exit;
      end;
    end;
end;

end.
