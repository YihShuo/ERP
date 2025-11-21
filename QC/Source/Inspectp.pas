unit Inspectp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Grids, DBGrids,comobj,
  DBTables;

type
  TInspect = class(TForm)
    Panel1: TPanel;
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
    Edit1: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    sda: TDateTimePicker;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    dcb: TCheckBox;
    Query1rkno: TStringField;
    Query1clbh: TStringField;
    Query1qty: TCurrencyField;
    Query1pass: TStringField;
    Query1iqcdate: TDateTimeField;
    Query1memo: TStringField;
    Query1cfmdate: TDateTimeField;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    Query1ywpm: TStringField;
    Query1ckbh: TStringField;
    procedure BB7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inspect: TInspect;

implementation

uses main1, IQCLISTP;

{$R *.dfm}

procedure TInspect.BB7Click(Sender: TObject);
begin
  if bb5.Enabled then
  begin
    showmessage('Data no Save');
    abort;
  end
  else
  begin
    close;
  end;

end;

procedure TInspect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main.SN41.Enabled:=true;
  main.SN42.Enabled:=true;

  inspect:=nil;
  action:=Cafree;
end;

procedure TInspect.FormCreate(Sender: TObject);
begin
  sda.Date:=now-30;
end;

procedure TInspect.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kcrks.rkno,kcrks.clbh,clzl.ywpm,sum(kcrks.qty) as qty');
    sql.add('    ,ic.pass,ic.iqcdate,ic.memo,kcrks.userdate as cfmdate,kcrk.ckbh ');
    sql.add(' from kcrks');
    sql.add('left join kcrk on kcrks.rkno=kcrk.rkno');
    sql.add('left join clzl on kcrks.clbh=clzl.cldh');
    sql.add('left join ');
    sql.add('	(select iqc.rkno,iqc.clbh,iqc.iqcdate,iqc.pass,iqc.memo from iqc');
    sql.add('   ,(select rkno,clbh,max(iqcdate) as iqcdate from iqc  group by rkno,clbh) as ma');
    sql.add('   where  ma.rkno=iqc.rkno and ma.clbh=iqc.clbh and ma.iqcdate=iqc.iqcdate) ');
    sql.add(' as ic on ic.rkno=kcrks.rkno and ic.clbh=kcrks.clbh');
    sql.add('where ');
    sql.add('	kcrk.gsbh='+''''+main.edit2.text+'''');
    sql.add('	and kcrks.cgbh like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and kcrks.rkno>'+''''+'201206'+'''');
    sql.add(' and kcrks.userdate is not null');
    if edit1.Text='NO' then
      sql.add('and (ic.pass='+''''+'N'+''''+' or ic.pass is null)')
    else
      sql.Add('and ic.pass='+''''+'Y'+'''');
    if dcb.Checked then
      sql.add('	and kcrks.userdate > '+''''+datetostr(sda.Date)+'''' );
    sql.add('group by kcrks.rkno,kcrks.clbh,ic.pass,ic.iqcdate,ic.memo');
    sql.add(',kcrks.userdate,clzl.ywpm,kcrk.ckbh');
    sql.add('order by kcrk.cfmdate,kcrks.rkno,kcrks.clbh');
    sql.add('');
    //memo1.Text:=sql.text;
    active:=true;
  end;
end;

procedure TInspect.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
  if edit1.Text='NO' then
  begin
    bb4.Enabled:=true;
  end;
end;

procedure TInspect.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Query1.FieldByName('cfmdate').value + 4 < Query1.FieldByName('iqcdate').value then
begin
  DBGrid1.Canvas.Font.color:=clred;
  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
end;

if (Query1.FieldByName('cfmdate').value + 4 < Query1.FieldByName('iqcdate').value) and (not Query1.FieldByName('iqcdate').IsNull) then
begin
  DBGrid1.Canvas.Font.color:=clLIME;
  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
end;

if Query1.FieldByName('iqcdate').IsNull then
begin
  DBGrid1.Canvas.Font.color:=clblue;
  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
end;

if (Query1.FieldByName('iqcdate').IsNull) and (Query1.FieldByName('cfmdate').value < now-4) then
begin
  DBGrid1.Canvas.Font.Color:=clred;
  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
end;

end;

procedure TInspect.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit1.Text:=edit1.Text+'**';
    edit;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TInspect.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
        end;
        usmodified:
        begin
          if not query1.fieldbyname('pass').IsNull then
          begin
            query2.SQL.Clear;
            query2.SQL.Add('insert into iqc ');
            query2.SQL.Add('values('+''''+query1.FieldByName('rkno').Value+'''');
            query2.SQL.Add(','+''''+query1.FieldByName('clbh').Value+'''');
            query2.SQL.Add(',getdate(),'+''''+query1.FieldByName('PASS').Value+'''');
            if not query1.FieldByName('memo').IsNull then
              query2.SQL.Add(','+''''+query1.FieldByName('memo').Value+'''')
            else
              query2.SQL.Add(','+''''+''+'''');

            query2.SQL.Add(','+''''+main.Edit1.Text+'''');
            query2.SQL.Add(',getdate())');
            {沒有檢驗不能入庫
            if query1.fieldbyname('pass').Value='Y' then
            begin
              query2.SQL.Add('');
              query2.sql.add('update KCZLS ');
              query2.sql.add('set KCQty=KCQty+'+query1.fieldbyname('Qty').asstring);
              query2.SQL.add('where CKBH='+''''+query1.fieldbyname('CKBH').Value+'''');
              query2.SQL.add('      and CLBH='+''''+query1.fieldbyname('CLBH').Value+'''');

            end;}
            //memo1.text:=query2.sql.text;
            query2.ExecSQL;
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
if length(edit1.Text)>2 then
  edit1.text:=copy(edit1.Text,1,2);
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;


end;

procedure TInspect.BB6Click(Sender: TObject);
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
if length(edit1.Text)>2 then
  edit1.text:=copy(edit1.Text,1,2);
end;

procedure TInspect.DBGrid1DblClick(Sender: TObject);
begin
  if not query1.fieldbyname('pass').IsNull then
  begin
    if IQCLIST<>nil then
    begin
      IQCLIST.show;
    end
    else
    begin
      IQCLIST:=TIQCLIST.create(self);
      IQCLIST.show;
    end;
  end;
end;

procedure TInspect.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  Query1.active  then
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
          for   i:=0   to   Query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
            end;

          Query1.First;
          j:=2;
          while   not   Query1.Eof   do
            begin
              for   i:=0   to  Query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
              end;
            Query1.Next;
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
