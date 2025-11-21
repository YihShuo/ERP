program SOPToolPro;

uses
  Forms,
  SOPTool1 in 'SOPTool1.pas' {SOPTool};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSOPTool, SOPTool);
  Application.Run;
end.
