object DelOther_SCBH: TDelOther_SCBH
  Left = 417
  Top = 229
  Width = 770
  Height = 386
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_SCBH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 264
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 754
    Height = 290
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 273
      end>
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,XXZl.XieXing,XXZl.SheHao,XXZl.Article,XXZl.XieM' +
        'ing'
      'from DDZL'
      
        'left join XXZl on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      ''
      'where DDZL.DDZT='#39'Y'#39
      '      and DDZL.YN='#39'1'#39
      '      and DDZL.DDBH like '#39'%'#39
      '      and GSBH='#39'VA12'#39
      
        '      and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL' +
        '.ZLBH)'
      'order by DDZL.DDBH ')
    Left = 224
    Top = 152
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 256
    Top = 152
  end
end
