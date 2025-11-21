object DM: TDM
  OldCreateOrder = False
  Left = 505
  Top = 205
  Height = 150
  Width = 215
  object DB: TDatabase
    AliasName = 'LY_ERP'
    DatabaseName = 'DB'
    SessionName = 'Default'
    OnLogin = DBLogin
    Left = 64
    Top = 24
  end
end
