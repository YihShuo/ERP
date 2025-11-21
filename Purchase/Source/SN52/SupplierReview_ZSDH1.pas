unit SupplierReview_ZSDH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSupplierReview_ZSDH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ED_SupID: TEdit;
    ED_SupName: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    DS1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierReview_ZSDH: TSupplierReview_ZSDH;

implementation

uses SupplierReview1, main1;

{$R *.dfm}

procedure TSupplierReview_ZSDH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSupplierReview_ZSDH.FormDestroy(Sender: TObject);
begin
  SupplierReview_ZSDH := Nil;
end;

procedure TSupplierReview_ZSDH.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT ZSDH, ZSYWJC FROM ZSZL  ');
    SQL.Add('  INNER JOIN ( SELECT DISTINCT SupplierID FROM WF_SupplierReviewS  ');
    SQL.Add('  			 WHERE WF_SupplierReviewS.LNO IN (  ');
    SQL.Add('  			 SELECT LNO FROM WF_SupplierReview  ');
    SQL.Add('  			 WHERE Type = ''Monthly'' ');
    SQL.Add('        AND Year = (SELECT Year FROM WF_SupplierReview WHERE LNO = '''+SupplierReview.QReport.FieldByName('LNO').Value+''' AND Type = ''Yearly'') AND GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('        AND WF_SupplierReview.SFL='''+SupplierReview.QReport.FieldByName('SFL').Value+''')');
    SQL.Add('  			) WF_SupplierReviewS on WF_SupplierReviewS.SupplierID = ZSZL.ZSDH  ');
    SQL.Add('  WHERE ZSDH LIKE ''' + ED_SupID.Text + '%'' AND ZSYWJC LIKE ''%' + ED_SupName.Text + '%''');
    SQL.Add('  AND ZSYWJC <> ''X''  ');
    SQL.Add('  ORDER BY ZSDH  ');
    Active := true;
  end;
end;

procedure TSupplierReview_ZSDH.DBGridEh1DblClick(Sender: TObject);
begin
  SupplierReview.QSupList.Edit;
  SupplierReview.QSupList.FieldByName('SupplierID').Value := Query1.FieldByName('ZSDH').AsString;
  SupplierReview.QSupList.FieldByName('ZSYWJC').Value := Query1.FieldByName('ZSYWJC').AsString;
  Close;
end;

end.
