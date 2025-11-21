object OrderList: TOrderList
  Left = 264
  Top = 124
  Width = 715
  Height = 480
  Caption = 'OrderList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 49
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 27
      Top = 24
      Width = 39
      Height = 16
      Caption = 'DDBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 210
      Top = 24
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 375
      Top = 26
      Width = 37
      Height = 16
      Caption = 'KHPO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 542
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object edt1: TEdit
      Left = 70
      Top = 20
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt2: TEdit
      Left = 254
      Top = 20
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt3: TEdit
      Left = 419
      Top = 19
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 49
    Width = 699
    Height = 392
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 697
      Height = 390
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
      ParentFont = False
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
          FieldName = 'DDBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KHPO'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH, XXZL.XieMing,DDZL.Pairs,DDZL.KHPO,DDZL.ShipDat' +
        'e,DDZL.Article,kfxxzl.Category'
      'from DDZL'
      
        'left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join DDZLQC qc ON qc.DDBH = DDZL.DDBH '
      
        'left join kfxxzl ON kfxxzl.XieXing = DDZL.XieXing AND kfxxzl.She' +
        'Hao = DDZL.SheHao'
      'where DDZL.GSBH='#39'VA12'#39
      'and DDZL.DDBH like '#39'Y2210-1428%'#39)
    Left = 112
    Top = 225
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Category: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 193
  end
end
