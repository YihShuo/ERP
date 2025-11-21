unit SamplePolicy_Purchaser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSamplePolicy_Purchaser = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SamplePurchaser: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Button2: TButton;
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
  SamplePolicy_Purchaser: TSamplePolicy_Purchaser;

implementation

uses SamplePolicy1 ;

{$R *.dfm}

procedure TSamplePolicy_Purchaser.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  ZSZL.SamplePurchaser ,BUSERS.USERNAME as SamplePurchaser_Name from ZSZL ');
    sql.add('   left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser ');
    sql.add('   WHERE ZSZL.SamplePurchaser is not null AND ZSZL.SamplePurchaser<>''''  ');
    sql.add('   group by ZSZL.SamplePurchaser,BUSERS.USERNAME ORDER BY ZSZL.SamplePurchaser ');

    active:=true;
  end;
end;

procedure TSamplePolicy_Purchaser.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TSamplePolicy_Purchaser.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    SamplePolicy.Edit2.text:= query1.fieldbyname('SamplePurchaser').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TSamplePolicy_Purchaser.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TSamplePolicy_Purchaser.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSamplePolicy_Purchaser.FormDestroy(Sender: TObject);
begin
SamplePolicy_Purchaser:=nil;
end;

procedure TSamplePolicy_Purchaser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TSamplePolicy_Purchaser.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSamplePolicy_Purchaser.Button2Click(Sender: TObject);
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
