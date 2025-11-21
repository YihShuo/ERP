object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 539
  Top = 220
  Height = 249
  Width = 309
  object DB1: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'ERPVN'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = DB1Login
    Left = 104
    Top = 16
  end
end
