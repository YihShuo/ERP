unit QC_FinishShoeStandard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB,
  DBTables,comobj;

type
  TQC_FinishShoeStandard = class(TForm)
    Panel1: TPanel;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    ToolPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BtbItem: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    FGDT: TQuery;
    FGDTFGNO: TIntegerField;
    FGDTSCDate: TDateTimeField;
    FGDTDepNo: TStringField;
    FGDTUSERID: TStringField;
    FGDTUSERDATE: TDateTimeField;
    FGDTYN: TStringField;
    DS_FGDT: TDataSource;
    FGDTDepName: TStringField;
    FGDTS: TQuery;
    DS_FGDTS: TDataSource;
    FGDTSFGNO: TIntegerField;
    FGDTSYYBH: TStringField;
    FGDTSTime: TStringField;
    FGDTSCC: TStringField;
    FGDTSStandard: TFloatField;
    FGDTSActual: TFloatField;
    FGDTSUSERID: TStringField;
    FGDTSUSERDATE: TDateTimeField;
    FGDTSYN: TStringField;
    FGDTSYWSM: TStringField;
    FGDTSZWSM: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    BB6: TBitBtn;
    BB5: TBitBtn;
    RightPanel: TPanel;
    Panel3: TPanel;
    RB1: TBitBtn;
    RB2: TBitBtn;
    RB3: TBitBtn;
    RB4: TBitBtn;
    DBGridEh1: TDBGridEh;
    UpdFGDT: TUpdateSQL;
    UpdFGDTS: TUpdateSQL;
    tempQ: TQuery;
    BB2: TBitBtn;
    BBInsert: TBitBtn;
    Query1: TQuery;
    LeftPanel: TPanel;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    FGDTSZLBH: TStringField;
    FGDTSArticle: TStringField;
    FGDTGSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BtbItemClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FGDTAfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure RB4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RB3Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultData();
    procedure ExportPlanFormatData();
  public
    { Public declarations }
  end;

var
  QC_FinishShoeStandard: TQC_FinishShoeStandard;
  
implementation

uses main1  ,QC_FinishShoe_StandardItem1;

{$R *.dfm}

procedure TQC_FinishShoeStandard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TQC_FinishShoeStandard.FormDestroy(Sender: TObject);
begin
   QC_FinishShoeStandard:=nil;
end;

procedure TQC_FinishShoeStandard.BtbItemClick(Sender: TObject);
begin
   //編輯項目
   if QC_FinishShoe_StandardItem<>nil then
    begin
      QC_FinishShoe_StandardItem.show;
      QC_FinishShoe_StandardItem.windowstate:=wsmaximized;
    end
    else
    begin
      QC_FinishShoe_StandardItem:=TQC_FinishShoe_StandardItem.create(self);
      QC_FinishShoe_StandardItem.show;
    end;
end;

procedure TQC_FinishShoeStandard.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQC_FinishShoeStandard.BB1Click(Sender: TObject);
begin
  toolpanel.Visible:=true;
end;

procedure TQC_FinishShoeStandard.Button1Click(Sender: TObject);
begin
  //
  with FGDT do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QC_FGDT.*, DepName');
    sql.Add('from QC_FGDT left join bdepartment on QC_FGDT.DepNo=bdepartment.ID');
    sql.Add('where QC_FGDT.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('and ScDate between');
    sql.Add(''''+formatdatetime('YYYY/MM/DD',dtp1.Date)+''' and ');
    sql.Add(''''+formatdatetime('YYYY/MM/DD',dtp2.Date)+'''');
    sql.add('and depname like ''%'+edit1.Text+'%'+'''');
    SQL.Add('Order by SCDate,DepNo');
    Active:=true;
  end;
 FGDTS.Active:=true;
 bbt1.Enabled:=true;
 bbt2.Enabled:=true;
 bbt3.Enabled:=true;
 bbt4.Enabled:=true;
 bbt6.Enabled:=true;
 BB3.Enabled:=true;
 //
end;

procedure TQC_FinishShoeStandard.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  dtp1.Date:=now-6;
  dtp2.Date:=now;
end;

procedure TQC_FinishShoeStandard.BBT1Click(Sender: TObject);
begin
  FGDT.First;
end;

procedure TQC_FinishShoeStandard.BBT2Click(Sender: TObject);
begin
  FGDT.Prior;
end;

procedure TQC_FinishShoeStandard.BBT3Click(Sender: TObject);
begin
 FGDT.Next;
end;

procedure TQC_FinishShoeStandard.BBT4Click(Sender: TObject);
begin
 FGDT.Last;
end;

procedure TQC_FinishShoeStandard.FGDTAfterOpen(DataSet: TDataSet);
begin
 if  FGDT.RecordCount>0 then
      begin
        RB1.Enabled:=true;
        RB2.Enabled:=true;
      end
    else
      begin
        RB1.Enabled:=false;
        RB2.Enabled:=false;
      end;
end;

procedure TQC_FinishShoeStandard.BB3Click(Sender: TObject);
begin
 if FGDTS.RecordCount=0 then
    begin
      with FGDT do
        begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
         end;
     end
    else
      begin
        showmessage('Pls delete the order detail first.')
      end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQC_FinishShoeStandard.BB4Click(Sender: TObject);
begin
   with FGDT do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh2.Columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TQC_FinishShoeStandard.BB6Click(Sender: TObject);
begin
  with FGDT do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
end;

procedure TQC_FinishShoeStandard.DBGridEh2EditButtonClick(Sender: TObject);
begin
  {
  if DBGridEh2.SelectedField.FieldName='DepName' then
   begin
      QC_FinishShoe_Department:=TQC_FinishShoe_Department.create(self);
      QC_FinishShoe_Department.SetFormFlag('SN712');
      QC_FinishShoe_Department.showmodal();
      QC_FinishShoe_Department.free;
   end;
  }
end;

procedure TQC_FinishShoeStandard.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if FGDT.FieldByName('YN').Value='0' then
    begin
        DBGridEh2.canvas.font.color:=clred;
        DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TQC_FinishShoeStandard.BB5Click(Sender: TObject);
var i:integer;
begin
  FGDT.First;
  for i:=1 to FGDT.RecordCount do
  begin
    case FGDT.UpdateStatus of
    usmodified:
    begin
    if (now-FGDT.FieldByName('userdate').Value)<=3  then
      begin
        if FGDT.FieldByName('YN').Value='0' then
          begin
            updFGDT.Apply(ukdelete);
          end
        else
          begin
            FGDT.Edit;
            with tempQ do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select * from QC_FGDT');
              sql.add('where depno='+#39+FGDT.fieldbyname('DepNo').Value+#39);
              sql.Add('and scdate='+#39+Formatdatetime('YYYY/MM/DD',FGDT.fieldbyname('SCdate').Value)+#39);
              active:=true;
              if tempQ.RecordCount>0 then
                begin
                    showmessage('Department already exist ! Pls select other department');
                end
              else
                begin
                  FGDT.FieldByName('UserID').Value:=main.edit1.Text;
                  FGDT.FieldByName('UserDate').Value:=now;
                  FGDT.Post;
                  updFGDT.Apply(ukmodify);
                end;
            end;

          end;
      end
    else
      begin
        showmessage('Date >3, can not modify or delete!');
      end;
   end;

  end;
    FGDT.Next;
end;
    FGDT.Active:=false;
    FGDT.RequestLive:=false;
    FGDT.CachedUpdates:=false;
    FGDT.Active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
end;

procedure TQC_FinishShoeStandard.BBInsertClick(Sender: TObject);
begin
  with FGDTS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle:=cbsEllipsis;
  RB3.Enabled:=true;
  RB4.Enabled:=true;
  
end;

procedure TQC_FinishShoeStandard.RB1Click(Sender: TObject);
begin
   with FGDTS do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
   RB3.Enabled:=true;
   RB4.Enabled:=true;
end;

procedure TQC_FinishShoeStandard.RB2Click(Sender: TObject);
begin
  with FGDTS do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
   DBGridEh1.Columns[5].Color:=clyellow;
   DBGridEh1.Columns[6].Color:=clyellow;
   RB3.Enabled:=true;
   RB4.Enabled:=true;
end;

procedure TQC_FinishShoeStandard.RB4Click(Sender: TObject);
begin
  with FGDTs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  RB3.Enabled:=false;
  RB4.Enabled:=false;
  DBGridEh1.Columns[5].Color:=clWindow;
  DBGridEh1.Columns[6].Color:=clWindow;
end;

procedure TQC_FinishShoeStandard.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if FGDTs.FieldByName('YN').Value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQC_FinishShoeStandard.RB3Click(Sender: TObject);
var j:integer;
begin

  FGDTs.First;
  for j:=1 to FGDTs.RecordCount do
  begin
    case FGDTs.UpdateStatus of
      usinserted:
      begin
          FGDTs.Edit;
          FGDTs.FieldByName('FGNO').Value:=FGDT.fieldbyname('FGNO').Value;
          FGDTs.FieldByName('Time').AsString:=formatdatetime('HH:MM:SS',now);
          FGDTS.FieldByName('Standard').Value:=formatfloat('#,##0.#',FGDTS.fieldbyname('Standard').AsFloat);
          FGDTS.FieldByName('Actual').Value:=formatfloat('#,##0.#',FGDTS.fieldbyname('Actual').AsFloat);
          FGDTs.FieldByName('UserID').Value:=main.edit1.Text;
          FGDTs.FieldByName('UserDate').Value:=now;
          FGDTS.FieldByName('YN').Value:=1;
          FGDTs.Post;
          updFGDTs.Apply(ukinsert);
      end;
      usmodified:
      begin
        if (now-FGDTs.FieldByName('userdate').Value)<=15  then
        begin
          if FGDTs.FieldByName('YN').Value='0' then
            begin
              updFGDTs.Apply(ukdelete);
            end
          else
            begin
              FGDTs.Edit;
              FGDTS.FieldByName('Standard').Value:=formatfloat('#,##0.#',FGDTS.fieldbyname('Standard').AsFloat);
              FGDTS.FieldByName('Actual').Value:=formatfloat('#,##0.#',FGDTS.fieldbyname('Actual').AsFloat);
              FGDTs.FieldByName('UserID').Value:=main.edit1.Text;
              FGDTs.FieldByName('UserDate').Value:=now;
              FGDTs.Post;
              updFGDTs.Apply(ukmodify);
           end;
        end else
        begin
          showmessage('Date >15, can not modify or delete!');
        end;
      end;
    end;
    FGDTs.Next;
  end;
  //
  FGDTs.Active:=false;
  FGDTs.RequestLive:=false;
  FGDTs.CachedUpdates:=false;
  FGDTs.Active:=true;
  RB3.Enabled:=false;
  RB4.Enabled:=false;
  DBGridEh1.Columns[5].Color:=clWindow;
  DBGridEh1.Columns[6].Color:=clWindow;
end;
//
procedure TQC_FinishShoeStandard.bbt6Click(Sender: TObject);
begin
//
  if  Messagedlg(Pchar('Export Excel Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportPlanFormatData();
  end else
  begin
    ExportDefaultData();
  end;
//
end;

//
procedure TQC_FinishShoeStandard.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,h:integer;
    DateStr,DepName,TimeStr:string;
    ValueRange:Double;
begin
 if FileExists(AppDir+'Additional\FGS_Standard.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\FGS_Standard.xls'),Pchar(AppDir+'Additional\FGS_Standard.xls'),false);
   end;
   if FileExists(AppDir+'Additional\FGS_Standard.xls') then
   begin
      if  FGDT.Active  then
      begin
        if FGDT.RecordCount>0 then
        begin
          try
            eclApp:=CreateOleObject('Excel.Application');
            WorkBook:=CreateOleObject('Excel.Sheet');
            eclApp.DisplayAlerts := False;
          except
            Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
            Exit;
          end;
          try
            eclApp.WorkBooks.Open(AppDir+'Additional\FGS_Standard.xls');
            eclApp.WorkSheets[1].Activate;//第一頁為主
            //
            h:=0;
            FGDT.First;
            eclApp.WorkSheets[1].Activate; //預設第一分頁
            DepName:='';   //Department
            DateStr:=''; //TSCDate
            for i:=1 to FGDT.RecordCount do
            begin
              if (  ((DateStr='') and (DepName='')) or ((FGDT.FieldByName('SCDate').AsString<>DateStr) or (FGDT.FieldByName('DepName').AsString<>DepName)) ) then
              begin
                Inc(h);
                eclApp.WorkSheets[h].Copy(After:=eclApp.WorkSheets[h]);  //複製分頁
              end;
              DepName:=FGDT.FieldByName('DepName').AsString;
              DateStr:=FGDT.FieldByName('SCDate').AsString;
              //Sheet Name
              eclApp.workbooks[1].sheets[h].name:=FormatDatetime('MMDD',FGDT.FieldByName('SCDate').AsDateTime)+'_'+Copy(FGDT.FieldByName('DepName').AsString,1,length(FGDT.FieldByName('DepName').AsString)-2);//分頁Sheet抬頭
              //Department資訊
              eclApp.workbooks[1].sheets[h].Cells[2,12]:=FGDT.FieldByName('DepName').AsString;
              //Date日期
              eclApp.workbooks[1].sheets[h].Cells[2,22]:=FormatDatetime('YYYY/MM/DD',FGDT.FieldByName('SCDate').Value);
              //
              j:=-1;
              TimeStr:='';
              FGDTS.First;
              while not FGDTS.Eof do
              begin
                //時間
                if ((TimeStr='') or (FGDTS.FieldByName('Time').AsString<>TimeStr)) then  Inc(j);  //水平位移
                TimeStr:=FGDTS.FieldByName('Time').AsString;
                eclApp.workbooks[1].sheets[h].Cells[3,4+j*3]:=Copy(FGDTS.FieldByName('Time').AsString,1,5);
                //Article
                eclApp.workbooks[1].sheets[h].Cells[4,3+j*3]:=FGDTS.FieldByName('Article').AsString;
                //Size
                eclApp.workbooks[1].sheets[h].Cells[5,3+j*3]:=FGDTS.FieldByName('CC').AsString;
                //Item
                eclApp.workbooks[1].sheets[h].Cells[strtoint(FGDTS.FieldByName('YYBH').AsString)+6,2+j*3]:=FGDTS.FieldByName('Standard').AsString;
                eclApp.workbooks[1].sheets[h].Cells[strtoint(FGDTS.FieldByName('YYBH').AsString)+6,3+j*3]:=FGDTS.FieldByName('Actual').AsString;
                if FGDTS.FieldByName('Actual').AsFloat>FGDTS.FieldByName('Standard').AsFloat then
                begin
                  ValueRange:=FGDTS.FieldByName('Actual').AsFloat-FGDTS.FieldByName('Standard').AsFloat;
                  //if ValueRange/FGDTS.FieldByName('Standard').AsFloat>0.01 then//顯示顏色用
                end else
                begin
                  ValueRange:=FGDTS.FieldByName('Standard').AsFloat-FGDTS.FieldByName('Actual').AsFloat;
                  //if ValueRange/FGDTS.FieldByName('Actual').AsFloat>0.01 then
                end;
                eclApp.workbooks[1].sheets[h].Cells[strtoint(FGDTS.FieldByName('YYBH').AsString)+6,4+j*3]:=ValueRange;

                //
                //
                FGDTS.Next;
              end;
              FGDT.Next;
            end;
            // add outline
            eclApp.WorkSheets[1].Activate; //預設第一分頁
            //刪除最後一頁版面
            eclApp.Workbooks[1].sheets[h+1].Delete;
            showmessage('Succeed');
            eclApp.Visible:=True;

          except
            on  F:Exception   do
            begin
              eclApp.quit;
              showmessage(F.Message);
            end;
          end;
        end;
      end;
   end;
end;
//
procedure TQC_FinishShoeStandard.ExportDefaultData();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    RY:string;
begin
   if  FGDTS.active  then
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
          //Master
          eclApp.Cells(1,1):=DBGridEh2.Columns[0].Title.Caption;
          eclApp.Cells(1,2):=DBGridEh2.Columns[1].Title.Caption;
          //Detail
          for   i:=0   to   FGDTS.fieldcount-1   do
          begin
            eclApp.Cells(1,2+i+1):=FGDTS.fields[i].FieldName;
          end;
          //
          FGDT.First;
          FGDTS.First;
          //Detail
          j:=2;
          while not FGDT.Eof do
          begin
            while   not   FGDTS.Eof   do
            begin
              eclApp.Cells(j,1):=FGDT.FieldByName('SCDate').AsString;
              eclApp.Cells(j,2):=FGDT.FieldByName('DepName').AsString;
              //
              for   i:=0   to  FGDTS.fieldcount-1  do
              begin
                eclApp.Cells(j,2+i+1):=FGDTS.Fields[i].Value;
              end;
              FGDTS.Next;
              inc(j);
            end;
            FGDT.Next;
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
//
end.

