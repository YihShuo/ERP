unit SupplierSample_Country1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSupplierSample_Country = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Button2: TButton;
    Query1Country: TStringField;
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
  SupplierSample_Country: TSupplierSample_Country;

implementation

uses main1,SupplierSample1 ;

{$R *.dfm}

procedure TSupplierSample_Country.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  zszl_dev.Country  from ZSZL ');
    sql.Add('left join zszl_dev  on zszl_dev.zsdh=zszl.zsdh  and zszl_dev.GSBH='''+main.Edit2.text+''' ');
    sql.add('   WHERE zszl_dev.Country is not null AND zszl_dev.Country<>''''  ');
    sql.add('   group by zszl_dev.Country ORDER BY zszl_dev.Country ');

    active:=true;
  end;
end;

procedure TSupplierSample_Country.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TSupplierSample_Country.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSupplierSample_Country.FormDestroy(Sender: TObject);
begin
  SupplierSample_Country:=nil;
end;

procedure TSupplierSample_Country.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierSample_Country.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TSupplierSample_Country.Button2Click(Sender: TObject);
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

procedure TSupplierSample_Country.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    SupplierSample.Edit6.text:= query1.fieldbyname('Country').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TSupplierSample_Country.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

end.
