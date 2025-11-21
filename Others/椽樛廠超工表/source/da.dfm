object dm1: Tdm1
  OldCreateOrder = False
  Left = 465
  Top = 223
  Height = 150
  Width = 215
  object db1: TDatabase
    AliasName = 'liy_dd'
    DatabaseName = 'dd'
    Params.Strings = (
      'USER NAME=sa'
      'PASSWORD=andy')
    SessionName = 'Default'
    OnLogin = db1Login
    Left = 32
    Top = 16
  end
end
