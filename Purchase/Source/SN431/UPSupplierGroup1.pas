unit UPSupplierGroup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TUPSupplierGroup = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1GroupName: TStringField;
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
  UPSupplierGroup: TUPSupplierGroup;

implementation

uses  main1,UPSupplier1;       //SupplierMass1 , SupplierSample1,

{$R *.dfm}

procedure TUPSupplierGroup.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ZSZL_DEV.GroupName');
    SQL.Add('from ZSZL');
    SQL.Add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('WHERE isnull(ZSZL_DEV.GroupName ,'''')<>'''' ');
    SQL.Add('Group by ZSZL_DEV.GroupName ');
    SQL.Add('ORDER BY ZSZL_DEV.GroupName ');
    Active:=true;
  end;
end;

procedure TUPSupplierGroup.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    // edit2.setfocus
end;

procedure TUPSupplierGroup.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    UPSupplier.Edit3.text:= query1.fieldbyname('GroupName').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TUPSupplierGroup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TUPSupplierGroup.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TUPSupplierGroup.FormDestroy(Sender: TObject);
begin
  UPSupplierGroup:=nil;
end;

procedure TUPSupplierGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TUPSupplierGroup.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TUPSupplierGroup.Button2Click(Sender: TObject);
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
