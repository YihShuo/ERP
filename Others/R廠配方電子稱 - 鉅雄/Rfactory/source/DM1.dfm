object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 363
  Top = 196
  Height = 249
  Width = 309
  object DB1: TDatabase
    AliasName = 'Liy_DDS'
    DatabaseName = 'dd'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = DB1Login
    Left = 104
    Top = 16
  end
end
