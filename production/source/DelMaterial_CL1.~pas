unit DelMaterial_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, DBTables, ExtCtrls,math;

type
  TDelMaterial_CL = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1USAGE: TFloatField;
    Query1DFL: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    Query1OKPerson: TFloatField;
    Edit1: TEdit;
    Label4: TLabel;
    Query1KCQty: TFloatField;
    Query1RemQty: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelMaterial_CL: TDelMaterial_CL;
  var m,n:integer;

implementation

uses DelMaterial1, main1;

{$R *.dfm}

procedure TDelMaterial_CL.FormCreate(Sender: TObject);
//var p:single;
begin
edit1.Text:=inttostr(DelMaterial.SpecMas.FieldByName('Qty').Value);
m:=DelMaterial.SpecMas.FieldByName('Qty').Value;
//edit1.SetFocus;
query1.Params.Items[0].AsString := main.edit2.text;
query1.Params.Items[1].AsString := DelMaterial.SpecMas.fieldbyname('SCBH').value;
query1.Params.Items[2].AsString := DelMaterial.SpecMas.fieldbyname('SCBH').value;
query1.Params.Items[3].AsString := DelMaterial.DelMas.fieldbyname('CKBH').value;
query1.Active:=true;

end;

procedure TDelMaterial_CL.DBGrid1DblClick(Sender: TObject);
var zz:Boolean;
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
if query1.FieldByName('DFL').value='N' then
  begin
    showmessage('Pls contect with develop department first.');
    abort;
  end;
if query1.FieldByName('Remqty').Value<=0 then
  begin
    showmessage('This material already delivery!');
    abort;
  end;

n:=strtoint(edit1.Text);
if  Query1.FieldByName('Qty').value<(Query1.FieldByName('CLSL').value)  then
  begin
    with DelMaterial.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        if  m>n then
          begin
            if   ((Query1.FieldByName('CLSL').value*n/m)<(query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value+0.1)) then
              begin
                fieldbyname('TempQty').value:=trunc((query1.fieldbyname('CLSL').value*n/m)*10+0.5)/10;
              end
              else
                begin
                  fieldbyname('TempQty').value:=trunc((query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value)*10+0.5)/10;
                end;
          end
          else
            begin
              fieldbyname('TempQty').value:=trunc((query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value)*10+0.5)/10;
            end;
        //整數發料(用於一對一材料)

        if round(query1.fieldbyname('USAGE').value)=query1.fieldbyname('USAGE').value then
        begin
          if (round(fieldbyname('TempQty').value) > trunc((query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value)*10+0.5)/10) then
            fieldbyname('TempQty').value :=  trunc((query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value)*10+0.5)/10
          else
            fieldbyname('TempQty').value:=round(fieldbyname('TempQty').value);
        end;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('Qty').value+DelMaterial.DelDet.fieldbyname('TempQty').value ;
    showmessage('Succeed.');
  end
    else
      begin
        showmessage('Already deliver all.');
      end;
end;

procedure TDelMaterial_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    dbgrid1.canvas.font.color:=clred;  
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelMaterial_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TDelMaterial_CL.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
     if FieldByName('CLSL').value<>0 then
      begin
        FieldByName('OKPerson').value:=(FieldByName('Qty').value-FieldByName('CLSL').value)/FieldByName('CLSL').value*100;
      end;
  end;
end;

procedure TDelMaterial_CL.Edit1KeyPress(Sender: TObject; var Key: Char);
begin  
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
end;

procedure TDelMaterial_CL.FormDestroy(Sender: TObject);
begin
DelMaterial_CL:=nil;
end;

procedure TDelMaterial_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TDelMaterial_CL.Edit1Exit(Sender: TObject);
begin
if ((edit1.text='') or (edit1.text='0')) then
  begin
    showmessage('Pls key in Qty.');
    edit1.SetFocus;
    abort;
  end;
if  strtoint(edit1.Text)>DelMaterial.SpecMas.FieldByName('Qty').Value then
  begin
    showmessage('Pls key right Qty');
    edit1.Text:=inttostr(DelMaterial.SpecMas.FieldByName('Qty').Value);
    edit1.SetFocus;
  end;
end;

end.
