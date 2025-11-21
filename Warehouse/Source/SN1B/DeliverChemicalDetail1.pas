unit DeliverChemicalDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids,comobj;

type
  TDeliverChemicalDetail = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DFL: TStringField;
    Query1Person: TFloatField;
    Query1CKBH: TStringField;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1MEMO: TStringField;
    Query1BLSB: TStringField;
    Query1CFMID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ShowDetail();
  public
    { Public declarations }
  end;

var
  DeliverChemicalDetail: TDeliverChemicalDetail;

implementation
  uses ChemicalMaterial1,main1,FunUnit;
{$R *.dfm}

procedure TDeliverChemicalDetail.ShowDetail();
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select KCLLS.*,SCBLYY.YWSM,KCLL.CKBH,KCLL.CFMID');
     SQL.Add('from KCLLS ');
     SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('where KCLLS.SCBH='''+ChemicalMaterial.Query1.FieldByName('ZLBH1').AsString+''' ');
     SQL.Add('and KCLLS.CLBH='''+ChemicalMaterial.Query1.FieldByName('CLDHZ').AsString+'''  ');
     //20170513
     sql.Add('and KCLL.GSBH='''+ChemicalMaterial.Query1.FieldByName('CQDH').AsString+'''');
     //
     if ChemicalMaterial.CB1.ItemIndex=1 then
      sql.Add('       and KCLLS.BLSB=''N'' ');
     if ChemicalMaterial.CB1.ItemIndex=2 then
      sql.Add('       and KCLLS.BLSB=''Y'' ');
     SQL.Add('order by KCLLS.LLNO ');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;
procedure TDeliverChemicalDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverChemicalDetail.FormCreate(Sender: TObject);
begin
  ShowDetail();
end;

procedure TDeliverChemicalDetail.FormDestroy(Sender: TObject);
begin
  DeliverChemicalDetail:=nil;
end;

procedure TDeliverChemicalDetail.Query1CalcFields(DataSet: TDataSet);
begin
  if query1.FieldByName('CLSL').value<>0 then
  begin
    query1.FieldByName('Person').value:=query1.FieldByName('Qty').value/query1.FieldByName('CLSL').value*100;
  end;
end;

procedure TDeliverChemicalDetail.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
    begin
      if query1.recordcount=0 then
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
    for   i:=1   to   query1.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
      end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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

procedure TDeliverChemicalDetail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
