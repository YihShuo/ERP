object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 710
  Top = 419
  Height = 110
  Width = 212
  object DBshipping: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=tyxuan'
      'password=jack')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
