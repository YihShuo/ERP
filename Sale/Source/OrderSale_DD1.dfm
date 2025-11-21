object OrderSale_DD: TOrderSale_DD
  Left = 370
  Top = 215
  Width = 872
  Height = 447
  BorderIcons = [biSystemMenu]
  Caption = 'OrderSale_DD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 864
    Height = 359
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGrid1GetCellParams
    OnKeyPress = DBGrid1KeyPress
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
        Width = 117
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
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 160
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
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 21
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 176
      Top = 19
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label6: TLabel
      Left = 507
      Top = 8
      Width = 39
      Height = 16
      Alignment = taCenter
      Caption = 'Month:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 17
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 247
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 655
      Top = 22
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 440
      Top = 5
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
      Left = 552
      Top = 5
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
    object Button2: TButton
      Left = 744
      Top = 22
      Width = 72
      Height = 33
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
    object AllCK: TCheckBox
      Left = 598
      Top = 6
      Width = 171
      Height = 17
      Caption = 'only show not yet import'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object BuyNOEdit: TEdit
      Left = 440
      Top = 30
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object RB1: TRadioButton
      Left = 351
      Top = 8
      Width = 82
      Height = 17
      Caption = 'X/F From'
      Checked = True
      TabOrder = 8
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 350
      Top = 32
      Width = 83
      Height = 17
      Caption = 'BuyNO'
      TabOrder = 9
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YW' +
        'SM,'
      
        '       (case when isnull(DDZL.traderPO,'#39#39') <> '#39#39' then DDZL.trade' +
        'rPO else DDZL.KHPO end ) as KHPO,'
      
        '       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as' +
        ' DDCC ,'
      
        '       isnull(YWDD.okQty,0) as okQty,DDZL.Pairs,KFZL.KFJC,GSBH,D' +
        'DZL.BUYNO '
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
      #39'2009/01/01'#39' and '#39'2009/01/31'#39
      'and DDZl.DDBH like '#39'%'#39
      'and XXZl.XieMIng like '#39'%%'#39
      'and DDZL.GSBH='#39'VA12'#39)
    Left = 424
    Top = 160
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
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
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1DDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
end
