unit SupplierSample_Purchaser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSupplierSample_Purchaser = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SamplePurchaser: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierSample_Purchaser: TSupplierSample_Purchaser;

implementation

uses main1,SupplierSample1 ;

{$R *.dfm}

procedure TSupplierSample_Purchaser.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  zszl_dev.SamplePurchaser ,BUSERS.USERNAME as SamplePurchaser_Name from ZSZL ');
    sql.Add('left join zszl_dev  on zszl_dev.zsdh=zszl.zsdh  and zszl_dev.GSBH='''+main.Edit2.text+''' ');
    sql.add('   left join BUSERS  on BUSERS.USERID=zszl_dev.SamplePurchaser ');
    sql.add('   WHERE zszl_dev.SamplePurchaser is not null AND zszl_dev.SamplePurchaser<>'''' and ZSZL.YN=1 ');
    sql.add('   group by zszl_dev.SamplePurchaser,BUSERS.USERNAME ORDER BY zszl_dev.SamplePurchaser ');

    active:=true;
  end;
end;

procedure TSupplierSample_Purchaser.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TSupplierSample_Purchaser.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSupplierSample_Purchaser.FormDestroy(Sender: TObject);
begin
  SupplierSample_Purchaser:=nil;
end;

procedure TSupplierSample_Purchaser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierSample_Purchaser.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSupplierSample_Purchaser.Button2Click(Sender: TObject);
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

procedure TSupplierSample_Purchaser.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    SupplierSample.Edit3.text:= query1.fieldbyname('SamplePurchaser').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TSupplierSample_Purchaser.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

end.
