unit BCSHOESP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, StdCtrls,
  GridsEh, DBGridEh;

type
  TBCSHOES = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    SOS: TTabSheet;
    SOWL: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    sosm: TQuery;
    sosd: TQuery;
    sosds1: TDataSource;
    sosds2: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    DBGridEh3: TDBGridEh;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    sdt: TDateTimePicker;
    edt: TDateTimePicker;
    Button2: TButton;
    SOW: TQuery;
    DataSource1: TDataSource;
    getsize: TQuery;
    sosdryno: TStringField;
    sosdsize: TStringField;
    sosdclass: TStringField;
    sosdrqty: TIntegerField;
    sosdlqty: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BCSHOES: TBCSHOES;

implementation

{$R *.dfm}

procedure TBCSHOES.FormCreate(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  edt.Date:=now;
  sdt.DateTime:=now-30;
end;

procedure TBCSHOES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BCSHOES:=nil;
  action:=Cafree;
end;

procedure TBCSHOES.Button1Click(Sender: TObject);
var i : integer;
begin
  with getsize do
  begin
    active:=false;
    sql.Clear;
    sql.add('select size from qc_wht ');
    sql.add(' where xiexing like '+''''+'%'+edit1.text+'%'+'''');
    sql.add('    and shehao like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('    and ARTICLE like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('group by size');
    sql.add('order by size');    
    //memo1.text:=sql.text;
    active:=true;
  end;
  with sosm do
  begin
    sosd.Active:=false;
    active:=false;
    sql.Clear;
    sql.add('select xiexing,SheHao,ARTICLE,CLASS,sum(qty) as qty  ');
    getsize.First;
    while not getsize.Eof  do
    begin
      sql.add(' ,isnull(sum(case  when size='+''''+getsize.FieldByName('size').Value+'''');
      sql.add(' then Qty end),0) as '+''''+getsize.FieldByName('size').Value+'''');
      getsize.Next;
    end;
    sql.add('from qc_wht ');
    sql.add(' where xiexing like '+''''+'%'+edit1.text+'%'+'''');
    sql.add('    and shehao like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('    and ARTICLE like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('group by xiexing,SheHao,ARTICLE,CLASS');
    //memo1.text:=sql.text;
    active:=true;
    sosd.Active:=true;
  end;
  DBGridEh1.Fields[0].DisplayWidth:=15;
  DBGridEh1.Fields[1].DisplayWidth:=7;
  DBGridEh1.Fields[2].DisplayWidth:=10;
  DBGridEh1.Fields[3].DisplayWidth:=6;
  for i :=4 to (DBGridEh1.FieldCount-1) do
    DBGridEh1.Fields[i].DisplayWidth:=5;

end;

procedure TBCSHOES.PageControl1Change(Sender: TObject);
begin
  sosm.Active:=false;
  sosd.Active:=false;
  sow.Active:=false;
end;

procedure TBCSHOES.Button2Click(Sender: TObject);
var i : integer;
begin
  with getsize do
  begin
    active:=false;
    sql.Clear;
    sql.add('select qc_whd.size from qc_whd ');
    sql.add('left join BDepartment on BDepartment.id = qc_whd.dep_id');
    sql.Add('where BDepartment.depname like'+''''+'%'+edit4.text+'%'+'''');
    sql.add('    and convert(smalldatetime,qc_whd.userdate,111) >= '+''''+formatdatetime('yyyy/MM/dd',sdt.date)+'''');
    sql.add('    and convert(smalldatetime,qc_whd.userdate,111) <= '+''''+formatdatetime('yyyy/MM/dd',edt.date)+'''');
    sql.add('group by qc_whd.size');
    sql.add('order by qc_whd.size');
    //memo1.text:=sql.text;
    active:=true;
  end;
  with SOW do
  begin
    sosd.Active:=false;
    active:=false;
    sql.Clear;
    sql.add('select BDepartment.depname,ddzl.article,qc_whd.class ');
    sql.Add(',sum(rqty) as rqty,sum(lqty) as lqty');
    getsize.First;
    while not getsize.Eof  do
    begin
      sql.add(' ,isnull(sum(case  when size='+''''+getsize.FieldByName('size').Value+'''');
      sql.add(' then RQty end),0) as '+''''+getsize.FieldByName('size').Value+'R'+'''');
      sql.add(' ,isnull(sum(case  when size='+''''+getsize.FieldByName('size').Value+'''');
      sql.add(' then LQty end),0) as '+''''+getsize.FieldByName('size').Value+'L'+'''');

      getsize.Next;
    end;
    sql.add('from qc_whd ');
    sql.add('left join ddzl on ddzl.ddbh=qc_whd.ryno');
    sql.add('left join BDepartment on BDepartment.id = qc_whd.dep_id');
    sql.Add('where BDepartment.depname like'+''''+'%'+edit4.text+'%'+'''');
    sql.add('    and convert(smalldatetime,qc_whd.userdate,111) >= '+''''+formatdatetime('yyyy/MM/dd',sdt.date)+'''');
    sql.add('    and convert(smalldatetime,qc_whd.userdate,111) <= '+''''+formatdatetime('yyyy/MM/dd',edt.date)+'''');

    sql.add('group by ddzl.article,BDepartment.depname,qc_whd.class');
    sql.add('order by BDepartment.depname,qc_whd.class');
    //memo1.text:=sql.text;
    active:=true;

  end;
  DBGridEh3.Fields[0].DisplayWidth:=15;
  DBGridEh3.Fields[1].DisplayWidth:=20;
  DBGridEh3.Fields[2].DisplayWidth:=5;
  DBGridEh3.Fields[3].DisplayWidth:=5;
  DBGridEh3.Fields[4].DisplayWidth:=5;
  for i :=5 to (DBGridEh3.FieldCount-1) do
    DBGridEh3.Fields[i].DisplayWidth:=5;

end;

end.
