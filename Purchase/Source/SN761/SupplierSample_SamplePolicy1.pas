unit SupplierSample_SamplePolicy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids,DBGridEh,  StdCtrls, ExtCtrls, DBGrids,comobj,
  GridsEh;

type
  TSupplierSample_SamplePolicy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Edit3: TEdit;
    Query1zsdh: TStringField;
    Query1Season: TStringField;
    Query1CR1: TStringField;
    Query1CR2: TStringField;
    Query1Presell: TStringField;
    Query1SMS: TStringField;
    Query1PT: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1ZSYWJC: TStringField;
    Query1style: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    Query1Country: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
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
  SupplierSample_SamplePolicy: TSupplierSample_SamplePolicy;

implementation

uses  SupplierSample1, main1;

{$R *.dfm}

procedure TSupplierSample_SamplePolicy.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;

    sql.add('select zszlSamplePayment.*,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL.Country from zszlSamplePayment ');
    sql.add('left join ZSZL on ZSZL.zsdh=zszlSamplePayment.zsdh');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser  ');
    sql.add('where 1=1  ');
    if  edit1.Text<>'' then
        sql.add(' and zszlSamplePayment.Season='+''''+edit1.Text+'''');
    if  edit2.Text<>'' then
        sql.add(' and ZSZL.SamplePurchaser='+''''+edit2.Text+'''');
    if  edit3.Text<>'' then
        sql.add(' and ZSZL.Style='+''''+edit3.Text+'''');

    sql.add('and SamplePurchaser is not null ');
    sql.add('and SamplePurchaser<>'''' ');    
    sql.add('and YN='+''''+'2'+'''');
    sql.add('order by ZSYWJC');
    active:=true;
  end;
end;

procedure TSupplierSample_SamplePolicy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TSupplierSample_SamplePolicy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSupplierSample_SamplePolicy.FormDestroy(Sender: TObject);
begin
SupplierSample_SamplePolicy:=nil;
end;

procedure TSupplierSample_SamplePolicy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TSupplierSample_SamplePolicy.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSupplierSample_SamplePolicy.Button2Click(Sender: TObject);
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
