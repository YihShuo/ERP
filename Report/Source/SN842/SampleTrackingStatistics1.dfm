object SampleTrackingStatistics: TSampleTrackingStatistics
  Left = 277
  Top = 168
  Width = 860
  Height = 463
  Caption = 'SampleTrackingStatistics'
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
    Width = 844
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
  object ToolPanel: TPanel
    Left = 0
    Top = 64
    Width = 844
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  object DBGridEh: TDBGridEh
    Left = 0
    Top = 136
    Width = 844
    Height = 289
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEhDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ODate'
        Footers = <>
        Title.Caption = #19979#21934#26085'|ODate'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'count'
        Footers = <>
        Title.Caption = #32317#27454#25976'|count'
      end
      item
        EditButtons = <>
        FieldName = 'CKExDate'
        Footers = <>
        Title.Caption = #27298#26597'Spec'#23436#25104'|CkExDate'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'LackCKExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackCKEx'
        Width = 60
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
        FieldName = 'LackRelyDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackRely'
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
        FieldName = 'LackZBExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackZBEx'
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
        FieldName = 'LackSJExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackSJEx'
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
        FieldName = 'LackJDExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackJDEx'
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
        FieldName = 'LackWBExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackWBEx'
      end
      item
        EditButtons = <>
        FieldName = 'SPExDate'
        Footers = <>
        Title.Caption = #36865'Spec'#25505#36092#23436#25104'|SPExDate'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'LackSPExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackSPEx'
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
        FieldName = 'LackMLExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackMLEx'
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
        FieldName = 'LackFLExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackFLEx'
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
        FieldName = 'LackDLExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackDLEx'
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
        FieldName = 'LackBOMExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackBOMEx'
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
        FieldName = 'LackSKExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackSKEx'
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
        FieldName = 'LackYLExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackYLEx'
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
        FieldName = 'LackCutExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackCutEx'
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
        FieldName = 'LackSteExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackSteEx'
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
        FieldName = 'LackAseExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackAseEx'
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
        FieldName = 'LackBGExDate'
        Footers = <>
        Title.Caption = #27424#25976'|LackBGEx'
      end>
  end
  object SPSCQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#SPSCList'#39') is not null  '
      '   begin   drop table #SPSCList end '
      'select * into #SPSCList '
      'from('
      
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
      '  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate  '
      'from SPSCList '
      'where Article like '#39'%%'#39' '
      
        'and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) b' +
        'etween '
      #39'2014/07/14'#39
      ' and  '
      #39'2014/08/13'#39
      ') SPSCList '
      'select COUNT(Article) as count ,'
      
        '        SUM(Case when CKExDate<>'#39#39' and CKExDate IS not null then' +
        ' 1 else 0 end ) as CKExDate, '
      
        '        (COUNT(Article)-SUM(Case when CKExDate<>'#39#39' and CKExDate ' +
        'IS not null then 1 else 0 end )) as LackCKExDate, '
      
        '        SUM(Case when RelyDate<>'#39#39' and RelyDate IS not null then' +
        ' 1 else 0 end ) as RelyDate, '
      
        '        (COUNT(Article)-SUM(Case when RelyDate<>'#39#39' and RelyDate ' +
        'IS not null then 1 else 0 end )) as LackRelyDate, '
      
        '        SUM(Case when ZBExDate<>'#39#39' and ZBExDate IS not null then' +
        ' 1 else 0 end ) as ZBExDate, '
      
        '        (COUNT(Article)-SUM(Case when ZBExDate<>'#39#39' and ZBExDate ' +
        'IS not null then 1 else 0 end )) as LackZBExDate,  '
      
        '        SUM(Case when SJExDate<>'#39#39' and SJExDate IS not null then' +
        ' 1 else 0 end ) as SJExDate, '
      
        '        (COUNT(Article)-SUM(Case when SJExDate<>'#39#39' and SJExDate ' +
        'IS not null then 1 else 0 end )) as LackSJExDate, '
      
        '        SUM(Case when JDExDate<>'#39#39' and JDExDate IS not null then' +
        ' 1 else 0 end ) as JDExDate, '
      
        '        (COUNT(Article)-SUM(Case when JDExDate<>'#39#39' and JDExDate ' +
        'IS not null then 1 else 0 end )) as LackJDExDate, '
      
        '        SUM(Case when WBExDate<>'#39#39' and WBExDate IS not null then' +
        ' 1 else 0 end ) as WBExDate, '
      
        '        (COUNT(Article)-SUM(Case when WBExDate<>'#39#39' and WBExDate ' +
        'IS not null then 1 else 0 end )) as LackWBExDate, '
      
        '        SUM(Case when SPExDate<>'#39#39' and SPExDate IS not null then' +
        ' 1 else 0 end ) as SPExDate, '
      
        '        (COUNT(Article)-SUM(Case when SPExDate<>'#39#39' and SPExDate ' +
        'IS not null then 1 else 0 end )) as LackSPExDate, '
      
        '        SUM(Case when MLExDate<>'#39#39' and MLExDate IS not null then' +
        ' 1 else 0 end ) as MLExDate, '
      
        '        (COUNT(Article)-SUM(Case when MLExDate<>'#39#39' and MLExDate ' +
        'IS not null then 1 else 0 end )) as LackMLExDate, '
      
        '        SUM(Case when FLExDate<>'#39#39' and FLExDate IS not null then' +
        ' 1 else 0 end ) as FLExDate, '
      
        '        (COUNT(Article)-SUM(Case when FLExDate<>'#39#39' and FLExDate ' +
        'IS not null then 1 else 0 end )) as LackFLExDate, '
      
        '        SUM(Case when DLExDate<>'#39#39' and DLExDate IS not null then' +
        ' 1 else 0 end ) as DLExDate, '
      
        '        (COUNT(Article)-SUM(Case when DLExDate<>'#39#39' and DLExDate ' +
        'IS not null then 1 else 0 end )) as LackDLExDate, '
      
        '        SUM(Case when BOMExDate<>'#39#39' and BOMExDate IS not null th' +
        'en 1 else 0 end ) as BOMExDate, '
      
        '        (COUNT(Article)-SUM(Case when BOMExDate<>'#39#39' and BOMExDat' +
        'e IS not null then 1 else 0 end )) as LackBOMExDate, '
      
        '        SUM(Case when SKExDate<>'#39#39' and SKExDate IS not null then' +
        ' 1 else 0 end ) as SKExDate, '
      
        '        (COUNT(Article)-SUM(Case when SKExDate<>'#39#39' and SKExDate ' +
        'IS not null then 1 else 0 end )) as LackSKExDate, '
      
        '        SUM(Case when YLExDate<>'#39#39' and YLExDate IS not null then' +
        ' 1 else 0 end ) as YLExDate, '
      
        '        (COUNT(Article)-SUM(Case when YLExDate<>'#39#39' and YLExDate ' +
        'IS not null then 1 else 0 end )) as LackYLExDate, '
      
        '        SUM(Case when CutExDate<>'#39#39' and CutExDate IS not null th' +
        'en 1 else 0 end ) as CutExDate, '
      
        '        (COUNT(Article)-SUM(Case when CutExDate<>'#39#39' and CutExDat' +
        'e IS not null then 1 else 0 end )) as LackCutExDate, '
      
        '        SUM(Case when SteExDate<>'#39#39' and SteExDate IS not null th' +
        'en 1 else 0 end ) as SteExDate, '
      
        '        (COUNT(Article)-SUM(Case when SteExDate<>'#39#39' and SteExDat' +
        'e IS not null then 1 else 0 end )) as LackSteExDate, '
      
        '        SUM(Case when AseExDate<>'#39#39' and AseExDate IS not null th' +
        'en 1 else 0 end ) as AseExDate, '
      
        '        (COUNT(Article)-SUM(Case when AseExDate<>'#39#39' and AseExDat' +
        'e IS not null then 1 else 0 end )) as LackAseExDate, '
      
        '        SUM(Case when BGExDate<>'#39#39' and BGExDate IS not null then' +
        ' 1 else 0 end ) as BGExDate, '
      
        '        (COUNT(Article)-SUM(Case when BGExDate<>'#39#39' and BGExDate ' +
        'IS not null then 1 else 0 end )) as LackBGExDate, '
      '       Convert(varchar,ODate,111) as ODate '
      'from #SPSCList '
      'group by ODate '
      'union all '
      'select COUNT(Article) as count ,'
      
        '        SUM(Case when CKExDate<>'#39#39' and CKExDate IS not null then' +
        ' 1 else 0 end ) as CKExDate, '
      
        '        (COUNT(Article)-SUM(Case when CKExDate<>'#39#39' and CKExDate ' +
        'IS not null then 1 else 0 end )) as LackCKExDate, '
      
        '        SUM(Case when RelyDate<>'#39#39' and RelyDate IS not null then' +
        ' 1 else 0 end ) as RelyDate, '
      
        '        (COUNT(Article)-SUM(Case when RelyDate<>'#39#39' and RelyDate ' +
        'IS not null then 1 else 0 end )) as LackRelyDate, '
      
        '        SUM(Case when ZBExDate<>'#39#39' and ZBExDate IS not null then' +
        ' 1 else 0 end ) as ZBExDate, '
      
        '        (COUNT(Article)-SUM(Case when ZBExDate<>'#39#39' and ZBExDate ' +
        'IS not null then 1 else 0 end )) as LackZBExDate,  '
      
        '        SUM(Case when SJExDate<>'#39#39' and SJExDate IS not null then' +
        ' 1 else 0 end ) as SJExDate, '
      
        '        (COUNT(Article)-SUM(Case when SJExDate<>'#39#39' and SJExDate ' +
        'IS not null then 1 else 0 end )) as LackSJExDate, '
      
        '        SUM(Case when JDExDate<>'#39#39' and JDExDate IS not null then' +
        ' 1 else 0 end ) as ZBExDate, '
      
        '        (COUNT(Article)-SUM(Case when JDExDate<>'#39#39' and JDExDate ' +
        'IS not null then 1 else 0 end )) as LackJDExDate, '
      
        '        SUM(Case when WBExDate<>'#39#39' and WBExDate IS not null then' +
        ' 1 else 0 end ) as WBExDate, '
      
        '        (COUNT(Article)-SUM(Case when WBExDate<>'#39#39' and WBExDate ' +
        'IS not null then 1 else 0 end )) as LackWBExDate, '
      
        '        SUM(Case when SPExDate<>'#39#39' and SPExDate IS not null then' +
        ' 1 else 0 end ) as SPExDate, '
      
        '        (COUNT(Article)-SUM(Case when SPExDate<>'#39#39' and SPExDate ' +
        'IS not null then 1 else 0 end )) as LackSPExDate, '
      
        '        SUM(Case when MLExDate<>'#39#39' and MLExDate IS not null then' +
        ' 1 else 0 end ) as MLExDate, '
      
        '        (COUNT(Article)-SUM(Case when MLExDate<>'#39#39' and MLExDate ' +
        'IS not null then 1 else 0 end )) as LackMLExDate, '
      
        '        SUM(Case when FLExDate<>'#39#39' and FLExDate IS not null then' +
        ' 1 else 0 end ) as FLExDate, '
      
        '        (COUNT(Article)-SUM(Case when FLExDate<>'#39#39' and FLExDate ' +
        'IS not null then 1 else 0 end )) as LackFLExDate, '
      
        '        SUM(Case when DLExDate<>'#39#39' and DLExDate IS not null then' +
        ' 1 else 0 end ) as DLExDate, '
      
        '        (COUNT(Article)-SUM(Case when DLExDate<>'#39#39' and DLExDate ' +
        'IS not null then 1 else 0 end )) as LackDLExDate, '
      
        '        SUM(Case when DLExDate<>'#39#39' and DLExDate IS not null then' +
        ' 1 else 0 end ) as DLExDate, '
      
        '        (COUNT(Article)-SUM(Case when DLExDate<>'#39#39' and DLExDate ' +
        'IS not null then 1 else 0 end )) as LackDLExDate, '
      
        '        SUM(Case when BOMExDate<>'#39#39' and BOMExDate IS not null th' +
        'en 1 else 0 end ) as BOMExDate, '
      
        '        (COUNT(Article)-SUM(Case when BOMExDate<>'#39#39' and BOMExDat' +
        'e IS not null then 1 else 0 end )) as LackBOMExDate, '
      
        '        SUM(Case when SKExDate<>'#39#39' and SKExDate IS not null then' +
        ' 1 else 0 end ) as SKExDate, '
      
        '        (COUNT(Article)-SUM(Case when SKExDate<>'#39#39' and SKExDate ' +
        'IS not null then 1 else 0 end )) as LackSKExDate, '
      
        '        SUM(Case when YLExDate<>'#39#39' and YLExDate IS not null then' +
        ' 1 else 0 end ) as YLExDate, '
      
        '        (COUNT(Article)-SUM(Case when YLExDate<>'#39#39' and YLExDate ' +
        'IS not null then 1 else 0 end )) as LackYLExDate, '
      
        '        SUM(Case when CutExDate<>'#39#39' and CutExDate IS not null th' +
        'en 1 else 0 end ) as CutExDate, '
      
        '        (COUNT(Article)-SUM(Case when CutExDate<>'#39#39' and CutExDat' +
        'e IS not null then 1 else 0 end )) as LackCutExDate, '
      
        '        SUM(Case when SteExDate<>'#39#39' and SteExDate IS not null th' +
        'en 1 else 0 end ) as SteExDate, '
      
        '        (COUNT(Article)-SUM(Case when SteExDate<>'#39#39' and SteExDat' +
        'e IS not null then 1 else 0 end )) as LackSteExDate, '
      
        '        SUM(Case when BGExDate<>'#39#39' and BGExDate IS not null then' +
        ' 1 else 0 end ) as BGExDate, '
      
        '        (COUNT(Article)-SUM(Case when BGExDate<>'#39#39' and BGExDate ' +
        'IS not null then 1 else 0 end )) as LackBGExDate, '
      '        '#39'Totall'#39' as ODate '
      'from #SPSCList')
    Left = 160
    Top = 176
    object SPSCQryODate: TStringField
      FieldName = 'ODate'
      FixedChar = True
      Size = 30
    end
    object SPSCQrycount: TIntegerField
      FieldName = 'count'
    end
    object SPSCQryCKExDate: TIntegerField
      FieldName = 'CKExDate'
    end
    object SPSCQryLackCKExDate: TIntegerField
      FieldName = 'LackCKExDate'
    end
    object SPSCQryRelyDate: TIntegerField
      FieldName = 'RelyDate'
    end
    object SPSCQryLackRelyDate: TIntegerField
      FieldName = 'LackRelyDate'
    end
    object SPSCQryZBExDate: TIntegerField
      FieldName = 'ZBExDate'
    end
    object SPSCQryLackZBExDate: TIntegerField
      FieldName = 'LackZBExDate'
    end
    object SPSCQrySJExDate: TIntegerField
      FieldName = 'SJExDate'
    end
    object SPSCQryLackSJExDate: TIntegerField
      FieldName = 'LackSJExDate'
    end
    object SPSCQryJDExDate: TIntegerField
      FieldName = 'JDExDate'
    end
    object SPSCQryLackJDExDate: TIntegerField
      FieldName = 'LackJDExDate'
    end
    object SPSCQryWBExDate: TIntegerField
      FieldName = 'WBExDate'
    end
    object SPSCQryLackWBExDate: TIntegerField
      FieldName = 'LackWBExDate'
    end
    object SPSCQrySPExDate: TIntegerField
      FieldName = 'SPExDate'
    end
    object SPSCQryLackSPExDate: TIntegerField
      FieldName = 'LackSPExDate'
    end
    object SPSCQryMLExDate: TIntegerField
      FieldName = 'MLExDate'
    end
    object SPSCQryLackMLExDate: TIntegerField
      FieldName = 'LackMLExDate'
    end
    object SPSCQryFLExDate: TIntegerField
      FieldName = 'FLExDate'
    end
    object SPSCQryLackFLExDate: TIntegerField
      FieldName = 'LackFLExDate'
    end
    object SPSCQryDLExDate: TIntegerField
      FieldName = 'DLExDate'
    end
    object SPSCQryLackDLExDate: TIntegerField
      FieldName = 'LackDLExDate'
    end
    object SPSCQryBOMExDate: TIntegerField
      FieldName = 'BOMExDate'
    end
    object SPSCQryLackBOMExDate: TIntegerField
      FieldName = 'LackBOMExDate'
    end
    object SPSCQrySKExDate: TIntegerField
      FieldName = 'SKExDate'
    end
    object SPSCQryLackSKExDate: TIntegerField
      FieldName = 'LackSKExDate'
    end
    object SPSCQryYLExDate: TIntegerField
      FieldName = 'YLExDate'
    end
    object SPSCQryLackYLExDate: TIntegerField
      FieldName = 'LackYLExDate'
    end
    object SPSCQryCutExDate: TIntegerField
      FieldName = 'CutExDate'
    end
    object SPSCQryLackCutExDate: TIntegerField
      FieldName = 'LackCutExDate'
    end
    object SPSCQrySteExDate: TIntegerField
      FieldName = 'SteExDate'
    end
    object SPSCQryLackSteExDate: TIntegerField
      FieldName = 'LackSteExDate'
    end
    object SPSCQryAseExDate: TIntegerField
      FieldName = 'AseExDate'
    end
    object SPSCQryLackAseExDate: TIntegerField
      FieldName = 'LackAseExDate'
    end
    object SPSCQryBGExDate: TIntegerField
      FieldName = 'BGExDate'
    end
    object SPSCQryLackBGExDate: TIntegerField
      FieldName = 'LackBGExDate'
    end
  end
  object DS: TDataSource
    DataSet = SPSCQry
    Left = 192
    Top = 176
  end
end
