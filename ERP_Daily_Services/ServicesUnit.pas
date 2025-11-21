unit ServicesUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,OLE2;

type
  TServiceModule = class(TService)
    procedure ServiceShutdown(Sender: TService);
    procedure ServiceContinue(Sender: TService; var Continued: Boolean);
    procedure ServicePause(Sender: TService; var Paused: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  ServiceModule: TServiceModule;
  //form1:TForm2;
  gbCanClose:boolean;

implementation

{$R *.DFM}
uses  MainUnit;
procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ServiceModule.Controller(CtrlCode);
end;

function TServiceModule.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TServiceModule.ServiceExecute(Sender: TService);
begin
     while not Terminated do
   begin
      Sleep(10);
      ServiceThread.ProcessRequests(false);
   end;
end;

procedure TServiceModule.ServiceStart(Sender: TService; var Started: Boolean);
begin
   coinitialize(nil);
   Started:=true;
   Svcmgr.Application.CreateForm(TMainForm,MainForm);
   gbCanClose:=false;
   MainForm.hide;
end;


procedure TServiceModule.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
   Stopped:=true;
   gbCanClose:=true;
   MainForm.Destroy();
end;

procedure TServiceModule.ServicePause(Sender: TService; var Paused: Boolean);
begin
Paused:=true;
end;

procedure TServiceModule.ServiceContinue(Sender: TService; var Continued: Boolean);
begin
Continued:=true;
end;

procedure TServiceModule.ServiceShutdown(Sender: TService);
begin
   CoUninitialize(); 
   gbCanClose:=true;
   MainForm.Destroy();
   Status:=csStopped;
   ReportStatus();
end;

end.
