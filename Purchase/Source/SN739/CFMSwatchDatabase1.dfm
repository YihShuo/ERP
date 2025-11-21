object CFMSwatchDatabase: TCFMSwatchDatabase
  Left = 361
  Top = 305
  Width = 1386
  Height = 675
  Caption = 'CFM Swatch Database'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 64
    Align = alTop
    TabOrder = 0
    object BB7: TBitBtn
      Left = 296
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
      Left = 248
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
      Left = 200
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
      Left = 152
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
      Left = 104
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
      Left = 56
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
      Left = 8
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 64
    Width = 1370
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 23
      Top = 9
      Width = 36
      Height = 13
      Caption = 'Season'
    end
    object Label6: TLabel
      Left = 498
      Top = 7
      Width = 28
      Height = 13
      Caption = 'Stage'
    end
    object lbl1: TLabel
      Left = 175
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Supplier'
    end
    object Label1: TLabel
      Left = 22
      Top = 33
      Width = 37
      Height = 13
      Caption = 'Mat NO'
    end
    object Label2: TLabel
      Left = 254
      Top = 59
      Width = 22
      Height = 13
      Caption = 'SR#'
    end
    object Label3: TLabel
      Left = 360
      Top = 7
      Width = 44
      Height = 13
      Caption = 'DevType'
    end
    object Label8: TLabel
      Left = 147
      Top = 59
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label9: TLabel
      Left = 30
      Top = 56
      Width = 31
      Height = 16
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 475
      Top = 82
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label18: TLabel
      Left = 418
      Top = 58
      Width = 28
      Height = 13
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 166
      Top = 34
      Width = 52
      Height = 13
      Caption = 'Mat. Name'
    end
    object Edit1: TEdit
      Left = 64
      Top = 5
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 532
      Top = 5
      Width = 58
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 223
      Top = 5
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 603
      Top = 43
      Width = 67
      Height = 32
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit6: TEdit
      Left = 64
      Top = 29
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit7: TEdit
      Left = 281
      Top = 55
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object cb8: TComboBox
      Left = 411
      Top = 4
      Width = 62
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU')
    end
    object DTP2: TDateTimePicker
      Left = 156
      Top = 55
      Width = 83
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 55
      Width = 84
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 8
    end
    object datecheckbox: TCheckBox
      Left = 12
      Top = 57
      Width = 17
      Height = 17
      TabOrder = 9
    end
    object ComboBox14: TComboBox
      Left = 450
      Top = 54
      Width = 62
      Height = 21
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 10
      Visible = False
      Items.Strings = (
        ''
        'SKX'
        'SRL')
    end
    object Button2: TButton
      Left = 676
      Top = 44
      Width = 71
      Height = 31
      Caption = 'Excel'
      TabOrder = 11
      OnClick = Button2Click
    end
    object Edit9: TEdit
      Left = 223
      Top = 29
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object Edit10: TEdit
      Left = 320
      Top = 29
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object Edit11: TEdit
      Left = 408
      Top = 29
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object CheckBox6: TCheckBox
      Left = 610
      Top = 23
      Width = 63
      Height = 17
      Caption = 'CoverAll'
      TabOrder = 15
    end
    object Button16: TButton
      Left = 680
      Top = 8
      Width = 62
      Height = 32
      Caption = 'CoverAll'
      TabOrder = 16
      OnClick = Button16Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 144
    Width = 1370
    Height = 492
    Align = alClient
    Color = clMenuBar
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 7
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'VendorID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Vendor ID'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Vendor Name'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ColorID'
        Footers = <>
        Title.Caption = 'CFM SWATCH DETAIL|Color ID'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Material Discription'
        Width = 182
      end
      item
        EditButtons = <>
        FieldName = 'Material'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Material ID'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'CFM SWATCH DETAIL|Material ERP'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Temp Code'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'JHDH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM SWATCH DETAIL|Formal Code'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Readable'
        Footers = <>
        PickList.Strings = (
          ''
          'Readable'
          'Non-readable')
        Title.Caption = 'CFM SWATCH DETAIL|Readable'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Season'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SKU#'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'A4Comfirm'
        Footers = <>
        PickList.Strings = (
          '1')
        Width = 108
      end
      item
        Color = clActiveCaption
        EditButtons = <>
        FieldName = 'TrackingA4Comfirm'
        Footers = <>
        Title.Caption = 'Card Tracking'
        Width = 74
      end
      item
        Color = clActiveCaption
        EditButtons = <>
        FieldName = 'ColorWindow'
        Footers = <>
        Width = 79
      end
      item
        Color = clActiveCaption
        EditButtons = <>
        FieldName = 'DateColorWindow'
        Footers = <>
        Title.Caption = 'Date Color Window'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'DCName'
        Footers = <>
        PickList.Strings = (
          ''
          'HF'
          'FT'
          'LYN')
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|DCName'
        Title.Color = clYellow
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        PickList.Strings = (
          ''
          'Tracy')
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Who Signed'
        Title.Color = clYellow
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'ShippedDate'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|When DC Shipped'
        Title.Color = clYellow
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'SignedDate'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Signed Date'
        Title.Color = clYellow
        Width = 184
      end
      item
        EditButtons = <>
        FieldName = 'ReceivedDate'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Received Date'
        Title.Color = clYellow
      end
      item
        EditButtons = <>
        FieldName = 'PRO'
        Footers = <>
        PickList.Strings = (
          'LYN PRO'
          'BY PRO'
          'LYN PRO & BY PRO'
          '')
        Title.Caption = 'PRODUCTION SOURCE|LYN PRO/BY PRO '
        Title.Color = clYellow
        Width = 219
      end
      item
        EditButtons = <>
        FieldName = 'Senter'
        Footers = <>
        PickList.Strings = (
          ''
          'DEV MTRL TEAM'
          'PRO MTRL TEAM'
          'BY MTRL TEAM')
        Title.Caption = 'WHO SENT CFM SWATCH TO VENDOR'
        Title.Color = clYellow
      end
      item
        EditButtons = <>
        FieldName = 'SharedDC'
        Footers = <>
        PickList.Strings = (
          ''
          'HF'
          'FT'
          'LYN'
          '')
        Title.Caption = 'DC RECORD FOR CFM SWATCH|SharedDCs'
        Title.Color = clYellow
        Width = 191
      end
      item
        EditButtons = <>
        FieldName = 'ExpireDate'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|When to expire?'
        Title.Color = clYellow
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'Updater'
        Footers = <>
        PickList.Strings = (
          ''
          'Tracy')
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Who Updated Excel File'
        Title.Color = clYellow
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'color2Remark'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Remark'
        Title.Color = clYellow
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'AWB'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|AWB#'
        Title.Color = clMenuBar
        Width = 101
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 368
    Top = 266
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        ' select  ZSZL_FLEX.zsdhflex as VendorID,ZSZL.zsywjc, '#39#39' as Color' +
        'ID,CLZL.ywpm,cgzl_color2.clbh as color2clbh,CLZL_FLEX.cldhflex a' +
        's Material,CLZL.CLDH as CLBH,FormalCLBH.CLDH,TempCLBH.JHDH,cgzl_' +
        'color2.Readable,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article,cgzl_' +
        'color2.A4Comfirm'
      
        '  ,cgzl_color2.TrackingA4Comfirm,cgzl_color2.ColorWindow,cgzl_co' +
        'lor2.DateColorWindow,cgzl_color2.DCName,cgzl_color2.Signer,cgzl_' +
        'color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.ReceivedDa' +
        'te'
      
        '  ,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.SharedDC,cgzl_' +
        'color2.ExpireDate,cgzl_color2.Updater,cgzl_color2.color2Remark,c' +
        'gzl_color2.AWB  '
      '  FROM CLZL  '
      '    left join ypzls on ypzls.clbh=CLZL.cldh   '
      '    left join ypzl on ypzls.ypdh=ypzl.ypdh    '
      
        '    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.s' +
        'hehao=ypzl.shehao     '
      
        '    left join ZSZL  on CLZL.ZSDH=ZSZL.ZSDH or ypzls.CSBH=ZSZL.ZS' +
        'DH    '
      '    left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH    '
      '    left join cgzl_color2 on cgzl_color2.clbh=CLZL.cldh'
      
        '    left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CLZL.CLDH   ' +
        '  '
      '    left join CLZL_LS TempCLBH on TempCLBH.JHDH=CLZL.CLDH     '
      '    left join CLZL_FLEX on CLZL_FLEX.cldh = CLZL.CLDH'
      '    left join ZSZL_FLEX on ZSZL_FLEX.zsdh = ypzls.CSBH '
      '  where 1=1  '
      
        '  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDa' +
        'te,111))  between '
      #39'2022/04/10'#39' and  '#39'2022/06/09'#39
      'and clzl.cldh like '#39'%V90A000120%'#39
      
        '  group by  ZSZL_FLEX.zsdhflex,ZSZL.zsywjc,CLZL.ywpm,CLZL_FLEX.c' +
        'ldhflex,CLZL.CLDH,FormalCLBH.CLDH,TempCLBH.JHDH,cgzl_color2.Read' +
        'able,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article  '
      
        '  ,cgzl_color2.TrackingA4Comfirm,cgzl_color2.ColorWindow,cgzl_co' +
        'lor2.DateColorWindow,cgzl_color2.DCName,cgzl_color2.Signer,cgzl_' +
        'color2.ShippedDate,cgzl_color2.SignedDate  '
      
        '  ,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.SharedDC,cgzl_' +
        'color2.ExpireDate,cgzl_color2.Updater,cgzl_color2.color2Remark,c' +
        'gzl_color2.AWB,cgzl_color2.clbh'
      
        '  ,cgzl_color2.TrackingA4Comfirm,cgzl_color2.ReceivedDate,cgzl_c' +
        'olor2.A4Comfirm'
      '  order by FormalCLBH.CLDH'
      '')
    UpdateObject = UpdateSQL1
    Left = 368
    Top = 304
    object Query1VendorID: TStringField
      FieldName = 'VendorID'
      FixedChar = True
      Size = 15
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1ColorID: TStringField
      FieldName = 'ColorID'
      FixedChar = True
      Size = 1
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1color2clbh: TStringField
      FieldName = 'color2clbh'
      FixedChar = True
      Size = 15
    end
    object Query1Material: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1JHDH: TStringField
      FieldName = 'JHDH'
      FixedChar = True
      Size = 10
    end
    object Query1Readable: TStringField
      FieldName = 'Readable'
      FixedChar = True
      Size = 30
    end
    object Query1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query1ColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object Query1DateColorWindow: TDateTimeField
      FieldName = 'DateColorWindow'
    end
    object Query1DCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 10
    end
    object Query1Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object Query1ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object Query1SignedDate: TDateTimeField
      FieldName = 'SignedDate'
      OnChange = Query1SignedDateChange
    end
    object Query1PRO: TStringField
      FieldName = 'PRO'
      FixedChar = True
      Size = 30
    end
    object Query1Senter: TStringField
      FieldName = 'Senter'
      FixedChar = True
      Size = 30
    end
    object Query1SharedDC: TStringField
      FieldName = 'SharedDC'
      FixedChar = True
      Size = 10
    end
    object Query1ExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object Query1Updater: TStringField
      FieldName = 'Updater'
      FixedChar = True
      Size = 10
    end
    object Query1color2Remark: TStringField
      FieldName = 'color2Remark'
      FixedChar = True
      Size = 60
    end
    object Query1AWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
      Size = 60
    end
    object Query1A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 100
    end
    object Query1ReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color2'
      'set'
      #9'Readable=:Readable,'
      #9'A4Comfirm=:A4Comfirm,'
      #9'TrackingA4Comfirm=:TrackingA4Comfirm,'
      #9'ColorWindow=:ColorWindow,'
      #9'DateColorWindow=:DateColorWindow,'
      #9'DCName=:DCName,'
      #9'Signer=:Signer,'
      #9'ShippedDate=:ShippedDate,'
      #9'SignedDate=:SignedDate,'
      #9'PRO=:PRO,'
      #9'Senter=:Senter,'
      #9'SharedDC=:SharedDC,'
      #9'ExpireDate=:ExpireDate,'
      #9'Updater=:Updater,'
      #9'color2Remark=:color2Remark,'
      #9'ReceivedDate=:ReceivedDate,'
      #9'AWB=:AWB'
      'where'
      '  clbh = :OLD_clbh')
    Left = 368
    Top = 344
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 304
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 336
  end
end
