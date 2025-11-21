object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 525
  Top = 240
  Height = 249
  Width = 309
  object DB1: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = DB1Login
    Left = 104
    Top = 16
  end
end
