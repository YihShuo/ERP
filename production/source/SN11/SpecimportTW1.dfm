object SpecimportTW: TSpecimportTW
  Left = 393
  Top = 335
  Width = 869
  Height = 437
  BorderIcons = [biSystemMenu]
  Caption = 'SpecimportTW'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gdMain: TDBGridEh
    Left = 0
    Top = 73
    Width = 861
    Height = 333
    Align = alClient
    DataSource = dsMain
    Flat = False
    Font.Charset = ANSI_CHARSET
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
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = gdMainDblClick
    OnGetCellParams = gdMainGetCellParams
    OnKeyPress = gdMainKeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'SHQR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 73
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
      Top = 16
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 176
      Top = 15
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 176
      Top = 43
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Label4: TLabel
      Left = 0
      Top = 42
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
    end
    object edDDBH: TEdit
      Left = 77
      Top = 13
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edXieMing: TEdit
      Left = 255
      Top = 13
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object bnQuery: TButton
      Left = 688
      Top = 34
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = bnQueryClick
    end
    object edCustomer: TEdit
      Left = 256
      Top = 40
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object cbNew: TCheckBox
      Left = 365
      Top = 40
      Width = 124
      Height = 17
      Caption = 'New Order'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object cbAll: TCheckBox
      Left = 632
      Top = 16
      Width = 153
      Height = 17
      Caption = 'Between Shipdate'
      TabOrder = 5
    end
    object edBuyNo: TEdit
      Left = 78
      Top = 39
      Width = 96
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object bnCopy: TButton
      Left = 768
      Top = 34
      Width = 75
      Height = 33
      Caption = 'Copy'
      TabOrder = 7
      OnClick = bnCopyClick
    end
    object chkOrderCancel: TCheckBox
      Left = 500
      Top = 16
      Width = 125
      Height = 17
      Caption = 'Order Cancel'
      TabOrder = 8
    end
    object CheckBox1: TCheckBox
      Left = 500
      Top = 40
      Width = 133
      Height = 17
      Caption = 'Allow no confirm'
      TabOrder = 9
    end
    object SampleShoeCK: TCheckBox
      Left = 364
      Top = 16
      Width = 125
      Height = 17
      Caption = 'Sample Shoe'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 80
    Top = 112
  end
  object qrMain: TQuery
    CachedUpdates = True
    OnNewRecord = qrMainNewRecord
    DatabaseName = 'DB'
    Constrained = True
    RequestLive = True
    SQL.Strings = (
      
        'select DDZLTW.*,XXZl.XieMing,KFZL.KFJC ,DDZL.GSBH,lbzls.YWSM as ' +
        'DDGB,ZLZL.SHQR'
      'from DDZLTW'
      
        'left join XXZL on DDZlTW.XieXing=XXZl.XieXing and DDZLTW.SheHao=' +
        'XXZl.SheHao'
      'left join kfzl on KFZl.KFDH=DDZLTW.KHBH'
      'left join DDZL on DDZl.DDBH=DDZLTW.DDBH'
      'left join ZLZL on DDZlTW.ZLBH=ZLZL.ZLBH '
      'left join LBZLS on lbzls.lb='#39'06'#39' and lbzls.lbdh=DDZL.DDGB'
      'order by DDZLTW.DDBH '
      '')
    UpdateObject = udMain
    Left = 32
    Top = 152
    object qrMainDDBH: TStringField
      DisplayWidth = 12
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object qrMainGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object qrMainARTICLE: TStringField
      DisplayWidth = 18
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object qrMainXieMing: TStringField
      DisplayWidth = 21
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qrMainDDZT: TStringField
      DisplayWidth = 5
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object qrMainShipDate: TDateTimeField
      DisplayWidth = 12
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object qrMainPairs: TIntegerField
      DisplayWidth = 7
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object qrMainKFJC: TStringField
      DisplayWidth = 16
      FieldName = 'KFJC'
      FixedChar = True
    end
    object qrMainXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qrMainSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qrMainCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object qrMainKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object qrMainBB: TStringField
      FieldName = 'BB'
      FixedChar = True
      Size = 3
    end
    object qrMainKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object qrMainVersion: TSmallintField
      FieldName = 'Version'
    end
    object qrMainTrader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object qrMainTraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object qrMainDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object qrMainCPLB: TStringField
      FieldName = 'CPLB'
      FixedChar = True
      Size = 1
    end
    object qrMainBZFS: TStringField
      FieldName = 'BZFS'
      FixedChar = True
      Size = 1
    end
    object qrMainDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object qrMainDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object qrMainDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object qrMainJYTJ: TStringField
      FieldName = 'JYTJ'
      FixedChar = True
      Size = 4
    end
    object qrMainFKTJ: TStringField
      FieldName = 'FKTJ'
      FixedChar = True
      Size = 4
    end
    object qrMainTotals: TFloatField
      FieldName = 'Totals'
    end
    object qrMainZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object qrMainGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object qrMainCFNO: TStringField
      FieldName = 'CFNO'
      FixedChar = True
    end
    object qrMainUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qrMainUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qrMainDDCZ: TStringField
      FieldName = 'DDCZ'
      FixedChar = True
    end
    object qrMainDDPACKSM: TStringField
      FieldName = 'DDPACKSM'
      FixedChar = True
      Size = 150
    end
    object qrMainLABELCHARGE: TFloatField
      FieldName = 'LABELCHARGE'
    end
    object qrMainGender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
    object qrMainYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qrMainDDGB_1: TStringField
      FieldName = 'DDGB_1'
      FixedChar = True
      Size = 50
    end
    object qrMainSHQR: TStringField
      FieldName = 'SHQR'
      FixedChar = True
      Size = 1
    end
    object qrMainBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object qrMainRYTYPE: TStringField
      FieldName = 'RYTYPE'
      FixedChar = True
      Size = 10
    end
  end
  object qrSimple: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from simpleshoes')
    Left = 32
    Top = 112
    object qrSimpleXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.simpleshoes.XieXing'
      FixedChar = True
      Size = 15
    end
    object qrSimpleSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.simpleshoes.SheHao'
      FixedChar = True
      Size = 5
    end
    object qrSimpleXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.simpleshoes.XieMing'
      FixedChar = True
      Size = 50
    end
    object qrSimpleARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.simpleshoes.ARTICLE'
      FixedChar = True
    end
    object qrSimpleSimpleSize: TFloatField
      FieldName = 'SimpleSize'
      Origin = 'DB.simpleshoes.SimpleSize'
    end
    object qrSimpleSignature: TStringField
      FieldName = 'Signature'
      Origin = 'DB.simpleshoes.Signature'
      FixedChar = True
      Size = 50
    end
    object qrSimpleSingDate: TDateTimeField
      FieldName = 'SingDate'
      Origin = 'DB.simpleshoes.SingDate'
    end
    object qrSimpleExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
      Origin = 'DB.simpleshoes.ExpireDate'
    end
    object qrSimpleUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.simpleshoes.USERID'
      FixedChar = True
    end
    object qrSimpleUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.simpleshoes.USERDATE'
    end
  end
  object udMain: TUpdateSQL
    Left = 128
    Top = 112
  end
end
