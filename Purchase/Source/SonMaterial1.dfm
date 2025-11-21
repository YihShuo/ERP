object SonMaterial: TSonMaterial
  Left = 360
  Top = 209
  Width = 710
  Height = 320
  BorderIcons = [biSystemMenu]
  Caption = 'SonMaterial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 73
      Height = 20
      Caption = 'Mat Code:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 153
      Height = 28
      TabOrder = 0
    end
    object Button1: TButton
      Left = 272
      Top = 24
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 694
    Height = 215
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 324
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'ccq'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ccq1'
        Footers = <>
        Width = 98
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLZHZL.*,CLZL.YWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZl on CLZL.CLDH=CLZHZL.CLDH1'
      'where CLZHZL.CLDH=:CLDH'
      'order by CLZHZL.CLDH1')
    Left = 152
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object Query1cldh1: TStringField
      FieldName = 'cldh1'
      Origin = 'DB.CLZHZL.cldh1'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1ccq: TStringField
      FieldName = 'ccq'
      Origin = 'DB.CLZHZL.ccq'
      FixedChar = True
      Size = 6
    end
    object Query1ccq1: TStringField
      FieldName = 'ccq1'
      Origin = 'DB.CLZHZL.ccq1'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 120
  end
end
