unit Foxing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus,comobj, GridsEh, DBGridEh,fununit;

type
  TFoxing = class(TForm)
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
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    TS4: TTabSheet;
    DBGrid2: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DataSource2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    DBGrid1: TDBGridEh;
    Edit1: TEdit;
    Edit2: TEdit;
    TempQry: TQuery;
    Label3: TLabel;
    Panel3: TPanel;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Query1lbdh: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1SIZ: TStringField;
    Query1LenFox: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Query1LastCode: TStringField;
    BBT7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  Foxing: TFoxing;
  NDate:TDate;

implementation

uses main1,CLLBZL1,I_CLLBZL1;

{$R *.dfm}

procedure TFoxing.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('Insert into  '+main.LIY_DD+'.dbo.lastsizefox (lbdh, CLBH , SIZ, LenFox, USERID, USERDATE, YN )');
  UpdateSQL1.InsertSQL.Add('Values (:lbdh, :CLBH, :SIZ, :LenFox, :USERID, :USERDATE, :YN)');

  UpdateSQL1.ModifySQL.Clear;
  UpdateSQL1.ModifySQL.Add('update  '+main.LIY_DD+'.dbo.lastsizefox');
  UpdateSQl1.ModifySQL.Add('set LenFox = :LenFox,USERDate = :USERDate,USERID = :USERID,YN = :YN');
  UpdateSQL1.ModifySQL.Add('where SIZ = :OLD_SIZ and CLBH = :OLD_CLBH and lbdh = :OLD_lbdh');

  UpdateSQL1.DeleteSQL.Clear;
  UpdateSQL1.DeleteSQL.Add('delete from  '+main.LIY_DD+'.dbo.lastsizefox');
  UpdateSQL1.DeleteSQL.Add('where SIZ = :OLD_SIZ and CLBH = :OLD_CLBH and lbdh = :OLD_lbdh')
end;

procedure TFoxing.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TFoxing.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    sql.Clear;
    //
    SQL.Add('select LBDH,YWSM,CLBH,SIZ,lenFox,LastCode,MIN(USERID) as USERID,MAX(USERDATE) as USERDATE,MAX(YN) as YN from ( ');
    SQL.Add('select lastsizefox.lbdh,CLLBZL.YWSM,lastsizeR.CLBH,lastsizeR.SIZ,lastsizefox.LenFox,lastsizefox.USERID,lastsizefox.USERDATE,lastsizefox.YN,LastDatas.LastCode');
    SQL.Add('from lastsizeR');
    SQL.Add('left join '+main.LIY_DD+'.dbo.lastsizefox lastsizefox on lastsizefox.CLBH=lastsizeR.CLBH and lastsizefox.Siz=lastsizeR.Siz');
    SQL.Add('left join LastDatas on lastsizeR.CLBH=LastDatas.CLBH ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.CLLBZL CLLBZL on CLLBZL.cllb=lastsizefox.lbdh');
    SQL.Add('where lastsizeR.CLBH like '''+Edit1.Text+'%''');
    SQL.Add('and LastDatas.LastCode   like '''+Edit2.Text+'%''');
    SQL.Add('Union all ');
    SQL.Add('select null as lbdh,null as YWSM,lastsizeR.CLBH,lastsizeR.SIZ,null as LenFox,lastsizeR.USERID,lastsizeR.USERDATE,lastsizeR.YN,LastDatas.LastCode');
    SQL.Add('from lastsizeR');
    SQL.Add('left join LastDatas on lastsizeR.CLBH=LastDatas.CLBH ');
    SQL.Add('where lastsizeR.CLBH like '''+Edit1.Text+'%''');
    SQL.Add('and LastDatas.LastCode   like '''+Edit2.Text+'%''');
    SQL.Add(') lastsizeR ');
    SQL.Add('where 1=1 ');
    if Edit5.Text<>'' then
    SQL.Add('and YWSM like '''+Edit5.Text+'%'' ');
    SQL.Add('Group by LBDH,YWSM,CLBH,SIZ,lenFox,LastCode ');
    SQL.Add('order by LBDH,CLBH,SIZ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Panel2.Visible:=false;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  BBT7.Enabled:=true;
end;

procedure TFoxing.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
  Panel3.Visible:=true;
end;

procedure TFoxing.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TFoxing.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB4.enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TFoxing.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
  end;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
  BB2.enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TFoxing.BB5Click(Sender: TObject);
var i:integer;
    y,m:string;
begin

  try
    Query1.first;
      for i:=1 to Query1.RecordCount do
      begin
          case Query1.updatestatus of
            usmodified:
            begin
               if ( (Query1.FieldByName('lbdh').AsString<>'') and (Query1.FieldByName('LenFox').AsString<>'') ) then
               begin
                 Query1.edit;
                 Query1.FieldByName('userID').Value:=main.edit1.text;
                 Query1.FieldByName('userdate').Value:=Ndate;
                 Query1.FieldByName('YN').Value:='1';
                 Query1.Post;
                 if Query1.FieldByName('lbdh').OldValue=null then
                 begin
                   UpdateSQL1.apply(ukInsert);
                 end else
                 begin
                   UpdateSQL1.apply(ukmodify);
                 end;
               end else if ( (Query1.FieldByName('lbdh').OldValue<>null) and (Query1.FieldByName('LenFox').AsString='') ) then
               begin
                 UpdateSQL1.apply(ukDelete);
               end;
            end;
          end;
          Query1.next;
      end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TFoxing.Button2Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select CLLBZL.ywsm, lastsizeR.CLBH,CLZL.ywpm ');
    sql.add(',sum(case when lastsizefox.SIZ like ''%01.0%'' then lastsizefox.LenFox  end) as ''01.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%01.5%'' then lastsizefox.LenFox  end) as ''01.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%02.0%'' then lastsizefox.LenFox  end) as ''02.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%02.5%'' then lastsizefox.LenFox  end) as ''02.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%03.0%'' then lastsizefox.LenFox  end) as ''03.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%03.5%'' then lastsizefox.LenFox  end) as ''03.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%04.0%'' then lastsizefox.LenFox  end) as ''04.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%04.5%'' then lastsizefox.LenFox  end) as ''04.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%05.0%'' then lastsizefox.LenFox  end) as ''05.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%05.5%'' then lastsizefox.LenFox  end) as ''05.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%06.0%'' then lastsizefox.LenFox  end) as ''06.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%06.5%'' then lastsizefox.LenFox  end) as ''06.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%07.0%'' then lastsizefox.LenFox  end) as ''07.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%07.5%'' then lastsizefox.LenFox  end) as ''07.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%08.0%'' then lastsizefox.LenFox  end) as ''08.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%08.5%'' then lastsizefox.LenFox  end) as ''08.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%09.0%'' then lastsizefox.LenFox  end) as ''09.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%09.5%'' then lastsizefox.LenFox  end) as ''09.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%10.0%'' then lastsizefox.LenFox  end) as ''10.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%10.5%'' then lastsizefox.LenFox  end) as ''10.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%11.0%'' then lastsizefox.LenFox  end) as ''11.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%11.5%'' then lastsizefox.LenFox  end) as ''11.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%12.0%'' then lastsizefox.LenFox  end) as ''12.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%12.5%'' then lastsizefox.LenFox  end) as ''12.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%13.0%'' then lastsizefox.LenFox  end) as ''13.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%13.5%'' then lastsizefox.LenFox  end) as ''13.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%14.0%'' then lastsizefox.LenFox  end) as ''14.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%14.5%'' then lastsizefox.LenFox  end) as ''14.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%15.0%'' then lastsizefox.LenFox  end) as ''15.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%15.5%'' then lastsizefox.LenFox  end) as ''15.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%16.0%'' then lastsizefox.LenFox  end) as ''16.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%16.5%'' then lastsizefox.LenFox  end) as ''16.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%17.0%'' then lastsizefox.LenFox  end) as ''17.0''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%17.5%'' then lastsizefox.LenFox  end) as ''17.5''');
    sql.add(',sum(case when lastsizefox.SIZ like ''%18.0%'' then lastsizefox.LenFox  end) as ''18.0''');
    sql.Add('from lastsizeR');
    sql.Add('left join CLZL on lastsizeR.CLBH=CLZL.CLDH ');
    sql.Add('left join '+main.LIY_DD+'.dbo.lastsizefox lastsizefox on lastsizefox.CLBH=lastsizeR.CLBH and lastsizefox.Siz=lastsizeR.Siz ');
    sql.Add('left join '+main.LIY_DD+'.dbo.CLLBZL CLLBZL on CLLBZL.cllb=lastsizefox.lbdh ');
    sql.Add('where lastsizeR.CLBH like '+''''+Edit3.Text+'%'+'''');
    if Edit6.Text<>'' then
    sql.add('and CLLBZL.ywsm like '''+Edit6.Text+'%'' ');
    sql.Add('and CLZL.YWPM  like '+''''+Edit4.Text+'%'+'''');
    sql.Add('group by CLLBZL.ywsm,lastsizeR.CLBH,CLZL.ywpm   ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.enabled:=false;
  BBT6.enabled:=false;
end;

procedure TFoxing.Query2AfterOpen(DataSet: TDataSet);
var i:integer;
begin
   with DBGrid2 do
   begin
     columns[0].Width:=80;
     columns[0].title.Caption:='Ghi chu';
     columns[1].Width:=80;
     columns[1].title.Caption:='LastNo';
     columns[2].Width:=80;
     columns[2].title.Caption:='LastName';
     for i:=3 to query2.FieldCount-1 do
     begin
       columns[i].Width:=40;
     end;
   end;
end;

procedure TFoxing.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   query1.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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

procedure TFoxing.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query2.Active then
  begin
    if query2.recordcount=0 then
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
    for   i:=1   to   DBGrid2.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DBGrid2.fields[i-1].FieldName;
    end;
    query2.First;
    j:=2;
    while   not  query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DBGrid2.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=DBGrid2.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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

procedure TFoxing.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.Selectedfield.fieldname='lbdh' then
  begin
     CLLBZL:=TCLLBZL.Create(self);
     CLLBZL.ShowModal();
  end;
end;

procedure TFoxing.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
end;

procedure TFoxing.BBT7Click(Sender: TObject);
begin
  I_CLLBZL:=TI_CLLBZL.Create(self);
  I_CLLBZL.Show;
end;

end.
