object ScnaOutWarehouse: TScnaOutWarehouse
  Left = 452
  Top = 169
  Width = 1305
  Height = 738
  Caption = 'Scna Out Warehouse'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 984
      Top = 32
      Width = 80
      Height = 20
      Caption = 'SuppName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 29
      Width = 82
      Height = 24
      Caption = 'QRCODE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 272
      Top = 16
      Width = 353
      Height = 49
      AutoSize = False
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object CBX1: TComboBox
      Left = 1070
      Top = 31
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'DING XIN '#40718#33288
        'THUAN HUNG '#38918#33288
        'TY THAC '#20740#30889
        'YOURWAY '#20803#23041
        'TY BACH '#20740#26575
        'YIHQUAN '#20740#27849)
    end
    object UploadBtn: TButton
      Left = 752
      Top = 20
      Width = 89
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = UploadBtnClick
    end
    object Button2: TButton
      Left = 857
      Top = 20
      Width = 81
      Height = 41
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 113
      Height = 65
      TabOrder = 4
      object RadioQRCODE: TRadioButton
        Left = 16
        Top = 16
        Width = 89
        Height = 17
        Caption = 'QRCODE'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 40
        Width = 81
        Height = 17
        Caption = 'RY ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1289
    Height = 610
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
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'SCCX'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'ROut'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'QRCode'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Width = 99
      end>
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      
        'update [TB_ERP].[dbo].[SMDDScanOut] set [ROut]=:ROut where [QRCo' +
        'de]=:QRCode and [GXLB]='#39'O'#39' ')
    Left = 560
    Top = 304
  end
  object DS1: TDataSource
    DataSet = WorkScanQry
    Left = 560
    Top = 271
  end
  object WorkScanQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT [YSBH]'
      '      ,[Article]'
      '      ,[XieMing]'
      '      ,[Qty]'
      '      ,[SCCX]'
      '      ,[XH]'
      '      ,[QRCode]'
      '      ,[USERDate]'
      '      ,[USERID]'
      '      ,[GXLB]'
      '      ,[YSSM]'
      '      ,[ROut]'
      '      ,[WIn]'
      ','#39'                                  '#39' AS [DDMH]'
      ','#39'                                  '#39' As [SuppName]'
      '  FROM [TB_ERP].[dbo].[SMDDScanOut]'
      '  where 1<>1')
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object WorkScanQryYSBH: TStringField
      FieldName = 'YSBH'
    end
    object WorkScanQryArticle: TStringField
      FieldName = 'Article'
    end
    object WorkScanQryXieMing: TStringField
      FieldName = 'XieMing'
    end
    object WorkScanQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object WorkScanQrySCCX: TStringField
      FieldName = 'SCCX'
    end
    object WorkScanQryQRCode: TStringField
      FieldName = 'QRCode'
    end
    object WorkScanQryYSSM: TStringField
      FieldName = 'YSSM'
    end
    object WorkScanQryROut: TIntegerField
      FieldName = 'ROut'
    end
    object WorkScanQryDDMH: TStringField
      FieldName = 'DDMH'
      Size = 30
    end
    object WorkScanQrySuppName: TStringField
      FieldName = 'SuppName'
      FixedChar = True
      Size = 34
    end
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 527
    Top = 240
  end
end
