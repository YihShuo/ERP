object PurchaseConfirmShoes: TPurchaseConfirmShoes
  Left = 2136
  Top = 120
  Width = 1118
  Height = 584
  Caption = 'Purchase Confirm Shoes'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 229
      Top = 20
      Width = 30
      Height = 16
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 33
      Top = 21
      Width = 29
      Height = 16
      Caption = 'SR#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 408
      Top = 16
      Width = 75
      Height = 16
      Caption = 'Shoe Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 694
      Top = 8
      Width = 66
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 274
      Top = 15
      Width = 99
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button2: TButton
      Left = 777
      Top = 9
      Width = 62
      Height = 34
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 71
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Check: TCheckBox
      Left = 625
      Top = 18
      Width = 57
      Height = 17
      Caption = 'Mine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 488
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 51
    Width = 1110
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
      Top = 14
      Width = 26
      Height = 16
      Caption = 'SR#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 183
      Top = 46
      Width = 72
      Height = 16
      Caption = 'Shoe Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 471
      Top = 10
      Width = 27
      Height = 16
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 448
      Top = 42
      Width = 51
      Height = 16
      Caption = 'Style No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 466
      Top = 72
      Width = 32
      Height = 16
      Caption = 'Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 187
      Top = 75
      Width = 67
      Height = 16
      Caption = 'Tech Level'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
      Left = 267
      Top = 8
      Width = 118
      Height = 24
      DataField = 'SR'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBXieMing: TDBEdit
      Left = 267
      Top = 40
      Width = 118
      Height = 24
      DataField = 'Shoe Name'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 516
      Top = 6
      Width = 118
      Height = 24
      DataField = 'SKU'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 515
      Top = 38
      Width = 118
      Height = 24
      DataField = 'XieXing'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 514
      Top = 71
      Width = 118
      Height = 24
      DataField = 'SheHao'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBKFLX: TDBEdit
      Left = 267
      Top = 72
      Width = 118
      Height = 24
      DataField = 'Tech Level'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 154
    Width = 1110
    Height = 399
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
    FooterFont.Height = -9
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
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
        Title.Caption = 'Risk Level'
        Width = 76
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Shoe Name'
        Footers = <>
        ReadOnly = True
        Width = 85
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
        FieldName = 'Size'
        Footers = <>
        ReadOnly = True
        Width = 57
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'FinalBomPurReceive'
        Footers = <>
        Width = 137
      end
      item
        EditButtons = <>
        FieldName = 'FinalBomPurReceiveDate'
        Footers = <>
        Width = 163
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesPurReceive'
        Footers = <>
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'CFMShoesPurReceiveDate'
        Footers = <>
        ReadOnly = True
        Width = 171
      end
      item
        EditButtons = <>
        FieldName = 'CSBookPurReceive'
        Footers = <>
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'CSBookPurReceiveDate'
        Footers = <>
        ReadOnly = True
        Width = 157
      end
      item
        EditButtons = <>
        FieldName = 'CWPurReceive'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CWPurReceiveDate'
        Footers = <>
        ReadOnly = True
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'CWShipping'
        Footers = <>
        PickList.Strings = (
          ''
          'Yes'
          'No need'
          'Share')
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CWShippingDate'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'UserID_Pur'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_Pur'
        Footers = <>
        ReadOnly = True
      end>
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT PC_Data.RiskLevel, KFXXZL.XieMing as '#39'Shoe Name'#39',KFXXZL.D' +
        'EVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as '#39'Tech Level'#39',x' +
        'xzlkf.SS as '#39'Size'#39','
      
        'PC_Data.FinalBomPurReceive,PC_Data.FinalBomPurReceiveDate,PC_Dat' +
        'a.CFMShoesPurReceive,PC_Data.CFMShoesPurReceiveDate,'
      
        'PC_Data.CSBookPurReceive,PC_Data.CSBookPurReceiveDate,PC_Data.CW' +
        'PurReceive,PC_Data.CWPurReceiveDate,'
      
        'PC_Data.CWShipping,PC_Data.CWShippingDate,PC_Data.UserID_Pur,PC_' +
        'Data.Userdate_Pur,'
      
        'KFXXZL.SheHao,KFXXZL.XieXing, ISNULL(PC_Data.XieXing, '#39'X'#39') AS Ex' +
        'ist, ISNULL(XXZLKF.ImgNameCfm, '#39#39') AS ImgNameCFM'
      'FROM PC_Data'
      
        'LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_Data' +
        '.SheHao = KFXXZL.SheHao'
      
        'LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.S' +
        'heHao = KFXXZL.SheHao'
      'WHERE 1=1'
      'and KFXXZL.ARTICLE like '#39'A03661C%'#39
      
        'GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KFXXZL' +
        '.ARTICLE,kfxxzl.KFLX,xxzlkf.SS,'
      
        'PC_Data.FinalBomPurReceive,PC_Data.FinalBomPurReceiveDate,PC_Dat' +
        'a.CFMShoesPurReceive,PC_Data.CFMShoesPurReceiveDate,'
      
        'PC_Data.CSBookPurReceive,PC_Data.CSBookPurReceiveDate,PC_Data.CW' +
        'PurReceive,PC_Data.CWPurReceiveDate,'
      
        'PC_Data.CWShipping,PC_Data.CWShippingDate,PC_Data.UserID_Pur,PC_' +
        'Data.Userdate_Pur,'
      'KFXXZL.SheHao,KFXXZL.XieXing,PC_Data.XieXing,XXZLKF.ImgNameCfm'
      'ORDER BY KFXXZL.DEVCODE, KFXXZL.XieMing')
    UpdateObject = UpdateSQL1
    Left = 112
    Top = 285
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
    object Query1FinalBomPurReceive: TBooleanField
      FieldName = 'FinalBomPurReceive'
      OnChange = Query1FinalBomPurReceiveChange
    end
    object Query1FinalBomPurReceiveDate: TDateTimeField
      FieldName = 'FinalBomPurReceiveDate'
    end
    object Query1CFMShoesPurReceive: TBooleanField
      FieldName = 'CFMShoesPurReceive'
      OnChange = Query1CFMShoesPurReceiveChange
    end
    object Query1CFMShoesPurReceiveDate: TDateTimeField
      FieldName = 'CFMShoesPurReceiveDate'
    end
    object Query1CSBookPurReceive: TBooleanField
      FieldName = 'CSBookPurReceive'
      OnChange = Query1CSBookPurReceiveChange
    end
    object Query1CSBookPurReceiveDate: TDateTimeField
      FieldName = 'CSBookPurReceiveDate'
    end
    object Query1CWPurReceive: TBooleanField
      FieldName = 'CWPurReceive'
      OnChange = Query1CWPurReceiveChange
    end
    object Query1CWPurReceiveDate: TDateTimeField
      FieldName = 'CWPurReceiveDate'
    end
    object Query1CWShipping: TBooleanField
      FieldName = 'CWShipping'
      OnChange = Query1CWShippingChange
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
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 245
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update PC_Data'
      'set'
      '  RiskLevel=:RiskLevel,'
      '  FinalBomPurReceive=:FinalBomPurReceive,'
      '  FinalBomPurReceiveDate=:FinalBomPurReceiveDate,'
      '  CFMShoesPurReceive=:CFMShoesPurReceive,'
      '  CFMShoesPurReceiveDate=:CFMShoesPurReceiveDate,'
      '  CSBookPurReceive=:CSBookPurReceive,'
      '  CSBookPurReceiveDate=:CSBookPurReceiveDate,'
      '  CWPurReceive=:CWPurReceive,'
      '  CWPurReceiveDate=:CWPurReceiveDate,'
      '  CWShipping=:CWShipping,'
      '  CWShippingDate=:CWShippingDate,'
      '  UserID_Pur=:UserID_Pur,'
      '  Userdate_Pur=:Userdate_Pur'
      'where'
      '  XieXing =:OLD_XieXing and'
      '  SheHao =:OLD_SheHao'
      '')
    InsertSQL.Strings = (
      'insert into PC_Data'
      
        '( XieXing,SheHao,RiskLevel,FinalBomPurReceive,FinalBomPurReceive' +
        'Date,CFMShoesPurReceive,'
      
        '  CFMShoesPurReceiveDate,CSBookPurReceive,CSBookPurReceiveDate,C' +
        'WPurReceive,CWPurReceiveDate,CWShipping,'
      '  CWShippingDate,UserID_Pur,Userdate_Pur)'
      'values'
      
        '( :XieXing,:SheHao,:RiskLevel,:FinalBomPurReceive,:FinalBomPurRe' +
        'ceiveDate,:CFMShoesPurReceive,'
      
        '  :CFMShoesPurReceiveDate,:CSBookPurReceive,:CSBookPurReceiveDat' +
        'e,:CWPurReceive,:CWPurReceiveDate,:CWShipping,'
      '  :CWShippingDate,:UserID_Pur,:Userdate_Pur)')
    Left = 111
    Top = 318
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 286
    object Edit: TMenuItem
      Caption = 'Edit'
      OnClick = EditClick
    end
    object Save: TMenuItem
      Caption = 'Save'
      OnClick = SaveClick
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      OnClick = CancelClick
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 293
  end
end
