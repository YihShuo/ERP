object ExcelBuylist: TExcelBuylist
  Left = 1009
  Top = 666
  Width = 841
  Height = 554
  Caption = 'ExcelBuylist'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object bnFirst: TBitBtn
    Left = 583
    Top = 56
    Width = 49
    Height = 49
    Caption = 'First'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bnFirstClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bnPrior: TBitBtn
    Left = 631
    Top = 56
    Width = 49
    Height = 49
    Hint = 'Insert one New Record'
    Caption = 'Prior'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bnPriorClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bnNext: TBitBtn
    Left = 679
    Top = 56
    Width = 49
    Height = 49
    Hint = 'Delete one Record'
    Caption = 'Next'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bnNextClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333FF3333333333333003333
      3333333333773FF3333333333309003333333333337F773FF333333333099900
      33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
      99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
      33333333337F3F77333333333309003333333333337F77333333333333003333
      3333333333773333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bnLast: TBitBtn
    Left = 727
    Top = 56
    Width = 49
    Height = 49
    Hint = 'Modify Current'
    Caption = 'Last'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bnLastClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FF3333333333333447333333333333377FFF33333333333744473333333
      333337773FF3333333333444447333333333373F773FF3333333334444447333
      33333373F3773FF3333333744444447333333337F333773FF333333444444444
      733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
      999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
      33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
      333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
      33333777333333333333CC333333333333337733333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 825
    Height = 516
    ActivePage = Sales_BOM_Import
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Sales_BOM_Import: TTabSheet
      Caption = 'Sales_BOM_Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 817
        Height = 81
        Align = alTop
        TabOrder = 0
        object label35: TLabel
          Left = 470
          Top = 30
          Width = 93
          Height = 20
          Caption = 'Process Info'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object bbt1: TButton
          Left = 398
          Top = 15
          Width = 49
          Height = 49
          Caption = 'Import'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 0
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = bbt1Click
        end
        object BB7: TBitBtn
          Left = 259
          Top = 15
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BB7Click
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
          Left = 211
          Top = 15
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
          Left = 163
          Top = 15
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
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
          Left = 116
          Top = 15
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
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
        object BB1: TBitBtn
          Left = 68
          Top = 15
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
          Left = 307
          Top = 15
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
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
      object Panel1: TPanel
        Left = 0
        Top = 81
        Width = 817
        Height = 81
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 39
          Top = 29
          Width = 53
          Height = 20
          Caption = 'KHPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 92
          Top = 28
          Width = 121
          Height = 28
          TabOrder = 0
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 162
        Width = 817
        Height = 323
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Title.Caption = 'KHPO|PO#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DDGB'
            Footers = <>
            Title.Caption = 'DDGB|'#35330#21934#22283#23478
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'DDCG'
            Footers = <>
            Title.Caption = 'DDCG|'#20986#36008#22283#23478
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'Article|SKU#'
            Width = 75
          end
          item
            DropDownRows = 10
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            Title.Caption = 'DDRQ|'#19979#21934#26085#26399
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'DDBH|RY#'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'MLT'
            Footers = <>
            Title.Caption = 'MLT|'#29983#29986#36913#26399#22825#25976
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'Leadtime'
            Footers = <>
            Title.Caption = 'PO Re-releaseDate|'#37325#26032#25509#21934#26085
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Title.Caption = 'pairs|'#38617#25976
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'RGAC'
            Footers = <>
            Title.Caption = 'RGAC|'#23458#20154#35201#27714#20132#26399
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'OGAC'
            Footers = <>
            Title.Caption = 'OGAC|'#21407#22987#20132#26399
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'RGOG'
            Footers = <>
            Title.Caption = 'RGOG|RGAC-OGAC'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'GAC'
            Footers = <>
            Title.Caption = 'GAC|'#24037#24288#20986#36008#20132#26399
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'FWZH'
            Footers = <>
            Title.Caption = 'FWZH|'#23458#20154#21487#20197#25509#21463'OGAC'#30906#35469#31684#22285
          end
          item
            EditButtons = <>
            FieldName = 'VDJS'
            Footers = <>
            Title.Caption = 'VDJS|'#38928#21578#25509#25910
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'VDWC'
            Footers = <>
            Title.Caption = 'VDWC|'#38928#21578#32080#26463
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ZSJS'
            Footers = <>
            Title.Caption = 'ZSJS|'#27491#24335#25509#25910
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'ZSWC'
            Footers = <>
            Title.Caption = 'ZSWC|'#27491#24335#32080#26463
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'userid'
            Footers = <>
            Title.Caption = 'userid|Taker'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Caption = 'Remark|'#20633#35387
            Width = 167
          end>
      end
    end
  end
  object opendialog: TOpenDialog
    Left = 224
    Top = 320
  end
  object DS1: TDataSource
    DataSet = DD_buylistQuery
    Left = 144
    Top = 312
  end
  object DD_buylistQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DD_buylist.KHPO,DD_buylist.DDGB,DD_Buylist.DDCG,DDZLTW.Ar' +
        'ticle,convert(varchar(10),DDZLTW.DDRQ,111) as DDRQ,'
      
        'DDZLTW.DDBH,DD_Buylist.MLT,DD_Buylist.Leadtime,DDZLTW.pairs as P' +
        'airs ,convert(smalldatetime,convert(varchar(10),DD_Buylist.RGAC,' +
        '111)) as RGAC,'
      
        'convert(smalldatetime,convert(varchar(10),DD_Buylist.OGAC,111)) ' +
        'as OGAC,'
      
        'datediff(day,convert(smalldatetime,convert(varchar(10),DD_Buylis' +
        't.RGAC,111)) ,convert(smalldatetime,convert(varchar(10),DD_Buyli' +
        'st.OGAC,111))) as RGOG, '
      
        ' convert(smalldatetime,convert(varchar(10),DD_buylist.GAC,111)) ' +
        'as GAC,DD_buylist.FWZH,convert(smalldatetime,convert(varchar(10)' +
        ',DD_buylist.VDJS,111)) as VDJS,'
      
        ' convert(smalldatetime,convert(varchar(10),DD_buylist.VDWC,111))' +
        ' as VDWC,convert(smalldatetime,convert(varchar(10),DD_buylist.ZS' +
        'JS,111)) as ZSJS,convert(smalldatetime,convert(varchar(10),DD_bu' +
        'ylist.ZSWC,111)) as ZSWC,'
      'DD_buylist.userid,DD_Buylist.Remark  from DD_Buylist'
      'left join DDZLTW  on DDZLTW.khpo=DD_Buylist.KHPO'
      'where 1=1')
    UpdateObject = UpdateDD_Buylist
    Left = 144
    Top = 352
    object DD_buylistQueryKHPO: TStringField
      FieldName = 'KHPO'
      Origin = 'DB.DDZL_OD.KHPO'
      FixedChar = True
      Size = 25
    end
    object DD_buylistQueryDDGB: TStringField
      FieldName = 'DDGB'
      Origin = 'DB.DDZL_OD.DDGB'
      FixedChar = True
      Size = 10
    end
    object DD_buylistQueryDDCG: TStringField
      FieldName = 'DDCG'
      FixedChar = True
      Size = 50
    end
    object DD_buylistQueryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DD_buylistQueryDDRQ: TStringField
      FieldName = 'DDRQ'
      Origin = 'DB.DDZL_OD.DDRQ'
      FixedChar = True
    end
    object DD_buylistQueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DD_buylistQueryMLT: TStringField
      FieldName = 'MLT'
      FixedChar = True
      Size = 10
    end
    object DD_buylistQueryLeadtime: TStringField
      FieldName = 'Leadtime'
      FixedChar = True
      Size = 10
    end
    object DD_buylistQuerypairs: TIntegerField
      FieldName = 'pairs'
    end
    object DD_buylistQueryRGAC: TDateTimeField
      FieldName = 'RGAC'
    end
    object DD_buylistQueryOGAC: TDateTimeField
      FieldName = 'OGAC'
    end
    object DD_buylistQueryRGOG: TIntegerField
      FieldName = 'RGOG'
    end
    object DD_buylistQueryGAC: TDateTimeField
      FieldName = 'GAC'
    end
    object DD_buylistQueryFWZH: TStringField
      FieldName = 'FWZH'
      FixedChar = True
      Size = 10
    end
    object DD_buylistQueryVDJS: TDateTimeField
      FieldName = 'VDJS'
    end
    object DD_buylistQueryVDWC: TDateTimeField
      FieldName = 'VDWC'
    end
    object DD_buylistQueryZSJS: TDateTimeField
      FieldName = 'ZSJS'
    end
    object DD_buylistQueryZSWC: TDateTimeField
      FieldName = 'ZSWC'
    end
    object DD_buylistQueryuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 50
    end
    object DD_buylistQueryRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
  end
  object UpdateDD_Buylist: TUpdateSQL
    ModifySQL.Strings = (
      'update DD_Buylist'
      'set'
      '  KHPO= :KHPO,'
      '  DDCG = :DDCG,'
      '  MLT = :MLT,'
      '  Leadtime= :Leadtime,'
      '  RGAC= :RGAC,'
      '  OGAC= :OGAC,'
      '  RGOG= :RGOG,'
      '  GAC= :GAC,'
      '  FWZH= :FWZH,'
      '  VDJS= :VDJS,'
      '  VDWC= :VDWC,'
      '  ZSJS= :ZSJS,'
      '  ZSWC= :ZSWC,'
      '  Remark= :Remark'
      'where'
      '  KHPO = :OLD_KHPO '
      ''
      'update DDZLTW'
      'set'
      '  KHPO= :KHPO,'
      '  DDGB= :DDGB,'
      '  article= :article,'
      '  DDRQ= :DDRQ,'
      '  DDBH= :DDBH,'
      '  Pairs= :pairs'
      'where'
      '  KHPO = :OLD_KHPO '
      '')
    InsertSQL.Strings = (
      'insert into DD_buylist       '
      
        '(KHPO,DDGB,DDCG,MLT,Leadtime,RGAC,OGAC,GAC,FWZH,VDJS,VDWC,ZSJS,Z' +
        'SWC,Remark,userid)'
      'values'
      
        '(:KHPO,:DDGB,:DDCG,:MLT,:Leadtime,:RGAC,:OGAC,:GAC,:FWZH,:VDJS,:' +
        'VDWC,:ZSJS,:ZSWC,:Remark,:Userid)'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from DD_Buylist'
      'where'
      '  KHPO = :OLD_KHPO and'
      '  DDGB = :OLD_DDGB and'
      '  DDCG = :OLD_DDCG and'
      '  Article = :OLD_Article')
    Left = 144
    Top = 408
  end
end
