object ServiceModule: TServiceModule
  OldCreateOrder = False
  DisplayName = 'ERP_Scheduler'
  Interactive = True
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnShutdown = ServiceShutdown
  OnStart = ServiceStart
  OnStop = ServiceStop
  Left = 424
  Top = 235
  Height = 150
  Width = 215
end
