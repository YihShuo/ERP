object FileHttpServer: TFileHttpServer
  OldCreateOrder = False
  DisplayName = 'FileHttpServer'
  Interactive = True
  OnExecute = ServiceExecute
  OnShutdown = ServiceShutdown
  OnStart = ServiceStart
  OnStop = ServiceStop
  Left = 598
  Top = 161
  Height = 148
  Width = 272
  object server: TIdHTTPServer
    Bindings = <>
    CommandHandlers = <>
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    OnCommandGet = serverCommandGet
    Left = 56
    Top = 40
  end
end
