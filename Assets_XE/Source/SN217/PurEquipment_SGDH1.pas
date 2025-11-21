unit PurEquipment_SGDH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBCtrls, Mask, ExtCtrls, DBTables,
  DB;

type
  TPurEquipment_SGDH = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1SGNO: TStringField;
    Query1SBBH: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TFloatField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DepName: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurEquipment_SGDH: TPurEquipment_SGDH;

implementation
  uses PurEquipment1, FunUnit;
{$R *.dfm}

procedure TPurEquipment_SGDH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TPurEquipment_SGDH.FormDestroy(Sender: TObject);
begin
  PurEquipment_SGDH:=nil;
end;

procedure TPurEquipment_SGDH.Button1Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select TSCD_SGDHS.SGNO,TSCD_SGDHS.SBBH,TSCD_SGDHS.Qty,IsNull(TSCD_CGZLSS.okQty,0) as okQty,TSCD_SB.YWPM,TSCD_SB.ZWPM,BDepartment.DepName');
     SQL.Add('from TSCD_SGDHS');
     SQL.Add('left join TSCD_SGDH on TSCD_SGDH.SGNO=TSCD_SGDHS.SGNO');
     SQL.Add('left join TSCD_SB on TSCD_SB.SBBH=TSCD_SGDHS.SBBH');
     SQL.Add('left join (select SGNO,SBBH,Sum(Qty) as okQty from TSCD_CGZLSS where SBBH='''+PurEquipment.CGDet.FieldByName('SBBH').AsString+''' and TSCD_CGZLSS.USERDATE>GETDATE()-180 Group by SGNO,SBBH) ');
     SQL.Add('           TSCD_CGZLSS on TSCD_CGZLSS.SBBH=TSCD_SGDHS.SBBH and TSCD_CGZLSS.SGNO=TSCD_SGDHS.SGNO');
     SQL.Add('left join BDepartment on BDepartment.ID=TSCD_SGDH.DepID');
     SQL.Add('where TSCD_SGDHS.SBBH='''+PurEquipment.CGDet.FieldByName('SBBH').AsString+''' ');
     if CB1.Checked=true then
     SQL.Add(' and IsNull(TSCD_SGDHS.Qty,0)>IsNull(TSCD_CGZLSS.okQty,0)   ');
     Active:=true;
   end;
end;

procedure TPurEquipment_SGDH.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('okQty').value>=Query1.fieldbyname('Qty').value then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurEquipment_SGDH.DBGrid1DblClick(Sender: TObject);
begin
  if Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value>0 then
  begin
    with PurEquipment.CGDetS do
    begin
      Insert;
      FieldByName('SGNO').Value:=Query1.FieldByName('SGNO').Value;
      FieldByName('SGQty').Value:=Query1.FieldByName('Qty').Value;
      FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
      Post;
    end;
    Query1.Edit;
    Query1.FieldByName('okQty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
    Query1.Post;
  end;
end;

procedure TPurEquipment_SGDH.Button2Click(Sender: TObject);
var i,count:integer;
    Query_bm:Tbookmark;
    Query_bookmarklist:tbookmarklistEh;
begin

    //Àx¦sSize Selected Rows
    Query1.disablecontrols;
    Query_bm:=Query1.getbookmark;
    Query_bookmarklist:=DBGrid1.selectedrows;
    try
      count:=0;
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        Query1.gotobookmark(pointer(Query_bookmarklist[i]));
        if Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value>0 then
        begin
          with PurEquipment.CGDetS do
          begin
            Insert;
            FieldByName('SGNO').Value:=Query1.FieldByName('SGNO').Value;
            FieldByName('SGQty').Value:=Query1.FieldByName('Qty').Value;
            FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
            Post;
          end;
          Query1.Edit;
          Query1.FieldByName('okQty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('okQty').Value;
          Query1.Post;
        end;
      end;
    finally
      begin
        Query1.gotobookmark(Query_bm);
        Query1.freebookmark(Query_bm);
        Query1.enablecontrols;
      end;
    end;
    //
    Showmessage('Success');
end;

end.
