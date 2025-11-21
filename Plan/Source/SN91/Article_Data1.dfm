object Article_Data: TArticle_Data
  Left = 386
  Top = 193
  Width = 1228
  Height = 634
  Caption = 'Article_Data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 31
    Top = 32
    Width = 61
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Test Day:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 194
    Top = 31
    Width = 17
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'To'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 1212
    Height = 489
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 873
      Top = 1
      Width = 8
      Height = 487
    end
    object Splitter2: TSplitter
      Left = 409
      Top = 1
      Height = 487
    end
    object DBGridEh1: TDBGridEh
      Left = 412
      Top = 1
      Width = 461
      Height = 487
      Align = alLeft
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
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Production_Category'
          Footers = <>
          PickList.Strings = (
            'Cutting'
            'Stitching'
            'Assembly'
            'Packing'
            'DEGREASING'
            'DEGREASING1'
            'DEGREASING2'
            'DEGREASING3'
            'DEGREASING4'
            'DEGREASING5'
            'DEGREASING6'
            'DEGREASING7'
            'DEGREASING8'
            'DEGREASING9'
            'DEGREASING10'
            'STOCK-FIT'
            'STOCK-FIT1'
            'STOCK-FIT2'
            'STOCK-FIT3'
            'STOCK-FIT4'
            'STOCK-FIT5'
            'STOCK-FIT6'
            'STOCK-FIT7'
            'STOCK-FIT8'
            'STOCK-FIT9'
            'STOCK-FIT10'
            'FLOCKING'
            'FLOCKING1'
            'FLOCKING2'
            'FLOCKING3'
            'FLOCKING4'
            'FLOCKING5'
            'FLOCKING6'
            'FLOCKING7'
            'FLOCKING8'
            'FLOCKING9'
            'FLOCKING10'
            'BOOTIE'
            'BOOTIE1'
            'BOOTIE2'
            'BOOTIE3'
            'BOOTIE4'
            'BOOTIE5'
            'BOOTIE6'
            'BOOTIE7'
            'BOOTIE8'
            'BOOTIE9'
            'BOOTIE10')
          Width = 153
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'VERSION'
          Footers = <>
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'Hourly_Output'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'IE_DL'
          Footers = <>
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'Actual_DL'
          Footers = <>
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'IDL'
          Footers = <>
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'LBR'
          Footers = <>
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'TCT'
          Footers = <>
          Title.Caption = 'Total Cycle Time'
        end
        item
          EditButtons = <>
          FieldName = 'Status'
          Footers = <>
          PickList.Strings = (
            'Y'
            'N')
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'Test_Day'
          Footers = <>
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'Approve_Time'
          Footers = <>
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'Activation_Time'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          ReadOnly = True
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'File_Name'
          Footers = <>
          Width = 115
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 881
      Top = 1
      Width = 330
      Height = 487
      Align = alClient
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh2DrawColumnCell
      OnEditButtonClick = DBGridEh2EditButtonClick
      Columns = <
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'STT'
          Footers = <>
          Title.Caption = 'SOP No'
          Width = 48
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Cut_Type'
          Footers = <>
          Width = 109
        end
        item
          EditButtons = <>
          FieldName = 'Piece_percut'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'SChiTiet'
          Footers = <>
          Title.Caption = 'Component Quantity'
          Width = 68
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Process_name'
          Footers = <>
          Width = 112
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Process_YWPM'
          Footers = <>
          Title.Caption = 'Process_name_EG'
          Width = 144
        end
        item
          EditButtons = <>
          FieldName = 'TKT'
          Footers = <>
          Title.Caption = 'Takt Time'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'CT'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'TG_Loss'
          Footers = <>
          Title.Caption = 'Allowance'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'Tong_TG'
          Footers = <>
          Title.Caption = 'Total Cycle Time'
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'SLKH'
          Footers = <>
          Title.Caption = 'Daily Output Target'
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'Ideal_Labor'
          Footers = <>
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'SNguoi_KH'
          Footers = <>
          Title.Caption = 'Target Labor'
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'Labor_needed'
          Footers = <>
          Title.Caption = 'Needed Labor'
        end
        item
          EditButtons = <>
          FieldName = 'SNguoi_NC'
          Footers = <>
          Title.Caption = 'Outline Labor'
          Width = 69
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'LoaiMay'
          Footers = <>
          Title.Caption = 'Machine Type'
          Width = 88
        end
        item
          EditButtons = <>
          FieldName = 'Actual'
          Footers = <>
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'File_Name'
          Footers = <>
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'Remark'
          Footers = <>
          Width = 107
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 408
      Height = 487
      Align = alLeft
      DataSource = DS_xxzl
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SKU'
          Footers = <>
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Width = 108
        end
        item
          EditButtons = <>
          FieldName = 'SR'
          Footers = <>
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'StitchingCode'
          Footers = <>
          Width = 111
        end
        item
          EditButtons = <>
          FieldName = 'AssemblyCode'
          Footers = <>
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'DDMH'
          Footers = <>
          Width = 108
        end
        item
          EditButtons = <>
          FieldName = 'YWSM'
          Footers = <>
          Title.Caption = 'VULCANIZE E'
          Width = 128
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1212
    Height = 106
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = -31
      Top = 37
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 39
      Width = 29
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 63
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DAO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 194
      Top = 11
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 29
      Top = 9
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Plan Day:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EDSKU: TEdit
      Left = 42
      Top = 33
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EDSR: TEdit
      Left = 200
      Top = 35
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pnl4: TPanel
      Left = 897
      Top = 9
      Width = 404
      Height = 50
      TabOrder = 2
      object btnBE1: TBitBtn
        Left = 3
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnBE1Click
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
      object btnBE2: TBitBtn
        Left = 52
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBE2Click
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
      object btnBE3: TBitBtn
        Left = 158
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Modify Current'
        Caption = 'Modify'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnBE3Click
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
      object btnBE4: TBitBtn
        Left = 207
        Top = 0
        Width = 49
        Height = 48
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
        OnClick = btnBE4Click
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
      object btnBE5: TBitBtn
        Left = 256
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Cancel'
        Caption = 'Cancel'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnBE5Click
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
      object btnImport: TBitBtn
        Left = 304
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Insert one New Record'
        Caption = 'Import'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btnImportClick
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
      object BitBtn2: TBitBtn
        Left = 353
        Top = 0
        Width = 49
        Height = 48
        Hint = 'Modify Current'
        Caption = 'Excel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn2Click
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
      object BitBtn3: TBitBtn
        Left = 100
        Top = 0
        Width = 60
        Height = 48
        Hint = 'Delete one Record'
        Caption = 'Delete All'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn3Click
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
    end
    object BB1: TBitBtn
      Left = 345
      Top = 7
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 416
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
      TabOrder = 4
      OnClick = BB2Click
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
      Left = 464
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
      TabOrder = 5
      OnClick = BB3Click
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
      Left = 573
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
      TabOrder = 6
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
    object BB5: TBitBtn
      Left = 621
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
      TabOrder = 7
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
    object BB6: TBitBtn
      Left = 669
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
      TabOrder = 8
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
    object bbt6: TBitBtn
      Left = 718
      Top = 9
      Width = 49
      Height = 48
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
    object EDDAO: TEdit
      Left = 43
      Top = 60
      Width = 119
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object BitBtn1: TBitBtn
      Left = 767
      Top = 9
      Width = 49
      Height = 48
      Hint = 'Insert one New Record'
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtn1Click
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
    object BitBtn4: TBitBtn
      Left = 512
      Top = 8
      Width = 63
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete All'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BitBtn4Click
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
    object CK1: TCheckBox
      Left = 176
      Top = 64
      Width = 89
      Height = 17
      Caption = 'Have order'
      Checked = True
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object DTP1: TDateTimePicker
      Left = 93
      Top = 8
      Width = 94
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DTP2: TDateTimePicker
      Left = 220
      Top = 7
      Width = 93
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 11
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object BitBtn5: TBitBtn
      Left = 415
      Top = 57
      Width = 82
      Height = 48
      Hint = 'Insert one New Record'
      Caption = 'Import Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = BitBtn5Click
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
    object BitBtn6: TBitBtn
      Left = 899
      Top = 57
      Width = 75
      Height = 48
      Hint = 'Insert one New Record'
      Caption = 'Import Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = BitBtn6Click
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
    object BitBtn7: TBitBtn
      Left = 502
      Top = 58
      Width = 187
      Height = 46
      Hint = 'Modify Current'
      Caption = 'Modify Approve|Activation'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = BitBtn7Click
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
    object CheckBox2: TCheckBox
      Left = 279
      Top = 64
      Width = 57
      Height = 17
      Caption = 'Bom'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
  end
  object DS1: TDataSource
    DataSet = IE1
    Left = 760
    Top = 200
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update IE_ARTICLEDATA'
      'set'
      '  XieXing =:XieXing,'
      '  SheHao =:SheHao,'
      '  Production_Category =:Production_Category,'
      '  VERSION = :VERSION,'
      '  VERSION_MEMO = :VERSION_MEMO,'
      '  Hourly_Output = :Hourly_Output,'
      '  IE_DL = :IE_DL,'
      '  Actual_DL = :Actual_DL,'
      '  IDL = :IDL,'
      '  LBR = :LBR,'
      '  Status = :Status,'
      '  Test_Day = :Test_Day,'
      '  Approve_Time = :Approve_Time,'
      '  Activation_Time = :Activation_Time,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  File_Name = :File_Name,'
      '  TCT = :TCT'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category =:Production_Category'
      '  and VERSION =:VERSION'
      '')
    InsertSQL.Strings = (
      'insert into IE_ARTICLEDATA'
      '  (XieXing, SheHao, Production_Category, VERSION, VERSION_MEMO,'
      
        '   Hourly_Output, IE_DL, Actual_DL, IDL, LBR, Status, Test_Day, ' +
        'Approve_Time,Activation_Time,'
      '   USERID, USERDATE, YN, File_Name, TCT)'
      'values'
      
        '  (:XieXing, :SheHao, :Production_Category, :VERSION, :VERSION_M' +
        'EMO,'
      
        '   :Hourly_Output, :IE_DL, :Actual_DL, :IDL, :LBR, :Status, :Tes' +
        't_Day, :Approve_Time,:Activation_Time,'
      '   :USERID, :USERDATE, :YN, :File_Name, :TCT)'
      '')
    DeleteSQL.Strings = (
      'delete from IE_ARTICLEDATA'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category =:Production_Category'
      '  and VERSION =:VERSION'
      '')
    Left = 720
    Top = 240
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 241
  end
  object DS2: TDataSource
    DataSet = IE2
    Left = 1368
    Top = 200
  end
  object IE2: TQuery
    AfterOpen = IE2AfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select IE_ARTICLEDATAS.*'
      'from IE_ARTICLEDATAS'
      'where XieXing = :XieXing'
      'and Shehao = :Shehao'
      'and Production_Category = :Production_Category'
      'and VERSION = :VERSION'
      'order by IE_ARTICLEDATAS.STT'
      '')
    UpdateObject = UpSQL2
    Left = 1336
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'Production_Category'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'VERSION'
        ParamType = ptUnknown
        Size = 7
      end>
    object IE2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object IE2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object IE2Production_Category: TStringField
      FieldName = 'Production_Category'
      FixedChar = True
    end
    object IE2VERSION: TStringField
      FieldName = 'VERSION'
      FixedChar = True
      Size = 6
    end
    object IE2Cut_Type: TStringField
      FieldName = 'Cut_Type'
      FixedChar = True
      Size = 50
    end
    object IE2Piece_percut: TIntegerField
      FieldName = 'Piece_percut'
    end
    object IE2CT: TFloatField
      FieldName = 'CT'
    end
    object IE2Labor_needed: TIntegerField
      FieldName = 'Labor_needed'
    end
    object IE2File_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 255
    end
    object IE2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object IE2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object IE2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object IE2SChiTiet: TFloatField
      FieldName = 'SChiTiet'
      Origin = 'DB.IE_ARTICLEDATAS.SChiTiet'
    end
    object IE2TKT: TFloatField
      FieldName = 'TKT'
      Origin = 'DB.IE_ARTICLEDATAS.TKT'
    end
    object IE2Tong_TG: TFloatField
      FieldName = 'Tong_TG'
      Origin = 'DB.IE_ARTICLEDATAS.Tong_TG'
    end
    object IE2TG_Loss: TFloatField
      FieldName = 'TG_Loss'
      Origin = 'DB.IE_ARTICLEDATAS.TG_Loss'
    end
    object IE2SLKH: TFloatField
      FieldName = 'SLKH'
      Origin = 'DB.IE_ARTICLEDATAS.SLKH'
    end
    object IE2SNguoi_KH: TFloatField
      FieldName = 'SNguoi_KH'
      Origin = 'DB.IE_ARTICLEDATAS.SNguoi_KH'
    end
    object IE2SNguoi_NC: TFloatField
      FieldName = 'SNguoi_NC'
      Origin = 'DB.IE_ARTICLEDATAS.SNguoi_NC'
    end
    object IE2LoaiMay: TStringField
      FieldName = 'LoaiMay'
      Origin = 'DB.IE_ARTICLEDATAS.LoaiMay'
      FixedChar = True
      Size = 50
    end
    object IE2Process_name: TStringField
      FieldName = 'Process_name'
      Origin = 'DB.IE_ARTICLEDATAS.Process_name'
      FixedChar = True
      Size = 255
    end
    object IE2Actual: TStringField
      FieldName = 'Actual'
      Origin = 'DB.IE_ARTICLEDATAS.Actual'
      FixedChar = True
      Size = 30
    end
    object IE2Ideal_Labor: TFloatField
      FieldName = 'Ideal_Labor'
      Origin = 'DB.IE_ARTICLEDATAS.Ideal_Labor'
    end
    object IE2Process_YWPM: TStringField
      FieldName = 'Process_YWPM'
      Origin = 'DB.IE_ARTICLEDATAS.Process_YWPM'
      FixedChar = True
      Size = 255
    end
    object IE2STT: TIntegerField
      FieldName = 'STT'
      Origin = 'DB.IE_ARTICLEDATAS.STT'
    end
    object IE2Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.IE_ARTICLEDATAS.Remark'
      FixedChar = True
      Size = 255
    end
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update IE_ARTICLEDATAS'
      'set'
      '  Piece_percut = :Piece_percut,'
      '  Process_name = :Process_name,'
      '  Process_YWPM = :Process_YWPM,'
      '  CT = :CT,'
      '  Ideal_Labor = :Ideal_Labor,'
      '  Labor_needed = :Labor_needed,'
      '  File_Name = :File_Name,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  SChiTiet = :SChiTiet,'
      '  TKT = :TKT,'
      '  Tong_TG = :Tong_TG,'
      '  TG_Loss = :TG_Loss,'
      '  SLKH = :SLKH,'
      '  SNguoi_KH = :SNguoi_KH,'
      '  SNguoi_NC = :SNguoi_NC,'
      '  LoaiMay = :LoaiMay,'
      '  Actual = :Actual,'
      '  STT = :STT,'
      '  Remark = :Remark'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category = :OLD_Production_Category'
      '  and VERSION = :OLD_VERSION'
      '  and Cut_Type = :OLD_Cut_Type'
      '  and STT = :OLD_STT')
    InsertSQL.Strings = (
      'insert into IE_ARTICLEDATAS'
      
        '  (XieXing, SheHao, Production_Category, VERSION, Cut_Type,Piece' +
        '_percut, Process_name, Process_YWPM, CT, Ideal_Labor, Labor_need' +
        'ed, File_Name,'
      
        '   USERID, USERDATE, YN, SChiTiet, TKT, Tong_TG, TG_Loss, SLKH, ' +
        'SNguoi_KH, SNguoi_NC, LoaiMay, Actual,STT,Remark)'
      'values'
      
        '  (:XieXing, :SheHao, :Production_Category, :VERSION, :Cut_Type,' +
        ':Piece_percut, :Process_name, :Process_YWPM, :CT, :Ideal_Labor, ' +
        ':Labor_needed, :File_Name,'
      
        '   :USERID, :USERDATE, :YN, :SChiTiet, :TKT, :Tong_TG, :TG_Loss,' +
        ' :SLKH, :SNguoi_KH, :SNguoi_NC, :LoaiMay, :Actual, :STT, :Remark' +
        ')'
      '')
    DeleteSQL.Strings = (
      'delete from IE_ARTICLEDATAS'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category = :OLD_Production_Category'
      '  and VERSION = :OLD_VERSION'
      '  and Cut_Type = :OLD_Cut_Type'
      '  and STT = :OLD_STT')
    Left = 1336
    Top = 240
  end
  object DS_xxzl: TDataSource
    DataSet = xxzl
    Left = 128
    Top = 240
  end
  object xxzl: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE as SKU,kfxxzl.DEVCO' +
        'DE as SR,xxzl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.S' +
        'titchingCode,SKU_SA_CODE.AssemblyCode,sum (SCBBS.Qty) as Qty'
      ',LBZLS.YWSM'
      'from XXZL'
      
        'left join kfxxzl on XXZL.XieXing = kfxxzl.XieXing and XXZL.SheHa' +
        'o = kfxxzl.SheHao'
      
        'left join SKU_SA_CODE  ON  SKU_SA_CODE.XieXing = XXZL.XieXing AN' +
        'D  SKU_SA_CODE.SheHao = XXZL.SheHao'
      
        'left join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = XXZL.XieXi' +
        'ng AND  IE_ARTICLEDATA.SheHao = XXZL.SheHao '
      
        'left join ddzl on XXZL.ARTICLE = ddzl.ARTICLE and XXZL.XieXing =' +
        ' XXZL.XieXing AND  XXZL.SheHao = XXZL.SheHao and gsbh ='#39'VA12'#39
      'left join SCBBS on ddzl.DDBH=SCBBS.SCBH and SCBBS.GXLB='#39'A'#39
      'Left join LBZLS on LBZLS.LBDH=XXZL.XieGN and LBZLS.LB='#39'03'#39
      'where 1 = 2'
      
        'and (convert(smalldatetime,convert(varchar,IE_ARTICLEDATA.Test_D' +
        'ay ,111)) between '
      #39'2024/05/20'#39' and  '#39'2024/05/20'#39')'
      ' and XXZL.YN='#39'1'#39
      'and ddzl.DDBH in (select scbh from SCBBS where SCBBS.GXLB='#39'A'#39')'
      
        'group by XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,kfxxzl.DEVCODE,xx' +
        'zl.DDMH,xxzl.DMGJ,xxzl.DAOMH,xxzl.DAOGJ,SKU_SA_CODE.StitchingCod' +
        'e,SKU_SA_CODE.AssemblyCode'
      ',LBZLS.YWSM'
      'order by XXZL.ARTICLE')
    Left = 128
    Top = 273
    object StringField1: TStringField
      FieldName = 'XieXing'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'SheHao'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object StringField10: TStringField
      FieldName = 'SKU'
      ReadOnly = True
      FixedChar = True
    end
    object StringField11: TStringField
      FieldName = 'SR'
      ReadOnly = True
      FixedChar = True
    end
    object StringField12: TStringField
      FieldName = 'DDMH'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object StringField13: TStringField
      FieldName = 'DMGJ'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object StringField14: TStringField
      FieldName = 'DAOMH'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'DAOGJ'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object xxzlStitchingCode: TStringField
      FieldName = 'StitchingCode'
      FixedChar = True
      Size = 50
    end
    object xxzlAssemblyCode: TStringField
      FieldName = 'AssemblyCode'
      FixedChar = True
      Size = 50
    end
    object xxzlQty: TFloatField
      FieldName = 'Qty'
    end
    object xxzlYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object IE1: TQuery
    AfterOpen = IE1AfterOpen
    DatabaseName = 'DB'
    DataSource = DS_xxzl
    SQL.Strings = (
      'select *'
      'from IE_ARTICLEDATA'
      'where XieXing = :XieXing'
      'and Shehao = :Shehao'
      
        'order by IE_ARTICLEDATA.VERSION,IE_ARTICLEDATA.Production_Catego' +
        'ry'
      '')
    UpdateObject = UpSQL1
    Left = 720
    Top = 201
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object IE1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.IE_ARTICLEDATA.XieXing'
      FixedChar = True
      Size = 15
    end
    object IE1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.IE_ARTICLEDATA.SheHao'
      FixedChar = True
      Size = 5
    end
    object IE1Production_Category: TStringField
      FieldName = 'Production_Category'
      Origin = 'DB.IE_ARTICLEDATA.Production_Category'
      FixedChar = True
    end
    object IE1VERSION: TStringField
      FieldName = 'VERSION'
      Origin = 'DB.IE_ARTICLEDATA.VERSION'
      FixedChar = True
      Size = 6
    end
    object IE1VERSION_MEMO: TStringField
      FieldName = 'VERSION_MEMO'
      Origin = 'DB.IE_ARTICLEDATA.VERSION_MEMO'
      FixedChar = True
      Size = 255
    end
    object IE1Hourly_Output: TFloatField
      FieldName = 'Hourly_Output'
      Origin = 'DB.IE_ARTICLEDATA.Hourly_Output'
    end
    object IE1IE_DL: TIntegerField
      FieldName = 'IE_DL'
      Origin = 'DB.IE_ARTICLEDATA.IE_DL'
    end
    object IE1Actual_DL: TIntegerField
      FieldName = 'Actual_DL'
      Origin = 'DB.IE_ARTICLEDATA.Actual_DL'
    end
    object IE1IDL: TIntegerField
      FieldName = 'IDL'
      Origin = 'DB.IE_ARTICLEDATA.IDL'
    end
    object IE1LBR: TStringField
      FieldName = 'LBR'
      Origin = 'DB.IE_ARTICLEDATA.LBR'
      FixedChar = True
    end
    object IE1Status: TStringField
      FieldName = 'Status'
      Origin = 'DB.IE_ARTICLEDATA.Status'
      FixedChar = True
      Size = 1
    end
    object IE1Test_Day: TDateTimeField
      FieldName = 'Test_Day'
      Origin = 'DB.IE_ARTICLEDATA.Test_Day'
    end
    object IE1Approve_Time: TDateTimeField
      FieldName = 'Approve_Time'
      Origin = 'DB.IE_ARTICLEDATA.Approve_Time'
    end
    object IE1Activation_Time: TDateTimeField
      FieldName = 'Activation_Time'
      Origin = 'DB.IE_ARTICLEDATA.Activation_Time'
    end
    object IE1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.IE_ARTICLEDATA.USERID'
      FixedChar = True
    end
    object IE1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.IE_ARTICLEDATA.USERDATE'
    end
    object IE1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.IE_ARTICLEDATA.YN'
      FixedChar = True
      Size = 1
    end
    object IE1File_Name: TStringField
      FieldName = 'File_Name'
      Origin = 'DB.IE_ARTICLEDATA.File_Name'
      FixedChar = True
      Size = 255
    end
    object IE1TCT: TFloatField
      FieldName = 'TCT'
      Origin = 'DB.IE_ARTICLEDATA.TCT'
    end
  end
  object OpenDialog: TOpenDialog
    Left = 800
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 336
    object CopyArticle1: TMenuItem
      Caption = 'Copy Article'
      OnClick = CopyArticle1Click
    end
  end
end
