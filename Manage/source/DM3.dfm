object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 435
  Top = 220
  Height = 249
  Width = 309
  object DBshipping: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=tyxuan')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
