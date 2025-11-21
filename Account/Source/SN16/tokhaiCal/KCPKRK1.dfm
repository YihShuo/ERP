object KCPKRK: TKCPKRK
  Left = 489
  Top = 305
  Width = 851
  Height = 415
  Caption = 'KCPKRK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 88
    Top = 176
    Width = 90
    Height = 36
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 296
    Top = 24
    Width = 353
    Height = 193
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 136
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=VIET_LIY_ERP;Data Source=192.168.23.122;' +
      'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096' +
      ';Workstation ID=TXA-ITCEN-21191;Use Encryption for Data=False;Ta' +
      'g with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'from KCCLMONTH_HG '
      
        'where KCYEAR='#39'2022'#39' and KCMONTH='#39'11'#39'  and CKBH='#39'BYC'#39'  and HGLB='#39 +
        'NK'#39)
    Left = 96
    Top = 48
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 96
    Top = 80
  end
  object ExecQry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 96
    Top = 117
  end
end
