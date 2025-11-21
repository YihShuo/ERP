unit UPSelectStyle1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TUPSelectStyle = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Style: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPSelectStyle: TUPSelectStyle;

implementation

uses UPStyleGroup1,main1;

{$R *.dfm}

procedure TUPSelectStyle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPSelectStyle.FormDestroy(Sender: TObject);
begin
  UPSelectStyle:=nil;
end;

procedure TUPSelectStyle.Button1Click(Sender: TObject);
begin
      with Query1 do
       begin
         active:=false;
         sql.Clear;
         sql.Add(' SELECT ');
         sql.Add(' DISTINCT z.Style ');
         sql.Add(' FROM ZSZL_DEV z ');
         sql.Add(' WHERE 1=1 ');
         sql.Add(' and GSBH = ' + '''' + main.Edit2.Text + '''');
         if Edit1.Text <> '' then
           begin
             sql.add(' and z.Style Like '''+Edit1.Text+'%'+''' ');
           end;
         sql.Add(' ORDER BY z.Style ');
         active:=true;
         requestlive:=false;
         cachedupdates:=false;
       end;
end;

procedure TUPSelectStyle.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
      with Query1 do
       begin
         active:=false;
         sql.Clear;
         sql.Add(' SELECT ');
         sql.Add(' DISTINCT z.Style ');
         sql.Add(' FROM ZSZL_DEV z ');
         sql.Add(' WHERE 1=1 ');
         sql.Add(' and GSBH = ' + '''' + main.Edit2.Text + '''');
         sql.Add(' ORDER BY z.Style ');
         active:=true;
         requestlive:=false;
         cachedupdates:=false;
       end;
end;

procedure TUPSelectStyle.DBGridEh1DblClick(Sender: TObject);
 begin
  if(not query1.Active) then
    abort;
  if (query1.recordcount>0) then
  begin
    with UPStyleGroup.Query1 do
      begin
        edit;
        UPStyleGroup.Query1.FieldByName(UPStyleGroup.DBGridEh1.Fields[UPStyleGroup.DBGridEh1.Col-1].FieldName).Value := query1.FieldByName('style').Value;
        Post;
      end;
  end;
  query1.Active:=false;
  close;
end;



end.
