object SpecimportTW: TSpecimportTW
  Left = 303
  Top = 162
  Width = 708
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 692
    Height = 342
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGrid1GetCellParams
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        ReadOnly = True
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        ReadOnly = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        ReadOnly = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        ReadOnly = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'SHQR'
        Footers = <>
        Width = 43
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
    Width = 692
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
      Left = 8
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 312
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 208
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 584
      Top = 16
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 376
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 488
      Top = 32
      Width = 97
      Height = 17
      Caption = 'New Order'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CBX2: TCheckBox
      Left = 488
      Top = 8
      Width = 81
      Height = 17
      Caption = 'All'
      TabOrder = 5
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    OnNewRecord = Query1NewRecord
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
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1DDBH: TStringField
      DisplayWidth = 12
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1ARTICLE: TStringField
      DisplayWidth = 18
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      DisplayWidth = 21
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DDZT: TStringField
      DisplayWidth = 5
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query1ShipDate: TDateTimeField
      DisplayWidth = 12
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Pairs: TIntegerField
      DisplayWidth = 7
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1KFJC: TStringField
      DisplayWidth = 16
      FieldName = 'KFJC'
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
    object Query1CCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object Query1KHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object Query1BB: TStringField
      FieldName = 'BB'
      FixedChar = True
      Size = 3
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object Query1Version: TSmallintField
      FieldName = 'Version'
    end
    object Query1Trader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object Query1TraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object Query1DDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object Query1CPLB: TStringField
      FieldName = 'CPLB'
      FixedChar = True
      Size = 1
    end
    object Query1BZFS: TStringField
      FieldName = 'BZFS'
      FixedChar = True
      Size = 1
    end
    object Query1Dest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object Query1DDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object Query1DDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object Query1JYTJ: TStringField
      FieldName = 'JYTJ'
      FixedChar = True
      Size = 4
    end
    object Query1FKTJ: TStringField
      FieldName = 'FKTJ'
      FixedChar = True
      Size = 4
    end
    object Query1Totals: TFloatField
      FieldName = 'Totals'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object Query1CFNO: TStringField
      FieldName = 'CFNO'
      FixedChar = True
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1DDCZ: TStringField
      FieldName = 'DDCZ'
      FixedChar = True
    end
    object Query1DDPACKSM: TStringField
      FieldName = 'DDPACKSM'
      FixedChar = True
      Size = 150
    end
    object Query1LABELCHARGE: TFloatField
      FieldName = 'LABELCHARGE'
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1DDGB_1: TStringField
      FieldName = 'DDGB_1'
      FixedChar = True
      Size = 50
    end
    object Query1SHQR: TStringField
      FieldName = 'SHQR'
      FixedChar = True
      Size = 1
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 472
    Top = 160
  end
  object simplecheck: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from simpleshoes')
    Left = 128
    Top = 136
    object simplecheckXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.simpleshoes.XieXing'
      FixedChar = True
      Size = 15
    end
    object simplecheckSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.simpleshoes.SheHao'
      FixedChar = True
      Size = 5
    end
    object simplecheckXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.simpleshoes.XieMing'
      FixedChar = True
      Size = 50
    end
    object simplecheckARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.simpleshoes.ARTICLE'
      FixedChar = True
    end
    object simplecheckSimpleSize: TFloatField
      FieldName = 'SimpleSize'
      Origin = 'DB.simpleshoes.SimpleSize'
    end
    object simplecheckSignature: TStringField
      FieldName = 'Signature'
      Origin = 'DB.simpleshoes.Signature'
      FixedChar = True
      Size = 50
    end
    object simplecheckSingDate: TDateTimeField
      FieldName = 'SingDate'
      Origin = 'DB.simpleshoes.SingDate'
    end
    object simplecheckExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
      Origin = 'DB.simpleshoes.ExpireDate'
    end
    object simplecheckUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.simpleshoes.USERID'
      FixedChar = True
    end
    object simplecheckUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.simpleshoes.USERDATE'
    end
  end
end
