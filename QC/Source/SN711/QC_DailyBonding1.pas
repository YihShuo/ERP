unit QC_DailyBonding1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables,
  GridsEh, DBGridEh, ComCtrls,comobj;

type
  TQC_DailyBonding = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Panel4: TPanel;
    RB1: TBitBtn;
    RB2: TBitBtn;
    RB3: TBitBtn;
    RB4: TBitBtn;
    RB5: TBitBtn;
    LabTS: TQuery;
    MasDS: TDataSource;
    LabTSS: TQuery;
    DetDS: TDataSource;
    LabTSSTSNO: TIntegerField;
    LabTSSSCBH: TStringField;
    LabTSSUserID: TStringField;
    LabTSSUserDate: TDateTimeField;
    LabTSSYN: TIntegerField;
    DBGridEh1: TDBGridEh;
    UpdLabTSS: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    tempQ: TQuery;
    QueryExcel: TQuery;
    QueryExcelTSNO: TIntegerField;
    QueryExcelRcDate: TDateTimeField;
    QueryExcelTSDate: TDateTimeField;
    QueryExcelDBNM: TStringField;
    QueryExcelStage: TStringField;
    QueryExcelkfjc: TStringField;
    QueryExcelDepName: TStringField;
    QueryExcelXieMing: TStringField;
    QueryExcelArticle: TStringField;
    QueryExcelSCBH: TStringField;
    QueryExcelSize: TStringField;
    QueryExcelUpMat: TStringField;
    QueryExcelDFL: TStringField;
    QueryExcelQty: TIntegerField;
    QueryExcelPass: TIntegerField;
    QueryExcelFail: TIntegerField;
    QueryExcelReTest: TIntegerField;
    QueryExcelStandard: TStringField;
    QueryExcelSender: TStringField;
    QueryExcelMemo: TStringField;
    LabTSTSNO: TIntegerField;
    LabTSDFL: TStringField;
    LabTSGSBH: TStringField;
    LabTSRcDate: TDateTimeField;
    LabTSTSDate: TDateTimeField;
    LabTSDBNM: TStringField;
    LabTSStage: TStringField;
    LabTSXieXing: TStringField;
    LabTSSheHao: TStringField;
    LabTSArticle: TStringField;
    LabTSSize: TStringField;
    LabTSQty: TIntegerField;
    LabTSPass: TIntegerField;
    LabTSUpMat: TStringField;
    LabTSCategory: TStringField;
    LabTSDepNO: TStringField;
    LabTSStandard: TStringField;
    LabTSReTest: TIntegerField;
    LabTSFailMm: TStringField;
    LabTSMemo: TStringField;
    LabTSSender: TStringField;
    LabTSPicture: TStringField;
    LabTSUserID: TStringField;
    LabTSUserDate: TDateTimeField;
    LabTSXieMing: TStringField;
    LabTSDepName: TStringField;
    LabTSkfjc: TStringField;
    LabTSYN: TIntegerField;
    UpdLabTS: TUpdateSQL;
    DFL: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure LabTSAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure RB5Click(Sender: TObject);
    procedure RB4Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
  
  private
      AppDir:string;
    { Private declarations }
     procedure ExportPlanFormatData();
     procedure ExportDefaultData();
  public
    { Public declarations }

    
  end;

var
  QC_DailyBonding: TQC_DailyBonding;

implementation

uses Department1, Article1, main1, Order1, TestItem_Standard1,QC_FailReasonList1;

{$R *.dfm}

procedure TQC_DailyBonding.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TQC_DailyBonding.FormDestroy(Sender: TObject);
begin
  QC_DailyBonding:=nil;
end;

procedure TQC_DailyBonding.Button1Click(Sender: TObject);
begin
  with LabTS do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('Select QC_LabTS.*,XXZL.XieMing,BDepartment.DepName,kfjc,1 as YN from QC_LabTS');
    SQL.Add('left join XXZL on QC_LabTS.XieXing=XXZL.XieXing and QC_LabTS.SheHao=XXZL.SheHao ');
    SQL.Add('left join BDepartment on BDepartment.ID=QC_LabTS.DepNO ');
    sql.Add('left join kfzl on xxzl.khdh=kfzl.kfdh');
    if edit4.Text<>'' then
      sql.Add('left join QC_labTSS on QC_LabTS.TSNO=QC_LabTSS.TSNO');
    sql.Add('where QC_labTS.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('and RcDate between');
    sql.Add(''''+formatdatetime('YYYY/MM/DD',dtp1.Date)+''' and ');
    sql.Add(''''+formatdatetime('YYYY/MM/DD',dtp2.Date)+'''');
    sql.Add('and QC_LabTS.article like '''+ edit1.text+'%''');
    sql.Add('and kfjc like '''+ edit2.text+'%''');
    if edit3.Text<>'' then
      sql.Add('and DBNM like '''+ edit3.text+'%''');
    if edit4.Text<>'' then
      sql.add('and SCBH ='''+ edit4.text+'''')  ;
    if DFL.Text<>'' then
    SQL.Add('and DFL='''+DFL.Text+''' ');
    sql.Add('Order by QC_LabTS.UserDate desc');
    Active:=true;
  end;
  ToolPanel.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TQC_DailyBonding.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
  bbt6.Enabled:=true;
end;

procedure TQC_DailyBonding.BB2Click(Sender: TObject);
begin
  with LabTS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    LabTS.FieldByName('TSNO').AsString:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[7].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[9].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[14].ButtonStyle:=cbsEllipsis;

end;

procedure TQC_DailyBonding.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQC_DailyBonding.BB3Click(Sender: TObject);
begin
  if LabTSS.RecordCount=0 then
    begin
      with LabTS do
        begin
          if fieldbyname('UserID').Value=main.Edit1.Text then
            begin
              requestlive:=true;
              cachedupdates:=true;
              edit;
              fieldbyname('YN').Value:='0';
           end
          else
            begin
              showmessage('It is not yours, can not delete!');
            end;
        end;
     end
    else
      begin
        showmessage('Pls delete the order detail first.')
      end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQC_DailyBonding.BB4Click(Sender: TObject);
begin
  with LabTS do
    begin
       if fieldbyname('UserID').Value=main.Edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
          end
      else
          begin
            showmessage('It is not yours, can not modify!');
          end;
     end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    DBGridEh1.Columns[3].ButtonStyle:=cbsEllipsis;
    DBGridEh1.Columns[7].ButtonStyle:=cbsEllipsis;
    DBGridEh1.Columns[9].ButtonStyle:=cbsEllipsis;
    DBGridEh1.Columns[14].ButtonStyle:=cbsEllipsis;
end;
procedure TQC_DailyBonding.BB6Click(Sender: TObject);
begin
  with LabTS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGridEh1.Columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[9].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[14].ButtonStyle:=cbsNone;  
end;

procedure TQC_DailyBonding.DBGridEh1EditButtonClick(Sender: TObject);
begin
 if DBGridEh1.SelectedField.FieldName='DepName' then
 begin
    Department:= TDepartment.create(self);
    Department.ShowModal();
    Department.Free;
 end;
 if DBGridEh1.SelectedField.FieldName='Article' then
 begin
    Article:=TArticle.create(self);
    Article.ShowModal();
    Article.Free;
 end;
 if DBGridEh1.SelectedField.FieldName='DFL' then
 begin
   TestItem_Standard:=TTestItem_Standard.Create(self);
   TestItem_Standard.showModal();
   TestItem_Standard.free;
 end;
 if DBGridEh1.SelectedField.FieldName='FailMm' then
 begin
   QC_FailReasonList:=TQC_FailReasonList.Create(self);
   QC_FailReasonList.showModal();
   QC_FailReasonList.free;
 end;

end;

procedure TQC_DailyBonding.BB5Click(Sender: TObject);
var i,TSNO:integer;
begin
    // check column is null
    with LabTS do
      begin
        first;
        while not Labts.Eof   do
          begin
            if LabTS.FieldByName('RcDate').IsNull then
              begin
                showmessage('Pls select RcDate!');
                abort;
              end;
            if LabTS.FieldByName('DFL').IsNull then
              begin
                showmessage('Pls select Tested Item!');
                abort;
              end;
           next;
          end;

      end;
    //
    LabTS.First;
    for i:=1 to LabTS.RecordCount do
    begin
      case LabTS.UpdateStatus of
      usinserted:
        begin
           with tempQ do
           begin
              active:=false;
              sql.Clear;
              sql.add('select top 1 TSNO from QC_LabTS order by TSNO desc');
              active:=true;
              if recordcount>0 then
              begin
                 TSNO:=fieldbyname('TSNO').Value+1
              end
              else
              begin
                TSNO:=1;
              end;
              active:=false;
           end;
           LabTS.Edit;
           LabTS.FieldByName('GSBH').Value:=main.Edit2.Text;
           LabTS.FieldByName('TSNO').Value:=TSNO;
       //    LabTS.FieldByName('TSDate').Value:=date;
       //    LabTS.FieldByName('Qty').Value:=1;   user input quantity
           LabTS.FieldByName('UserID').Value:=main.edit1.Text;
           LabTS.FieldByName('UserDate').Value:=now;
           LabTS.Post;
           updLabTS.Apply(ukinsert);
        end;
     usmodified:
      begin
      if (now-LabTS.FieldByName('userdate').Value)<=30  then  //20141018內部資料品管主管說先30
        begin
          if LabTS.FieldByName('YN').Value='0' then
            begin
              updLabTS.Apply(ukdelete);
            end
          else
            begin
              LabTS.Edit;
             // LabTS.FieldByName('TSDate').Value:=date;
              LabTS.FieldByName('UserID').Value:=main.edit1.Text;
              LabTS.FieldByName('UserDate').Value:=now;
              LabTS.Post;
              updLabTS.Apply(ukmodify);
            end;
        end
      else
        begin
          showmessage('Date >30, can not modify or delete!');
        end;
     end;

    end;
      LabTS.Next;
  end;
  LabTS.Active:=false;
  LabTS.RequestLive:=false;
  LabTS.CachedUpdates:=false;
  LabTS.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
  DBGridEh1.Columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[9].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[14].ButtonStyle:=cbsNone;
end;


procedure TQC_DailyBonding.LabTSAfterOpen(DataSet: TDataSet);
begin
    if  LabTS.RecordCount>0 then
      begin
        RB1.Enabled:=true;
        RB2.Enabled:=true;
        RB3.Enabled:=true;
      end
    else
      begin
        RB1.Enabled:=false;
        RB2.Enabled:=false;
        RB3.Enabled:=false;
      end;
end;

procedure TQC_DailyBonding.FormCreate(Sender: TObject);
begin
  LabTSS.Active:=true;
  dtp1.Date:=now-6;
  dtp2.Date:=now;
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TQC_DailyBonding.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if LabTS.FieldByName('YN').Value='0' then
    begin
        DBGridEh1.canvas.font.color:=clred;
        DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
  if (LabTS.FieldByName('TSNO').IsNull) or (LabTS.FieldByName('TSNO').AsString='0') then
    begin
     if ((DataCol = 0)) then
      begin
        DBGridEh1.canvas.Brush.color:=clAqua;
        DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
    end;
end;

procedure TQC_DailyBonding.RB1Click(Sender: TObject);
begin
  with LabTSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGridEh2.Columns[0].ButtonStyle:=cbsEllipsis;
  RB4.Enabled:=true;
  RB5.Enabled:=true;
end;

procedure TQC_DailyBonding.RB2Click(Sender: TObject);
begin
  with LabTSS do
    begin
      if fieldbyname('UserID').Value=main.Edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
         end
       else
        begin
          showmessage('It is not yours, can not delete!');
        end;
    end;
    DBGridEh2.Columns[0].ButtonStyle:=cbsEllipsis;
    RB4.Enabled:=true;
    RB5.Enabled:=true;
end;

procedure TQC_DailyBonding.RB3Click(Sender: TObject);
begin
  with LabTSS do
  begin
    if fieldbyname('UserID').Value=main.Edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end
    else
      begin
         showmessage('It is not yours, can not modify!');
      end;
  end;
   DBGridEh2.Columns[0].ButtonStyle:=cbsEllipsis;
   RB4.Enabled:=true;
   RB5.Enabled:=true;
end;

procedure TQC_DailyBonding.RB5Click(Sender: TObject);
begin
  with LabTSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  RB4.Enabled:=false;
  RB5.Enabled:=false;
end;

procedure TQC_DailyBonding.RB4Click(Sender: TObject);
var i:integer;
begin
   LabTSS.First;
   for i:=1 to LabTSS.RecordCount do
   begin
      case LabTSS.UpdateStatus of
      usinserted:
      begin
        LabTSS.Edit;
        LabTSS.FieldByName('TSNO').Value:=LabTS.FieldByName('TSNO').Value;
        LabTSS.FieldByName('UserID').Value:=main.Edit1.Text;
        LabTSS.FieldByName('UserDate').Value:=now;
        LabTSS.Post;
        updLabTSS.Apply(ukinsert);
      end;
      usmodified:
      begin
        if (now-LabTSS.FieldByName('UserDate').Value)<=30 then
          begin
            if LabTSS.FieldByName('YN').Value='0' then
              begin
                updLabTSS.Apply(ukdelete);
              end
             else
              begin
                LabTSS.Edit;
                LabTSS.FieldByName('UserID').Value:=main.Edit1.Text;
                LabTSS.FieldByName('UserDate').Value:=now;
                LabTSS.Post;
                updLabTSS.Apply(ukmodify);
              end;
          end
         else
          begin
            showmessage('Date>30, can not modify or delete!');
          end;
      end;
   end;
   LabTSS.Next;
  end;
   LabTSS.Active:=false;
   LabTSS.RequestLive:=false;
   LabTSS.CachedUpdates:=false;
   LabTSS.Active:=true;
   RB4.Enabled:=false;
   RB5.Enabled:=false;
end;



procedure TQC_DailyBonding.DBGridEh2EditButtonClick(Sender: TObject);
begin
 if DBGridEh2.SelectedField.FieldName='SCBH' then
  begin
    Order:=TOrder.create(self);
    Order.ShowModal();
    Order.Free;
  end;
end;

procedure TQC_DailyBonding.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if LabTSS.FieldByName('YN').Value='0' then
    begin
      DBGridEh2.canvas.font.color:=clred;
      DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;



procedure TQC_DailyBonding.bbt6Click(Sender: TObject);
begin
if  Messagedlg(Pchar('Export Excel Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportPlanFormatData();
  end else
  begin
    ExportDefaultData();
  end;
end;
procedure TQC_DailyBonding.ExportDefaultData();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    RY:string;
begin
   if  LabTS.active  then
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
          for   i:=0   to   LabTS.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=LabTS.fields[i].FieldName;
            end;

          LabTS.First;
          j:=2;
          while   not   LabTS.Eof   do
            begin
              for   i:=0   to  LabTS.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=LabTS.Fields[i].Value;
              end;
            LabTS.Next;
            inc(j);
            end;


         //  add outline
          for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
            end;
         //
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
procedure TQC_DailyBonding.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
    RY:string;
begin
 if FileExists(AppDir+'Additional\BONDING_FLEXING.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\BONDING_FLEXING.xls'),Pchar(AppDir+'Additional\BONDING_FLEXING.xls'),false);
   end;
   if FileExists(AppDir+'Additional\BONDING_FLEXING.xls') then
   begin
      if  LabTS.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\BONDING_FLEXING.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          index:=0;
          Hoffset:=1;
          Voffset:=3;

          LabTS.First;
          for i:=1 to LabTS.RecordCount do
          begin
            eclApp.Cells(Voffset+index,1):=inttostr(i);
            eclApp.Cells(Voffset+index,2):=LabTS.FieldByName('RcDate').Value;
            eclApp.Cells(Voffset+index,3):=LabTS.FieldByName('TSDate').Value;
            eclApp.Cells(Voffset+index,4):=LabTS.FieldByName('DBNM').Value;
            eclApp.Cells(Voffset+index,5):=LabTS.FieldByName('Stage').Value;
            eclApp.Cells(Voffset+index,6):=LabTS.FieldByName('kfjc').Value;
            eclApp.Cells(Voffset+index,7):=LabTS.FieldByName('Category').Value;
            eclApp.Cells(Voffset+index,8):=LabTS.FieldByName('DepName').Value;
            eclApp.Cells(Voffset+index,9):=LabTS.FieldByName('XieMing').Value;
            eclApp.Cells(Voffset+index,10):=LabTS.FieldByName('Article').Value;
            //RY list
            RY:='';
            LabTSS.First;
            for j:=1 to LabTSS.RecordCount do
            begin
              RY:=RY+LabTSS.FieldByName('SCBH').AsString+',';   //Ex. AL1409-001,
              LabTSS.Next;
            end;
            eclApp.Cells(Voffset+index,11):=Copy(RY,1,length(RY)-1);
            eclApp.Cells(Voffset+index,12):=LabTS.FieldByName('Size').Value;
            eclApp.Cells(Voffset+index,13):=LabTS.FieldByName('UpMat').Value;
            eclApp.Cells(Voffset+index,14):=LabTS.FieldByName('DFL').Value;
            eclApp.Cells(Voffset+index,15):=LabTS.FieldByName('Qty').Value;
            eclApp.Cells(Voffset+index,16):=LabTS.FieldByName('Pass').Value;
            eclApp.Cells(Voffset+index,17):=LabTS.FieldByName('Qty').Value-LabTS.FieldByName('Pass').Value;
            eclApp.Cells(Voffset+index,18):=LabTS.FieldByName('FailMm').Value;
            eclApp.Cells(Voffset+index,19):=LabTS.FieldByName('ReTest').Value;
            eclApp.Cells(Voffset+index,20):=LabTS.FieldByName('Standard').Value;
            eclApp.Cells(Voffset+index,21):=LabTS.FieldByName('Sender').Value;
            eclApp.Cells(Voffset+index,22):=LabTS.FieldByName('Picture').Value;
            eclApp.Cells(Voffset+index,23):=LabTS.FieldByName('Memo').Value;
            LabTS.Next;
            inc(index);
          end;
          // add outline
          for k:=1 to 4 do
            begin
                  eclApp.range[eclApp.cells[3,1],eclApp.cells[i+1,23]].borders[k].linestyle:=1;
            end;
          //

          showmessage('Succeed');
          eclApp.Visible:=True;
        except
            on   F:Exception   do
              showmessage(F.Message);
        end;
      end;
   end;

end;
end.
