unit PurTotal_SGDH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Mask,
  DBCtrls;

type
  TPurTotal_SGDH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SGNO: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DepName: TStringField;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    UpdateSQL1: TUpdateSQL;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurTotal_SGDH: TPurTotal_SGDH;

implementation

uses PurTotal1, main1;

{$R *.dfm}

procedure TPurTotal_SGDH.Button1Click(Sender: TObject);
var CLBH:string;
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select SGDHS.SGNO,SGDHS.CLBH,SGDHS.Qty,IsNull(CGZLSS.okQty,0) as okQty,CLZL.YWPM,CLZL.ZWPM,BDepartment.DepName  ');
     SQL.Add('from SGDHS ');
     SQL.Add('left join SGDH on SGDH.SGNO=SGDHS.SGNO  ');
     SQL.Add('left join CLZL on CLZL.CLDH = SGDHS.CLBH  ');
     SQL.Add('left join (select ZLBH,CLBH,Sum(Qty) as okQty   ');
     SQL.Add('  		     from CGZLSS where CLBH like '''+DBEdit1.Text+'%'+'''  and CGZLSS.USERDATE>GETDATE()-180 Group by ZLBH,CLBH)   ');
     SQL.Add('           CGZLSS on CGZLSS.CLBH=SGDHS.CLBH and CGZLSS.ZLBH=SGDHS.SGNO  ');
     SQL.Add('left join BDepartment on BDepartment.ID=SGDH.DepID  ');
     SQL.add('where SGDH.CFMID<>''NO'' and SGDH.SGNO <> ''X'' ');
     if edit1.Text <> '' then
        SQL.add('and  SGDHS.SGNO like '''+edit1.Text+'%'+'''');

     SQL.add('and  SGDHS.CLBH like '''+DBEdit1.Text+'%'+'''');
     //sql.add('and SGDH.GSBH='+''''+main.Edit2.Text+'''');
     if CB1.Checked=true then
        SQL.Add(' and IsNull(SGDHS.Qty,0)>IsNull(CGZLSS.okQty,0)   ');
     Active:=true;
  end;
end;

procedure TPurTotal_SGDH.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('okQty').value>=Query1.fieldbyname('Qty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurTotal_SGDH.DBGridEh1DblClick(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  if Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value>0 then
  begin
    with PurTotal.CGS  do
    begin
      Insert;
      FieldByName('ZLBH').Value:=Query1.FieldByName('SGNO').Value;
      FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
      Post;
    end;
    Query1.Edit;
    Query1.FieldByName('okQty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
    Query1.Post;
  end;
end;

procedure TPurTotal_SGDH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TPurTotal_SGDH.FormDestroy(Sender: TObject);
begin
  PurTotal_SGDH:=nil
end;

procedure TPurTotal_SGDH.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

end.
