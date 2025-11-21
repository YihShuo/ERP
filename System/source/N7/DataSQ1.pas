unit DataSQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh;

type
  TDataSQ = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    Query2ddbh: TStringField;
    Query2qty: TIntegerField;
    DBGrid1: TDBGridEh;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSQ: TDataSQ;

implementation

{$R *.dfm}

procedure TDataSQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDataSQ.FormDestroy(Sender: TObject);
begin
DataSQ:=nil;
end;

procedure TDataSQ.BitBtn1Click(Sender: TObject);
var i: Integer;
begin
 with query2 do
 begin
  active:=false;
  sql.clear;
  sql.add('SELECT ddbh, sum (qty) as qty FROM ywcp  ');
  sql.Add('where');
  sql.Add(' ddbh in ( select ddbh from ddzl where khpo ='''+edit2.text+''')');
  sql.Add('and sb=1');
  sql.Add('group by ddbh');
  active:=true;
 end;
  with query1 do
 begin
  active:=false;
  sql.clear;
  sql.add('SELECT p.report_date, p.khpo,p.quantity, p.fg10,p.fg14 ');
  sql.add('FROM po_daily p');
  sql.add('INNER JOIN (   ');
  sql.add('  SELECT khpo, MAX(id) as max_id ');
  sql.add('  FROM po_daily  ');
  sql.add('  WHERE khpo ='''+edit2.text+'''');
  sql.add('  GROUP BY khpo');
  sql.add(') max_ids ON p.khpo = max_ids.khpo ');
  sql.add('ORDER BY p.id DESC');
  active:=true;
 end;
  with DBGridEh1 do
    begin
    for i := 0 to Columns.Count - 1 do
    Columns[i].Width := 100; // Gán width là 100 cho m?i c?t
    end;
end;

procedure TDataSQ.Button1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  with query1 do
 begin
  active:=false;
  sql.clear;
  sql.add('SELECT p.report_date, p.khpo,p.quantity, p.fg10,p.fg14 ');
  sql.add('FROM po_daily p');
  sql.add('  WHERE khpo  like''%'+Edit2.Text+'%'' ');
  active:=true;
 end;
  with DBGridEh1 do
    begin
    for i := 0 to Columns.Count - 1 do
    Columns[i].Width := 100; // Gán width là 100 cho m?i c?t
    end;

  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('¨S¦³¦w¸ËMicrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   4   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   4   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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
