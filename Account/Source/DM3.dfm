object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 691
  Top = 230
  Height = 249
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
  object erp2acc: TDatabase
    AliasName = 'erp2acc'
    DatabaseName = 'erp2acc'
    SessionName = 'Default'
    OnLogin = erp2accLogin
    Left = 104
    Top = 88
  end
end
