unit SampleBOMp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables,comobj,
  DBCtrls;

type
  TSampleBOM = class(TForm)
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    YPZLDet: TDBGridEh;
    ExcelBtn: TBitBtn;
    QryBtn: TButton;
    YPZLsQuery: TQuery;
    YPZLQuery: TQuery;
    YPZL_DS: TDataSource;
    YPZLS_DS: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    YPZLMas: TDBGridEh;
    DBGridEh1: TDBGridEh;
    YPZLS2Query: TQuery;
    YPZLS2_DS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure YPZLsQueryAfterOpen(DataSet: TDataSet);
    procedure ExcelBtnClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleBOM: TSampleBOM;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TSampleBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TSampleBOM.FormDestroy(Sender: TObject);
begin
  SampleBOM:=nil;
end;

procedure TSampleBOM.QryBtnClick(Sender: TObject);
begin

  with YPZLQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.YPDH,YPZL.KFJD,YPZL.YPCC,YPZL.YPCCO,YPZL.YPCCL,YPZL.XieXing,YPZL.SheHao,kfxxzl.XieMing,YPZL.ARTICLE,kfxxzl.YSSM,');
    SQL.Add('kfxxzl.JiJie,YPZL.Quantity,kfxxzl.DEVCODE,kfxxzl.GENDER,kfxxzl.DDMH,kfxxzl.DAOMH,kfxxzl.FD from YPZL ');
    SQL.Add('left join kfxxzl on (YPZL.XieXing=kfxxzl.XieXing) and (YPZL.SheHao=kfxxzl.SheHao) ');
    SQL.Add('where YPZL.XieXing like ''%'+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and YPZL.SheHao like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('and YPZL.ARTICLE like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      SQL.Add('and kfxxzl.DEVCODE like ''%'+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and kfxxzl.DAOMH like ''%'+Edit5.Text+'%'' ');
    SQL.Add('order by YPZL.XieXing,YPZL.SheHao');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  YPZLsQuery.Active:=true;
  YPZLs2Query.Active:=true;
  Panel1.Visible:=false;
end;

procedure TSampleBOM.YPZLsQueryAfterOpen(DataSet: TDataSet);
begin
  if YPZLsQuery.RecordCount>0 then ExcelBtn.Enabled:=true else ExcelBtn.Enabled:=false;
end;

procedure TSampleBOM.ExcelBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    //DetailHead:array [0..9] of string;
begin
  if  YPZLsQuery.active  then
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
          //主檔欄位
          for   i:=0   to   YPZLQuery.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=YPZLMas.Columns[i].Title.Caption;
            eclApp.Cells(2,i+1):=YPZLQuery.Fields[i].Value;
          end;
          //明細第4列開始
          eclApp.Cells(4,1):=' ';
          eclApp.Cells(4,2):='PART';
          eclApp.Cells(4,3):='MAT. NO';
          eclApp.Cells(4,4):='MATERIALS';
          eclApp.Cells(4,5):='UNIT';
          eclApp.Cells(4,6):='QTY';
          eclApp.Cells(4,7):='SHOE';
          eclApp.Cells(4,8):='LOSS';
          eclApp.Cells(4,9):='TOTAL QTY';
          eclApp.Cells(4,10):='Supplier';
          j:=5;
          YPZLsQuery.First;
          while   not   YPZLsQuery.Eof   do
          begin
            eclApp.Cells(j,1):=YPZLsQuery.FieldByName('BWBH').Value;
            eclApp.Cells(j,2):=YPZLsQuery.FieldByName('YWSM').Value;
            eclApp.Cells(j,3):=YPZLsQuery.FieldByName('CLBH').Value;
            eclApp.Cells(j,4):=YPZLsQuery.FieldByName('YWPM').Value;
            eclApp.Cells(j,5):=YPZLsQuery.FieldByName('DWBH').Value;
            eclApp.Cells(j,6):=YPZLsQuery.FieldByName('CLSL').Value;
            eclApp.Cells(j,7):=YPZLQuery.FieldByName('Quantity').Value;
            eclApp.Cells(j,8):=YPZLsQuery.FieldByName('LOSS').Value;
            eclApp.Cells(j,9):=strtofloat(YPZLsQuery.FieldByName('CLSL').Value)*strtofloat(YPZLQuery.FieldByName('Quantity').Value)+(1+strtofloat(YPZLsQuery.FieldByName('LOSS').Value));
            eclApp.Cells(j,10):=YPZLsQuery.FieldByName('zsywjc').Value;
            YPZLsQuery.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
  end;
end;

procedure TSampleBOM.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TSampleBOM.BB7Click(Sender: TObject);
begin
  Close;
end;

end.
