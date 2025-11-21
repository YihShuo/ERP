object CFMSwatchTracKing: TCFMSwatchTracKing
  Left = 190
  Top = 153
  Width = 1161
  Height = 480
  Caption = 'CFM Swatch TracKing'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1145
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB7: TBitBtn
      Left = 300
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB6: TBitBtn
      Left = 250
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 202
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 154
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 106
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB2: TBitBtn
      Left = 58
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB1: TBitBtn
      Left = 10
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object BB8: TBitBtn
      Left = 352
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BB8Click
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
  object Panel22: TPanel
    Left = 0
    Top = 64
    Width = 1145
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 18
      Top = 7
      Width = 34
      Height = 20
      Caption = 'Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 131
      Top = 7
      Width = 45
      Height = 20
      Caption = 'Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 230
      Top = 7
      Width = 34
      Height = 20
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 339
      Top = 7
      Width = 55
      Height = 20
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 469
      Top = 7
      Width = 61
      Height = 20
      Caption = 'Location'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 598
      Top = 7
      Width = 58
      Height = 20
      Caption = 'Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 613
      Top = 42
      Width = 43
      Height = 20
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 454
      Top = 41
      Width = 33
      Height = 20
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 228
      Top = 41
      Width = 23
      Height = 20
      Caption = 'SR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 41
      Width = 50
      Height = 20
      Caption = 'MatNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object YearcoBox: TComboBox
      Left = 58
      Top = 6
      Width = 66
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        '')
    end
    object MonCoBox: TComboBox
      Left = 178
      Top = 7
      Width = 49
      Height = 24
      ItemHeight = 16
      TabOrder = 1
    end
    object TypeCoBox: TComboBox
      Left = 268
      Top = 7
      Width = 67
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
        'SRA'
        'GTM')
    end
    object SeaCoBox: TComboBox
      Left = 396
      Top = 6
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Items.Strings = (
        ''
        'SRA'
        'GTM')
    end
    object LocCoBox: TComboBox
      Left = 534
      Top = 7
      Width = 57
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        ''
        'VN'
        'TW')
    end
    object StageEdit: TEdit
      Left = 659
      Top = 40
      Width = 89
      Height = 24
      TabOrder = 5
    end
    object SKUEdit: TEdit
      Left = 488
      Top = 40
      Width = 102
      Height = 24
      TabOrder = 6
    end
    object SREdit: TEdit
      Left = 255
      Top = 40
      Width = 178
      Height = 24
      TabOrder = 7
    end
    object MatNoEdit: TEdit
      Left = 59
      Top = 40
      Width = 168
      Height = 24
      TabOrder = 8
    end
    object Button1: TButton
      Left = 777
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
      TabOrder = 9
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 871
      Top = 48
      Width = 52
      Height = 17
      Caption = 'Mine'
      TabOrder = 10
    end
    object Edit1: TEdit
      Left = 662
      Top = 6
      Width = 89
      Height = 24
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 136
    Width = 1145
    Height = 304
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mat ID'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Width = 204
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Season'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'type'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        ReadOnly = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'csbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supp ID'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Width = 160
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'ColorSwatchStatus'
        Footers = <>
        PickList.Strings = (
          ''
          'OK')
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'AWB'
        Footers = <>
        ReadOnly = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ShippedDate'
        Footers = <>
        ReadOnly = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ExpireDate'
        Footers = <>
        ReadOnly = True
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        ReadOnly = True
        Width = 50
      end>
  end
  object FC_import: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select a.clbh,clzl.ywpm,clzl.dwbh,a.jijie,a.type,a.article,a.dev' +
        'code,a.csbh,a.zsywjc,a.userid,a.userdate'
      
        ',CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ExpireDate,' +
        'kfxxzl.FD '
      
        ',case when (CGZL_COLOR2.AWB <>'#39#39' and CGZL_COLOR2.ShippedDate<>'#39#39 +
        ') or (CGZL_COLOR2.AWB <> NUll and CGZL_COLOR2.ShippedDate<> NUll' +
        ') '
      
        'then '#39'OK'#39' else CGZL_COLOR2.ColorSwatchStatus  end as ColorSwatch' +
        'Status'
      'from('
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.clsl' +
        ' as total,ypzls.csbh,zszl.zsywjc,FC_import.userid,FC_import.user' +
        'date '
      'from FC_import '
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39' group by xiexing+shehao,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      'where ypzls.clbh is not null'
      'and FC_import.year='#39'2021'#39' '
      'and FC_import.month='#39'1'#39' '
      'and FC_import.type='#39'FA21'#39' '
      'and FC_import.jijie='#39'FA21'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.clsl,FC_import.' +
        'year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.ar' +
        'ticle,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,z' +
        'szl.zsywjc,FC_import.userid,FC_import.userdate'
      'union'
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,' +
        'FC_import.userdate'
      'FROM FC_import'
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'article,kfjd,xiexing,shehao from ypzl where kfjd='#39'CFM'#39' group by ' +
        'article,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and FC_import.year='#39'2021'#39' '
      'and FC_import.month='#39'1'#39' '
      'and FC_import.type='#39'FA21'#39' '
      'and FC_import.jijie='#39'FA21'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate'
      'union'
      
        'select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cl' +
        'dh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userid,clzhzl2.u' +
        'serdate from(  '
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,' +
        'FC_import.userdate'
      'FROM FC_import'
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao '
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39' group by xiexing+shehao,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '            ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.sheha' +
        'o=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and CLZHZL.SYL>0  and clzl.clzmlb='#39'Y'#39
      'and FC_import.year='#39'2021'#39' '
      'and FC_import.month='#39'1'#39' '
      'and FC_import.type='#39'FA21'#39' '
      'and FC_import.jijie='#39'FA21'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userid,FC_import.userdate' +
        ')clzhzl2'
      'inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'WHERE CLZHZL.cldh1 is not null'
      ' ) a '
      'left join clzl on clzl.cldh=a.clbh '
      'left join CGZL_COLOR2 on CGZL_COLOR2.clbh=a.clbh'
      'left join kfxxzl on a.devcode=kfxxzl.devcode'
      'left join ('
      
        '  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location' +
        ' from ('
      
        '    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Foreca' +
        'st_Leadtime, A.Location from ('
      
        '      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadt' +
        'ime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Sub' +
        'string(Season,1,2) DESC, USERDATE desc) as rn from ('
      
        '        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as' +
        ' CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, Mater' +
        'ialMOQ.USERDATE from MaterialMOQ with (nolock)'
      
        '        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = Materi' +
        'alMOQ.CLBH and IsNull(CLZL_LS.JHDH, '#39#39') <> '#39#39
      '      ) AS MaterialMOQ'
      '    ) A where A.rn=1'
      '  ) AS MatMOQ'
      ') AS m on m.CLBH = a.clbh'
      'where clzl.clzmlb <>'#39'Y'#39
      
        'group by  a.clbh,clzl.ywpm,clzl.dwbh,a.jijie,a.type,a.article,a.' +
        'devcode,a.csbh,a.zsywjc,a.userid,a.userdate'
      
        ',CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ExpireDate,' +
        'CGZL_COLOR2.AWB,CGZL_COLOR2.ShippedDate,CGZL_COLOR2.ColorSwatchS' +
        'tatus,kfxxzl.FD '
      'order by a.clbh'
      ' ')
    UpdateObject = UpdateSQL1
    Left = 392
    Top = 248
    object FC_importclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object FC_importywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object FC_importdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object FC_importjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
      Size = 4
    end
    object FC_importtype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object FC_importarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object FC_importdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object FC_importcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object FC_importzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object FC_importuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object FC_importuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object FC_importColorSwatchStatus: TStringField
      FieldName = 'ColorSwatchStatus'
      FixedChar = True
    end
    object FC_importAWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
    end
    object FC_importShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object FC_importExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object FC_importFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FC_import
    Left = 392
    Top = 216
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CGZL_COLOR2'
      'SET'
      '  ColorSwatchStatus = :ColorSwatchStatus'
      'WHERE'
      '  CLBH = :OLD_CLBH')
    Left = 393
    Top = 284
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 216
  end
end
