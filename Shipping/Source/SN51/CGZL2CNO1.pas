unit CGZL2CNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, GridsEh, DBGridEh, Buttons,
  DBTables, DB, Mask, DBCtrls, Comobj;

type
  TCGZL2CNO = class(TForm)
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
    qryQWHS: TQuery;
    DSQWHS: TDataSource;
    UpQWHS: TUpdateSQL;
    Query1: TQuery;
    qryQWHSSTNO: TStringField;
    qryQWHSGSBH: TStringField;
    qryQWHSMemo: TStringField;
    qryQWHSUserID: TStringField;
    qryQWHSUserDate: TDateTimeField;
    qryQWHSYN: TStringField;
    qryQWHSS: TQuery;
    DSQWHSS: TDataSource;
    UpQWHSS: TUpdateSQL;
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
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGridEh1: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh2: TDBGridEh;
    qryQWHS2ETADate: TDateTimeField;
    qryQWHS2Qty: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure qryQWHSAfterOpen(DataSet: TDataSet);
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
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
  private
    FY,FM:string;
    NDate:TDate;
    { Private declarations }
    procedure InsertCGZLSS(STNO:string;CGNO:string;Flag:String);
  public
    { Public declarations }
  end;

var
  CGZL2CNO: TCGZL2CNO;

implementation
  uses main1 , CGZL2CNO_CGNO1, FunUnit;
{$R *.dfm}

procedure TCGZL2CNO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCGZL2CNO.FormDestroy(Sender: TObject);
begin
  CGZL2CNO:=nil;
end;

procedure TCGZL2CNO.Button1Click(Sender: TObject);
begin
  //
  with qryQWHS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from BY_QWHS ');
    SQL.Add('where GSBH='''+main.Edit2.Text+''' and STNO like '''+STNOEdit.Text+'%'' ');
    if MemoEdit.Text<>'' then
      sql.Add('and BY_QWHS.Memo like ''%'+MemoEdit.Text+'%''');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and  convert(smalldatetime,convert(varchar,BY_QWHS.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Check.Checked then
    begin
      sql.Add('and BY_QWHS.USERID='''+main.Edit1.Text+'''');
    end;
    SQL.Add('Order by BY_QWHS.STNO DESC ');
    //
    Active:=true;
  end;
  qryQWHSS.Active:=true;
  qryQWHS2.Active:=true;
  //
end;

procedure TCGZL2CNO.BD1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TCGZL2CNO.qryQWHSAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure TCGZL2CNO.BD2Click(Sender: TObject);
begin
  with qryQWHS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TCGZL2CNO.BD3Click(Sender: TObject);
begin
  if qryQWHSS.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with qryQWHS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TCGZL2CNO.BD4Click(Sender: TObject);
begin
  with qryQWHS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TCGZL2CNO.BD6Click(Sender: TObject);
begin
  //
  with qryQWHS do
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

procedure TCGZL2CNO.BD5Click(Sender: TObject);
var i:integer;
    STNO:String;
begin

  try
    qryQWHS.first;
    for i:=1 to qryQWHS.RecordCount do
    begin
        case qryQWHS.updatestatus of
          usinserted:
            begin
              if qryQWHS.fieldbyname('Memo').isnull   then
              begin
                 qryQWHS.delete;
              end else
              begin
                 with query1 do
                 begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select STNO from BY_QWHS where STNO like '''+FY+FM+'%''');
                  sql.add('order by STNO');
                  active:=true;
                  if recordcount >0 then
                  begin
                    Last;
                    STNO:=fieldbyname('STNO').AsString;
                    STNO:=copy(STNO,7,5);
                    STNO:=inttostr(strtoint(STNO)+1);
                    while length(STNO)<5 do
                    begin
                      STNO:='0'+STNO;
                    end;
                  end else
                  begin
                    STNO:='00001';
                  end;
                  STNO :=FY+FM+STNO;
                  Active:=false;
                  SQL.Clear;
                 end;
                 qryQWHS.edit;
                 qryQWHS.FieldByName('STNO').Value:=STNO;
                 qryQWHS.FieldByName('GSBH').Value:=main.Edit2.Text;
                 qryQWHS.FieldByName('UserID').Value:=main.edit1.text;
                 qryQWHS.FieldByName('UserDate').Value:=now;
                 qryQWHS.FieldByName('YN').Value:='1';
                 UpQWHS.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
              if qryQWHS.FieldByName('YN').AsString<>'5' then
              begin
                if qryQWHS.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryQWHS.fieldbyname('YN').value='0'then
                    begin
                       UpQWHS.apply(ukdelete);
                    end else
                    begin
                       qryQWHS.edit;
                       qryQWHS.FieldByName('userID').Value:=main.edit1.text;
                       qryQWHS.FieldByName('userdate').Value:=now;
                       UpQWHS.apply(ukmodify);
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
        qryQWHS.Next;
    end;
    //
    qryQWHS.active:=false;
    qryQWHS.cachedupdates:=false;
    qryQWHS.requestlive:=false;
    qryQWHS.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TCGZL2CNO.FormCreate(Sender: TObject);
var i:integer;
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

procedure TCGZL2CNO.BB2Click(Sender: TObject);
begin
  with qryQWHSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  //
  CGZL2CNO_CGNO:=TCGZL2CNO_CGNO.Create(self);
  CGZL2CNO_CGNO.Show;
end;

procedure TCGZL2CNO.BB3Click(Sender: TObject);
begin
  with qryQWHSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCGZL2CNO.BB4Click(Sender: TObject);
begin
  with qryQWHSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;  
end;

procedure TCGZL2CNO.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
end;
//
procedure TCGZL2CNO.InsertCGZLSS(STNO:string;CGNO:string;Flag:String);
begin
  if Flag='Insert' then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert BY_QWHS2 ');
      SQL.Add('  (STNO, CGNO, CLBH, ZLBH, XXCC, Stage, UserID, UserDate, YN) ');
      SQL.Add('Select '''+STNO+''' STNO, CGNO, CLBH, ZLBH, XXCC, Stage, '''+main.Edit2.Text+''' as UserID, GetDate() as UserDate, 1 as YN from CGZLSS ');
      SQL.Add('where CGNO='''+CGNO+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
  end else if Flag='Delete' then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete BY_QWHS2 ');
      SQL.Add('where STNO='''+STNO+''' and CGNO='''+CGNO+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
  end;
end;
//
procedure TCGZL2CNO.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    qryQWHSS.first;
    for i:=1 to qryQWHSS.RecordCount do
    begin
        case qryQWHSS.updatestatus of
          usinserted:
            begin
              if qryQWHSS.fieldbyname('CGNO').isnull   then
              begin
                 qryQWHSS.delete;
              end else
              begin
                 qryQWHSS.Edit;
                 qryQWHSS.FieldByName('STNO').Value:=qryQWHS.FieldByName('STNO').Value;
                 qryQWHSS.FieldByName('UserID').Value:=main.edit1.text;
                 qryQWHSS.FieldByName('UserDate').Value:=now;
                 qryQWHSS.FieldByName('YN').Value:='1';
                 UpQWHSS.apply(ukinsert);
                 //
                 InsertCGZLSS(qryQWHSS.FieldByName('STNO').AsString,qryQWHSS.FieldByName('CGNO').AsString,'Insert');
              end;
          end;
          usmodified:
             begin
                if qryQWHSS.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryQWHSS.fieldbyname('YN').value='0'then
                    begin
                       UpQWHSS.apply(ukdelete);
                       InsertCGZLSS(qryQWHSS.FieldByName('STNO').AsString,qryQWHSS.FieldByName('CGNO').AsString,'Delete');
                    end else
                    begin
                       qryQWHSS.edit;
                       qryQWHSS.FieldByName('userID').Value:=main.edit1.text;
                       qryQWHSS.FieldByName('userdate').Value:=now;
                       UpQWHSS.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryQWHSS.Next;
    end;
    //
    qryQWHSS.active:=false;
    qryQWHSS.cachedupdates:=false;
    qryQWHSS.requestlive:=false;
    qryQWHSS.active:=true;
    qryQWHS2.Active:=false;
    qryQWHS2.Active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGridEh1.columns[0].ButtonStyle:=cbsNone;    
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //
end;

procedure TCGZL2CNO.PC1Change(Sender: TObject);
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

procedure TCGZL2CNO.qryQWHSSAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  if ( ((NDate-qryQWHS.FieldByName('USERDATE').value)>7)  or (qryQWHS.FieldByName('YN').value='5')) then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
  end;   
end;

procedure TCGZL2CNO.DBGridEh1EditButtonClick(Sender: TObject);
begin
  CGZL2CNO_CGNO:=TCGZL2CNO_CGNO.Create(self);
  CGZL2CNO_CGNO.Show;
end;

procedure TCGZL2CNO.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryQWHSS.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCGZL2CNO.bbt6Click(Sender: TObject);
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

procedure TCGZL2CNO.DBGridEh4DblClick(Sender: TObject);
begin
  if  qryQWHS.Active then
  begin
    if  (qryQWHSS.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel7.Visible:=false;
      panel1.Visible:=true;
    end;
  end;
end;

end.
