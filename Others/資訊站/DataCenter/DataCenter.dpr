program DataCenter;

uses
  Forms,
  windows,
  Languages1 in 'Languages1.pas' {Languages},
  DispatchList1 in 'DispatchList1.pas' {DispatchList},
  GenerateQRCode1 in 'GenerateQRCode1.pas' {GenerateQRCode},
  Home1 in 'Home1.pas' {Home},
  KeyBoard1 in 'KeyBoard1.pas' {KeyBoard},
  LeanSelection1 in 'LeanSelection1.pas' {LeanSelection},
  LeftMenu1 in 'LeftMenu1.pas' {LeftMenu},
  MachineType1 in 'MachineType1.pas' {MachineType},
  OrderSearch1 in 'OrderSearch1.pas' {OrderSearch},
  QRLabel1 in 'QRLabel1.pas' {QRLabel},
  ScanQRCode1 in 'ScanQRCode1.pas' {ScanQRCode},
  ScreenSaver1 in 'ScreenSaver1.pas' {ScreenSaver},
  OrderSchedule1 in 'OrderSchedule1.pas' {OrderSchedule},
  MachineSelection1 in 'MachineSelection1.pas' {MachineSelection},
  FunUnit in 'FunUnit.pas',
  DateBox1 in 'DateBox1.pas' {DateBox},
  DCMessage1 in 'DCMessage1.pas' {DCMessage};

{$R *.res}

var
  MutexHandle: Thandle;
begin
  Mutexhandle := Windows.CreateMutex(nil, true, 'DataCenter.exe');
  if (Mutexhandle <> 0) then
  begin
    if (GetLastError = Windows.ERROR_ALREADY_EXISTS) then
    begin
      CloseHandle(Mutexhandle);
      Halt;
    end;
  end;
  Application.Initialize;
  Application.Title := 'Data Center';
  Application.CreateForm(TLanguages, Languages);
  Application.Run;
end.
