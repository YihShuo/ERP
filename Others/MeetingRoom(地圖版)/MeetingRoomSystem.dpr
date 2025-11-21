program MeetingRoomSystem;

uses
  Forms,
  MeetingRoomDetail1 in 'MeetingRoomDetail1.pas' {MeetingRoomDetail},
  Login1 in 'Login1.pas' {Login},
  MyBooking1 in 'MyBooking1.pas' {MyBooking},
  RoutineMeeting1 in 'RoutineMeeting1.pas' {RoutineMeeting},
  BookingPreview1 in 'BookingPreview1.pas' {BookingPreview},
  MainMap1 in 'MainMap1.pas' {MainMap},
  EKanban1 in 'EKanban1.pas' {EKanban},
  DeviceMeeting1 in 'DeviceMeeting1.pas' {DeviceMeeting};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainMap, MainMap);
  Application.Run;
end.
