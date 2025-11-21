unit CarttonMoveLack1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls,
  ExtCtrls,comobj;

type
  TCarttonMoveLack = class(TForm)
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
    SCSMCK: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    SCSMCKDDBH: TStringField;
    SCSMCKCTLack: TIntegerField;
    SCSMCKQtyLack: TFloatField;
    SCSMCKXieXing: TStringField;
    SCSMCKSheHao: TStringField;
    SCSMCKXieMing: TStringField;
    SCSMCKArticle: TStringField;
    SCSMCKShipDate: TDateTimeField;
    SCSMCKCTDD: TIntegerField;
    SCSMCKQtyDD: TIntegerField;
    SCSMCKQtyCK: TFloatField;
    SCSMCKCTCK: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarttonMoveLack: TCarttonMoveLack;

implementation

uses CarttonMoveLack_Det1;

{$R *.dfm}

procedure TCarttonMoveLack.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCarttonMoveLack.Button1Click(Sender: TObject);
begin
with SCSMCK do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  SCSMRK.DDBH,count(SCSMRK.CTNO) as CTLack,Sum(SCSMRK.Qty) as QtyLack,XXZL.XieXing,XXZL.SheHao,');
    sql.add('XXZl.XieMing,XXZl.Article,DDZL.ShipDate,SCZLDate.CTQty as CTDD,DDZL.Pairs as QtyDD,SCSMCK.QtyCK,SCSMCK.CTCK ');
    sql.add('from SCSMRK ');
    sql.add('left join DDZL on SCSMRK.DDBH=DDZL.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXIng and DDZl.SheHao=XXZl.SheHao ');
    sql.add('left join SCZLDate  on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('left join (select SCSMCK.DDBH,count(SCSMCK.CTNO) as CTCK,Sum(SCSMRK.Qty) as QtyCK');
    sql.add('            from SCSMCK ');
    sql.add('            left join SCSMRK on SCSMRK.DDBH=SCSMCK.DDBH and SCSMRK.CTNO=SCSMCK.CTNO ');
    sql.add('            where SCSMCK.DDBH like '+''''+edit3.Text+'%'+'''');
    sql.add('            group by SCSMCK.DDBH ) SCSMCK on SCSMCK.DDBH=SCSMRK.DDBH ');
    sql.add('where SCSMRK.YN='+''''+'2'+'''');
    sql.add('and XXZl.Article like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and SCSMRK.DDBH like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('group by  SCSMRK.DDBH,XXZL.XieXing,XXZL.SheHao,');
    sql.add('XXZl.XieMing,XXZl.Article,DDZL.ShipDate,SCZLDate.CTQty,DDZL.Pairs,SCSMCK.QtyCK,SCSMCK.CTCK ');
    sql.add('order by SCSMRK.DDBH ');
    active:=true;
  end
end;

procedure TCarttonMoveLack.Detail1Click(Sender: TObject);
begin
CarttonMoveLack_Det:=TCarttonMoveLack_Det.create(self);
CarttonMoveLack_Det.show;
end;

procedure TCarttonMoveLack.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if SCSMCK.Active then
  begin
    if SCSMCK.recordcount=0 then
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
  for   i:=1   to   SCSMCK.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SCSMCK.fields[i-1].FieldName;
    end;
  SCSMCK.First;
  j:=2;
  while   not  SCSMCK.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SCSMCK.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SCSMCK.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SCSMCK.Next;
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

procedure TCarttonMoveLack.FormDestroy(Sender: TObject);
begin
CarttonMoveLack:=nil;
end;

end.
