unit PurSample_CBY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Math, Menus, comobj,
  GridsEh, DBGridEh;

type
  TPurSample_CBY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    MatNoEdit: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    YPZLSQry: TQuery;
    MatDS: TDataSource;
    YPZLSQryCLBH: TStringField;
    YPZLSQryywpm: TStringField;
    YPZLSQryokQty: TCurrencyField;
    YPZLSQryzsywjc: TStringField;
    YPZLSQryCSBH: TStringField;
    YPZLSQryUserName: TStringField;
    YPZLSQryCLZMLB: TStringField;
    ClzhzlQry: TQuery;
    DetDS: TDataSource;
    ClzhzlQryCLDH: TStringField;
    ClzhzlQryYWPM: TStringField;
    ClzhzlQrysyl: TFloatField;
    YPZLSQryDWBH: TStringField;
    ClzhzlQryokQty: TCurrencyField;
    ClzhzlQryDWBH: TStringField;
    CKBox: TCheckBox;
    PopupMenu: TPopupMenu;
    PurchaseDetail1: TMenuItem;
    NotBuyCK: TCheckBox;
    Label5: TLabel;
    StageEdit: TEdit;
    Label6: TLabel;
    SeasonEdit: TEdit;
    Button2: TButton;
    Label7: TLabel;
    SupnoEdit: TEdit;
    Label8: TLabel;
    SupnameEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    YPZLSQryCTS: TBooleanField;
    ClzhzlQryCTS: TBooleanField;
    procedure Button1Click(Sender: TObject);
    procedure PurchaseDetail1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_CBY: TPurSample_CBY;

implementation

uses
  main1, PurSample1, PurSample_CBY_Detail1, FunUnit;

{$R *.dfm}

procedure TPurSample_CBY.Button1Click(Sender: TObject);
  function GetPartID(Str:string):String;
  begin
    result:=Copy(Str,Pos('-',Str)+1,Length(Str));
  end;
begin
  if (SeasonEdit.Text = '') OR (StageEdit.Text = '') then
  begin
    ShowMessage('Plase Input Season and Stage!');
    Exit;
  end;
  //
  with YPZLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ZLZLS2.CLBH, CLZL.YWPM, ZLZLS2.CSBH, ZSZL.ZSYWJC, ISNULL(CGZL.okQty, 0) AS okQty, CLZL.CLZMLB, CLZL.DWBH, BUsers.USERNAME, CAST(CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS CTS FROM (');
    SQL.Add('  SELECT XieXing, SheHao, CLBH, MAX(CSBH) AS CSBH FROM (');
    SQL.Add('    SELECT CBYtoSpecS.XieXing, CBYtoSpecS.SheHao, CBYtoSpecS.CLBH, CBYtoSpecS.CSBH FROM CBYtoSpecS');
    SQL.Add('    LEFT JOIN CBYtoFactoryS ON CBYtoFactoryS.XieXing = CBYtoSpecS.XieXing AND CBYtoFactoryS.SheHao = CBYtoSpecS.SheHao AND CBYtoFactoryS.BWBH = CBYtoSpecS.BWBH');
    SQL.Add('    LEFT JOIN BWZL ON BWZL.BWDH = CBYtoSpecS.BWBH');
    SQL.Add('    WHERE CBYtoFactoryS.BWBH IS NULL');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT CBYtoFactoryS.XieXing, CBYtoFactoryS.SheHao, CBYtoFactoryS.CLBH, CBYtoFactoryS.CSBH FROM CBYtoFactoryS');
    SQL.Add('    LEFT JOIN CBYtoSpecS ON CBYtoSpecS.XieXing = CBYtoFactoryS.XieXing AND CBYtoSpecS.SheHao = CBYtoFactoryS.SheHao AND CBYtoSpecS.BWBH = CBYtoFactoryS.BWBH');
    SQL.Add('    LEFT JOIN BWZL ON BWZL.BWDH = CBYtoFactoryS.BWBH');
    SQL.Add('    WHERE CBYtoSpecS.BWBH IS NOT NULL');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT CBYConstantS.XieXing, CBYConstantS.SheHao, CBYConstantS.CLBH, CBYConstantS.CSBH FROM CBYConstantS');
    SQL.Add('    LEFT JOIN CBYtoSpecS ON CBYConstantS.XieXing = CBYtoSpecS.XieXing AND CBYConstantS.SheHao = CBYtoSpecS.SheHao AND CBYConstantS.BWBH = CBYtoSpecS.BWBH');
    SQL.Add('    LEFT JOIN BWZL ON BWZL.BWDH = CBYtoSpecS.BWBH');
    SQL.Add('    WHERE CBYConstantS.CLBH IS NOT NULL AND CBYConstantS.CSBH IS NOT NULL');
    SQL.Add('  ) AS ZLZLS2');
    SQL.Add('  GROUP BY XieXing, SheHao, CLBH');
    SQL.Add(') AS ZLZLS2');
    SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.XieXing = ZLZLS2.XieXing AND KFXXZL.SheHao = ZLZLS2.SheHao');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN ZSZL_DEV ON ZSZL_DEV.ZSDH = ZSZL.ZSDH AND ZSZL_DEV.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('LEFT JOIN BUsers ON BUsers.UserID = ZSZL_DEV.SamplePurchaser');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CGZLSS.CLBH, CGZL.ZSBH, SUM(CGZLSS.Qty) AS okQty FROM CGZL');
    SQL.Add('  LEFT JOIN CGZLS ON CGZLS.CGNO = CGZL.CGNO');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO AND CGZLSS.CLBH = CGZLS.CLBH');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('  WHERE CGZL.SEASON = ''' + SeasonEdit.Text + ''' AND CGZL.PURPOSE = ''' + StageEdit.Text + '''');
    if (MatNoEdit.Text <> '') then
      SQL.Add('  AND CGZLSS.CLBH LIKE ''' + MatNoEdit.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit4.Text + '%''');
    SQL.Add('  GROUP BY CGZLSS.CLBH, CGZL.ZSBH');
    SQL.Add(') AS CGZL ON CGZL.CLBH = ZLZLS2.CLBH AND CGZL.ZSBH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN CBY_MaterialCTS ON CBY_MaterialCTS.CLBH = ZLZLS2.CLBH');
    SQL.Add('WHERE 1 = 1 and kfxxzl.JiJie = ''' + SeasonEdit.Text + '''');
    if (MatNoEdit.Text <> '') then
      SQL.Add('AND ZLZLS2.CLBH LIKE ''' + MatNoEdit.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit4.Text + '%''');
    if (SupnoEdit.Text <> '') then
      SQL.Add('AND ZLZLS2.CSBH LIKE ''' + SupnoEdit.Text + '%''');
    if (SupnameEdit.Text <> '') then
      SQL.Add('AND ZSZL.ZSYWJC LIKE ''' + SupnameEdit.Text + '%''');
    if (CKBox.Checked) then
      SQL.Add('AND ZSZL_DEV.SamplePurchaser = ''' + main.Edit1.Text + '''');
    if (NotBuyCK.Checked) then
      SQL.Add('AND ISNULL(CGZL.okQty, 0) = 0');

    //子材料
    SQL.Add('UNION');
    SQL.Add('SELECT ZLZLS2.CLBH, CLZL.YWPM, ZLZLS2.CSBH, ZSZL.ZSYWJC, ISNULL(CGZL.okQty, 0) AS okQty, CLZL.CLZMLB, CLZL.DWBH, BUsers.USERNAME, CAST(CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS CTS FROM (');
    SQL.Add('  SELECT CLZHZL.CLDH1 AS CLBH, CLZHZL.ZSDH AS CSBH FROM (');
    SQL.Add('    SELECT CBYtoSpecS.CLBH, CBYtoSpecS.CSBH FROM CBYtoSpec');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = CBYtoSpec.XieXing AND KFXXZL.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    LEFT JOIN CBYtoSpecS ON CBYtoSpecS.XieXing = CBYtoSpec.XieXing AND CBYtoSpecS.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    WHERE KFXXZL.JiJie = ''' + SeasonEdit.Text + '''');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT CBYtoFactoryS.CLBH, CBYtoFactoryS.CSBH FROM CBYtoSpec');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = CBYtoSpec.XieXing AND KFXXZL.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    LEFT JOIN CBYtoFactoryS ON CBYtoFactoryS.XieXing = CBYtoSpec.XieXing AND CBYtoFactoryS.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    WHERE KFXXZL.JiJie = ''' + SeasonEdit.Text + '''');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT CBYConstantS.CLBH, CBYConstantS.CSBH FROM CBYtoSpec');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = CBYtoSpec.XieXing AND KFXXZL.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    LEFT JOIN CBYConstantS ON CBYConstantS.XieXing = CBYtoSpec.XieXing AND CBYConstantS.SheHao = CBYtoSpec.SheHao');
    SQL.Add('    WHERE KFXXZL.JiJie = ''' + SeasonEdit.Text + ''' AND CBYConstantS.CLBH IS NOT NULL AND CBYConstantS.CSBH IS NOT NULL');
    SQL.Add('  ) AS ZLZLS2');
    SQL.Add('  LEFT JOIN CLZHZL ON CLZHZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('  WHERE CLZHZL.CLDH IS NOT NULL');
    SQL.Add('  GROUP BY CLZHZL.CLDH1, CLZHZL.ZSDH');
    SQL.Add(') AS ZLZLS2');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN ZSZL_DEV ON ZSZL_DEV.ZSDH = ZSZL.ZSDH AND ZSZL_DEV.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('LEFT JOIN BUsers ON BUsers.UserID = ZSZL_DEV.SamplePurchaser');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CGZLSS.CLBH, CGZL.ZSBH, SUM(CGZLSS.Qty) AS okQty FROM CGZL');
    SQL.Add('  LEFT JOIN CGZLS ON CGZLS.CGNO = CGZL.CGNO');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO AND CGZLSS.CLBH = CGZLS.CLBH');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('  WHERE CGZL.SEASON = ''' + SeasonEdit.Text + ''' AND CGZL.PURPOSE = ''' + StageEdit.Text + '''');
    if (MatNoEdit.Text <> '') then
      SQL.Add('  AND CGZLSS.CLBH LIKE ''' + MatNoEdit.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('  AND CLZL.YWPM LIKE ''%' + Edit4.Text + '%''');
    SQL.Add('  GROUP BY CGZLSS.CLBH, CGZL.ZSBH');
    SQL.Add(') AS CGZL ON CGZL.CLBH = ZLZLS2.CLBH AND CGZL.ZSBH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN CBY_MaterialCTS ON CBY_MaterialCTS.CLBH = ZLZLS2.CLBH');
    SQL.Add('WHERE 1 = 1');
    if (MatNoEdit.Text <> '') then
      SQL.Add('AND ZLZLS2.CLBH LIKE ''' + MatNoEdit.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit4.Text + '%''');
    if (SupnoEdit.Text <> '') then
      SQL.Add('AND ZLZLS2.CSBH LIKE ''' + SupnoEdit.Text + '%''');
    if (SupnameEdit.Text <> '') then
      SQL.Add('AND ZSZL.ZSYWJC LIKE ''' + SupnameEdit.Text + '%''');
    if (CKBox.Checked) then
      SQL.Add('AND ZSZL_DEV.SamplePurchaser = ''' + main.Edit1.Text + '''');
    if (NotBuyCK.Checked) then
      SQL.Add('AND ISNULL(CGZL.okQty, 0) = 0');
    Active := true;
  end;

  with CLzhzlQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLZHZL.CLDH1 AS CLDH, CLZL.YWPM, CLZL.DWBH, CLZHZL.syl, IsNull(CGZL.okQty,0) AS okQty, CAST(CASE WHEN CBY_MaterialCTS.CLBH IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS CTS FROM CLZHZL');
    SQL.Add('LEFT JOIN CLZL ON clzhzl.CLDH1 = CLZL.CLDH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CGZLSS.CLBH, CGZL.ZSBH, SUM(CGZLSS.Qty) AS okQty FROM CGZL');
    SQL.Add('  LEFT JOIN CGZLS ON CGZLS.CGNO = CGZL.CGNO');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO AND CGZLSS.CLBH = CGZLS.CLBH');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('  WHERE CGZL.SEASON = ''' + SeasonEdit.Text + ''' AND CGZL.PURPOSE = ''' + StageEdit.Text + ''' AND CGZLSS.CLBH = :CLBH');
    SQL.Add('  GROUP BY CGZLSS.CLBH, CGZL.ZSBH');
    SQL.Add(') AS CGZL ON CGZL.CLBH = CLZHZL.CLDH1');
    SQL.Add('LEFT JOIN CBY_MaterialCTS ON CBY_MaterialCTS.CLBH = CLZHZL.CLDH1');
    SQL.Add('WHERE CLZHZL.CLDH = :CLBH AND ''Y'' = :CLZMLB');
    Active := true;
  end;
end;
  
procedure TPurSample_CBY.DBGridEh1DblClick(Sender: TObject);
var
  i:integer;
begin
  if (not YPZLSQry.Active) then
    abort;
  if (YPZLSQry.recordcount<1) then
    abort;

  with PurSample.CGDet do
  begin
    insert;
    if YPZLSQry.FieldByName('CLZMLB').AsString='N' then //母材料
    begin
      fieldbyname('CTS').value:=YPZLSQry.fieldbyname('CTS').value;
      fieldbyname('CLBH').value:=YPZLSQry.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=YPZLSQry.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=YPZLSQry.fieldbyname('DWBH').value;
      fieldbyname('YQDate').value:=Date()+7;//預設要求日期+7
      fieldbyname('XqQty').value:=0;
      Post;
    end else //子材料
    begin
      ClzhzlQry.First;
      for i:=0 to ClzhzlQry.RecordCount-1 do
      begin
        insert;
        fieldbyname('CTS').value:=YPZLSQry.fieldbyname('CTS').value;
        fieldbyname('CLBH').value:=ClzhzlQry.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=ClzhzlQry.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=ClzhzlQry.fieldbyname('DWBH').value;
        fieldbyname('YQDate').value:=Date()+7;
        fieldbyname('XqQty').value:=0;
        Post;
        ClzhzlQry.Next;
      end;
    end;
  end;
  showmessage('Succeed.');
end;

procedure TPurSample_CBY.PurchaseDetail1Click(Sender: TObject);
begin
  PurSample_CBY_Detail := TPurSample_CBY_Detail.Create(self);
  PurSample_CBY_Detail.ShowModal();
  PurSample_CBY_Detail.Free;
end;

procedure TPurSample_CBY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_CBY.FormDestroy(Sender: TObject);
begin
  PurSample_CBY := nil;
end;

procedure TPurSample_CBY.FormCreate(Sender: TObject);
begin
  SeasonEdit.Text := PurSample.CGMas.FieldByName('SEASON').AsString;
  StageEdit.Text := PurSample.CGMas.FieldByName('PURPOSE').AsString;
  SupnoEdit.Text := PurSample.CGMas.FieldByName('ZSBH').AsString;
end;

procedure TPurSample_CBY.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if  YPZLSQry.active  then
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
        for   i:=0   to   YPZLSQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YPZLSQry.fields[i].FieldName;
          end;

        YPZLSQry.First;
        j:=2;
        while   not   YPZLSQry.Eof   do
          begin
            for   i:=0   to  YPZLSQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YPZLSQry.Fields[i].Value;
            end;
          YPZLSQry.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

end.
