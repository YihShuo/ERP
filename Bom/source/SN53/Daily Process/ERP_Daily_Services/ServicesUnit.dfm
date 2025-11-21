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
  Left = 595
  Top = 268
  Height = 157
  Width = 240
end
