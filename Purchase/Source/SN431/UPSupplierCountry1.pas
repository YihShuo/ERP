unit UPSupplierCountry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TUPSupplierCountry = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Button2: TButton;
    Query1Country: TStringField;
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
  UPSupplierCountry: TUPSupplierCountry;

implementation

uses main1,UPSupplier1;   //SupplierMass1 , SupplierSample1,

{$R *.dfm}

procedure TUPSupplierCountry.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select ZSZL_DEV.Country');
    SQL.Add('from ZSZL');
    SQL.Add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('WHERE isnull(ZSZL_DEV.Country ,'''')<>''''');
    SQL.Add('group by ZSZL_DEV.Country');
    SQL.Add('ORDER BY ZSZL_DEV.Country');
    active:=true;
  end;
end;

procedure TUPSupplierCountry.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    // edit2.setfocus
end;

procedure TUPSupplierCountry.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    UPSupplier.Edit5.text:= query1.fieldbyname('Country').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TUPSupplierCountry.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TUPSupplierCountry.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TUPSupplierCountry.FormDestroy(Sender: TObject);
begin
  UPSupplierCountry:=nil;
end;

procedure TUPSupplierCountry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TUPSupplierCountry.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TUPSupplierCountry.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
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
