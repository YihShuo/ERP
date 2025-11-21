unit PreOrder_Calcuate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ExtCtrls, GridsEh, DBGridEh, ComCtrls, StdCtrls,
  Buttons, Comobj;

type
  TPreOrder_Calcuate = class(TForm)
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
    TS2: TTabSheet;
    Panel3: TPanel;
    Splitter1: TSplitter;
    qryYGZL: TQuery;
    DSYGZL: TDataSource;
    UpYGZL: TUpdateSQL;
    Query1: TQuery;
    qryYGZLYGNO: TStringField;
    qryYGZLGSBH: TStringField;
    qryYGZLMemo: TStringField;
    qryYGZLUSERDATE: TDateTimeField;
    qryYGZLUSERID: TStringField;
    qryYGZLYN: TStringField;
    qryYGZLS: TQuery;
    upYGZLS: TUpdateSQL;
    DSYGZLS: TDataSource;
    qryYGZLSYGNO: TStringField;
    qryYGZLSXieXing: TStringField;
    qryYGZLSSheHao: TStringField;
    qryYGZLSBWBH: TStringField;
    qryYGZLSYWSM: TStringField;
    qryYGZLSZWSM: TStringField;
    qryYGZLSCLBH: TStringField;
    qryYGZLSYWPM: TStringField;
    qryYGZLSZWPM: TStringField;
    qryYGZLSDWBH: TStringField;
    qryYGZLSCQDH: TStringField;
    qryYGZLSCSBH: TStringField;
    qryYGZLSzsywjc: TStringField;
    qryYGZLSUSERID: TStringField;
    qryYGZLSUSERDATE: TDateTimeField;
    qryYGZLSYN: TStringField;
    qryYGZLSArticle: TStringField;
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    YGNOEdit: TEdit;
    Label1: TLabel;
    MemoEdit: TEdit;
    qryYGZLSS: TQuery;
    DSYGZLSS: TDataSource;
    upYGZLSS: TUpdateSQL;
    qryYGZLSSYGNO: TStringField;
    qryYGZLSSXieXing: TStringField;
    qryYGZLSSSheHao: TStringField;
    qryYGZLSSBWBH: TStringField;
    qryYGZLSSXTCC: TStringField;
    qryYGZLSSPairs: TFloatField;
    qryYGZLSSUSERID: TStringField;
    qryYGZLSSUSERDATE: TDateTimeField;
    qryYGZLSSYN: TStringField;
    qryYGZLSSCLSL: TFloatField;
    bbt7: TBitBtn;
    qryYGZLS2: TQuery;
    DSYGZLS2: TDataSource;
    qryYGZLS2YGNO: TStringField;
    qryYGZLS2CLBH: TStringField;
    qryYGZLS2SIZE: TStringField;
    qryYGZLS2CSBH: TStringField;
    qryYGZLS2CLSL: TFloatField;
    qryYGZLS2USERID: TStringField;
    qryYGZLS2USERDATE: TDateTimeField;
    qryYGZLS2YN: TStringField;
    qryYGZLS2ZSYWJC: TStringField;
    qryYGZLS2YWPM: TStringField;
    qryYGZLS2ZWPM: TStringField;
    qryYGZLS2DWBH: TStringField;
    qryYGZLS2CQDH: TStringField;
    qryYGZLS2XieXing: TStringField;
    qryYGZLS2SheHao: TStringField;
    qryYGZLS2BWBH: TStringField;
    qryYGZLS2ARTICLE: TStringField;
    qryYGZLS2YWSM: TStringField;
    qryYGZLS2ZWSM: TStringField;
    qryYGZLSCCQQ: TStringField;
    qryYGZLSCCQZ: TStringField;
    Panel8: TPanel;
    LeftPanel: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    Panel6: TPanel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    Panel9: TPanel;
    Splitter2: TSplitter;
    DBGridEh5: TDBGridEh;
    BDT5: TBitBtn;
    Check: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure qryYGZLAfterOpen(DataSet: TDataSet);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure qryYGZLSAfterOpen(DataSet: TDataSet);
    procedure qryYGZLSSAfterOpen(DataSet: TDataSet);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
  private
    FY,FM:string;
    NDate:TDate;  
    { Private declarations }
    procedure InitSizeRun();
  public
    { Public declarations }
  end;

var
  PreOrder_Calcuate: TPreOrder_Calcuate;

implementation

uses main1, PreOrder_XXZLS1, PreOrder_Print1, FunUnit;

{$R *.dfm}

procedure TPreOrder_Calcuate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPreOrder_Calcuate.FormDestroy(Sender: TObject);
begin
  PreOrder_Calcuate:=nil;
end;

procedure TPreOrder_Calcuate.BD1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TPreOrder_Calcuate.Button1Click(Sender: TObject);
begin
  with qryYGZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from YGZL ');
    SQL.Add('where GSBH='''+main.Edit2.Text+''' and YGNO like '''+YGNOEdit.Text+'%'' ');
    if MemoEdit.Text<>'' then
      sql.Add('and YGZL.Memo like ''%'+MemoEdit.Text+'%''');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and  convert(smalldatetime,convert(varchar,YGZL.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Check.Checked then
    begin
      sql.Add('and YGZL.USERID='''+main.Edit1.Text+'''');
    end;
    SQL.Add('Order by YGZL.YGNO DESC ');
    Active:=true;
  end;
  qryYGZLS.Active:=true;
  qryYGZLSS.Active:=true;
  qryYGZLS2.Active:=true;
end;

procedure TPreOrder_Calcuate.BD2Click(Sender: TObject);
begin
  with qryYGZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.qryYGZLAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BD3Click(Sender: TObject);
begin
  if QryYGZLS.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with QryYGZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BD4Click(Sender: TObject);
begin
  with QryYGZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BD6Click(Sender: TObject);
begin
  with QryYGZL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.enabled:=false;
end;

procedure TPreOrder_Calcuate.BD5Click(Sender: TObject);
var i:integer;
    YGNO:String;
begin

  try
    qryYGZL.first;
    for i:=1 to qryYGZL.RecordCount do
    begin
        case qryYGZL.updatestatus of
          usinserted:
            begin
              if qryYGZL.fieldbyname('Memo').isnull   then
              begin
                 qryYGZL.delete;
              end else
              begin
                 with query1 do
                 begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select YGNO from YGZL where YGNO like '''+FY+FM+'%''');
                  sql.add('order by YGNO');
                  active:=true;
                  if recordcount >0 then
                  begin
                    Last;
                    YGNO:=fieldbyname('YGNO').AsString;
                    YGNO:=copy(YGNO,7,5);
                    YGNO:=inttostr(strtoint(YGNO)+1);
                    while length(YGNO)<5 do
                    begin
                      YGNO:='0'+YGNO;
                    end;
                  end else
                  begin
                    YGNO:='00001';
                  end;
                  YGNO :=FY+FM+YGNO;
                  Active:=false;
                  SQL.Clear;
                 end;
                 qryYGZL.edit;
                 qryYGZL.FieldByName('YGNO').Value:=YGNO;
                 qryYGZL.FieldByName('GSBH').Value:=main.Edit2.Text;
                 qryYGZL.FieldByName('UserID').Value:=main.edit1.text;
                 qryYGZL.FieldByName('UserDate').Value:=now;
                 qryYGZL.FieldByName('YN').Value:='1';
                 UpYGZL.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
                if qryYGZL.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryYGZL.fieldbyname('YN').value='0'then
                    begin
                       UpYGZL.apply(ukdelete);
                    end else
                    begin
                       qryYGZL.edit;
                       qryYGZL.FieldByName('userID').Value:=main.edit1.text;
                       qryYGZL.FieldByName('userdate').Value:=now;
                       UpYGZL.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryYGZL.Next;
    end;
    //
    qryYGZL.active:=false;
    qryYGZL.cachedupdates:=false;
    qryYGZL.requestlive:=false;
    qryYGZL.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPreOrder_Calcuate.FormCreate(Sender: TObject);
var i:integer;
begin
  with query1 do
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

procedure TPreOrder_Calcuate.BB2Click(Sender: TObject);
begin
  if qryYGZLSS.RequestLive then
  begin
    showmessage('Pls save  data first.');
    abort;
  end;

  with qryYGZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPreOrder_Calcuate.BB4Click(Sender: TObject);
begin
  if qryYGZLSS.RequestLive then
  begin
    showmessage('Pls save  data first.');
    abort;
  end;
  
  with qryYGZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPreOrder_Calcuate.BB3Click(Sender: TObject);
begin
  if qryYGZLSS.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with qryYGZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BB6Click(Sender: TObject);
begin
  with qryYGZLS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGridEh1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TPreOrder_Calcuate.DBGridEh1EditButtonClick(Sender: TObject);
begin
  //
  if DBGridEh1.Selectedfield.fieldname='Article' then
  begin
    PreOrder_XXZLS:=TPreOrder_XXZLS.Create(Self);
    PreOrder_XXZLS.Show;
  end;
  //
end;

procedure TPreOrder_Calcuate.PC1Change(Sender: TObject);
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

procedure TPreOrder_Calcuate.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    qryYGZLS.first;
    for i:=1 to qryYGZLS.RecordCount do
    begin
        case qryYGZLS.updatestatus of
          usinserted:
            begin
              if qryYGZLS.fieldbyname('Article').isnull   then
              begin
                 qryYGZLS.delete;
              end else
              begin
                 qryYGZLS.edit;
                 qryYGZLS.FieldByName('YGNO').Value:=qryYGZL.FieldByName('YGNO').Value;
                 qryYGZLS.FieldByName('UserID').Value:=main.edit1.text;
                 qryYGZLS.FieldByName('UserDate').Value:=now;
                 qryYGZLS.FieldByName('YN').Value:='1';
                 UpYGZLS.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
                if qryYGZLS.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryYGZLS.fieldbyname('YN').value='0'then
                    begin
                       UpYGZLS.apply(ukdelete);
                    end else
                    begin
                       qryYGZLS.edit;
                       qryYGZLS.FieldByName('userID').Value:=main.edit1.text;
                       qryYGZLS.FieldByName('userdate').Value:=now;
                       UpYGZLS.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryYGZLS.Next;
    end;
    //
    qryYGZLS.active:=false;
    qryYGZLS.cachedupdates:=false;
    qryYGZLS.requestlive:=false;
    qryYGZLS.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPreOrder_Calcuate.qryYGZLSAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  if qryYGZL.cachedupdates then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
  end;
  if qryYGZL.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
  end;
end;

procedure TPreOrder_Calcuate.qryYGZLSSAfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
end;

procedure TPreOrder_Calcuate.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryYGZL.FieldByName('YN').value='0' then
  begin
    DBGridEh4.canvas.font.color:=clred;
    DBGridEh4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPreOrder_Calcuate.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryYGZLS.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPreOrder_Calcuate.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryYGZLSS.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPreOrder_Calcuate.InitSizeRun();
var i:integer;
begin
  //
  if qryYGZLSS.RequestLive=false then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select XTCC  ');
      SQL.Add('from XTBWYL1');
      SQL.Add('where XieXing='''+qryYGZLS.FieldByName('XieXing').AsString+''' and SheHao='''+qryYGZLS.FieldByName('SheHao').AsString+''' and BWBH='''+qryYGZLS.FieldByName('BWBH').AsString+'''');
      if qryYGZLS.FieldByName('CCQQ').AsString<>'' then
      SQL.Add(' and XTCC>='''+qryYGZLS.FieldByName('CCQQ').AsString+''' ');
      if qryYGZLS.FieldByName('CCQZ').AsString<>'' then
      SQL.Add(' and XTCC<'''+qryYGZLS.FieldByName('CCQZ').AsString+''' ');
      SQL.Add('Order by XTCC ');
      funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      DBGridEh3.Columns[0].PickList.Clear;
      for i:=0 to RecordCount-1 do
      begin
        DBGridEh3.Columns[0].PickList.add(FieldByName('XTCC').AsString);
        Next;
      end;
      Active:=false;
    end;
  end;
  //
end;
procedure TPreOrder_Calcuate.BC2Click(Sender: TObject);
begin
  InitSizeRun();
  with qryYGZLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BC3Click(Sender: TObject);
begin
  InitSizeRun();
  with qryYGZLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;

end;

procedure TPreOrder_Calcuate.BC4Click(Sender: TObject);
begin
  InitSizeRun();
  with qryYGZLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TPreOrder_Calcuate.BC6Click(Sender: TObject);
begin
  with qryYGZLSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BC5.enabled:=false;
  BC6.enabled:=false;
end;

procedure TPreOrder_Calcuate.BC5Click(Sender: TObject);
var i:integer;
begin

  try
    qryYGZLSS.first;
    for i:=1 to qryYGZLSS.RecordCount do
    begin
        case qryYGZLSS.updatestatus of
          usinserted:
            begin
              if qryYGZLSS.fieldbyname('Pairs').isnull   then
              begin
                 qryYGZLSS.delete;
              end else
              begin
                 qryYGZLSS.edit;
                 qryYGZLSS.FieldByName('YGNO').Value:=qryYGZLS.FieldByName('YGNO').Value;
                 qryYGZLSS.FieldByName('XieXing').Value:=qryYGZLS.FieldByName('XieXing').Value;
                 qryYGZLSS.FieldByName('SheHao').Value:=qryYGZLS.FieldByName('SheHao').Value;
                 qryYGZLSS.FieldByName('BWBH').Value:=qryYGZLS.FieldByName('BWBH').Value;
                 qryYGZLSS.FieldByName('UserID').Value:=main.edit1.text;
                 qryYGZLSS.FieldByName('UserDate').Value:=now;
                 qryYGZLSS.FieldByName('YN').Value:='1';
                 UpYGZLSS.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
                if qryYGZLSS.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryYGZLSS.fieldbyname('YN').value='0'then
                    begin
                       UpYGZLSS.apply(ukdelete);
                    end else
                    begin
                       qryYGZLSS.edit;
                       qryYGZLSS.FieldByName('userID').Value:=main.edit1.text;
                       qryYGZLSS.FieldByName('userdate').Value:=now;
                       UpYGZLSS.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryYGZLSS.Next;
    end;
    //
    qryYGZLSS.active:=false;
    qryYGZLSS.cachedupdates:=false;
    qryYGZLSS.requestlive:=false;
    qryYGZLSS.active:=true;
    BC5.enabled:=false;
    BC6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPreOrder_Calcuate.bbt7Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  Delete from YGZLS2 where YGNO='''+qryYGZL.FieldByName('YGNO').AsString+''' ');
    SQL.Add('	 Insert into YGZLS2 (YGNO,XieXing,SheHao,BWBH,CLBH,SIZE,CSBH,CLSL,UserID, USERDATE, YN)');
    SQL.Add('	 Select YGNO,XieXing,SheHao,BWBH,CLBH,SIZE,Max(CSBH) as CSBH,Sum(CLSL) as CLSL,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate, 1 as ''YN''  from (');
    SQL.Add('  Select YGZLSS.YGNO,YGZLSS.XieXing,YGZLSS.SheHao,YGZLSS.BWBH,YGZLSS.CLBH,YGZLSS.CSBH,YGZLSS.SIZE,YGZLSS.CLSL from (');
    SQL.Add('	 Select YGZLSS.YGNO, YGZLSS.XieXing, YGZLSS.SheHao, YGZLSS.BWBH, XXZLS.CLBH, XXZLS.CSBH,Case when CLZL.LYCC=''N'' then ''ZZZZZZ'' else YGZLSS.XTCC end as SIZE,YGZLSS.Pairs,xtbwyl1.CLSL as Usage, Round(YGZLSS.Pairs*xtbwyl1.CLSL,1) as CLSL,CLZL.CLZMLB ');
    SQL.Add('	 from YGZLSS');
    SQL.Add('	 left join XXZLS on XXZLS.XieXing=YGZLSS.XieXing and XXZLS.SheHao=YGZLSS.SheHao and XXZLS.BWBH=YGZLSS.BWBH');
    SQL.Add('  left join xtbwyl1 on xtbwyl1.XieXing=YGZLSS.XieXing and xtbwyl1.SheHao=YGZLSS.SheHao and xtbwyl1.BWBH=YGZLSS.BWBH and xtbwyl1.XTCC=YGZLSS.XTCC');
    SQL.Add('	 left join CLZL on CLZL.CLDH=XXZLS.CLBH');
    SQL.Add('	 where YGZLSS.YGNO='''+qryYGZL.FieldByName('YGNO').AsString+''' and CLZL.clzmlb=''N'' ) YGZLSS ');
    //一次加工
    SQL.Add('	 Union all');
    SQL.Add('   Select YGZLSS.YGNO,YGZLSS.XieXing,YGZLSS.SheHao,YGZLSS.BWBH,clzhzl.cldh1 as CLBH,clzhzl.ZSDH as CSBH,Case when YGZLSS.LYCC=''N'' then ''ZZZZ'' else YGZLSS.XTCC end as SIZE,Round(clzhzl.syl*YGZLSS.CLSL,1) as CLSL from (');
    SQL.Add('	 Select YGZLSS.YGNO, YGZLSS.XieXing, YGZLSS.SheHao, YGZLSS.BWBH, XXZLS.CLBH,YGZLSS.XTCC,YGZLSS.Pairs,xtbwyl1.CLSL as Usage,CLZL.CLZMLB,CLZL.LYCC,Round(YGZLSS.Pairs*xtbwyl1.CLSL,1) as CLSL ');
    SQL.Add('	 from YGZLSS');
    SQL.Add('	 left join XXZLS on XXZLS.XieXing=YGZLSS.XieXing and XXZLS.SheHao=YGZLSS.SheHao and XXZLS.BWBH=YGZLSS.BWBH');
    SQL.Add('   left join xtbwyl1 on xtbwyl1.XieXing=YGZLSS.XieXing and xtbwyl1.SheHao=YGZLSS.SheHao and xtbwyl1.BWBH=YGZLSS.BWBH and xtbwyl1.XTCC=YGZLSS.XTCC');
    SQL.Add('	 left join CLZL on CLZL.CLDH=XXZLS.CLBH');
    SQL.Add('	 where YGZLSS.YGNO='''+qryYGZL.FieldByName('YGNO').AsString+''' and CLZL.clzmlb=''Y'') YGZLSS');
    SQL.Add('	 inner join clzhzl on clzhzl.cldh=YGZLSS.CLBH');
    SQL.Add('	 left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('	 where  CLZL.clzmlb=''N'' ');
    //二次加工
    SQL.Add('	 union all ');
    SQL.Add('	 Select YGZLSS.YGNO,YGZLSS.XieXing,YGZLSS.SheHao,YGZLSS.BWBH,clzhzl.cldh1 as CLBH,clzhzl.ZSDH as CSBH,Case when YGZLSS.LYCC=''N'' then ''ZZZZ'' else YGZLSS.XTCC end as SIZE,Round(clzhzl.syl*YGZLSS.CLSL,1) as CLSL from (');
    SQL.Add('	 Select YGZLSS.YGNO, YGZLSS.XieXing, YGZLSS.SheHao, YGZLSS.BWBH, clzhzl.cldh1 as CLBH, YGZLSS.XTCC, YGZLSS.Pairs, YGZLSS.Usage,CLZL.clzmlb,YGZLSS.LYCC,Round(clzhzl.syl*YGZLSS.CLSL,1) as CLSL   from (');
    SQL.Add('	 Select YGZLSS.YGNO, YGZLSS.XieXing, YGZLSS.SheHao, YGZLSS.BWBH, XXZLS.CLBH, YGZLSS.XTCC,YGZLSS.Pairs,xtbwyl1.CLSL as Usage,CLZL.CLZMLB,CLZL.LYCC, Round(YGZLSS.Pairs*xtbwyl1.CLSL,1) as CLSL ');
    SQL.Add('	 from YGZLSS');
    SQL.Add('	 left join XXZLS on XXZLS.XieXing=YGZLSS.XieXing and XXZLS.SheHao=YGZLSS.SheHao and XXZLS.BWBH=YGZLSS.BWBH');
    SQL.Add('   left join xtbwyl1 on xtbwyl1.XieXing=YGZLSS.XieXing and xtbwyl1.SheHao=YGZLSS.SheHao and xtbwyl1.BWBH=YGZLSS.BWBH and xtbwyl1.XTCC=YGZLSS.XTCC');
    SQL.Add('	 left join CLZL on CLZL.CLDH=XXZLS.CLBH');
    SQL.Add('	 where YGZLSS.YGNO='''+qryYGZL.FieldByName('YGNO').AsString+''' and CLZL.clzmlb=''Y'' ) YGZLSS');
    SQL.Add('	 inner join clzhzl on clzhzl.cldh=YGZLSS.CLBH');
    SQL.Add('	 left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('	 where  CLZL.clzmlb=''Y'' ) YGZLSS');
    SQL.Add('	 inner join clzhzl on clzhzl.cldh=YGZLSS.CLBH');
    SQL.Add('	 left join CLZL on CLZL.CLDH=clzhzl.cldh1');
    SQL.Add('	 where  CLZL.clzmlb=''N'' ');
    SQL.Add('	  ) YGZLSS Group by YGNO,XieXing,SheHao,BWBH,CLBH,SIZE ');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  qryYGZLS2.Active:=false;
  qryYGZLS2.Active:=true;
  //
  Showmessage('Success');
end;

procedure TPreOrder_Calcuate.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  qryYGZLS2.active  then
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
        for   i:=0   to   qryYGZLS2.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=qryYGZLS2.fields[i].FieldName;
        end;
        qryYGZLSS.First;
        j:=2;
        while   not   qryYGZLS2.Eof   do
        begin
          for   i:=0   to  qryYGZLS2.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qryYGZLS2.Fields[i].Value;
          end;
          qryYGZLS2.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
    except
      on  F:Exception   do
        showmessage(F.Message);
    end;
  end;

end;

procedure TPreOrder_Calcuate.BDT5Click(Sender: TObject);
begin
  PreOrder_Print:=TPreOrder_Print.Create(nil);
  PreOrder_Print.quickrep1.prepare;
  PreOrder_Print.Qpage1.caption:=inttostr(PreOrder_Print.quickrep1.QRPrinter.pagecount);
  PreOrder_Print.quickrep1.preview;
  PreOrder_Print.Free;
end;

procedure TPreOrder_Calcuate.DBGridEh4DblClick(Sender: TObject);
begin
  if  qryYGZL.Active then
  begin
    if  (qryYGZL.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel1.Visible:=true;
      panel7.Visible:=false;
    end;
  end;
end;

end.
