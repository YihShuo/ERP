object ArticlePicQ: TArticlePicQ
  Left = 479
  Top = 177
  Width = 562
  Height = 480
  Caption = 'Article Picture Query'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 546
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 100
      Height = 20
      Caption = 'Order Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 37
      Top = 43
      Width = 75
      Height = 20
      Caption = 'Article NO '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 43
      Width = 55
      Height = 20
      Caption = 'XieXing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 112
      Top = 8
      Width = 121
      Height = 25
      TabOrder = 0
    end
    object CB1: TCheckBox
      Left = 248
      Top = 9
      Width = 249
      Height = 17
      Caption = 'Only Search In Six Months Data'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 112
      Top = 38
      Width = 121
      Height = 25
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 320
      Top = 38
      Width = 121
      Height = 25
      TabOrder = 3
    end
    object Button1: TButton
      Left = 455
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 546
    Height = 369
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select GSBH,DDBH,ARTICLE,XieXing,SheHao,USERDATE from DDZL'
      'where DDBH like '#39'%%'#39' '
      'and USERDATE >= DATEADD(DD,-180,GETDATE()) '
      'and ARTICLE like '#39'%%'#39
      'and XieXing like '#39'%%'#39
      'and GSBH = '#39'VA12'#39
      'order by DDBH,ARTICLE,XieXing')
    Left = 136
    Top = 176
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 144
  end
end
