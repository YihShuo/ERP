object Exchange: TExchange
  Left = 552
  Top = 170
  Width = 533
  Height = 498
  Caption = 'Exchange'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 172
      Top = 23
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 19
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 200
      Top = 18
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 317
      Top = 13
      Width = 92
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 517
    Height = 403
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 515
      Height = 401
      Align = alClient
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'HLYEAR'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'HLMONTH'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'HLDAY'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'CWHL'
          Footers = <>
          Width = 75
        end>
    end
  end
  object Query1: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CWHLS'
      'where HLYear='#39'2016'#39' and HLMonth='#39'12'#39)
    Left = 120
    Top = 113
    object Query1HLYEAR: TStringField
      FieldName = 'HLYEAR'
      Origin = 'DB.CWHLS.HLYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1HLMONTH: TStringField
      FieldName = 'HLMONTH'
      Origin = 'DB.CWHLS.HLMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1HLDAY: TStringField
      FieldName = 'HLDAY'
      Origin = 'DB.CWHLS.HLDAY'
      FixedChar = True
      Size = 2
    end
    object Query1CWHL: TFloatField
      FieldName = 'CWHL'
      Origin = 'DB.CWHLS.CWHL'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWHLS.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWHLS.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CWHLS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 145
  end
end
