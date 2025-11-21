unit RejectRY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, DBTables, DB, GridsEh, DBGridEh, ExtCtrls, fununit;

type
  TRejectRY = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    edtRY: TEdit;
    DB_RY: TDBGridEh;
    btnQ: TButton;
    Qrytemp: TQuery;
    DataSource1: TDataSource;
    QryRY: TQuery;
    StringField1: TStringField;
    UpRY: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    btnCOPY: TMenuItem;
    QryRYStage: TStringField;
    QryRYSeason: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQClick(Sender: TObject);
    procedure DB_RYDblClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btnCOPYClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RejectRY: TRejectRY;

implementation

uses main1, RejectMaterial1 ;

{$R *.dfm}

procedure TRejectRY.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRejectRY.FormDestroy(Sender: TObject);
begin
  RejectRY:=nil;
end;

procedure TRejectRY.btnQClick(Sender: TObject);
begin
  with QryRY do
  begin
    Active := false;
    sql.Clear;
    SQL.Add('  SELECT RY, '''' as Stage, '''' as Season  ');
    SQL.Add('  FROM MaterialQCcheck_RY mr  ');
    SQL.Add('  WHERE No_ID=''' + RejectMaterial.Qry_Mat.fieldbyname('No_ID').AsString + '''');
    SQL.Add('  AND NOT EXISTS (SELECT 1 FROM RejectMaterialSS r WHERE r.RY=mr.RY )   ');
    if edtRY.Text <> '' then
      SQL.Add('AND RY LIKE ''%' + edtRY.Text + '%'' ');

    SQL.Add('  UNION ALL  ');
    SQL.Add('  SELECT DISTINCT KCRKSS.CGBH,CGZLSS.Stage,CGZL.SEASON   ');
    SQL.Add('  FROM KCRKS ks  ');
    SQL.Add('  LEFT JOIN KCRK k ON k.RKNO=ks.RKNO  ');
    SQL.Add('  LEFT JOIN KCRKSS ON KCRKSS.RKNO=k.RKNO AND KCRKSS.CLBH=ks.CLBH  ');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO=k.ZSNO AND CGZLSS.CLBH=ks.CLBH  ');
    SQL.Add('  LEFT JOIN CGZL ON CGZL.CGNO =CGZLSS.CGNO  ');
    SQL.Add('  WHERE k.ZSNO=''' + RejectMaterial.Qry_Mat.fieldbyname('CGNO').AsString + '''');
    SQL.Add('        AND ks.CLBH=''' + RejectMaterial.Qry_Mat.fieldbyname('CLBH').AsString + '''');
    SQL.Add('        AND NOT EXISTS (SELECT 1 FROM MaterialQCcheck_RY r  ');
    SQL.Add('                        WHERE r.RY=ks.CGBH)');
    SQL.Add('        AND NOT EXISTS (SELECT 1 FROM RejectMaterialSS r  ');
    SQL.Add('                        WHERE r.RY=ks.CGBH and r.CLBH=ks.CLBH and r.CGNO = k.ZSNO)  ');
    if edtRY.Text <> '' then
      SQL.Add('  AND KCRKSS.CGBH LIKE ''' + edtRY.Text + '%''');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TRejectRY.DB_RYDblClick(Sender: TObject);
begin
  with RejectMaterial.Qry_RY do
  begin
    if FieldByName('YN').AsString = '' then
      Insert
    else
      Edit;
    FieldByName('RY').AsString := QryRY.fieldbyname('RY').AsString;
    FieldByName('Stage').AsString := QryRY.fieldbyname('Stage').AsString;
    FieldByName('Season').AsString := QryRY.fieldbyname('Season').AsString;
    QryRY.Delete;
  end;
end;

procedure TRejectRY.PopupMenu1Popup(Sender: TObject);
begin
  btnCOPY.Enabled := false;
  if (QryRY.Active) AND (QryRY.RecordCount > 0) then
    btnCOPY.Enabled := true;
end;

procedure TRejectRY.btnCOPYClick(Sender: TObject);
var
  bm: Tbookmark;
  k: integer;
  bookmarklist: tbookmarklistEH;
begin
  if messagedlg('Do you really want to add these record?', mtconfirmation, [mbYes, mbNo], 0) = mrNo then
    abort;
  QryRY.disablecontrols;
  bm := QryRY.getbookmark;
  bookmarklist := DB_RY.selectedrows;
  try
    for k := 0 to bookmarklist.count - 1 do
    begin
      QryRY.gotobookmark(pointer(bookmarklist[k]));
      DB_RYDblClick(nil);
    end;
  finally
    begin
     //Qry_RY.gotobookmark(bm);
      QryRY.freebookmark(bm);
      QryRY.enablecontrols;
    end;
  end;
end;

end.
