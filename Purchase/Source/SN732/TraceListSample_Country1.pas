unit TraceListSample_Country1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TTraceListSample_Country = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Button2: TButton;
    Query1Country: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceListSample_Country: TTraceListSample_Country;

implementation

uses SupplierSample1 , TraceListSample1, TraceListSample_Style1, Payment1,
  TraceList1;

{$R *.dfm}

procedure TTraceListSample_Country.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  ZSZL.Country  from ZSZL ');
    sql.add('   WHERE ZSZL.Country is not null AND ZSZL.Country<>''''  ');
    sql.add('   group by ZSZL.Country ORDER BY ZSZL.Country ');

    active:=true;
  end;
end;

procedure TTraceListSample_Country.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TTraceListSample_Country.DBGrid1DblClick(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    if (TraceListSample_Country.Label1.Caption='TraceListSample') and (TraceListSample_Country.Label2.Caption='SupplierCountry') then
          TraceListSample.Edit8.text:= query1.fieldbyname('Country').value ;
    if (TraceListSample_Country.Label1.Caption='TraceListSample') and (TraceListSample_Country.Label2.Caption='ProdLocation') then
          TraceListSample.Edit7.text:= query1.fieldbyname('Country').value ;
    {
    //20141030 ¼Ö»õ¥Îµù¸Ñ
    if TraceListSample_Country.Label1.Caption='TraceList' then
       TraceList.Edit8.text:= query1.fieldbyname('Country').value ;
    if (TraceListSample_Country.Label1.Caption='Payment') and (TraceListSample_Country.Label2.Caption='SupplierCountry') then
       Payment.Edit8.text:= query1.fieldbyname('Country').value ;
    if (TraceListSample_Country.Label1.Caption='Payment') and (TraceListSample_Country.Label2.Caption='ProdLocation') then
       Payment.Edit10.text:= query1.fieldbyname('Country').value ;
    }
    query1.Active:=false;
    close;
  end;

end;

procedure TTraceListSample_Country.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TTraceListSample_Country.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TTraceListSample_Country.FormDestroy(Sender: TObject);
begin
TraceListSample_Country:=nil;
end;

procedure TTraceListSample_Country.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TTraceListSample_Country.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TTraceListSample_Country.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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

end.
