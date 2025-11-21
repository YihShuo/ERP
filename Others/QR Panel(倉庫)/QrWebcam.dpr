program QrWebcam;
uses
  Vcl.Forms,
  Windows,
  qcameraq1 in 'qcameraq1.pas' {QrcodeForm},
  VFrames in 'VFrames.pas',
  VSample in 'VSample.pas',
  main1 in 'main1.pas' {mainform},
  DelphiZXIngQRCode in 'DelphiZXIngQRCode.pas',
  OrderUnit1 in 'OrderUnit1.pas' {OrderUnit};

{$R *.res}
var
  MutexHandle: THandle;
begin
  MutexHandle := Windows.CreateMutex(Nil, true, 'Webcam');
  if (MutexHandle <> 0) then
  begin
    if (GetLastError = Windows.ERROR_ALREADY_EXISTS) then
    begin
      CloseHandle(MutexHandle);
      Halt;
    end;
  end;
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmainform, mainform);
  Application.Run;
end.
