unit StitchingSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBCtrls, inifiles;

type
  TStitchingSchedulemain = class(TForm)
    DBGridEh1: TDBGridEh;
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
    Query1PlanQty: TBCDField;
    Query2PlanQty: TBCDField;
    Query2OKQty: TBCDField;
    Query3Date: TStringField;
    Query3Sample: TBCDField;
    Query3CBY: TIntegerField;
    Query3MassProduction: TIntegerField;
    Query3Total: TBCDField;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    DS5: TDataSource;
    Query5: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    Shape13: TShape;
    Label8: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    DBText4: TDBText;
    Query5date: TStringField;
    Query5risk: TStringField;
    Query5pairs: TStringField;
    Query5_percent: TStringField;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh4: TDBGridEh;
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
    DS6: TDataSource;
    Query6: TADOQuery;
    Query6ShipDate: TStringField;
    Query6Pairs: TIntegerField;
    Query6CuttingOK: TIntegerField;
    Query6StitchingOK: TIntegerField;
    Query6AssembleOK: TIntegerField;
    Query6PackingOK: TIntegerField;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Shape1: TShape;
    Panel7: TPanel;
    DBGridEh5: TDBGridEh;
    Panel11: TPanel;
    Panel12: TPanel;
    Query2Complete: TStringField;
    Query4StitchingPlan: TDateTimeField;
    Query1CuttingOK: TDateTimeField;
    Query1SMatOK: TDateTimeField;
    Query1SMatGet: TDateTimeField;
    Query1StitchingPlan: TDateTimeField;
    Query2StitchingPlan: TStringField;
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
  StitchingSchedulemain: TStitchingSchedulemain;

implementation

{$R *.dfm}

procedure TStitchingSchedulemain.ReadIni();
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

procedure TStitchingSchedulemain.FormCreate(Sender: TObject);
begin
  ReadIni();
  Query1.Active := true;
  Query2.Active := true;
  Query3.Active := true;
  Query4.Active := true;
  Query5.Active := true;
  Query6.Active := true;
  //if Query4.RecordCount=0 then
  //   panel5.Visible:=false;
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

procedure TStitchingSchedulemain.Timer1Timer(Sender: TObject);
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
  //if Query4.RecordCount=0 then
  //   panel5.Visible:=false;
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
