unit QCIssue1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  DBCtrls, ComCtrls, GridsEh, DBGridEh;

type
  TQCIssue = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1YYBH: TStringField;
    Query1AlarmL: TFloatField;
    Query1StopL: TFloatField;
    Query1GSBH: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
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
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TComboBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    CC2: TBitBtn;
    CC3: TBitBtn;
    CC4: TBitBtn;
    CC5: TBitBtn;
    CC6: TBitBtn;
    CC7: TBitBtn;
    CC1: TBitBtn;
    CCT1: TBitBtn;
    CCT2: TBitBtn;
    CCT3: TBitBtn;
    CCT4: TBitBtn;
    cct5: TBitBtn;
    cct6: TBitBtn;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    CB2: TComboBox;
    DS2: TDataSource;
    UpSQL2: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    Query2GSBH: TStringField;
    Query2YYBH: TStringField;
    Query2DFL: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2XL_NganHan: TStringField;
    Query2XL_DaiHan: TStringField;
    Query2USERDate: TDateTimeField;
    Query2USERID: TStringField;
    Query2YN: TStringField;
    cbSpecialDefct: TCheckBox;
    Query1DFL: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CCT1Click(Sender: TObject);
    procedure CCT2Click(Sender: TObject);
    procedure CCT3Click(Sender: TObject);
    procedure CCT4Click(Sender: TObject);
    procedure CC2Click(Sender: TObject);
    procedure CC4Click(Sender: TObject);
    procedure CC5Click(Sender: TObject);
    procedure CC1Click(Sender: TObject);
    procedure cct6Click(Sender: TObject);
    procedure cbSpecialDefctClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCIssue: TQCIssue;
  var Udatabase,Uinsert,Uupdate: string ;
implementation

uses main1;

{$R *.dfm}

procedure TQCIssue.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
    action:=Cafree;
end;

procedure TQCIssue.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TQCIssue.FormCreate(Sender: TObject);
begin
   Udatabase:= 'QCBLYY';
  Query1.Active:=false;
end;

procedure TQCIssue.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TQCIssue.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TQCIssue.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
                if query1.fieldbyname('YYBH').isnull then
                begin
                  query1.delete;
                end else
                begin
                  query1.edit;
                  query1.FieldByName('YYBH').Value:=query1.FieldByName('YYBH').Value;
                  query1.FieldByName('YWSM').Value:=query1.FieldByName('YWSM').Value;
                  query1.FieldByName('AlarmL').Value:=query1.FieldByName('AlarmL').Value;
                  query1.FieldByName('StopL').Value:=query1.FieldByName('StopL').Value;
                  query1.FieldByName('GSBH').Value :=main.Edit2.text;
                  query1.FieldByName('USERDATE').Value:=date;
                  query1.FieldByName('USERID').Value:=main.edit1.text;
                  Query1.FieldByName('YN').Value:='2';
                  //memo1.Text:=upsql1.InsertSQL.Text;
                  upsql1.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
                 if query1.fieldbyname('YN').value='0' then
                 begin
                   if  query1.fieldbyname('USERDATE').value>=(date-3) then
                   begin
                     upsql1.Apply(ukdelete);
                   end else
                   begin
                     showmessage(query1.FieldByName('YWSM').Value+' >3 days,can not delete.');
                   end;
                 end else
                 begin
                   query1.edit;
                   query1.FieldByName('YWSM').Value:=query1.FieldByName('YWSM').Value;
                   query1.FieldByName('ZWSM').Value:=query1.FieldByName('ZWSM').Value;
                   query1.FieldByName('AlarmL').Value:=query1.FieldByName('AlarmL').Value;
                   query1.FieldByName('StopL').Value:=query1.FieldByName('StopL').Value;
                   query1.FieldByName('GSBH').Value :=main.Edit2.text;
                   query1.FieldByName('USERDATE').Value:=date;
                   query1.FieldByName('USERID').Value:=main.edit1.text;
                   //showmessage(UpSQL1.ModifySQL.Text) ;
                   upsql1.apply(ukmodify);
                 end;
             end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TQCIssue.Button1Click(Sender: TObject);

begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from '+Udatabase);
    sql.add(' where YYBH like '''+edit1.Text+'%'' ');
    IF edit2.Text<>'' THEN
       sql.add('and YWSM like ''%'+edit2.Text+'%'' ');
    IF CB1.text<>'All' THEN
       sql.add('and DFL='''+CB1.Text+'''' );
    sql.Add('and GSBH = '''+main.Edit2.text+'''');
    sql.add('order by DFL,YYBH');
    //showmessage(SQL.Text);
    active:=true;
  end;
  panel3.visible:=false;
  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
end;

procedure TQCIssue.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TQCIssue.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQCIssue.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TQCIssue.BBT2Click(Sender: TObject);
begin
  query1.prior;
end;

procedure TQCIssue.BBT3Click(Sender: TObject);
begin
  query1.next;
end;

procedure TQCIssue.BBT4Click(Sender: TObject);
begin
  query1.last;
end;

procedure TQCIssue.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
          query1.Next;
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

procedure TQCIssue.FormDestroy(Sender: TObject);
begin
  QCIssue:=nil;
end;

procedure TQCIssue.Button2Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('Select * from QCMAYY ');
    sql.add('where YYBH like '''+edit3.Text+'%'' ');
    IF edit4.Text<>'' THEN
       sql.add('and YWSM like ''%'+edit4.Text+'%'' ');
    IF CB2.text<>'All' THEN
       sql.add('and DFL='''+CB2.Text+'''' );
    sql.Add('and GSBH = '''+main.Edit2.text+'''');
    sql.add('order by DFL,YYBH');
    active:=true;
  end;
  Panel5.visible:=false;
  cc2.enabled:=true;
  cc4.enabled:=true;
  cc5.enabled:=false;
  cc6.enabled:=false;
  cc7.enabled:=true;
  cct1.enabled:=true;
  cct2.enabled:=true;
  cct3.enabled:=true;
  cct4.enabled:=true;
  cct5.enabled:=true;
  cct6.enabled:=true;
end;

procedure TQCIssue.CCT1Click(Sender: TObject);
begin
  query2.first;
end;

procedure TQCIssue.CCT2Click(Sender: TObject);
begin
  query2.Prior;
end;

procedure TQCIssue.CCT3Click(Sender: TObject);
begin
  query2.Next;
end;

procedure TQCIssue.CCT4Click(Sender: TObject);
begin
  query2.Last;
end;

procedure TQCIssue.CC2Click(Sender: TObject);
begin
  with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  cc5.enabled:=true;
  cc6.enabled:=true;
end;

procedure TQCIssue.CC4Click(Sender: TObject);
begin
  with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query2.edit;
  end;
  cc5.enabled:=true;
  cc6.enabled:=true;
end;

procedure TQCIssue.CC5Click(Sender: TObject);
var i:integer;
begin
  try
    Query2.first;
    for i:=1 to query2.RecordCount do
      begin
        case query2.updatestatus of
          usinserted:
            begin
                if query2.fieldbyname('YYBH').isnull then
                begin
                  query2.delete;
                end else
                begin
                  query2.edit;
                  query2.FieldByName('YYBH').Value:=query2.FieldByName('YYBH').Value;
                  query2.FieldByName('YWSM').Value:=query2.FieldByName('YWSM').Value;
                  query2.FieldByName('XL_NganHan').Value:=query2.FieldByName('XL_NganHan').Value;
                  query2.FieldByName('XL_DaiHan').Value:=query2.FieldByName('XL_DaiHan').Value;
                  query2.FieldByName('GSBH').Value :=main.Edit2.text;
                  query2.FieldByName('USERDATE').Value:=date;
                  query2.FieldByName('USERID').Value:=main.edit1.text;
                  query2.FieldByName('YN').Value:='2';
                  //memo1.Text:=upsql1.InsertSQL.Text;
                  upsql2.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
                 if query2.fieldbyname('YN').value='0' then
                 begin
                   if  query2.fieldbyname('USERDATE').value>=(date-3) then
                   begin
                     upsql2.Apply(ukdelete);
                   end else
                   begin
                     showmessage(query2.FieldByName('YWSM').Value+' >3 days,can not delete.');
                   end;
                 end else
                 begin
                   query2.edit;
                   query2.FieldByName('YWSM').Value:=query2.FieldByName('YWSM').Value;
                   query2.FieldByName('ZWSM').Value:=query2.FieldByName('ZWSM').Value;
                   query2.FieldByName('XL_NganHan').Value:=query2.FieldByName('XL_NganHan').Value;
                   query2.FieldByName('XL_DaiHan').Value:=query2.FieldByName('XL_DaiHan').Value;
                   query2.FieldByName('GSBH').Value :=main.Edit2.text;
                   query2.FieldByName('USERDATE').Value:=date;
                   query2.FieldByName('USERID').Value:=main.edit1.text;
                   upsql2.apply(ukmodify);
                 end;
             end;
        end;
        query2.next;
      end;
    query2.active:=false;
    query2.cachedupdates:=false;
    query2.requestlive:=false;
    query2.active:=true;
    cc5.enabled:=false;
    cc6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
  //
end;

procedure TQCIssue.CC1Click(Sender: TObject);
begin
  Panel5.Visible:=true;
end;

procedure TQCIssue.cct6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  query2.active  then
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
        for   i:=0   to   query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query2.fields[i].FieldName;
          end;

        query2.First;
        j:=2;
        while   not   query2.Eof   do
        begin
          for   i:=0   to  query2.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query2.Fields[i].Value;
          end;
          query2.Next;
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

procedure TQCIssue.cbSpecialDefctClick(Sender: TObject);
var ssql:string;
begin
  if cbSpecialDefct.Checked then
  begin
    Udatabase:= 'QCBLYYS';//+S             
  end else
  begin
  Udatabase:= 'QCBLYY';
  end;
  ssql:= 'insert into '+Udatabase;
  ssql:=ssql+'(YYBH, DFL, YWSM, ZWSM, AlarmL, StopL, USERDate, USERID, YN, GSBH) ';
  ssql:=ssql+'values (:YYBH, :DFL, :YWSM, :ZWSM, :AlarmL, :StopL, :USERDate, :USERID, :YN,:GSBH)' ;
  UpSQL1.InsertSQL.Text:=ssql;

  ssql:= 'update '+Udatabase;
  ssql:=ssql+' set YYBH = :YYBH,DFL = :DFL,YWSM = :YWSM,ZWSM = :ZWSM,AlarmL = :AlarmL,StopL = :StopL,USERDate = :USERDate,USERID = :USERID ';
  ssql:=ssql+' where YYBH = :OLD_YYBH and GSBH = :OLD_GSBH ';
  UpSQL1.ModifySQL.Text:=ssql;

  ssql:= 'delete from '+Udatabase+' where YYBH = :OLD_YYBH and GSBH = :OLD_GSBH ';
  UpSQL1.DeleteSQL.Text:=ssql;
end;

end.
