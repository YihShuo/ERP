object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1051
  Top = 382
  Height = 248
  Width = 395
  object DBshipping: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=tyxuan'
      'password=ITERP@2022')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 24
  end
end
