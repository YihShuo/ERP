object PCData: TPCData
  Left = 2149
  Top = 179
  Width = 1059
  Height = 480
  Caption = 'PCData'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMinimized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 591
    Top = 75
    Width = 22
    Height = 13
    Caption = 'SKU'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1051
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
    Width = 1051
    Height = 103
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBShoeName: TDBEdit
      Left = 247
      Top = 45
      Width = 118
      Height = 21
      DataField = 'Shoe Name'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBFD: TDBEdit
      Left = 247
      Top = 76
      Width = 118
      Height = 21
      DataField = 'FD'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 436
      Top = 13
      Width = 117
      Height = 21
      DataField = 'SKU'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 436
      Top = 46
      Width = 117
      Height = 21
      DataField = 'XieXing'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 436
      Top = 73
      Width = 118
      Height = 21
      DataField = 'SheHao'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 141
    Width = 1051
    Height = 308
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -9
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'ImgNameCFM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Shoe Pic|'#33258#21205#24118#20837
        Width = 86
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'RiskLevel'
        Footers = <>
        PickList.Strings = (
          ''
          'Low'
          'Med'
          'High')
        Title.Caption = 'Risk Leve|'#35373#25104#36984#38917
        Width = 59
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Shoe Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Shoe Name|'#33258#21205#24118#20837
        Width = 85
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SR|'#33258#21205#24118#20837
        Width = 109
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SKU|'#33258#21205#24118#20837
        Width = 53
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Tech Level'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Tech Level|'#33258#21205#24118#20837
        Width = 65
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SS'
        Footers = <>
        Title.Caption = 'Size|'#33258#21205#24118#20837
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BuyMonth'
        Footers = <>
        Title.Caption = 'BuyMonth|'#26085#26399
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ISD'
        Footers = <>
        Title.Caption = 'ISD|'#26085#26399
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'FinalBom'
        Footers = <>
        Title.Caption = 'FinalBom|'#21246#36984
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'FinalBomDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'FinalBomDate|'#26085#26399
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'CTSsignCFMshoes'
        Footers = <>
        Title.Caption = 'CTSsignCFMshoes|'#21246#36984
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CTSsignCFMshoesDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CTSsignCFMshoesDate|'#26085#26399
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesToQC'
        Footers = <>
        Title.Caption = 'CFMShoesToQC|'#21246#36984
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesToQCDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFMShoesToQCDate|'#26085#26399
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'CSBookToQC'
        Footers = <>
        Title.Caption = 'CSBookToQC|'#21246#36984
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CSBookToQCDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CSBookToQCDate|'#26085#26399
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCOP'
        Footers = <>
        PickList.Strings = (
          ''
          'Yes'
          'No need'
          'Share')
        Title.Caption = 'CWToQCOP|'#35373#25104#36984#38917
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CWToQC'
        Footers = <>
        Title.Caption = 'CWToQC|'#25991#23383
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CWToQCDate|'#26085#26399
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Color|'#33394#34399
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Style No|'#38795#22411
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'FD|'#38283#30332#21729
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Exist'
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'UserID_Dev'
        Footers = <>
        Title.Caption = 'UserID_Dev|'#20351#29992#32773
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_Dev'
        Footers = <>
        Title.Caption = 'Userdate_Dev|'#30064#21205#26085#26399
        Width = 86
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 141
    Width = 1051
    Height = 308
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -9
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'RiskLevel'
        Footers = <>
        PickList.Strings = (
          ''
          'Low'
          'Med'
          'High')
        Title.Caption = 'Risk Leve'
        Width = 60
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Shoe Name'
        Footers = <>
        ReadOnly = True
        Width = 84
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Width = 109
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        ReadOnly = True
        Width = 53
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Tech Level'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BuyMonth'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ISD'
        Footers = <>
        Width = 71
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'FinalBom'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'FinalBomDate'
        Footers = <>
        ReadOnly = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'CTSsignCFMshoes'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CTSsignCFMshoesDate'
        Footers = <>
        ReadOnly = True
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesToQC'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesToQCDate'
        Footers = <>
        ReadOnly = True
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'CSBookToQC'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CSBookToQCDate'
        Footers = <>
        ReadOnly = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCOP'
        Footers = <>
        PickList.Strings = (
          ''
          'Yes'
          'No need'
          'Share')
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CWToQC'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CWToQCDate'
        Footers = <>
        ReadOnly = True
        Width = 86
      end>
  end
  object DBEdit4: TDBEdit
    Left = 662
    Top = 52
    Width = 103
    Height = 21
    DataField = 'FD'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 663
    Top = 84
    Width = 104
    Height = 21
    DataField = 'Userdate_Dev'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 5
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 304
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PC_Data'
      'SET'
      '  RiskLevel = :RiskLevel,'
      '  BuyMonth = :BuyMonth,'
      '  ISD = :ISD,'
      '  FinalBom = :FinalBom,'
      '  FinalBomDate = :FinalBomDate,'
      '  CTSsignCFMshoes = :CTSsignCFMshoes,'
      '  CTSsignCFMshoesDate = :CTSsignCFMshoesDate,'
      '  CFMShoesToQC = :CFMShoesToQC,'
      '  CFMShoesToQCDate = :CFMShoesToQCDate,'
      '  CSBookToQC = :CSBookToQC,'
      '  CSBookToQCDate = :CSBookToQCDate,'
      '  CWToQCOP = :CWToQCOP,'
      '  CWToQC = :CWToQC,'
      '  CWToQCDate = :CWToQCDate,'
      '  UserID_Dev = :UserID_Dev,'
      '  Userdate_Dev = :Userdate_Dev'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao')
    InsertSQL.Strings = (
      'INSERT INTO PC_Data'
      
        '  (XieXing, SheHao, RiskLevel, BuyMonth, ISD, FinalBom, FinalBom' +
        'Date, '
      
        'CTSsignCFMshoes, CTSsignCFMshoesDate, CFMShoesToQC, CFMShoesToQC' +
        'Date, '
      'CSBookToQC, CSBookToQCDate, CWToQCOP, CWToQC, CWToQCDate, '
      'UserID_Dev, Userdate_Dev)'
      'VALUES'
      
        '  (:XieXing, :SheHao, :RiskLevel, :BuyMonth, :ISD, :FinalBom, :F' +
        'inalBomDate, '
      ':CTSsignCFMshoes, :CTSsignCFMshoesDate, :CFMShoesToQC, '
      ':CFMShoesToQCDate, :CSBookToQC, :CSBookToQCDate, :CWToQCOP, '
      ':CWToQC, :CWToQCDate, :UserID_Dev, :Userdate_Dev)'
      '')
    Left = 496
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 264
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT PC_Data.RiskLevel, KFXXZL.XieMing as '#39'Shoe Name'#39',KFXXZL.D' +
        'EVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as '#39'Tech Level'#39', ' +
        ' '
      '  PC_Data.BuyMonth AS BuyMonth,PC_Data.ISD AS ISD,xxzlkf.SS,'
      
        '  PC_Data.FinalBom, CONVERT(VARCHAR, PC_Data.FinalBomDate, 120) ' +
        'AS FinalBomDate,  '
      
        '  PC_Data.CTSsignCFMshoes AS CTSsignCFMshoes, CONVERT(VARCHAR, P' +
        'C_Data.CTSsignCFMshoesDate, 120) AS CTSsignCFMshoesDate,  '
      
        '  PC_Data.CFMShoesToQC AS CFMShoesToQC, CONVERT(VARCHAR, PC_Data' +
        '.CFMShoesToQCDate, 120) AS CFMShoesToQCDate,  '
      
        '  PC_Data.CSBookToQC AS CSBookToQC, CONVERT(VARCHAR, PC_Data.CSB' +
        'ookToQCDate, 120) AS CSBookToQCDate,  '
      
        '  PC_Data.CWToQCOP, PC_Data.CWToQC AS CWToQC, CONVERT(VARCHAR, P' +
        'C_Data.CWToQCDate, 120) AS CWToQCDate,PC_Data.UserID_Dev,PC_Data' +
        '.Userdate_Dev'
      
        '  , KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.Xie' +
        'Xing, '#39'X'#39') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '#39#39') AS ImgNameCFM'
      '   FROM BUSERS  '
      '  LEFT JOIN KFXXZL ON KFXXZL.FD = BUSERS.Engname  '
      
        '  LEFT JOIN PC_Data ON PC_Data.XieXing = KFXXZL.XieXing AND PC_D' +
        'ata.SheHao = KFXXZL.SheHao  '
      
        '  LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF' +
        '.SheHao = KFXXZL.SheHao  '
      '  WHERE 1=1'
      '  AND BUSERS.Engname LIKE '#39'ANNIE%'#39'  '
      '  AND KFXXZL.JiJie = '#39'23U'#39'   '
      '  AND LEN(KFXXZL.SheHao) <= 2   '
      '  AND XXZLKF.Dropped <> '#39'1'#39'   '
      '  AND XXZLKF.Transfer <> '#39'1'#39'  '
      
        '  GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXX' +
        'ZL.ARTICLE,kfxxzl.KFLX,  '
      '  PC_Data.BuyMonth, PC_Data.ISD,xxzlkf.SS,  '
      
        '  PC_Data.FinalBom, CONVERT(VARCHAR, PC_Data.FinalBomDate, 120),' +
        '  '
      
        '  PC_Data.CTSsignCFMshoes, CONVERT(VARCHAR, PC_DATA.CTSsignCFMsh' +
        'oesDate, 120),  '
      
        '  PC_Data.CFMShoesToQC, CONVERT(VARCHAR, PC_Data.CFMShoesToQCDat' +
        'e, 120),  '
      
        '  PC_Data.CSBookToQC, CONVERT(VARCHAR, PC_Data.CSBookToQCDate, 1' +
        '20),  '
      
        '  PC_Data.CWToQCOP, PC_Data.CWToQC, CONVERT(VARCHAR, PC_Data.CWT' +
        'oQCDate, 120),PC_Data.UserID_Dev,PC_Data.Userdate_Dev,  '
      
        '  KFXXZL.XieXing, KFXXZL.SheHao, KFXXZL.FD, ISNULL(PC_Data.XieXi' +
        'ng, '#39'X'#39'), ISNULL(XXZLKF.ImgNameCfm, '#39#39'),UserID_Dev,Userdate_Dev ' +
        ' '
      '  ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing'
      ''
      '')
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 232
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
    object Query1BuyMonth: TDateTimeField
      FieldName = 'BuyMonth'
    end
    object Query1ISD: TDateTimeField
      FieldName = 'ISD'
    end
    object Query1FinalBom: TBooleanField
      FieldName = 'FinalBom'
      OnChange = Query1FinalBomChange
    end
    object Query1FinalBomDate: TStringField
      FieldName = 'FinalBomDate'
      FixedChar = True
      Size = 30
    end
    object Query1CTSsignCFMshoes: TBooleanField
      FieldName = 'CTSsignCFMshoes'
      OnChange = Query1CTSsignCFMshoesChange
    end
    object Query1CTSsignCFMshoesDate: TStringField
      FieldName = 'CTSsignCFMshoesDate'
      FixedChar = True
      Size = 30
    end
    object Query1CFMShoesToQC: TBooleanField
      FieldName = 'CFMShoesToQC'
      OnChange = Query1CFMShoesToQCChange
    end
    object Query1CFMShoesToQCDate: TStringField
      FieldName = 'CFMShoesToQCDate'
      FixedChar = True
      Size = 30
    end
    object Query1CSBookToQC: TBooleanField
      FieldName = 'CSBookToQC'
      OnChange = Query1CSBookToQCChange
    end
    object Query1CSBookToQCDate: TStringField
      FieldName = 'CSBookToQCDate'
      FixedChar = True
      Size = 30
    end
    object Query1CWToQCOP: TStringField
      FieldName = 'CWToQCOP'
      OnChange = Query1CWToQCOPChange
      FixedChar = True
      Size = 10
    end
    object Query1CWToQC: TStringField
      FieldName = 'CWToQC'
      OnChange = Query1CWToQCChange
      FixedChar = True
    end
    object Query1CWToQCDate: TStringField
      FieldName = 'CWToQCDate'
      FixedChar = True
      Size = 30
    end
    object Query1UserID_Dev: TStringField
      FieldName = 'UserID_Dev'
      FixedChar = True
      Size = 15
    end
    object Query1Userdate_Dev: TDateTimeField
      FieldName = 'Userdate_Dev'
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
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
    object Query1ImgNameCFM: TStringField
      FieldName = 'ImgNameCFM'
      FixedChar = True
      Size = 255
    end
    object Query1SS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 264
    object EDIT: TMenuItem
      Caption = 'EDIT'
      Visible = False
      OnClick = EDITClick
    end
    object SAVE: TMenuItem
      Caption = 'SAVE'
      Visible = False
      OnClick = SAVEClick
    end
    object CANCEL: TMenuItem
      Caption = 'CANCEL'
      Visible = False
      OnClick = CANCELClick
    end
  end
  object PC: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 344
  end
end
