unit SupplierKPI_Purchaser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSupplierKPI_Purchaser = class(TForm)
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
  SupplierKPI_Purchaser: TSupplierKPI_Purchaser;

implementation

uses main1,SupplierSample1 , MaterialMOQ1, SupplierKPI1;

{$R *.dfm}

procedure TSupplierKPI_Purchaser.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  ZSZL_DEV.SamplePurchaser ,BUSERS.USERNAME as SamplePurchaser_Name from ZSZL ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser ');
    sql.add('   WHERE ZSZL_DEV.SamplePurchaser is not null AND ZSZL_DEV.SamplePurchaser<>''''  ');
    sql.add('   group by ZSZL_DEV.SamplePurchaser,BUSERS.USERNAME ORDER BY ZSZL_DEV.SamplePurchaser ');
    active:=true;
  end;
end;

procedure TSupplierKPI_Purchaser.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TSupplierKPI_Purchaser.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    SupplierKPI.Edit2.text:= query1.fieldbyname('SamplePurchaser').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TSupplierKPI_Purchaser.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TSupplierKPI_Purchaser.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSupplierKPI_Purchaser.FormDestroy(Sender: TObject);
begin
SupplierKPI_Purchaser:=nil;
end;

procedure TSupplierKPI_Purchaser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TSupplierKPI_Purchaser.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSupplierKPI_Purchaser.Button2Click(Sender: TObject);
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
