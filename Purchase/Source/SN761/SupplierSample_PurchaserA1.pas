unit SupplierSample_PurchaserA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSupplierSample_PurchaserA = class(TForm)
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
  SupplierSample_PurchaserA: TSupplierSample_PurchaserA;

implementation

uses main1,SupplierSample1, FunUnit ;

{$R *.dfm}

procedure TSupplierSample_PurchaserA.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  zszl_dev.SamplePurchaser ,BUSERS.USERNAME as SamplePurchaser_Name from ZSZL ');
    sql.Add('left join zszl_dev  on zszl_dev.zsdh=zszl.zsdh  and zszl_dev.GSBH='''+main.Edit2.text+''' ');
    sql.add('   left join BUSERS  on BUSERS.USERID=zszl_dev.SamplePurchaser ');
    sql.add('   WHERE zszl_dev.SamplePurchaser is not null AND zszl_dev.SamplePurchaser<>''''  ');
    sql.add('   group by zszl_dev.SamplePurchaser,BUSERS.USERNAME ORDER BY zszl_dev.SamplePurchaser ');
    active:=true;
  end;
end;

procedure TSupplierSample_PurchaserA.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TSupplierSample_PurchaserA.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with SupplierSample.Query1 do
      begin
        edit;
        fieldbyname('SamplePurchaser').value:=query1.fieldbyname('SamplePurchaser').value;
        fieldbyname('SamplePurchaser_Name').value:=query1.fieldbyname('SamplePurchaser_Name').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;

end;

procedure TSupplierSample_PurchaserA.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TSupplierSample_PurchaserA.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSupplierSample_PurchaserA.FormDestroy(Sender: TObject);
begin
  SupplierSample_PurchaserA:=nil;
end;

procedure TSupplierSample_PurchaserA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierSample_PurchaserA.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSupplierSample_PurchaserA.Button2Click(Sender: TObject);
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

end.
