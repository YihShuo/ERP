object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 769
  Top = 231
  Height = 249
  Width = 309
  object DBshipping: TDatabase
    AliasName = 'LYS_ERP'
    Connected = True
    DatabaseName = 'DB'
    Params.Strings = (
      'username=tyxuan'
      'pass=jack'
      'USER NAME=tyxuan')
    SessionName = 'Default'
    OnLogin = DBshippingLogin
    Left = 104
    Top = 16
  end
end
