unit OrderlistP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls;

type
  TOrderlist = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    QORDER: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    panel1: TPanel;
    QORDERddbh: TStringField;
    QORDERcqdh: TStringField;
    QORDERxiexing: TStringField;
    QORDERarticle: TStringField;
    QORDERkhdh: TStringField;
    QORDERkhpo: TStringField;
    QORDERddjq: TStringField;
    QORDERpairs: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Orderlist: TOrderlist;

implementation

uses ProductionPlanP, mailP;

{$R *.dfm}

procedure TOrderlist.Button1Click(Sender: TObject);
begin
  if ((edit1.Text='') and (edit2.Text='')) then
  begin
    showmessage('Need Xiexing or OrderNo');
    abort;
  end;
  with QORDER do
  begin
    sql.Clear;
    SQL.ADD('SElect ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs from ddzl');
    SQL.ADD('where cqdh='+''''+'VR3'+''''+' and ddJQ >= '+''''+'20120301'+'''');
    SQL.ADD('	AND (mode IS NULL ) ');
    SQL.ADD('	AND CHRQ IS NULL ');
    if (edit1.Text<>'') then
      sql.add(' and xiexing like '+''''+edit1.Text+'%'+'''');
    if (edit2.text<>'') then
      sql.add(' and ddbh like '+''''+edit2.Text + '%' + '''');
    //memo1.Text:=sql.Text;
    active:=TRUE;
  end;
end;

procedure TOrderlist.DBGrid1DblClick(Sender: TObject);
begin
  //更改日期,加總訂單數到WPS更新到WPSS
  with PRODUCTIONPLAN.WorkPlanSs do
   begin
      requestlive:=true;
      cachedupdates:=true;
      Edit;
      Insert;
      FieldByName('workid').Value:= productionplan.workplan.FieldByName('workid').Value;
      FieldByName('mjbh').Value:= productionplan.workplan.FieldByName('mjbh').Value;
      FieldByName('colorno').Value:= productionplan.workplan.FieldByName('colorno').Value;
      FieldByName('ddbh').value:=QORDER.FieldByName('ddbh').value;
      fieldbyname('lastuser').Value:=main.edit1.text;
      FieldByName('userID').Value:=main.edit1.text;
      FieldByName('updatedate').Value:=date;
      FieldByName('creatdate').Value:=date;
      FieldByName('sno').Value:=0;
      Post;
  end;
end;

procedure TOrderlist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  ORDERLIST:=nil; 
end;

end.
