object OrderList: TOrderList
  Left = 484
  Top = 317
  Width = 866
  Height = 409
  Caption = 'Order List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 858
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 55
      Height = 20
      Caption = 'XieXing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 226
      Top = 12
      Width = 64
      Height = 20
      Caption = 'Order No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 74
      Top = 12
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 298
      Top = 12
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 432
      Top = 8
      Width = 75
      Height = 31
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object CKWork: TCheckBox
      Left = 512
      Top = 16
      Width = 97
      Height = 17
      Caption = 'No WorkID'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 858
    Height = 329
    Align = alClient
    DataSource = DataSource1
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ddbh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'khdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'khpo'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ddjq'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'workID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object QOrder: TQuery
    DatabaseName = 'DB'
    DataSource = ProductionPlan.WPS
    SQL.Strings = (
      'SElect ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs,'
      
        '      (select Max(WorkID) as WorkID from LIY_DD.dbo.workplanss w' +
        'orkplanss where workplanss.ddbh=DDZL.DDBH ) as workID   from LIY' +
        '_DD.dbo.ddzl ddzl'
      'where CQDH='#39'VR3'#39
      ' and DDRQ >= '#39'20120301'#39#9
      ' and ddbh like '#39'Y1802-0804%'#39)
    Left = 608
    Top = 16
    object QOrderddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 18
    end
    object QOrdercqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 3
    end
    object QOrderxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 18
    end
    object QOrderarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object QOrderkhdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object QOrderkhpo: TStringField
      FieldName = 'khpo'
      FixedChar = True
      Size = 50
    end
    object QOrderddjq: TStringField
      FieldName = 'ddjq'
      FixedChar = True
      Size = 8
    end
    object QOrderpairs: TFloatField
      FieldName = 'pairs'
    end
    object QOrderworkID: TStringField
      FieldName = 'workID'
      FixedChar = True
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = QOrder
    Left = 648
    Top = 16
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 608
    Top = 48
  end
end
