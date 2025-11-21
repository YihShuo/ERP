object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1014
  Top = 443
  Height = 249
  Width = 309
  object DBshipping: TDatabase
    AliasName = 'X'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=tyxuan'
      'PASSWORD=jack')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
