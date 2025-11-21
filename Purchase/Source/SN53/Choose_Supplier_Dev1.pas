unit Choose_Supplier_Dev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TChoose_Supplier_Dev = class(TForm)
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
  Choose_Supplier_Dev: TChoose_Supplier_Dev;

implementation

uses SupplierReviewDevelop1, main1;

{$R *.dfm}

procedure TChoose_Supplier_Dev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TChoose_Supplier_Dev.FormDestroy(Sender: TObject);
begin
  Choose_Supplier_Dev:=nil;
end;

procedure TChoose_Supplier_Dev.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT ZSDH, ZSYWJC FROM ZSZL  ');
    SQL.Add('  INNER JOIN ( SELECT DISTINCT SupplierID FROM WF_SupplierReviewS_Dev  ');
    SQL.Add('  			 WHERE WF_SupplierReviewS_Dev.LNO IN (  ');
    SQL.Add('  			 SELECT LNO FROM WF_SupplierReview_Dev  ');
    SQL.Add('  			 WHERE Type = ''Monthly'' ');
    SQL.Add('        AND Year = (SELECT Year FROM WF_SupplierReview_Dev WHERE LNO = '''+SupplierReviewDevelop.QReport.FieldByName('LNO').Value+''' AND Type = ''Yearly'') AND GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('        AND WF_SupplierReview_Dev.SFL='''+SupplierReviewDevelop.QReport.FieldByName('SFL').Value+''')');
    SQL.Add('  			) WF_SupplierReviewS_Dev on WF_SupplierReviewS_Dev.SupplierID = ZSZL.ZSDH  ');
    SQL.Add('  WHERE ZSDH LIKE ''' + ED_SupID.Text + '%'' AND ZSYWJC LIKE ''%' + ED_SupName.Text + '%''');
    SQL.Add('  AND ZSYWJC <> ''X''  ');
    SQL.Add('  ORDER BY ZSDH  ');
    Active := true;
  end;
end;

procedure TChoose_Supplier_Dev.DBGridEh1DblClick(Sender: TObject);
begin
  SupplierReviewDevelop.QSupList.Edit;
  SupplierReviewDevelop.QSupList.FieldByName('SupplierID').Value := Query1.FieldByName('ZSDH').AsString;
  SupplierReviewDevelop.QSupList.FieldByName('ZSYWJC').Value := Query1.FieldByName('ZSYWJC').AsString;
  Close;
end;

end.
