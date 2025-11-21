unit Article1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TArticle = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Edit3: TEdit;
    Query1XieXing: TStringField;
    Query1XieMing: TStringField;
    Query1ARTICLE: TStringField;
    Query1SheHao: TStringField;
    Query1kfjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sku:string;
  end;

var
  Article: TArticle;

implementation

{$R *.dfm}
uses QC_DailyBonding1, main1;

procedure TArticle.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select xxzl.xiexing, xxzl.shehao,xxzl.article,xxzl.xieming,kfzl.kfjc');
    sql.Add('from xxzl left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.Add('left join kfzl on xxzl.KHDH=kfzl.kfdh');
    sql.add('where xxzl.xiexing like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and xxzl.Shehao like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and xxzl.article like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    if main.edit2.Text='VB1' then
      sql.add('and ((ddzl.GSBH='+''''+main.edit2.Text+''') or (ddzl.GSBH=''VA12'') or (ddzl.GSBH=''VB2''))')
    else
      sql.add('and ddzl.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('group by xxzl.xiexing, xxzl.shehao, xxzl.article,xxzl.xieming,kfzl.kfjc');
    active:=true;
  end;
end;

procedure TArticle.DBGrid1DblClick(Sender: TObject);
var i:integer;
begin
   if query1.RecordCount>0 then
   begin
      with QC_DailyBonding.LabTS do
      begin
          edit;
          fieldbyname('XieXing').Value:=query1.FieldByName('XieXing').Value;
          fieldbyname('SheHao').Value:=query1.FieldByName('SheHao').Value;
          fieldbyname('Article').Value:=query1.FieldByName('Article').Value;
          fieldbyname('kfjc').Value:=query1.FieldByName('kfjc').Value;
          post;
      end;
      query1.Active:=false;
      //20141018
      with QC_DailyBonding.LabTS do
      begin
        QC_DailyBonding.DBGridEh1.Columns[10].PickList.Clear;
        if FieldByName('KFJC').AsString='ADIDAS' then
        begin
          for i:=0 to 27 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(floattostr(i*0.5)+'K');
          end;
          for i:=0 to 27 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(floattostr(i*0.5+1)+'UK');
          end;
        end else if FieldByName('KFJC').AsString='REEBOK' then
        begin
          for i:=0 to 39 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(floattostr(i*0.5+1)+'US');
          end;
        end else if FieldByName('KFJC').AsString='TOMMY' then
        begin
          for i:=0 to 28 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(inttostr(i+20)+'#');
          end;
        end else if FieldByName('KFJC').AsString='SANUK' then//SANUK
        begin
          for i:=0 to 3 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(inttostr(i+10)+'k');
          end;
          for i:=0 to 4 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(inttostr(i+1)+'US');
          end;
          for i:=0 to 11 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(floattostr(i*0.5+6)+'US');
          end;
           for i:=0 to 2 do
          begin
            QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(inttostr(i+12)+'US');
          end;
          // 20141231
        end else if FieldByName('KFJC').AsString='CONVERSE' then
        begin
          for i:=0 to 17 do
          begin
             QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(inttostr(i+1)+'UK');
          end;
          for i:=1 to 13 do
          begin
             QC_DailyBonding.DBGridEh1.Columns[10].PickList.Add(floattostr(i+0.5)+'UK');
          end;
        end;
      end;
      close;
   end;
end;


procedure TArticle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TArticle.FormDestroy(Sender: TObject);
begin
  Article:=nil;
end;

end.
