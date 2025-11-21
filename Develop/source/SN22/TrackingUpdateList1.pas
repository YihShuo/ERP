unit TrackingUpdateList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Buttons, StdCtrls, ExtCtrls,
  ComCtrls,comobj;

type
  TTrackingUpdateList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    ED_SampleNo: TEdit;
    Button1: TButton;
    Button2: TButton;
    ED_SR: TEdit;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    B_Exit: TBitBtn;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QTracking: TQuery;
    UP_Tracking: TUpdateSQL;
    Qtemp: TQuery;
    QTrackingDateUpdate: TDateTimeField;
    QTrackingSeason: TStringField;
    QTrackingStage: TStringField;
    QTrackingSampleNo: TStringField;
    QTrackingSR: TStringField;
    QTrackingDevType: TStringField;
    QTrackingPartName: TStringField;
    QTrackingDetailUpdate: TStringField;
    QTrackingReasonUpdate: TStringField;
    QTrackingDEV: TBooleanField;
    QTrackingBOM: TBooleanField;
    QTrackingCTS_HQ: TBooleanField;
    QTrackingTECH: TBooleanField;
    QTrackingPattern: TBooleanField;
    QTrackingCE: TBooleanField;
    QTrackingVendor: TBooleanField;
    QTrackingPurchasing: TBooleanField;
    QTrackingOthers: TBooleanField;
    QTrackingFD: TStringField;
    QTrackingBOMTaker: TStringField;
    QTrackingRemark: TStringField;
    QTrackingUserDate: TDateTimeField;
    QTrackingUserID: TStringField;
    QTrackingYN: TStringField;
    Check: TCheckBox;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    QTrackingDateUpdate_1: TDateTimeField;
    QTrackingYPDH: TStringField;
    QTrackingEngname: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure QTrackingAfterOpen(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrackingUpdateList: TTrackingUpdateList;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TTrackingUpdateList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TTrackingUpdateList.FormDestroy(Sender: TObject);
begin
   TrackingUpdateList:=nil;
end;

procedure TTrackingUpdateList.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TTrackingUpdateList.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TTrackingUpdateList.Button1Click(Sender: TObject);
begin
  with Qtracking do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BModRec_Dev.DelDate as DateUpdate,kfxxzl.JiJie as Season,ypzl.KFJD as Stage,ypzl.YPDH as SampleNo,kfxxzl.DEVCODE as SR#,kfxxzl.DevType, ');
    sql.Add('	      DevChangeMemo.PartName,DevChangeMemo.DetailUpdate,  DevChangeMemo.ReasonUpdate,DEV,BOM,CTS_HQ,TECH,Pattern,CE,Vendor,Purchasing,Others,kfxxzl.FD, ');
    sql.Add('	      BModRec_Dev.DelID+ '' - '' +USERNAME as BOMTaker,Busers.Engname,DevChangeMemo.Remark,DevChangeMemo.UserDate, DevChangeMemo.UserID,DevChangeMemo.YN,DevChangeMemo.DateUpdate as DateUpdate_1, DevChangeMemo.YPDH');
    sql.Add('from BModRec_Dev inner join ypzl');
    sql.Add('on BModRec_Dev.tno=ypzl.ypdh ');
    sql.Add('left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=kfxxzl.SheHao ');
    sql.Add('left join Busers on BModRec_Dev.DelID=Busers.USERID ');
    sql.Add('left join DevChangeMemo on BModRec_Dev.DelDate=DevChangeMemo.DateUpdate and BModRec_Dev.TNO=DevChangeMemo.ypdh ');
    sql.Add('where BModRec_Dev.ARTICLE=''FD_CHECK''');
    sql.Add('and ypzl.KFJD in (''CR1'',''CR2'',''CR3'',''SMS'',''CFM'',''PDT'')');
    sql.Add('and ypzl.gsdh='''+main.Edit2.Text+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,BModRec_Dev.DelDate,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if check.Checked then
      sql.Add('and BModRec_Dev.DelID='''+main.Edit1.text+'''');
    if ED_SampleNo.Text <> '' then
      sql.Add('and ypzl.ypdh like '''+ ED_SampleNo.Text+'%''');
    if ED_SR.Text <> '' then
      sql.Add('and kfxxzl.DEVCODE like ''%'+ ED_SR.Text+'%''');
    sql.Add('order by BModRec_Dev.DelDate');
    //memo1.Lines:=sql;
    active:=true;
  end;
end;

procedure TTrackingUpdateList.BB4Click(Sender: TObject);
begin
  with Qtracking do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TTrackingUpdateList.QTrackingAfterOpen(DataSet: TDataSet);
begin
  if  QTracking.RecordCount>0 then
    BB4.Enabled:=true;
end;

procedure TTrackingUpdateList.BB6Click(Sender: TObject);
begin
  with QTracking do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TTrackingUpdateList.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    QTracking.first;
    for i:=1 to QTracking.RecordCount do
    begin
      case QTracking.updatestatus of
        usmodified:
          if  ((QTracking.FieldByName('DateUpdate_1').isnull) and (QTracking.FieldByName('YPDH').isnull)) then
          begin
              with Qtemp do
              begin
                active:=false;
                sql.Clear;
                sql.Add(' insert DevChangeMemo (DateUpdate,YPDH,GSBH,PartName,DetailUpdate,ReasonUpdate,DEV,BOM,CTS_HQ,TECH,Pattern,CE,Vendor,Purchasing,Others,UserDate,UserID,YN) values(');
                sql.Add(' '''+formatdatetime('yyyy/mm/dd hh:mm:ss',QTracking.fieldbyname('DateUpdate').value)+'''');
                sql.Add(', '''+QTracking.fieldbyname('SampleNo').Value+'''');
                sql.Add(', '''+main.Edit2.Text+'''');
                sql.Add(', '''+QTracking.fieldbyname('PartName').AsString+'''');
                sql.Add(', '''+QTracking.fieldbyname('DetailUpdate').AsString+'''');
                sql.Add(', '''+QTracking.fieldbyname('ReasonUpdate').AsString+'''');
                if QTracking.fieldbyname('DEV').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('BOM').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('CTS_HQ').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('TECH').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('Pattern').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('CE').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('Vendor').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('Purchasing').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                if QTracking.fieldbyname('Others').AsBoolean then
                  sql.Add(',''1''')
                else
                  sql.Add(',''0''');
                sql.Add(', GetDate()');
                sql.Add(', '''+main.edit1.text+'''');
                sql.Add(', ''1''');
                sql.Add(')');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
              end;
          end else
          begin
             with Qtemp do
             begin
                active:=false;
                sql.Clear;
                sql.Add(' update DevChangeMemo');
                sql.Add(' set ');
                sql.Add(' PartName ='''+QTracking.fieldbyname('PartName').AsString+'''');
                sql.Add(',DetailUpdate ='''+QTracking.fieldbyname('DetailUpdate').AsString+'''');
                sql.Add(',ReasonUpdate ='''+QTracking.fieldbyname('ReasonUpdate').AsString+'''');
                if QTracking.fieldbyname('DEV').AsBoolean then
                  sql.Add(',DEV =''1''')
                else
                  sql.Add(',DEV =''0''');
                if QTracking.fieldbyname('BOM').AsBoolean then
                  sql.Add(',BOM =''1''')
                else
                  sql.Add(',BOM =''0''');
                if QTracking.fieldbyname('CTS_HQ').AsBoolean then
                  sql.Add(',CTS_HQ =''1''')
                else
                  sql.Add(',CTS_HQ =''0''');
                if QTracking.fieldbyname('TECH').AsBoolean then
                  sql.Add(',TECH =''1''')
                else
                  sql.Add(',TECH =''0''');
                if QTracking.fieldbyname('Pattern').AsBoolean then
                  sql.Add(',Pattern =''1''')
                else
                  sql.Add(',Pattern =''0''');
                if QTracking.fieldbyname('CE').AsBoolean then
                  sql.Add(',CE =''1''')
                else
                  sql.Add(',CE =''0''');
                if QTracking.fieldbyname('Vendor').AsBoolean then
                  sql.Add(',Vendor =''1''')
                else
                  sql.Add(',Vendor =''0''');
                if QTracking.fieldbyname('Purchasing').AsBoolean then
                  sql.Add(',Purchasing =''1''')
                else
                  sql.Add(',Purchasing =''0''');
                if QTracking.fieldbyname('Others').AsBoolean then
                  sql.Add(',Others =''1''')
                else
                  sql.Add(',Others =''0''');
                sql.Add(',Remark ='''+QTracking.fieldbyname('Remark').AsString+'''');
                sql.Add(',UserID ='''+main.edit1.text+'''');
                sql.Add(',UserDate =GetDate()');
                sql.Add(' where DateUpdate =  '''+formatdatetime('yyyy/mm/dd hh:mm:ss',QTracking.fieldbyname('DateUpdate').value)+'''');
                sql.Add(' and  ypdh = '''+QTracking.fieldbyname('YPDH').Value+'''');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
             end;
          end;
       end;

      QTracking.next;
    end;
    with QTracking do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;

  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  QTracking.Active:=true;

end;

procedure TTrackingUpdateList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  QTracking.active  then
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
        for   i:=0   to   QTracking.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=QTracking.fields[i].FieldName;
          end;

        QTracking.First;
        j:=2;
        while   not   QTracking.Eof   do
          begin
            for   i:=0   to  QTracking.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=QTracking.Fields[i].Value;
            end;
          QTracking.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

end.
