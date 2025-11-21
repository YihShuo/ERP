unit PurchaseCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Menus,comobj,
  dateUtils, GridsEh, DBGridEh,ehlibBDE;

type
  TPurchaseCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1CLSL: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CGDate: TDateTimeField;
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
  PurchaseCheck: TPurchaseCheck;

implementation

uses Purchasecheck_Det1, main1;

{$R *.dfm}

procedure TPurchaseCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurchaseCheck.Button1Click(Sender: TObject);
begin
if ((length(edit1.text)<3) and (length(edit5.text)<5))   then
  begin
    showmessage('You have to key in condition first.');
    abort;
  end;


with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLSS.CGNO,CGZLSS.CLBH,CGZLSS.ZLBH,sum(CGZLSS.Qty) as Qty,sum(CGZLSS.CLSL) as CLSL,');
    sql.add('       CGZLSS.YQDate,CGZLSS.CFMDate,DDZl.XieXing,DDZl.SheHao,DDZl.Article,XXZl.XieMing,');
    sql.add('       CLZl.YWPM,CLZl.DWBH,CGZl.CGDate');
    sql.add('from CGZLSS');
    sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    sql.add('left join DDZL on DDZl.ZLBH=CGZLSS.ZLBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.SheHao ');
    sql.add('left join CLZl on CLZl.CLDh=CGZLSS.CLBH ');
    sql.add('where CGZLSS.CLBH like '+''''+edit1.text+'%'+'''');
    sql.add('  and CGZLSS.ZLBH like '+''''+edit5.text+'%'+'''');
   // sql.add('  and CGZl.GSBH='+''''+main.edit2.text+'''');
    sql.add('group by CGZLSS.CGNO,CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.YQDate,CGZLSS.CFMDate,DDZl.XieXing,');
    sql.add('      DDZl.SheHao,DDZl.Article,XXZl.XieMing,CLZl.YWPM,CLZl.DWBH,CGZl.CGDate');
    sql.add('order by CGZLSS.ZLBH ');
    active:=true;
  end;

end;

procedure TPurchaseCheck.Detail1Click(Sender: TObject);
begin
Purchasecheck_Det:=TPurchasecheck_Det.create(self);
Purchasecheck_Det.show;
end;

procedure TPurchaseCheck.Button2Click(Sender: TObject);
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
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPurchaseCheck.FormDestroy(Sender: TObject);
begin
PurchaseCheck:=nil;
end;

end.
