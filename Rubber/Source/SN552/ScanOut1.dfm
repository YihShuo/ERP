object ScanOut: TScanOut
  Left = 398
  Top = 265
  Width = 928
  Height = 480
  Caption = 'Scan Out'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 200
      Top = 16
      Width = 353
      Height = 49
      AutoSize = False
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 576
      Top = 32
      Width = 81
      Height = 33
      Caption = 'StorageOut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CLassCB: TComboBox
      Left = 88
      Top = 32
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'Morning'
      Items.Strings = (
        'Morning'
        'Noon'
        'Night')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 920
    Height = 360
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ysbh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'OrderNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'size'
        Footers = <>
        Title.Caption = 'SIZE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'cts'
        Footers = <>
        Title.Caption = 'NeedCTS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'OLDqty'
        Footers = <>
        Title.Caption = 'OldQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'okcts'
        Footers = <>
        Title.Caption = 'OkCTS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'newcts'
        Footers = <>
        Title.Caption = 'NewCTS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Totqty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 109
      end>
  end
  object cqsmdd: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select smddss.*,XXGJS.GJCC,smdd.ysbh,SMDD.DepNO  from LIY_ERP.db' +
        'o.smddss smddss '
      
        'left join LIY_ERP.dbo.smdd smdd on smddss.ddbh=smdd.ddbh and smd' +
        'dss.gxlb=smdd.gxlb '
      'left join LIY_ERP.dbo.DDZL DDZL on DDZL.DDBH=smdd.YSBH '
      
        'left join LIY_ERP.dbo.XXGJS XXGJS on DDZL.XieXing=XXGJS.XieXing ' +
        'and XXGJS.GJLB='#39'101'#39' and XXGJS.XXCC=smddss.XXCC '
      'where codebar='#39'000034653968'#39)
    Left = 560
    Top = 200
    object cqsmddDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object cqsmddGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object cqsmddXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object cqsmddXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object cqsmddQty: TIntegerField
      FieldName = 'Qty'
    end
    object cqsmddCTS: TIntegerField
      FieldName = 'CTS'
    end
    object cqsmddokCTS: TIntegerField
      FieldName = 'okCTS'
    end
    object cqsmddUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object cqsmddUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object cqsmddYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object cqsmddysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object cqsmddDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object cqsmddCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object cqsmddGJCC: TStringField
      FieldName = 'GJCC'
      FixedChar = True
      Size = 6
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 528
    Top = 230
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select smdd.ysbh,smddss.xxcc as size,smddss.qty*smddss.okcts as ' +
        'OLDqty,'
      
        '      smddss.okcts,0 as newcts,0 as Totqty,smddss.qty,cts,codeba' +
        'r '
      'from smddss'
      
        'LEFT JOIN smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxl' +
        'b'
      'where smdd.gxlb='#39'O'#39' and CODEBAR='#39#39)
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 231
    object Query1ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object Query1size: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object Query1OLDqty: TIntegerField
      FieldName = 'OLDqty'
    end
    object Query1okcts: TIntegerField
      FieldName = 'okcts'
    end
    object Query1newcts: TIntegerField
      FieldName = 'newcts'
    end
    object Query1Totqty: TIntegerField
      FieldName = 'Totqty'
    end
    object Query1qty: TIntegerField
      FieldName = 'qty'
    end
    object Query1cts: TIntegerField
      FieldName = 'cts'
    end
    object Query1codebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 596
    Top = 232
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 560
    Top = 264
  end
end
