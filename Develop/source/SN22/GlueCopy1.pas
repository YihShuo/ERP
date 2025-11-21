unit GlueCopy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh, jpeg;

type
  TGlueCopy = class(TForm)
    BitBtn1: TBitBtn;
    KFJDQry: TQuery;
    SheHaoQry: TQuery;
    DB1: TDBEdit;
    DB2: TDBEdit;
    InsertQry: TQuery;
    Insert_DS: TDataSource;
    Panel1: TPanel;
    YPZLQry: TQuery;
    YPZL_DS: TDataSource;
    YPZLQryYPDH: TStringField;
    YPZLQryXieXing: TStringField;
    YPZLQrySheHao: TStringField;
    YPZLQryKFJD: TStringField;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Image1: TImage;
    EditYPDH: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditYPDHChange(Sender: TObject);
  private
      DelList:TStringlist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GlueCopy: TGlueCopy;

implementation

uses SampleOrder1,FunUnit;

{$R *.dfm}

procedure TGlueCopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DelList.Free;
  Action:=caFree;
end;

procedure TGlueCopy.FormDestroy(Sender: TObject);
begin
  GlueCopy:=nil;
end;

procedure TGlueCopy.BitBtn1Click(Sender: TObject);
begin
  with InsertQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into ypzls(');
    SQL.Add('YPDH, XH, BWBH, BWLB, CLBH, CSBH, LOSS, CLSL, CLDJ, Currency, Rate, Remark, JGZWSM, JGYWSM, UserID, UserDate, XH1)');
    SQL.Add('(select '''+DB1.Text+''' as YPDH, XH, BWBH, BWLB, CLBH, CSBH, LOSS, CLSL, CLDJ, Currency, Rate, Remark, JGZWSM, JGYWSM, UserID, UserDate,XH1');
    SQL.Add('from ypzls');
    SQL.Add('where YPDH='''+DB2.Text+''' ');
    SQL.Add('and CLBH like ''w%'')');
    ExecSQL;
    showmessage('Finshed Copy');
    GlueCopy.Close;
  end;
end;
procedure TGlueCopy.EditYPDHChange(Sender: TObject);
begin
  with YPZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DISTINCT(YPDH), XieXing, SheHao, KFJD from YPZL');
    SQL.Add('WHERE YPDH LIKE ''%' + EditYPDH.Text + '%''');
    Active:=true;
  end;
end;

end.
