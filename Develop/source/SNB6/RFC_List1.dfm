object RFC_List: TRFC_List
  Left = 2346
  Top = 299
  Width = 1062
  Height = 531
  Caption = 'RFC_List'
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
  object Splitter1: TSplitter
    Left = 1051
    Top = 141
    Height = 359
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1054
    Height = 38
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 113
      Top = 12
      Width = 25
      Height = 13
      Caption = 'SR#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 276
      Top = 13
      Width = 25
      Height = 13
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label229: TLabel
      Left = 388
      Top = 13
      Width = 17
      Height = 13
      Caption = 'FD:'
    end
    object Label46: TLabel
      Left = 488
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Type:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 47
      Height = 13
      Caption = 'SEASON:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 585
      Top = 6
      Width = 62
      Height = 27
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 653
      Top = 7
      Width = 62
      Height = 26
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object SR: TEdit
      Left = 138
      Top = 10
      Width = 114
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object SKU: TEdit
      Left = 301
      Top = 11
      Width = 67
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object BSFD: TComboBox
      Left = 405
      Top = 11
      Width = 65
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
    end
    object devtype: TComboBox
      Left = 518
      Top = 11
      Width = 49
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU')
    end
    object cbb1: TComboBox
      Left = 59
      Top = 10
      Width = 43
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        ''
        '14'
        '15'
        '16'
        '17'
        '18'
        '19')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 38
    Width = 1054
    Height = 103
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 222
      Top = 15
      Width = 22
      Height = 13
      Caption = 'SR#'
    end
    object Label4: TLabel
      Left = 183
      Top = 48
      Width = 56
      Height = 13
      Caption = 'Shoe Name'
    end
    object Label5: TLabel
      Left = 189
      Top = 78
      Width = 49
      Height = 13
      Caption = 'Developer'
    end
    object Label7: TLabel
      Left = 409
      Top = 16
      Width = 22
      Height = 13
      Caption = 'SKU'
    end
    object Label8: TLabel
      Left = 390
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Style No'
    end
    object Label9: TLabel
      Left = 405
      Top = 77
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label11: TLabel
      Left = 599
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Userid_Dev'
    end
    object Label12: TLabel
      Left = 587
      Top = 49
      Width = 69
      Height = 13
      Caption = 'Userdate_Dev'
    end
    object Panel3: TPanel
      Left = 7
      Top = 7
      Width = 156
      Height = 91
      BevelOuter = bvLowered
      TabOrder = 0
      object ShoeImage: TImage
        Left = 0
        Top = -1
        Width = 157
        Height = 93
        Stretch = True
      end
      object Label6: TLabel
        Left = 1
        Top = 1
        Width = 154
        Height = 89
        Align = alClient
        Alignment = taCenter
        Caption = 'No Picture'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -27
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object DBDEVCODE: TDBEdit
      Left = 247
      Top = 13
      Width = 118
      Height = 21
      DataField = 'SR'
      Enabled = False
      TabOrder = 1
    end
    object DBShoeName: TDBEdit
      Left = 247
      Top = 45
      Width = 118
      Height = 21
      DataField = 'Shoe Name'
      Enabled = False
      TabOrder = 2
    end
    object DBFD: TDBEdit
      Left = 247
      Top = 76
      Width = 118
      Height = 21
      DataField = 'FD'
      Enabled = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 436
      Top = 13
      Width = 117
      Height = 21
      DataField = 'SKU'
      Enabled = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 436
      Top = 46
      Width = 117
      Height = 21
      DataField = 'XieXing'
      Enabled = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 436
      Top = 73
      Width = 118
      Height = 21
      DataField = 'SheHao'
      Enabled = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 141
    Width = 1051
    Height = 359
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ImgNameCFM'
        Footers = <>
        Visible = False
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'RiskLevel'
        Footers = <>
        Width = 75
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Shoe Name'
        Footers = <>
        Width = 84
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        Width = 118
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        Width = 83
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Tech Level'
        Footers = <>
        Width = 69
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'BuyMonth'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|BuyMonth'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'ISD'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|ISD'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'FinalBomDate'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|FinalBomDate'
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'CTSsignCFMshoesDate'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CTSsignCFMshoesDate'
        Width = 154
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesToQCDate'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CFMShoesToQCDate'
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'CSBookToQCDate'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CSBookToQCDate'
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCOP'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CWToQCOP'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CWToQC'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CWToQC'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCDate'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|CWToQCDate'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'UserID_Dev'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|UserID_Dev'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_Dev'
        Footers = <>
        Title.Caption = 'Dev Confirm Shoes|Userdate_Dev'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'FinalBOMQCReceiveDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|FinalBOMQCReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCReceiveDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CFMshoesQCReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCprovidetoPurDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CFMshoesQCprovidetoPurDate'
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCReceiveDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CSbookQCReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCprovidetoPurDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CSbookQCprovidetoPurDate'
      end
      item
        EditButtons = <>
        FieldName = 'CWQCReceiveDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CWQCReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CWQCprovidetoPurDate'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|CWQCprovidetoPurDate'
      end
      item
        EditButtons = <>
        FieldName = 'UserID_QC'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|UserID_QC'
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_QC'
        Footers = <>
        Title.Caption = 'QC Confirm Shoes|Userdate_QC'
      end
      item
        EditButtons = <>
        FieldName = 'FinalBOMPurReceiveDate'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|FinalBOMPurReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesPurReceiveDate'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|CFMShoesPurReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CSBookPurReceiveDate'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|CSBookPurReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CWPurReceiveDate'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|CWPurReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CWShippingDate'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|CWShippingDate'
      end
      item
        EditButtons = <>
        FieldName = 'UserID_Pur'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|UserID_Pur'
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_Pur'
        Footers = <>
        Title.Caption = 'Purchase Confirm Shoes|Userdate_Pur'
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesSPTeamReceiveDate'
        Footers = <>
        Title.Caption = 'Shipping Confirm Shoes|CFMShoesSPTeamReceiveDate'
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesShippingDate'
        Footers = <>
        Title.Caption = 'Shipping Confirm Shoes|CFMShoesShippingDate'
      end
      item
        EditButtons = <>
        FieldName = 'UserID_SP'
        Footers = <>
        Title.Caption = 'Shipping Confirm Shoes|UserID_SP'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_SP'
        Footers = <>
        Title.Caption = 'Shipping Confirm Shoes|Userdate_SP'
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 388
    Top = 148
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT PC_Data.*,xxzlkf.SS as Size, KFXXZL.XieMing as '#39'Shoe Name' +
        #39',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as '#39'Tec' +
        'h Level'#39
      
        '    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.Xi' +
        'eXing, '#39'X'#39') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '#39#39') AS ImgNameCF' +
        'M  '
      '     FROM PC_Data    '
      
        '    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_' +
        'Data.SheHao = KFXXZL.SheHao    '
      
        '    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZL' +
        'KF.SheHao = KFXXZL.SheHao    '
      '  WHERE 1=1'
      '  AND KFXXZL.JiJie = '#39'23U'#39'   '
      '  AND LEN(KFXXZL.SheHao) <= 2   '
      '  AND XXZLKF.Dropped <> '#39'1'#39'   '
      '  AND XXZLKF.Transfer <> '#39'1'#39'  '
      'ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing')
    Left = 388
    Top = 180
    object Query1ImgNameCFM: TStringField
      FieldName = 'ImgNameCFM'
      FixedChar = True
      Size = 255
    end
    object Query1RiskLevel: TStringField
      FieldName = 'RiskLevel'
      FixedChar = True
      Size = 5
    end
    object Query1ShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query1TechLevel: TStringField
      FieldName = 'Tech Level'
      FixedChar = True
      Size = 3
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 5
    end
    object Query1BuyMonth: TDateTimeField
      FieldName = 'BuyMonth'
    end
    object Query1ISD: TDateTimeField
      FieldName = 'ISD'
    end
    object Query1FinalBomDate: TDateTimeField
      FieldName = 'FinalBomDate'
    end
    object Query1CTSsignCFMshoesDate: TDateTimeField
      FieldName = 'CTSsignCFMshoesDate'
    end
    object Query1CFMShoesToQCDate: TDateTimeField
      FieldName = 'CFMShoesToQCDate'
    end
    object Query1CSBookToQCDate: TDateTimeField
      FieldName = 'CSBookToQCDate'
    end
    object Query1CWToQCOP: TStringField
      FieldName = 'CWToQCOP'
      FixedChar = True
      Size = 10
    end
    object Query1CWToQC: TStringField
      FieldName = 'CWToQC'
      FixedChar = True
    end
    object Query1CWToQCDate: TDateTimeField
      FieldName = 'CWToQCDate'
    end
    object Query1UserID_Dev: TStringField
      FieldName = 'UserID_Dev'
      FixedChar = True
      Size = 15
    end
    object Query1Userdate_Dev: TDateTimeField
      FieldName = 'Userdate_Dev'
    end
    object Query1FinalBOMQCReceiveDate: TDateTimeField
      FieldName = 'FinalBOMQCReceiveDate'
    end
    object Query1CFMshoesQCReceiveDate: TDateTimeField
      FieldName = 'CFMshoesQCReceiveDate'
    end
    object Query1CFMshoesQCprovidetoPurDate: TDateTimeField
      FieldName = 'CFMshoesQCprovidetoPurDate'
    end
    object Query1CSbookQCReceiveDate: TDateTimeField
      FieldName = 'CSbookQCReceiveDate'
    end
    object Query1CSbookQCprovidetoPurDate: TDateTimeField
      FieldName = 'CSbookQCprovidetoPurDate'
    end
    object Query1CWQCReceiveDate: TDateTimeField
      FieldName = 'CWQCReceiveDate'
    end
    object Query1CWQCprovidetoPurDate: TDateTimeField
      FieldName = 'CWQCprovidetoPurDate'
    end
    object Query1UserID_QC: TStringField
      FieldName = 'UserID_QC'
      FixedChar = True
      Size = 15
    end
    object Query1Userdate_QC: TDateTimeField
      FieldName = 'Userdate_QC'
    end
    object Query1FinalBOMPurReceiveDate: TDateTimeField
      FieldName = 'FinalBOMPurReceiveDate'
    end
    object Query1CFMShoesPurReceiveDate: TDateTimeField
      FieldName = 'CFMShoesPurReceiveDate'
    end
    object Query1CSBookPurReceiveDate: TDateTimeField
      FieldName = 'CSBookPurReceiveDate'
    end
    object Query1CWPurReceiveDate: TDateTimeField
      FieldName = 'CWPurReceiveDate'
    end
    object Query1CWShippingDate: TDateTimeField
      FieldName = 'CWShippingDate'
    end
    object Query1UserID_Pur: TStringField
      FieldName = 'UserID_Pur'
      FixedChar = True
      Size = 15
    end
    object Query1Userdate_Pur: TDateTimeField
      FieldName = 'Userdate_Pur'
    end
    object Query1CFMShoesSPTeamReceiveDate: TDateTimeField
      FieldName = 'CFMShoesSPTeamReceiveDate'
    end
    object Query1CFMShoesShippingDate: TDateTimeField
      FieldName = 'CFMShoesShippingDate'
    end
    object Query1UserID_SP: TStringField
      FieldName = 'UserID_SP'
      FixedChar = True
      Size = 15
    end
    object Query1Userdate_SP: TDateTimeField
      FieldName = 'Userdate_SP'
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1Exist: TStringField
      FieldName = 'Exist'
      FixedChar = True
      Size = 15
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 304
  end
end
