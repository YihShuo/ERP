unit WarehouseSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, GridsEh, DBGridEh, ExtCtrls, TeEngine,
  Series, TeeProcs, Chart, DbChart, DBCtrls, Mask, inifiles;

type
  TWarehouseScheduleMainPC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DS1: TDataSource;
    ADOConnection1: TADOConnection;
    Query1: TADOQuery;
    Splitter1: TSplitter;
    Label3: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DS4: TDataSource;
    Query4: TADOQuery;
    Query4TestNo: TStringField;
    Query4Groups: TStringField;
    Query4Serino: TIntegerField;
    Query4PlanQty: TBCDField;
    Query4PartE: TStringField;
    Query4PartC: TStringField;
    Query4ReasonE: TStringField;
    Query4ReasonC: TStringField;
    Query4ReasonV: TStringField;
    Panel6: TPanel;
    DBGridEh4: TDBGridEh;
    Panel7: TPanel;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Shape13: TShape;
    DBText4: TDBText;
    Label9: TLabel;
    Query1TestNo: TStringField;
    Query1Groups: TStringField;
    Query1Serino: TIntegerField;
    Query1SR: TStringField;
    Query1Stage: TStringField;
    Query1MaterialPlan: TDateTimeField;
    Query1PlanQty: TBCDField;
    Query1TBreceive: TDateTimeField;
    Query4WarehousePlan: TDateTimeField;
    Query4TBreceive: TDateTimeField;
    Query1CuttingMTRL: TDateTimeField;
    Query1StitchingMTRL: TDateTimeField;
    Query1AssemblingMTRL: TDateTimeField;
    Query1PackingMTRL: TDateTimeField;
    Panel2: TPanel;
    query3: TADOQuery;
    DS3: TDataSource;
    query3Warehouseplan: TStringField;
    query3total: TIntegerField;
    query3finish: TIntegerField;
    query3unfinish: TIntegerField;
    DBGridEh2: TDBGridEh;
    Query4WarehoueMemo: TMemoField;
    Panel3: TPanel;
    Button1: TButton;
    QueryTime: TADOQuery;
    QueryTimedate: TStringField;
    Query1ETC: TDateTimeField;
    Query1shipdate: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2CellMouseClick(Grid: TCustomGridEh;
      Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);

  private
    { Private declarations }
    MainApplication:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  WarehouseScheduleMainPC: TWarehouseScheduleMainPC;

implementation

{$R *.dfm}

procedure TWarehouseScheduleMainPC.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ERPCommit.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ERPCommit.ini');
      DBIP:=MyIni.ReadString('DB','IP','192.168.23.9');
      DBUser:=MyIni.ReadString('DB','User','tyx');
      DBPass:=MyIni.ReadString('DB','Pass','Itkhua@!erp');
      DBName:=MyIni.ReadString('DB','DBName','LIY_TYXUAN');
      MainApplication:=MyIni.ReadString('DB','Application','LY_ERP.exe');
      //
      ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TWarehouseScheduleMainPC.FormCreate(Sender: TObject);
begin
  ReadIni();
  Querytime.Active := true;
  Query3.Active := true;
  Query1.Active := true;
  Query4.Active := true;
  if Query4.RecordCount>0 then
  begin
     panel5.Visible:=true;
     if Query4.RecordCount>4 then
     begin
        panel5.height:=350;
     end;
     if Query4.RecordCount=4 then
     begin
        panel5.height:=300;
     end;
     if Query4.RecordCount=3 then
     begin
        panel5.height:=266;
     end;
     if Query4.RecordCount<=2 then
     begin
        panel5.height:=233;
     end;

  end;
end;

procedure TWarehouseScheduleMainPC.Button1Click(Sender: TObject);
begin
  Query3.Active := false;
  Query3.Active := true;
end;

procedure TWarehouseScheduleMainPC.DBGridEh2CellMouseClick(
  Grid: TCustomGridEh; Cell: TGridCoord; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Query1.Active := false;
  Query1.Active := true;
  Query4.Active := false;
  Query4.Active := true;
  if Query4.RecordCount>0 then
  begin
     panel5.Visible:=true;
     if Query4.RecordCount>4 then
     begin
        panel5.height:=350;
     end;
     if Query4.RecordCount=4 then
     begin
        panel5.height:=300;
     end;
     if Query4.RecordCount=3 then
     begin
        panel5.height:=266;
     end;
     if Query4.RecordCount<=2 then
     begin
        panel5.height:=233;
     end;

  end;
end;

procedure TWarehouseScheduleMainPC.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if querytime.FieldByName('date').AsString=query3.FieldByName('warehouseplan').AsString then
  begin
    dbGrideh2.canvas.font.color:=cllime;
  end;
end;

end.

