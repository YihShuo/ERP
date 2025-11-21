unit InspectorLack1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj;

type
  TInspectorLack = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    SCSMYW: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    SCSMYWDDBH: TStringField;
    SCSMYWCTLack: TIntegerField;
    SCSMYWQtyLack: TFloatField;
    SCSMYWXieXing: TStringField;
    SCSMYWSheHao: TStringField;
    SCSMYWXieMing: TStringField;
    SCSMYWArticle: TStringField;
    SCSMYWShipDate: TDateTimeField;
    SCSMYWCTDD: TIntegerField;
    SCSMYWQtyDD: TIntegerField;
    SCSMYWQtyYW: TFloatField;
    SCSMYWCTYW: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Detail1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InspectorLack: TInspectorLack;

implementation

uses InspectorLack_Det1;

{$R *.dfm}

procedure TInspectorLack.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TInspectorLack.Detail1Click(Sender: TObject);
begin
InspectorLack_Det:=TInspectorLack_Det.create(self);
InspectorLack_Det.show;
end;

procedure TInspectorLack.Button1Click(Sender: TObject);
begin
with SCSMYW do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  SCSMRK.DDBH,count(SCSMRK.CTNO) as CTLack,Sum(SCSMRK.Qty) as QtyLack,XXZL.XieXing,XXZL.SheHao,');
    sql.add('XXZl.XieMing,XXZl.Article,DDZL.ShipDate,SCZLDate.CTQty as CTDD,DDZL.Pairs as QtyDD,SCSMYW.QtyYW,SCSMYW.CTYW ');
    sql.add('from SCSMRK ');
    sql.add('left join DDZL on SCSMRK.DDBH=DDZL.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXIng and DDZl.SheHao=XXZl.SheHao ');
    sql.add('left join SCZLDate  on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('left join (select SCSMYW.DDBH,count(SCSMYW.CTNO) as CTYW,Sum(SCSMRK.Qty) as QtyYW');
    sql.add('            from SCSMYW ');
    sql.add('            left join SCSMRK on SCSMRK.DDBH=SCSMYW.DDBH and SCSMRK.CTNO=SCSMYW.CTNO ');
    sql.add('            where SCSMYW.DDBH like '+''''+edit3.Text+'%'+'''');
    sql.add('            group by SCSMYW.DDBH ) SCSMYW on SCSMYW.DDBH=SCSMRK.DDBH ');
    sql.add('where SCSMRK.YN='+''''+'4'+'''');
    sql.add('and XXZl.Article like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');  
    sql.add('and SCSMRK.DDBH like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('group by  SCSMRK.DDBH,XXZL.XieXing,XXZL.SheHao,');
    sql.add('XXZl.XieMing,XXZl.Article,DDZL.ShipDate,SCZLDate.CTQty,DDZL.Pairs,SCSMYW.QtyYW,SCSMYW.CTYW ');
    sql.add('order by SCSMRK.DDBH ');
    active:=true;
  end
end;

procedure TInspectorLack.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if SCSMYW.Active then
  begin
    if SCSMYW.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   SCSMYW.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SCSMYW.fields[i-1].FieldName;
    end;
  SCSMYW.First;
  j:=2;
  while   not  SCSMYW.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SCSMYW.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SCSMYW.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SCSMYW.Next;
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

procedure TInspectorLack.FormDestroy(Sender: TObject);
begin
InspectorLack:=nil;
end;

end.
