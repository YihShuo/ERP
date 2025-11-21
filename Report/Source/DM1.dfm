object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 347
  Top = 281
  Height = 249
  Width = 309
  object dbMain: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=sa'
      'password=jack')
    SessionName = 'Default'
    OnLogin = dbMainLogin
    Left = 112
    Top = 16
  end
end
