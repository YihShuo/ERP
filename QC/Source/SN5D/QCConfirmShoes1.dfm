object QCConfirmShoes: TQCConfirmShoes
  Left = 2103
  Top = 102
  Width = 1187
  Height = 597
  Caption = 'QC Confirm Shoes'
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
  WindowState = wsMinimized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1179
    Height = 43
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 231
      Top = 14
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
    object Label10: TLabel
      Left = 25
      Top = 14
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
    object Button1: TButton
      Left = 392
      Top = 5
      Width = 76
      Height = 33
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
      Left = 265
      Top = 10
      Width = 93
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button2: TButton
      Left = 484
      Top = 6
      Width = 76
      Height = 32
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
      Left = 57
      Top = 10
      Width = 148
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Check: TCheckBox
      Left = 578
      Top = 21
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 1179
    Height = 126
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 273
      Top = 19
      Width = 26
      Height = 16
      Caption = 'SR#'
    end
    object Label4: TLabel
      Left = 225
      Top = 59
      Width = 72
      Height = 16
      Caption = 'Shoe Name'
    end
    object Label5: TLabel
      Left = 231
      Top = 96
      Width = 67
      Height = 16
      Caption = 'Tech Level'
    end
    object Label7: TLabel
      Left = 503
      Top = 20
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label8: TLabel
      Left = 480
      Top = 59
      Width = 51
      Height = 16
      Caption = 'Style No'
    end
    object Label9: TLabel
      Left = 498
      Top = 95
      Width = 32
      Height = 16
      Caption = 'Color'
    end
    object Panel3: TPanel
      Left = 8
      Top = 8
      Width = 193
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 0
      object ShoeImage: TImage
        Left = 0
        Top = -1
        Width = 193
        Height = 114
        Stretch = True
      end
      object Label6: TLabel
        Left = 1
        Top = 1
        Width = 191
        Height = 111
        Align = alClient
        Alignment = taCenter
        Caption = 'No Picture'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -33
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object DBDEVCODE: TDBEdit
      Left = 304
      Top = 16
      Width = 145
      Height = 24
      DataField = 'SR'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBShoeName: TDBEdit
      Left = 304
      Top = 55
      Width = 145
      Height = 24
      DataField = 'Shoe Name'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object TechLevel: TDBEdit
      Left = 304
      Top = 93
      Width = 145
      Height = 24
      DataField = 'Tech Level'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object Color: TDBEdit
      Left = 537
      Top = 90
      Width = 145
      Height = 24
      DataField = 'SheHao'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object StyleNo: TDBEdit
      Left = 536
      Top = 56
      Width = 145
      Height = 24
      DataField = 'XieXing'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object SKU: TDBEdit
      Left = 536
      Top = 16
      Width = 145
      Height = 24
      DataField = 'SKU'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 169
    Width = 1179
    Height = 397
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
    FooterFont.Height = -12
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
        Width = 73
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Shoe Name'
        Footers = <>
        ReadOnly = True
        Width = 104
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Width = 134
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Tech Level'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'SS'
        Footers = <>
        Title.Caption = 'Size'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'FinalBOMQCReceive'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'FinalBOMQCReceiveDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCReceive'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCReceiveDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCprovidetoPur'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMshoesQCprovidetoPurDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCReceive'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCReceiveDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCprovidetoPur'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSbookQCprovidetoPurDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CWQCReceive'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CWQCReceiveDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CWQCprovidetoPur'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CWQCprovidetoPurDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserID_QC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UserID_Dev'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Userdate_QC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Userdate_Dev'
        Width = 106
      end>
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 336
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT PC_Data.RiskLevel, KFXXZL.XieMing as '#39'Shoe Name'#39',KFXXZL.D' +
        'EVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as '#39'Tech Level'#39'  ' +
        '  '
      
        '    ,PC_Data.FinalBOMQCReceive,PC_Data.FinalBOMQCReceiveDate,PC_' +
        'Data.CFMshoesQCReceive,PC_Data.CFMshoesQCReceiveDate,xxzlkf.SS  ' +
        '   '
      
        '    ,PC_Data.CFMshoesQCprovidetoPur,PC_Data.CFMshoesQCprovidetoP' +
        'urDate,PC_Data.CSbookQCReceive,PC_Data.CSbookQCReceiveDate  '
      
        '    ,PC_Data.CSbookQCprovidetoPur,PC_Data.CSbookQCprovidetoPurDa' +
        'te,PC_Data.CWQCReceive,PC_Data.CWQCReceiveDate  '
      
        '    ,PC_Data.CWQCprovidetoPur,PC_Data.CWQCprovidetoPurDate,PC_Da' +
        'ta.UserID_QC,PC_Data.Userdate_QC  '
      
        '    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.Xi' +
        'eXing, '#39'X'#39') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '#39#39') AS ImgNameCF' +
        'M  '
      '     FROM PC_Data   '
      
        '    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_' +
        'Data.SheHao = KFXXZL.SheHao    '
      
        '    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZL' +
        'KF.SheHao = KFXXZL.SheHao    '
      '  WHERE 1=1'
      '  --AND KFXXZL.DEVCODE LIKE '#39'G44221%'#39'  '
      '  --AND KFXXZL.JiJie = '#39'23U'#39'   '
      '  AND LEN(KFXXZL.SheHao) <= 2   '
      '  AND XXZLKF.Dropped <> '#39'1'#39'   '
      '  AND XXZLKF.Transfer <> '#39'1'#39'  '
      
        '    GROUP BY PC_Data.RiskLevel, KFXXZL.XieMing,KFXXZL.DEVCODE,KF' +
        'XXZL.ARTICLE,kfxxzl.KFLX,xxzlkf.SS   '
      
        '    ,PC_Data.FinalBOMQCReceive,PC_Data.FinalBOMQCReceiveDate,PC_' +
        'Data.CFMshoesQCReceive,PC_Data.CFMshoesQCReceiveDate     '
      
        '    ,PC_Data.CFMshoesQCprovidetoPur,PC_Data.CFMshoesQCprovidetoP' +
        'urDate,PC_Data.CSbookQCReceive,PC_Data.CSbookQCReceiveDate  '
      
        '    ,PC_Data.CSbookQCprovidetoPur,PC_Data.CSbookQCprovidetoPurDa' +
        'te,PC_Data.CWQCReceive,PC_Data.CWQCReceiveDate  '
      
        '    ,PC_Data.CWQCprovidetoPur,PC_Data.CWQCprovidetoPurDate,PC_Da' +
        'ta.UserID_QC,PC_Data.Userdate_QC   '
      
        '    ,KFXXZL.XieXing, KFXXZL.SheHao, KFXXZL.FD, ISNULL(PC_Data.Xi' +
        'eXing, '#39'X'#39'), ISNULL(XXZLKF.ImgNameCfm, '#39#39')  '
      '    ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing'
      '    '
      '    '
      '')
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 304
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
    object Query1FinalBOMQCReceive: TBooleanField
      FieldName = 'FinalBOMQCReceive'
      OnChange = Query1FinalBOMQCReceiveChange
    end
    object Query1FinalBOMQCReceiveDate: TDateTimeField
      FieldName = 'FinalBOMQCReceiveDate'
    end
    object Query1CFMshoesQCReceive: TBooleanField
      FieldName = 'CFMshoesQCReceive'
      OnChange = Query1CFMshoesQCReceiveChange
    end
    object Query1CFMshoesQCReceiveDate: TDateTimeField
      FieldName = 'CFMshoesQCReceiveDate'
    end
    object Query1CFMshoesQCprovidetoPur: TBooleanField
      FieldName = 'CFMshoesQCprovidetoPur'
      OnChange = Query1CFMshoesQCprovidetoPurChange
    end
    object Query1CFMshoesQCprovidetoPurDate: TDateTimeField
      FieldName = 'CFMshoesQCprovidetoPurDate'
    end
    object Query1CSbookQCReceive: TBooleanField
      FieldName = 'CSbookQCReceive'
      OnChange = Query1CSbookQCReceiveChange
    end
    object Query1CSbookQCReceiveDate: TDateTimeField
      FieldName = 'CSbookQCReceiveDate'
    end
    object Query1CSbookQCprovidetoPur: TBooleanField
      FieldName = 'CSbookQCprovidetoPur'
      OnChange = Query1CSbookQCprovidetoPurChange
    end
    object Query1CSbookQCprovidetoPurDate: TDateTimeField
      FieldName = 'CSbookQCprovidetoPurDate'
    end
    object Query1CWQCReceive: TBooleanField
      FieldName = 'CWQCReceive'
      OnChange = Query1CWQCReceiveChange
    end
    object Query1CWQCReceiveDate: TDateTimeField
      FieldName = 'CWQCReceiveDate'
    end
    object Query1CWQCprovidetoPur: TBooleanField
      FieldName = 'CWQCprovidetoPur'
      OnChange = Query1CWQCprovidetoPurChange
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
    Top = 336
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
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PC_Data'
      'SET'
      '  RiskLevel =:RiskLevel,'
      '  FinalBOMQCReceive =:FinalBOMQCReceive,'
      '  FinalBOMQCReceiveDate =:FinalBOMQCReceiveDate,'
      '  CFMshoesQCReceive =:CFMshoesQCReceive,'
      '  CFMshoesQCReceiveDate =:CFMshoesQCReceiveDate,'
      '  CFMshoesQCprovidetoPur =:CFMshoesQCprovidetoPur,'
      '  CFMshoesQCprovidetoPurDate =:CFMshoesQCprovidetoPurDate,'
      '  CSbookQCReceive =:CSbookQCReceive,'
      '  CSbookQCReceiveDate =:CSbookQCReceiveDate,'
      '  CSbookQCprovidetoPur = :CSbookQCprovidetoPur,'
      '  CSbookQCprovidetoPurDate = :CSbookQCprovidetoPurDate,'
      '  CWQCReceive =:CWQCReceive,'
      '  CWQCReceiveDate =:CWQCReceiveDate,'
      '  CWQCprovidetoPur =:CWQCprovidetoPur,'
      '  CWQCprovidetoPurDate =:CWQCprovidetoPurDate,'
      '  UserID_QC =:UserID_QC,'
      '  Userdate_QC =:Userdate_QC'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao'
      ''
      '')
    InsertSQL.Strings = (
      'INSERT INTO PC_Data'
      '  (XieXing, SheHao, RiskLevel,FinalBOMQCReceive'
      '  ,FinalBOMQCReceiveDate,CFMshoesQCReceive,CFMshoesQCReceiveDate'
      '  ,CFMshoesQCprovidetoPur,CFMshoesQCprovidetoPurDate'
      '  ,CSbookQCReceive,CSbookQCReceiveDate,CSbookQCprovidetoPur'
      '  ,CSbookQCprovidetoPurDate,CWQCReceive,CWQCReceiveDate'
      '  ,CWQCprovidetoPur,CWQCprovidetoPurDate,UserID_QC,Userdate_QC'
      ')'
      'VALUES'
      
        '  (:XieXing, :SheHao, :RiskLevel,:FinalBOMQCReceive,:FinalBOMQCR' +
        'eceiveDate'
      '  ,:CFMshoesQCReceive,:CFMshoesQCReceiveDate'
      
        '  ,:CFMshoesQCprovidetoPur,:CFMshoesQCprovidetoPurDate,:CSbookQC' +
        'Receive'
      '  ,:CSbookQCReceiveDate,:CSbookQCprovidetoPur'
      
        '  ,:CSbookQCprovidetoPurDate,:CWQCReceive,:CWQCReceiveDate,:CWQC' +
        'providetoPur'
      '  ,:CWQCprovidetoPurDate,:UserID_QC,:Userdate_QC)')
    Left = 496
    Top = 376
  end
end
