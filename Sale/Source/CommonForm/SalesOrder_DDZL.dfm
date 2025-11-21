object DDZLForm: TDDZLForm
  Left = 272
  Top = 165
  Width = 894
  Height = 493
  Caption = 'SalesOrder_DDZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label4: TLabel
      Left = 488
      Top = 25
      Width = 63
      Height = 16
      Caption = 'CSD Year:'
    end
    object Label6: TLabel
      Left = 624
      Top = 25
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label3: TLabel
      Left = 328
      Top = 24
      Width = 48
      Height = 16
      Caption = 'XieXing:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 20
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 224
      Top = 20
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 728
      Top = 12
      Width = 75
      Height = 37
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 560
      Top = 20
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '2006'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX3: TComboBox
      Left = 672
      Top = 20
      Width = 41
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Edit3: TEdit
      Left = 384
      Top = 20
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 878
    Height = 398
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.TitleButton = True
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.TitleButton = True
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = 'CSD'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.TitleButton = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.TitleButton = True
        Width = 33
      end>
  end
  object DS1: TDataSource
    DataSet = DDZLQuery
    Left = 424
    Top = 128
  end
  object DDZLQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YW' +
        'SM,DDZL.KHPO,  '
      
        '       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as' +
        ' DDCC ,'
      '       isnull(YWDD.okQty,0) as okQty,DDZL.Pairs,KFZL.KFJC,GSBH '
      'from DDZL '
      
        'left join XXZL on XXZL.XieXIng=DDZl.XieXIng and XXZl.SheHao=DDZl' +
        '.SheHao'
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join (select YSBH,sum(Qty) as okQty from YWDD '
      '           where YSBH like '#39'%'#39
      '            group by YSBH) YWDD on YWDD.YSBH=DDZL.DDBH '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      
        'where convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) ' +
        'between '
      '      '#39'2013/10/01'#39' and '#39'2013/10/31'#39
      '      and DDZl.DDBH like '#39'%'#39
      '      and XXZl.XieMIng like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      'order by DDZL.DDBH')
    Left = 424
    Top = 160
    object DDZLQueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLQueryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object DDZLQueryKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object DDZLQueryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLQuerySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLQueryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLQueryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDZLQueryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLQueryDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object DDZLQueryXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object DDZLQueryPairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object DDZLQueryokQty: TFloatField
      FieldName = 'okQty'
    end
    object DDZLQueryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DDZLQueryKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
end
