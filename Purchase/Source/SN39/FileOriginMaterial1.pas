unit FileOriginMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh, DateUtils, ShellApi, IniFiles;

type
  TFileOriginMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    CLEdit: TEdit;
    Button1: TButton;
    YWPMEdit: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Label22: TLabel;
    ZSEdit: TEdit;
    Label2: TLabel;
    LotEdit: TEdit;
    Label3: TLabel;
    CGEdit: TEdit;
    QFile: TQuery;
    QFileCLBH: TStringField;
    QFileLotNO: TStringField;
    QFileUSERDATE: TDateTimeField;
    DS1: TDataSource;
    Label4: TLabel;
    ZSYWEdit: TEdit;
    QFileCGNO: TStringField;
    QFileYWPM: TStringField;
    QFileDWBH: TStringField;
    QFileZSDH: TStringField;
    QFileZSYWJC: TStringField;
    QFileLotFile: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    OriginFilePath: string;
    AppDir:string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileOriginMaterial: TFileOriginMaterial;

implementation

uses  main1, FunUnit;

{$R *.dfm}

procedure TFileOriginMaterial.ReadIni();
  var MyIni :Tinifile;
      AppDir:string;
begin
  OriginFilePath := '\\192.168.23.16\printlabel\uploadfile\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      OriginFilePath:=MyIni.ReadString('ERP','PurchaseN39_OriginFile','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TFileOriginMaterial.FormDestroy(Sender: TObject);
begin
  FileOriginMaterial := Nil;
end;

procedure TFileOriginMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFileOriginMaterial.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TFileOriginMaterial.Button1Click(Sender: TObject);
begin
  with QFile do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('select distinct KCRKScan_RFS.CGNO, KCRKScan_RFSS.CLBH, clzl.ywpm, clzl.dwbh, zszl_lot.zsdh, zszl.zsywjc, zszl_lot.LotNO, LotFile, zszl_lot.USERDATE ');
   SQL.Add('from zszl_lot ');
   SQL.Add('left join zszl on zszl_lot.zsdh=zszl.zsdh ');
   SQL.add('left join KCRKScan_RFSS on zszl_lot.zsdh=KCRKScan_RFSS.USERID and zszl_lot.LotNO=KCRKScan_RFSS.LotNO ');
   SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO ');
   SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH ');
   SQL.Add('left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH ');
   SQL.Add('Where KCRKScan_RF.GSBH='''+main.Edit2.Text+''' ');
   if CGEdit.Text<>'' then
     SQL.Add('  and KCRKScan_RFS.CGNO like '''+CGEdit.Text+'%'' ');
   if CLEdit.Text<>'' then
     SQl.Add('   KCRKScan_RFSS.CLBH like '''+CLEdit.Text+'%'' ');
   if YWPMEdit.Text<>'' then
     SQl.Add('   clzl.ywpm like ''%'+YWPMEdit.Text+'%'' ');
   if LotEdit.Text<>'' then
     SQl.Add('   zszl_lot.LotNO like '''+LotEdit.Text+'%'' ');
   if ZSEdit.Text<>'' then
     SQl.Add('   zszl_lot.zsdh like '''+ZSEdit.Text+'%'' ');
   if ZSYWEdit.Text<>'' then
     SQl.Add('   zszl.zsywjc like ''%'+ZSYWEdit.Text+'%'' ');
   SQL.Add('order by zszl_lot.zsdh ');
   //funcObj.WriteErrorLog(sql.Text);
   Active:=true;
  end;
end;

procedure TFileOriginMaterial.Button3Click(Sender: TObject);
var a: string;
    eclApp, WorkBook: olevariant;
    i, j: integer;
begin
  if (QFile.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to QFile.FieldCount-2 do
      begin
        eclApp.Cells(1, i+1) := QFile.Fields[i].FieldName;
      end;

      QFile.First;
      j := 2;
      while not QFile.Eof do
      begin
        for i:=0 to QFile.FieldCount-2 do
        begin
          eclApp.Cells(j, i+1) := QFile.Fields[i].Value;
        end;
        QFile.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TFileOriginMaterial.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'LotFile') AND (QFile.FieldByName('LotFile').AsString <> '') then
    ShellExecute(0, 'open', PChar(OriginFilePath+ QFile.FieldByName('LotFile').AsString), nil, nil, SW_Normal);
end;

end.
