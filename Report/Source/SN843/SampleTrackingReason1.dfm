object SampleTrackingReason: TSampleTrackingReason
  Left = 556
  Top = 129
  Width = 860
  Height = 463
  Caption = 'SampleTrackingReason'
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Item'
        Footers = <>
        Title.Caption = #38917#30446'|Item'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'Sym'
        Footers = <>
        Title.Caption = ' '#25551#36848'|Sym'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CKDate'
        Footers = <>
        Title.Caption = #35336#30059#23436#25104#26085#26399'|PlanDate'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footers = <>
        Title.Caption = #35336#30059#23436#25104#25976'|Total'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CKExDate'
        Footers = <>
        Title.Caption = #22914#26399#23436#25104#25976'|NoDelay'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'LackCKExDate'
        Footers = <>
        Title.Caption = #19981#28310#26178#23436#25104'|Delay'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #33521#25991#21407#22240'|YWSM'
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #20013#25991#21407#22240'|ZWSM'
        Width = 137
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
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'CkExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(Exe' +
        'Date) asc),'#39#39') as CKExRem, '
      
        '  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=S' +
        'PSCList.SPNO and A.ItemNM='#39'CkExDate'#39' and (ExeDate is null or Exe' +
        'Date>SPSCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,' +
        'Max(ExeDate) asc),0) as CKExRemCount, '
      
        '  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'RelyDate'#39'),111) as RelyDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'RelyDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.RelyDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as ReplyRem, '
      
        '  Convert(Varchar,SPSCList.ZBDate,111) as ZBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'ZBExDate'#39'),111) as ZBExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'ZBExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.ZBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as ZBExRem, '
      
        '  Convert(Varchar,SPSCList.SJDate,111) as SJDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SJExDate'#39'),111) as SJExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SJExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SJDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SJExRem, '
      
        '  Convert(Varchar,SPSCList.JDDate,111) as JDDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'JDExDate'#39'),111) as JDExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'JDExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.JDDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as JDExRem, '
      
        '  Convert(Varchar,SPSCList.WBDate,111) as WBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'WBExDate'#39'),111) as WBExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'WBExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.WBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as WBExRem, '
      
        '  Convert(Varchar,SPSCList.SPDate,111) as SPDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SPExDate'#39'),111) as SPExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SPExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SPDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SPExRem, '
      
        '  Convert(Varchar,SPSCList.MLDate,111) as MLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'MLExDate'#39'),111) as MLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'MLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.MLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as MLExRem, '
      
        '  Convert(Varchar,SPSCList.FLDate,111) as FLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'FLExDate'#39'),111) as FLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'FLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.FLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as FLExRem, '
      
        '  Convert(Varchar,SPSCList.DLDate,111) as DLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'DLExDate'#39'),111) as DLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'DLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.DLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as DLExRem, '
      
        '  Convert(Varchar,SPSCList.BOMDate,111) as BOMDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'BOMExDate'#39'),111) as BOMExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'BOMExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.BOMDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as BOMExRem, '
      
        '  Convert(Varchar,SPSCList.SKDate,111) as SKDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SKExDate'#39'),111) as SKExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SKExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SKDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SKExRem, '
      
        '  Convert(Varchar,SPSCList.YLDate,111) as YLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'YLExDate'#39'),111) as YLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'YLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.YLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as YLExRem, '
      
        '  Convert(Varchar,SPSCList.CutDate,111) as CutDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'CutExDate'#39'),111) as CutExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'CutExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.CutDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as CutExRem, '
      
        '  Convert(Varchar,SPSCList.SteDate,111) as SteDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'SteExDate'#39'),111) as SteExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SteExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.SteDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as SteExRem, '
      
        '  Convert(Varchar,SPSCList.AseDate,111) as AseDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'AseExDate'#39'),111) as AseExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'AseExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.AseDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as AseExRem, '
      
        '  Convert(Varchar,SPSCList.BGDate,111) as BGDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'BGExDate'#39'),111) as BGExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'BGExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.BGDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as BGExRem, '
      '  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate  '
      'from SPSCList '
      'where Article like '#39'%%'#39' '
      
        'and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) b' +
        'etween '
      #39'2014/07/20'#39
      ' and  '
      #39'2014/08/19'#39
      ') SPSCList '
      
        'select '#39#27298#26597'SPec'#39' as Item,'#39'CKDate'#39' as Sym,CKDate,COUNT(CKDate) as ' +
        'Total, '
      
        '      SUM(Case when CKDate>=CKExDate then 1 else 0 end ) as CKEx' +
        'Date, '
      
        '      (COUNT(Article)-SUM(Case when CKDate>=CKExDate then 1 else' +
        ' 0 end )) as LackCKExDate, '
      
        '      (Select YWSM from SPSCRmS where LYBH=(select  top 1 CKExRe' +
        'm from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is n' +
        'ull ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc' +
        ')) as YWSM, '
      
        '      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 CKExRe' +
        'm from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is n' +
        'ull ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc' +
        ')) as ZWSM '
      'from #SPSCList '
      
        'left join SPSCRms on SPSCRmS.LYBH=CKExRem and SPSCRmS.GSBH='#39'CDC'#39 +
        ' '
      'group by CKDate')
    Left = 176
    Top = 208
    object SPSCQryItem: TStringField
      FieldName = 'Item'
      FixedChar = True
      Size = 8
    end
    object SPSCQrySym: TStringField
      FieldName = 'Sym'
      FixedChar = True
      Size = 6
    end
    object SPSCQryCKDate: TStringField
      FieldName = 'CKDate'
      FixedChar = True
      Size = 30
    end
    object SPSCQryTotal: TIntegerField
      FieldName = 'Total'
    end
    object SPSCQryCKExDate: TIntegerField
      FieldName = 'CKExDate'
    end
    object SPSCQryLackCKExDate: TIntegerField
      FieldName = 'LackCKExDate'
    end
    object SPSCQryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
    end
    object SPSCQryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
    end
  end
  object DS: TDataSource
    DataSet = SPSCQry
    Left = 208
    Top = 208
  end
  object tmpQuery: TQuery
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
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'CkExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(Exe' +
        'Date) asc),'#39#39') as CKExRem, '
      
        '  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=S' +
        'PSCList.SPNO and A.ItemNM='#39'CkExDate'#39' and (ExeDate is null or Exe' +
        'Date>SPSCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,' +
        'Max(ExeDate) asc),0) as CKExRemCount, '
      
        '  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'RelyDate'#39'),111) as RelyDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'RelyDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.RelyDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as ReplyRem, '
      
        '  Convert(Varchar,SPSCList.ZBDate,111) as ZBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'ZBExDate'#39'),111) as ZBExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'ZBExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.ZBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as ZBExRem, '
      
        '  Convert(Varchar,SPSCList.SJDate,111) as SJDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SJExDate'#39'),111) as SJExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SJExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SJDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SJExRem, '
      
        '  Convert(Varchar,SPSCList.JDDate,111) as JDDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'JDExDate'#39'),111) as JDExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'JDExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.JDDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as JDExRem, '
      
        '  Convert(Varchar,SPSCList.WBDate,111) as WBDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'WBExDate'#39'),111) as WBExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'WBExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.WBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as WBExRem, '
      
        '  Convert(Varchar,SPSCList.SPDate,111) as SPDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SPExDate'#39'),111) as SPExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SPExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SPDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SPExRem, '
      
        '  Convert(Varchar,SPSCList.MLDate,111) as MLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'MLExDate'#39'),111) as MLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'MLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.MLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as MLExRem, '
      
        '  Convert(Varchar,SPSCList.FLDate,111) as FLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'FLExDate'#39'),111) as FLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'FLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.FLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as FLExRem, '
      
        '  Convert(Varchar,SPSCList.DLDate,111) as DLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'DLExDate'#39'),111) as DLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'DLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.DLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as DLExRem, '
      
        '  Convert(Varchar,SPSCList.BOMDate,111) as BOMDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'BOMExDate'#39'),111) as BOMExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'BOMExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.BOMDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as BOMExRem, '
      
        '  Convert(Varchar,SPSCList.SKDate,111) as SKDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'SKExDate'#39'),111) as SKExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SKExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.SKDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as SKExRem, '
      
        '  Convert(Varchar,SPSCList.YLDate,111) as YLDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'YLExDate'#39'),111) as YLExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'YLExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.YLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as YLExRem, '
      
        '  Convert(Varchar,SPSCList.CutDate,111) as CutDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'CutExDate'#39'),111) as CutExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'CutExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.CutDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as CutExRem, '
      
        '  Convert(Varchar,SPSCList.SteDate,111) as SteDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'SteExDate'#39'),111) as SteExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'SteExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.SteDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as SteExRem, '
      
        '  Convert(Varchar,SPSCList.AseDate,111) as AseDate,Convert(Varch' +
        'ar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO' +
        ' and ItemNM='#39'AseExDate'#39'),111) as AseExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'AseExDate'#39' and (ExeDate is null or ExeDate>S' +
        'PSCList.AseDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(Ex' +
        'eDate) asc),'#39#39') as AseExRem, '
      
        '  Convert(Varchar,SPSCList.BGDate,111) as BGDate,Convert(Varchar' +
        ',(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO a' +
        'nd ItemNM='#39'BGExDate'#39'),111) as BGExDate, '
      
        '  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList' +
        '.SPNO and A.ItemNM='#39'BGExDate'#39' and (ExeDate is null or ExeDate>SP' +
        'SCList.BGDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeD' +
        'ate) asc),'#39#39') as BGExRem, '
      '  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate  '
      'from SPSCList '
      'where Article like '#39'%%'#39' '
      
        'and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) b' +
        'etween '
      #39'2014/07/20'#39
      ' and  '
      #39'2014/08/19'#39
      ') SPSCList '
      
        'select '#39#27298#26597'SPec'#39' as Item,'#39'CKDate'#39' as Sym,CKDate,COUNT(CKDate) as ' +
        'Total, '
      
        '      SUM(Case when CKDate>=CKExDate then 1 else 0 end ) as CKEx' +
        'Date, '
      
        '      (COUNT(Article)-SUM(Case when CKDate>=CKExDate then 1 else' +
        ' 0 end )) as LackCKExDate, '
      
        '      (Select YWSM from SPSCRmS where LYBH=(select  top 1 CKExRe' +
        'm from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is n' +
        'ull ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc' +
        ')) as YWSM, '
      
        '      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 CKExRe' +
        'm from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is n' +
        'ull ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc' +
        ')) as ZWSM '
      'from #SPSCList '
      
        'left join SPSCRms on SPSCRmS.LYBH=CKExRem and SPSCRmS.GSBH='#39'CDC'#39 +
        ' '
      'group by CKDate')
    Left = 176
    Top = 240
  end
end
