unit StitchingSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBCtrls, inifiles;

type
  TStitchingschedulemainPC = class(TForm)
    DS1: TDataSource;
    ADOConnection1: TADOConnection;
    Query1: TADOQuery;                                        
    Timer1: TTimer;
    Splitter1: TSplitter;
    Query2: TADOQuery;
    DS2: TDataSource;
    Panel2: TPanel;
    DS3: TDataSource;
    Query3: TADOQuery;
    DBGridEh3: TDBGridEh;
    Query1TestNo: TStringField;
    Query1Groups: TStringField;
    Query1Serino: TIntegerField;
    Query1SR: TStringField;
    Query1Stage: TStringField;
    Query1CuttingOK: TDateTimeField;
    Query1StitchingPlan: TDateTimeField;
    Query1PlanQty: TBCDField;
    Query1SMatOK: TDateTimeField;
    Query1SMatGet: TDateTimeField;
    Query3Date: TStringField;
    Query3Sample: TBCDField;
    Query3CBY: TIntegerField;
    Query3MassProduction: TIntegerField;
    Query3Total: TBCDField;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh4: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Panel7: TPanel;
    Query5: TADOQuery;
    DS5: TDataSource;
    Query5date: TStringField;
    Query5risk: TStringField;
    Query5pairs: TStringField;
    Query4: TADOQuery;
    DS4: TDataSource;
    Query4TestNo: TStringField;
    Query4Groups: TStringField;
    Query4Serino: TIntegerField;
    Query4PlanQty: TBCDField;
    Query4PartE: TStringField;
    Query4PartC: TStringField;
    Query4ReasonE: TStringField;
    Query4ReasonC: TStringField;
    Query4ReasonV: TStringField;
    Query4StitchingPlan: TDateTimeField;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Shape13: TShape;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    Query5_percent: TStringField;
    Panel10: TPanel;
    DS6: TDataSource;
    Query6: TADOQuery;
    Query6ShipDate: TStringField;
    Query6Pairs: TIntegerField;
    Query6CuttingOK: TIntegerField;
    Query6StitchingOK: TIntegerField;
    Query6AssembleOK: TIntegerField;
    Query6PackingOK: TIntegerField;
    Panel9: TPanel;
    Shape1: TShape;
    Panel11: TPanel;
    DBGridEh5: TDBGridEh;
    Panel12: TPanel;
    Panel13: TPanel;
    Query2StitchingPlan: TStringField;
    Query2PlanQty: TBCDField;
    Query2OKQty: TBCDField;
    Query2Complete: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    MainApplication:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  StitchingschedulemainPC: TStitchingschedulemainPC;

implementation

{$R *.dfm}

procedure TStitchingschedulemainPC.ReadIni();
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
      DBPass:=MyIni.ReadString('DB','Pass','Erp@admin2309');
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

procedure TStitchingschedulemainPC.FormCreate(Sender: TObject);
begin
  ReadIni();
  Query1.Active := true;
  Query2.Active := true;
  Query3.Active := true;
  Query4.Active := true;
  Query5.Active := true;
  Query6.Active := true;
  if Query4.RecordCount=0 then
     panel5.Visible:=false;
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

procedure TStitchingschedulemainPC.Timer1Timer(Sender: TObject);
var
  m: TMessage;
begin      
  Timer1.Enabled := false;
  if Query1.Eof then
  begin
    Query1.Active := false;
    Query1.Active := true; 
    Query2.Active := false;
    Query2.Active := true;
    Query3.Active := false;
    Query3.Active := true;
    Query4.Active := false;
    Query4.Active := true;
    Query5.Active := false;
    Query5.Active := true;
    Query6.Active := false;
    Query6.Active := true;
  if Query4.RecordCount=0 then
     panel5.Visible:=false;    
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
  end
  else begin
    m.Msg := WM_VSCROLL;
    m.WParamLo := SB_PAGEDOWN;
    m.WParamHi := 1;
    m.LParam := 0;
    PostMessage(Self.DBGridEh1.Handle, m.Msg, m.WParam, m.LParam);
  end;
  Timer1.Enabled := true;
end;

end.
