object SampleTrackingRpt: TSampleTrackingRpt
  Left = 307
  Top = 221
  Width = 819
  Height = 431
  Caption = 'SampleTrackingRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 7
      Width = 57
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 160
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGridEh: TDBGridEh
    Left = 0
    Top = 136
    Width = 803
    Height = 257
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 5
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEhDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SPNO'
        Footers = <>
        Title.Caption = #32232#30908'|SPNO'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SR#|Article'
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        Title.Caption = #38542#27573'|Stage'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #25976#37327'|Pairs'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'ODate'
        Footers = <>
        Title.Caption = #19979#21934#26085'|ODate'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CkDate'
        Footers = <>
        Title.Caption = #27298#26597'Spec'#35336#30059'|CkDate'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CkExDate'
        Footers = <>
        Title.Caption = #27298#26597'Spec'#23436#25104'|CkExDate'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'RelyDate'
        Footers = <>
        Title.Caption = #23458#20154#22238#35206#26085'|RelyDate'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ZBDate'
        Footers = <>
        Title.Caption = #20570#32025#26495#35336#30059'|ZBDate'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ZBExDate'
        Footers = <>
        Title.Caption = #20570#32025#26495#23436#25104'|ZBExDate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'SJDate'
        Footers = <>
        Title.Caption = #25163#21098#35336#30059'|SJDate'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'SJExDate'
        Footers = <>
        Title.Caption = #25163#21098#23436#25104'|SJExDate'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'JDDate'
        Footers = <>
        Title.Caption = #26028#20992#35336#30059'|JDDate'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'JDExDate'
        Footers = <>
        Title.Caption = #26028#20992#23436#25104'|JDExDate'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'WBDate'
        Footers = <>
        Title.Caption = #32178#29256#35336#30059'|WBDate'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'WBExDate'
        Footers = <>
        Title.Caption = #32178#29256#23436#25104'|WBExDate'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SPDate'
        Footers = <>
        Title.Caption = #36865'Spec'#25505#36092#35336#30059'|SPDate'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'SPExDate'
        Footers = <>
        Title.Caption = #36865'Spec'#25505#36092#23436#25104'|SPExDate'
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'MLDate'
        Footers = <>
        Title.Caption = #25505#36092#38754#26009#35336#30059'|MLDate'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'MLExDate'
        Footers = <>
        Title.Caption = #25505#36092#38754#26009#23436#25104'|MLExDate'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'FLDate'
        Footers = <>
        Title.Caption = #25505#36092#21103#26009#35336#30059'|FLDate'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'FLExDate'
        Footers = <>
        Title.Caption = #25505#36092#21103#26009#23436#25104'|FLExDate'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'DLDate'
        Footers = <>
        Title.Caption = #25505#36092#24213#26009#35336#30059'|DLDate'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'DLExDate'
        Footers = <>
        Title.Caption = #25505#36092#24213#26009#23436#25104'|DLExDate'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'BOMDate'
        Footers = <>
        Title.Caption = 'BOM'#34920#35336#30059'|BOMDate'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'BOMExDate'
        Footers = <>
        Title.Caption = 'BOM'#34920#23436#25104'|BOMExDate'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'SKDate'
        Footers = <>
        Title.Caption = #33394#21345#21514#29260#35336#30059'|SKDate'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'SKExDate'
        Footers = <>
        Title.Caption = #33394#21345#21514#29260#23436#25104'|SKExDate'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YLDate'
        Footers = <>
        Title.Caption = #29992#37327#35336#31639#35336#30059'|YLDate'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'YLExDate'
        Footers = <>
        Title.Caption = #29992#37327#35336#31639#23436#25104'|YLExDate'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CutDate'
        Footers = <>
        Title.Caption = #35009#26039#35336#30059'|CutDate'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CutExDate'
        Footers = <>
        Title.Caption = #35009#26039#23436#25104'|CutExDate'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'SteDate'
        Footers = <>
        Title.Caption = #37341#36554#35336#30059'|SteDate'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'SteExDate'
        Footers = <>
        Title.Caption = #37341#36554#23436#25104'|SteExDate'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'AseDate'
        Footers = <>
        Title.Caption = #25104#22411#35336#30059'|AseDate'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'AseExDate'
        Footers = <>
        Title.Caption = #25104#22411#23436#25104'|AseExDate'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'BGDate'
        Footers = <>
        Title.Caption = #22577#20729#35336#30059'|BGDate'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'BGExDate'
        Footers = <>
        Title.Caption = #22577#20729#23436#25104'|BGExDate'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #38928#35336#20986#36008#26085'|ShipDate'
        Width = 72
      end>
  end
  object ToolPanel: TPanel
    Left = 0
    Top = 64
    Width = 803
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 22
      Top = 12
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Label2: TLabel
      Left = 128
      Top = 44
      Width = 59
      Height = 16
      Caption = 'StartDate:'
    end
    object Label3: TLabel
      Left = 312
      Top = 44
      Width = 56
      Height = 16
      Caption = 'EndDate:'
    end
    object QryBtn: TButton
      Left = 504
      Top = 32
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object SR: TEdit
      Left = 56
      Top = 8
      Width = 169
      Height = 24
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 192
      Top = 40
      Width = 105
      Height = 24
      Date = 41815.449349594910000000
      Time = 41815.449349594910000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 376
      Top = 40
      Width = 105
      Height = 24
      Date = 41815.449349594910000000
      Time = 41815.449349594910000000
      TabOrder = 3
    end
    object DateSearch: TComboBox
      Left = 24
      Top = 40
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'ODate'
      Items.Strings = (
        'ODate'
        'ShipDate')
    end
  end
  object SPSCQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '  Select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.S' +
        'tage,SPSCList.Pairs,SPSCList.ODate,Convert(Varchar,SPSCList.CkDa' +
        'te,111) as CkDate, '
      
        '  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'CkExDate'#39'),111) as CkExDate, '
      
        '  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'RelyDate'#39'),111) as RelyDate, '
      
        '  Convert(Varchar,SPSCList.ZBDate,111) as ZBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'ZBExDate'#39'),111) as ZBExDate, '
      
        '  Convert(Varchar,SPSCList.SJDate,111) as SJDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SJExDate'#39'),111) as SJExDate, '
      
        '  Convert(Varchar,SPSCList.JDDate,111) as JDDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'JDExDate'#39'),111) as JDExDate, '
      
        '  Convert(Varchar,SPSCList.WBDate,111) as WBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'WBExDate'#39'),111) as WBExDate, '
      
        '  Convert(Varchar,SPSCList.SPDate,111) as SPDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SPExDate'#39'),111) as SPExDate, '
      
        '  Convert(Varchar,SPSCList.MLDate,111) as MLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'MLExDate'#39'),111) as MLExDate, '
      
        '  Convert(Varchar,SPSCList.FLDate,111) as FLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'FLExDate'#39'),111) as FLExDate, '
      
        '  Convert(Varchar,SPSCList.DLDate,111) as DLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'DLExDate'#39'),111) as DLExDate, '
      
        '  Convert(Varchar,SPSCList.BOMDate,111) as BOMDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'BOMExDate'#39'),111) as BOMExDate, '
      
        '  Convert(Varchar,SPSCList.SKDate,111) as SKDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SKExDate'#39'),111) as SKExDate, '
      
        '  Convert(Varchar,SPSCList.YLDate,111) as YLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'YLExDate'#39'),111) as YLExDate, '
      
        '  Convert(Varchar,SPSCList.CutDate,111) as CutDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'CutExDate'#39'),111) as CutExDate, '
      
        '  Convert(Varchar,SPSCList.SteDate,111) as SteDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'SteExDate'#39'),111) as SteExDate, '
      
        '  Convert(Varchar,SPSCList.AseDate,111) as AseDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'AseExDate'#39'),111) as AseExDate, '
      
        '  Convert(Varchar,SPSCList.BGDate,111) as BGDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'BGExDate'#39'),111) as BGExDate, '
      '  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate '
      'from SPSCList '
      'where Article like '#39'%%'#39' '
      
        'and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) b' +
        'etween '
      #39'2014/06/25'#39
      ' and  '
      #39'2014/10/25'#39)
    Left = 160
    Top = 176
    object SPSCQrySPNO: TIntegerField
      FieldName = 'SPNO'
    end
    object SPSCQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SPSCQryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SPSCQryStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 10
    end
    object SPSCQryPairs: TFloatField
      FieldName = 'Pairs'
    end
    object SPSCQryODate: TDateTimeField
      FieldName = 'ODate'
    end
    object SPSCQryCkDate: TStringField
      FieldName = 'CkDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryCkExDate: TStringField
      FieldName = 'CkExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryRelyDate: TStringField
      FieldName = 'RelyDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryZBDate: TStringField
      FieldName = 'ZBDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryZBExDate: TStringField
      FieldName = 'ZBExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySJDate: TStringField
      FieldName = 'SJDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySJExDate: TStringField
      FieldName = 'SJExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryJDDate: TStringField
      FieldName = 'JDDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryJDExDate: TStringField
      FieldName = 'JDExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryWBDate: TStringField
      FieldName = 'WBDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryWBExDate: TStringField
      FieldName = 'WBExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySPDate: TStringField
      FieldName = 'SPDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySPExDate: TStringField
      FieldName = 'SPExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryMLDate: TStringField
      FieldName = 'MLDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryMLExDate: TStringField
      FieldName = 'MLExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryFLDate: TStringField
      FieldName = 'FLDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryFLExDate: TStringField
      FieldName = 'FLExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryDLDate: TStringField
      FieldName = 'DLDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryDLExDate: TStringField
      FieldName = 'DLExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryBOMDate: TStringField
      FieldName = 'BOMDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryBOMExDate: TStringField
      FieldName = 'BOMExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySKDate: TStringField
      FieldName = 'SKDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySKExDate: TStringField
      FieldName = 'SKExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryYLDate: TStringField
      FieldName = 'YLDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryYLExDate: TStringField
      FieldName = 'YLExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryCutDate: TStringField
      FieldName = 'CutDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryCutExDate: TStringField
      FieldName = 'CutExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySteDate: TStringField
      FieldName = 'SteDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrySteExDate: TStringField
      FieldName = 'SteExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryAseDate: TStringField
      FieldName = 'AseDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryAseExDate: TStringField
      FieldName = 'AseExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryBGDate: TStringField
      FieldName = 'BGDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryBGExDate: TStringField
      FieldName = 'BGExDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryShipDate: TStringField
      FieldName = 'ShipDate'
      FixedChar = True
      Size = 30
    end
  end
  object DS: TDataSource
    DataSet = SPSCQry
    Left = 192
    Top = 176
  end
end
