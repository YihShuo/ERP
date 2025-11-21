unit QWHS2CNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, GridsEh, DBGridEh, Buttons,
  DBTables, DB, Mask, DBCtrls, Comobj;

type
  TQWHS2CNO = class(TForm)
    Panel7: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BD1: TBitBtn;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    STNOEdit: TEdit;
    MemoEdit: TEdit;
    Check: TCheckBox;
    TS2: TTabSheet;
    Panel3: TPanel;
    Panel8: TPanel;
    LeftPanel: TPanel;
    qryQWHQ: TQuery;
    DSQWHQ: TDataSource;
    UpQWHQ: TUpdateSQL;
    Query1: TQuery;
    qryQWHSS: TQuery;
    DSQWHSS: TDataSource;
    UpQWHS2: TUpdateSQL;
    qryQWHSSSTNO: TStringField;
    qryQWHSSCGNO: TStringField;
    qryQWHSSUserID: TStringField;
    qryQWHSSUserDate: TDateTimeField;
    qryQWHSSYN: TStringField;
    qryQWHSSzsywjc: TStringField;
    qryQWHSSCGDate: TDateTimeField;
    qryQWHS2: TQuery;
    qryQWHS2STNO: TStringField;
    qryQWHS2CGNO: TStringField;
    qryQWHS2CLBH: TStringField;
    qryQWHS2ZLBH: TStringField;
    qryQWHS2XXCC: TStringField;
    qryQWHS2Stage: TStringField;
    qryQWHS2UserID: TStringField;
    qryQWHS2UserDate: TDateTimeField;
    qryQWHS2YN: TStringField;
    qryQWHS2zsywjc: TStringField;
    qryQWHS2ywpm: TStringField;
    qryQWHS2dwbh: TStringField;
    qryQWHS2CQDH: TStringField;
    qryQWHS2VNPrice: TCurrencyField;
    qryQWHS2USPrice: TFloatField;
    DSQWHS2: TDataSource;
    qryQWHS2YQDate: TDateTimeField;
    qryQWHS2CFMDate: TDateTimeField;
    qryQWHQHQNO: TStringField;
    qryQWHQGSBH: TStringField;
    qryQWHQMemo: TStringField;
    qryQWHQUserID: TStringField;
    qryQWHQUserDate: TDateTimeField;
    qryQWHQYN: TStringField;
    qryQWHS2HQNO: TStringField;
    qryQWHS2CFMID: TStringField;
    qryQWHS2ETADate: TDateTimeField;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    Panel6: TPanel;
    Panel4: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh5: TDBGridEh;
    qryQWHSSHQNO: TStringField;
    qryQWHS2Qty: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure qryQWHQAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure qryQWHSSAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    FY,FM:string;
    NDate:TDate;
    { Private declarations }
    procedure Update_BY_QWHS_YN();
  public
    { Public declarations }
  end;

var
  QWHS2CNO: TQWHS2CNO;

implementation
  uses main1 , QHWH2CNO_HQNO1, FunUnit;
{$R *.dfm}

procedure TQWHS2CNO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TQWHS2CNO.FormDestroy(Sender: TObject);
begin
  QWHS2CNO:=nil;
end;

procedure TQWHS2CNO.Button1Click(Sender: TObject);
begin
  //
  with qryQWHQ do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from BY_QWHQ ');
    SQL.Add('where GSBH='''+main.Edit2.Text+''' and HQNO like '''+STNOEdit.Text+'%'' ');
    if MemoEdit.Text<>'' then
      sql.Add('and BY_QWHQ.Memo like ''%'+MemoEdit.Text+'%''');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and  convert(smalldatetime,convert(varchar,BY_QWHQ.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Check.Checked then
    begin
      sql.Add('and BY_QWHQ.USERID='''+main.Edit1.Text+'''');
    end;
    SQL.Add('Order by BY_QWHQ.USERDATE DESC ');
    funcObj.WriteErrorLog(sql.Text);
    //
    Active:=true;
  end;
  qryQWHSS.Active:=true;
  qryQWHS2.Active:=true;
  //
end;

procedure TQWHS2CNO.BD1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TQWHS2CNO.qryQWHQAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure TQWHS2CNO.BD2Click(Sender: TObject);
begin
  with qryQWHQ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TQWHS2CNO.BD3Click(Sender: TObject);
begin
  if qryQWHSS.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with qryQWHQ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TQWHS2CNO.BD4Click(Sender: TObject);
begin
  with qryQWHQ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TQWHS2CNO.BD6Click(Sender: TObject);
begin
  //
  with qryQWHQ do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.enabled:=false;
  //
end;

procedure TQWHS2CNO.BD5Click(Sender: TObject);
var i:integer;
begin

  try
    qryQWHQ.first;
    for i:=1 to qryQWHQ.RecordCount do
    begin
        case qryQWHQ.updatestatus of
          usinserted:
            begin
              if qryQWHQ.fieldbyname('HQNO').isnull   then
              begin
                 qryQWHQ.delete;
              end else
              begin
                 qryQWHQ.edit;
                 qryQWHQ.FieldByName('GSBH').Value:=main.Edit2.Text;
                 qryQWHQ.FieldByName('UserID').Value:=main.edit1.text;
                 qryQWHQ.FieldByName('UserDate').Value:=now;
                 qryQWHQ.FieldByName('YN').Value:='1';
                 UpQWHQ.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
              if qryQWHQ.FieldByName('YN').AsString<>'5' then
              begin
                if qryQWHQ.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryQWHQ.fieldbyname('YN').value='0'then
                    begin
                       UpQWHQ.apply(ukdelete);
                    end else
                    begin
                       qryQWHQ.edit;
                       qryQWHQ.FieldByName('userID').Value:=main.edit1.text;
                       qryQWHQ.FieldByName('userdate').Value:=now;
                       UpQWHQ.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  Showmessage('It is not yours, can not modify.');
                  abort;
                end;
              end else
              begin
                showmessage('Already be lock,can not modify');
              end;
             end;
        end;
        qryQWHQ.Next;
    end;
    //
    qryQWHQ.active:=false;
    qryQWHQ.cachedupdates:=false;
    qryQWHQ.requestlive:=false;
    qryQWHQ.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TQWHS2CNO.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    FY:=fieldbyname('FY').asstring;
    FM:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if Length(FM)<2 then
    FM:='0'+FM;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  //
end;

procedure TQWHS2CNO.BB2Click(Sender: TObject);
begin
  with qryQWHS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
  QHWH2CNO_HQNO:=TQHWH2CNO_HQNO.Create(self);
  QHWH2CNO_HQNO.Show;
end;

procedure TQWHS2CNO.BB3Click(Sender: TObject);
begin
  with qryQWHS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQWHS2CNO.BB4Click(Sender: TObject);
begin
  with qryQWHS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQWHS2CNO.BB6Click(Sender: TObject);
begin
  with qryQWHSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TQWHS2CNO.Update_BY_QWHS_YN();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update BY_QWHS Set YN=''5'' ');
    SQL.Add('from (');
    SQL.Add('Select STNO');
    SQL.Add('from BY_QWHS2');
    SQL.Add('where BY_QWHS2.HQNO is not null and BY_QWHS2.HQNO='''+qryQWHQ.FieldByName('HQNO').Value+''' ');
    SQL.Add('Group by STNO )  A');
    SQL.Add('where BY_QWHS.STNO=A.STNO');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;
procedure TQWHS2CNO.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    qryQWHS2.first;
    for i:=1 to qryQWHS2.RecordCount do
    begin
        case qryQWHS2.updatestatus of
          usinserted:
            begin
             qryQWHS2.edit;
             qryQWHS2.FieldByName('HQNO').Value:=qryQWHQ.FieldByName('HQNO').Value;;
             qryQWHS2.FieldByName('CFMID').Value:=main.edit1.text;
             qryQWHS2.FieldByName('CFMDate').Value:=now;
             UpQWHS2.apply(ukmodify);
            end;
          usmodified:
            begin
              if qryQWHS2.FieldByName('CFMID').AsString=main.Edit1.Text then
              begin
                  if qryQWHS2.fieldbyname('YN').value='0'then
                  begin
                     qryQWHS2.edit;
                     qryQWHS2.FieldByName('HQNO').Value:=null;
                     qryQWHS2.FieldByName('CFMID').Value:=main.edit1.text;
                     qryQWHS2.FieldByName('CFMDate').Value:=now;
                     UpQWHS2.apply(ukmodify);
                  end else
                  begin
                     qryQWHS2.edit;
                     qryQWHS2.FieldByName('HQNO').Value:=qryQWHQ.FieldByName('HQNO').Value;;
                     qryQWHS2.FieldByName('CFMID').Value:=main.edit1.text;
                     qryQWHS2.FieldByName('CFMDate').Value:=now;
                     UpQWHS2.apply(ukmodify);
                     //
                  end;
              end else
              begin
                showmessage('It is not yours, can not modify.');
                abort;
              end;
            end;
        end;
        qryQWHS2.Next;
    end;
    Update_BY_QWHS_YN();
    //
    qryQWHS2.active:=false;
    qryQWHS2.cachedupdates:=false;
    qryQWHS2.requestlive:=false;
    qryQWHS2.active:=true;
    qryQWHSS.Active:=false;
    qryQWHSS.Active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //
end;

procedure TQWHS2CNO.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
    Panel7.visible:=true;
    Panel1.visible:=false;
  end else
  begin
    Panel7.visible:=false;
    Panel1.visible:=true;
  end;
end;

procedure TQWHS2CNO.qryQWHSSAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  if ( ((NDate-qryQWHQ.FieldByName('USERDATE').value)>7)  or (qryQWHQ.FieldByName('YN').value='5')) then
  begin
    BB2.Enabled:=false;
    BB2.Enabled:=false;
  end;   
end;

procedure TQWHS2CNO.bbt6Click(Sender: TObject);
var i,j:integer;
    eclApp,WorkBook:olevariant;
begin
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
    for   i:=1   to   qryQWHSS.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=qryQWHSS.fields[i-1].FieldName;
    end;
    qryQWHSS.First;
    j:=2;
    while   not  qryQWHSS.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qryQWHSS.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=qryQWHSS.Fields[i-1].Value;
        end;
        qryQWHSS.Next;
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

procedure TQWHS2CNO.DBGridEh4DblClick(Sender: TObject);
begin
  if  qryQWHQ.Active then
  begin
    if  (qryQWHSS.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel7.Visible:=false;
      panel1.Visible:=true;
    end;
  end;
end;

procedure TQWHS2CNO.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryQWHS2.FieldByName('YN').value='0' then
  begin
    DBGridEh5.canvas.font.color:=clred;
    DBGridEh5.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
