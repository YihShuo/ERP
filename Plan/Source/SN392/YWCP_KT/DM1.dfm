object DM: TDM
  OldCreateOrder = False
  Left = 621
  Top = 166
  Height = 294
  Width = 710
  object DB1: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'ERPVN'
    Params.Strings = (
      'USER NAME=sa'
      'Password=jack')
    SessionName = 'Default'
    OnLogin = DB1Login
    Left = 176
    Top = 96
  end
end
