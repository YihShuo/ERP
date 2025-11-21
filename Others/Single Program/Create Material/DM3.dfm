object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 857
  Top = 333
  Height = 249
  Width = 309
  object DBshipping: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=sa'
      'password=jack')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
