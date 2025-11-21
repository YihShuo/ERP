object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 554
  Top = 144
  Height = 249
  Width = 309
  object DBshipping: TDatabase
    AliasName = 'LYS_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=tyxuan')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
