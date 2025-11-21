object dm2: Tdm2
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Left = 561
  Top = 266
  Height = 228
  Width = 193
  object LIYDD: TDatabase
    AliasName = 'liy_dd'
    DatabaseName = 'db'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = LIYDDLogin
    Left = 48
    Top = 32
  end
  object LIYERP: TDatabase
    AliasName = 'liy_erp'
    DatabaseName = 'db1'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = LIYDDLogin
    Left = 48
    Top = 88
  end
end
