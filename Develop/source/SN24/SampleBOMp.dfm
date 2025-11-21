object SampleBOM: TSampleBOM
  Left = 234
  Top = 114
  Width = 1024
  Height = 591
  Caption = 'SampleBOM'
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 64
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 7
      Width = 49
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
    object BB2: TBitBtn
      Left = 56
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object BB3: TBitBtn
      Left = 104
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object BB4: TBitBtn
      Left = 152
      Top = 7
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
      TabOrder = 3
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
    object BB5: TBitBtn
      Left = 200
      Top = 7
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
      TabOrder = 4
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
    object BB6: TBitBtn
      Left = 248
      Top = 7
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
      TabOrder = 5
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
    object BB7: TBitBtn
      Left = 296
      Top = 7
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
      TabOrder = 6
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 1008
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 59
      Height = 20
      Caption = 'XieXing:'
    end
    object Label6: TLabel
      Left = 208
      Top = 40
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Label7: TLabel
      Left = 48
      Top = 8
      Width = 27
      Height = 20
      Caption = 'SR:'
    end
    object Label8: TLabel
      Left = 208
      Top = 8
      Width = 64
      Height = 20
      Caption = 'DAOMH:'
    end
    object Label9: TLabel
      Left = 400
      Top = 40
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object QryBtn: TButton
      Left = 592
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object Edit1: TEdit
      Left = 80
      Top = 36
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 272
      Top = 36
      Width = 121
      Height = 28
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 80
      Top = 4
      Width = 121
      Height = 28
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 272
      Top = 4
      Width = 121
      Height = 28
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 456
      Top = 36
      Width = 121
      Height = 28
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 329
    Width = 1008
    Height = 224
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 233
      Top = 1
      Width = 774
      Height = 222
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 772
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 56
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label2: TLabel
          Left = 208
          Top = 16
          Width = 47
          Height = 20
          Caption = 'Stage:'
        end
        object Label3: TLabel
          Left = 312
          Top = 16
          Width = 39
          Height = 20
          Caption = 'Pairs:'
        end
        object Label4: TLabel
          Left = 400
          Top = 16
          Width = 102
          Height = 20
          Caption = 'Sample Order:'
        end
        object DBText1: TDBText
          Left = 104
          Top = 16
          Width = 105
          Height = 17
          DataField = 'ARTICLE'
          DataSource = YPZL_DS
        end
        object DBText2: TDBText
          Left = 256
          Top = 16
          Width = 49
          Height = 17
          DataField = 'KFJD'
          DataSource = YPZL_DS
        end
        object DBText3: TDBText
          Left = 352
          Top = 16
          Width = 41
          Height = 17
          DataField = 'Quantity'
          DataSource = YPZL_DS
        end
        object DBText4: TDBText
          Left = 504
          Top = 15
          Width = 153
          Height = 17
          DataField = 'YPDH'
          DataSource = YPZL_DS
        end
        object ExcelBtn: TBitBtn
          Left = 0
          Top = -1
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
          TabOrder = 0
          OnClick = ExcelBtnClick
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
      object YPZLDet: TDBGridEh
        Left = 1
        Top = 49
        Width = 772
        Height = 172
        Align = alClient
        DataSource = YPZLS_DS
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = 'Name'
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat. NO'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Mat Name'
            Width = 351
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = 'Unit'
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Usage'
          end
          item
            EditButtons = <>
            FieldName = 'clzmlb'
            Footers = <>
            Title.Caption = 'Main'
            Width = 32
          end>
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 232
      Height = 222
      Align = alLeft
      DataSource = YPZLS2_DS
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object YPZLMas: TDBGridEh
    Left = 0
    Top = 137
    Width = 1008
    Height = 192
    Align = alTop
    DataSource = YPZL_DS
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = 'Sample Order'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'YPCC'
        Footers = <>
        Title.Caption = 'Size|Upper'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'YPCCL'
        Footers = <>
        Title.Caption = 'Size|O/S'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'YPCCO'
        Footers = <>
        Title.Caption = 'Size|Last'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR'
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 157
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'Quantity'
        Footers = <>
        Title.Caption = 'Pairs'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'GENDER'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 56
      end>
  end
  object YPZLsQuery: TQuery
    AfterOpen = YPZLsQueryAfterOpen
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      
        'select  YPZLS.YPDH,YPZLS.BWBH,bwzl.ywsm,YPZLS.CLBH,clzl.YWPM,clz' +
        'l.dwbh,YPZLS.CLSL,CLZL.clzmlb,zszl.zsywjc,YPZLS.LOSS from YPZLS'
      'left join CLZL on YPZLS.CLBH=CLZL.CLDH'
      'left join bwzl on bwzl.bwdh=YPZLS.BWBH'
      'left join zszl on YPZLS.CSBH=zszl.zsdh'
      'where YPZLS.YPDH=:YPDH'
      'order by YPZLS.CLBH')
    Left = 368
    Top = 296
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object YPZLQuery: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YPZL.YPDH,YPZL.KFJD,YPZL.YPCC,YPZL.YPCCO,YPZL.YPCCL,YPZL.' +
        'XieXing,YPZL.SheHao,kfxxzl.XieMing,YPZL.ARTICLE,kfxxzl.YSSM,'
      
        'kfxxzl.JiJie,YPZL.Quantity,kfxxzl.DEVCODE,kfxxzl.GENDER,kfxxzl.D' +
        'DMH,kfxxzl.DAOMH,kfxxzl.FD from YPZL '
      
        'left join kfxxzl on (YPZL.XieXing=kfxxzl.XieXing) and (YPZL.SheH' +
        'ao=kfxxzl.SheHao) '
      'order by YPZL.XieXing,YPZL.SheHao')
    Left = 176
    Top = 200
  end
  object YPZL_DS: TDataSource
    DataSet = YPZLQuery
    Left = 208
    Top = 201
  end
  object YPZLS_DS: TDataSource
    DataSet = YPZLsQuery
    Left = 397
    Top = 298
  end
  object YPZLS2Query: TQuery
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      'select Remark from YPZLS2 '
      'where YPZLS2.YPDH=:YPDH'
      'and Remark<>'#39#39' and Remark is not null')
    Left = 184
    Top = 345
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object YPZLS2_DS: TDataSource
    DataSet = YPZLS2Query
    Left = 216
    Top = 345
  end
end
