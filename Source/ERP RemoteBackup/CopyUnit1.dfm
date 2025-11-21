object CopyForm: TCopyForm
  Left = 523
  Top = 273
  Width = 307
  Height = 227
  Caption = 'CopyTool'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=tyxuan;Initial Catalog=LingYi;Data Source=192.168.23.246'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 64
  end
  object ExeQry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 88
    Top = 64
  end
end
