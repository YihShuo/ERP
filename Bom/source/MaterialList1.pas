unit MaterialList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  Grids, DBGrids;

type
  TMaterialList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1lycc: TStringField;
    Query1gjlb: TStringField;
    Query1cqdh: TStringField;
    Query1tyjh: TStringField;
    Button2: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cb1: TCheckBox;
    Query2: TQuery;
    Query3: TQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Query3xiexing: TStringField;
    Query3shehao: TStringField;
    Query3bwbh: TStringField;
    Query3zwsm: TStringField;
    Query3ywsm: TStringField;
    Query2cldh1: TStringField;
    Query2syl: TFloatField;
    Query2ywpm: TStringField;
    Query2USERDATE: TDateTimeField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialList: TMaterialList;

implementation

{$R *.dfm}

procedure TMaterialList.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    DBGridEh3.Visible:=false;
    query2.Active:=false;
    sql.Clear;
    sql.add('select * from CLZL ');
    sql.add('where CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and ZWPM like '+''''+'%'+edit5.Text+'%'+'''');
    sql.add('and ZWPM like '+''''+'%'+edit6.Text+'%'+'''');
    sql.add('and ZWPM like '+''''+'%'+edit7.Text+'%'+'''');
    if cb1.Checked then
      sql.add('and clzmlb='+''''+'Y'+'''');
    sql.add('order by CLDH ');
    active:=true;
    if cb1.Checked then
    begin
      DBGridEh3.Visible:=true;
      query2.Active:=true;
    end;
    query3.Active:=true;
  end;
end;

procedure TMaterialList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialList.Button2Click(Sender: TObject);
var   a:string;
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
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TMaterialList.FormDestroy(Sender: TObject);
begin
MaterialList:=nil;
end;

end.
