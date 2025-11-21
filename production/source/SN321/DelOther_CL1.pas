unit DelOther_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TDelOther_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1USAGE: TFloatField;
    Query1DFL: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    Edit1: TEdit;
    Button1: TButton;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Person: TFloatField;
    Query2: TQuery;
    Query1KCQty: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_CL: TDelOther_CL;

implementation

uses DelOther1, main1;

{$R *.dfm}

procedure TDelOther_CL.Button1Click(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,YN from DDZL ');
    sql.add('where DDBH='+''''+edit1.Text+'''');
    active:=true;
    if fieldbyname('YN').value<>'5' then
      begin {
        if fieldbyname('YN').value='5' then
          begin
            showmessage('Already finished. Pls contact Manager.');
            abort;
          end
          else
            begin }
              query1.Active:=false;
              query1.Params.Items[0].AsString := main.edit2.text;
              query1.Params.Items[1].AsString := edit1.text;
              query1.Params.Items[2].AsString := edit1.text;   
              query1.Params.Items[3].AsString := DelOther.DelMas.fieldbyname('CKBH').value;
              query1.Active:=true;
           // end;
      end
        else
          begin
            showmessage('Already Locked.');
            abort;
          {
            active:=false;
            sql.clear;
            sql.add('select YWCP.DDBH from YWCP ');
            sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
            sql.add('where YWDD.YSBH= '+''''+edit1.Text+'''');
            active:=true;
            if recordcount>0 then
              begin
                showmessage('Already finish production 7 Days.');
                abort;
              end
              else
                begin 
                  query1.Active:=false;
                  query1.Params.Items[0].AsString := main.edit2.text;
                  query1.Params.Items[1].AsString := edit1.text;
                  query1.Params.Items[2].AsString := edit1.text;  
                  query1.Params.Items[3].AsString := DelOther.DelMas.fieldbyname('CKBH').value;
                  query1.Active:=true;
                end;  }
          end;
  end;
end;

procedure TDelOther_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_CL.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end; 
if query1.FieldByName('KCQty').value=0 then
  begin
    showmessage('khong con ton kho, van can mo phieu sao?');
  end;
if query1.FieldByName('DFL').value='N' then
  begin
    showmessage('Pls contect with develop department first.');
    abort;
  end;
  begin
    with DelOther.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('BLSB').value:='Y';
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;         
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
  end ;
    {else
      begin
        showmessage('Already deliver.');
      end; }
end;

procedure TDelOther_CL.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
     if FieldByName('CLSL').value<>0 then
      begin
        FieldByName('Person').value:=(FieldByName('Qty').value-FieldByName('CLSL').value)/FieldByName('CLSL').value*100;
      end;
  end;
end;

procedure TDelOther_CL.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.SetFocus;
end;

procedure TDelOther_CL.FormDestroy(Sender: TObject);
begin
DelOther_CL:=nil;
end;

procedure TDelOther_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TDelOther_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TDelOther_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
