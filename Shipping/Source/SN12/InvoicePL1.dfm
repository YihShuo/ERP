object InvoicePL: TInvoicePL
  Left = 176
  Top = 125
  Width = 1744
  Height = 835
  Caption = 'InvoicePL'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 265
    Width = 1728
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1728
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inv No.'
    end
    object Label2: TLabel
      Left = 180
      Top = 12
      Width = 9
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 282
      Top = 8
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country'
    end
    object Label3: TLabel
      Left = 840
      Top = 8
      Width = 300
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mass Production'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 496
      Top = 8
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RYNo.'
    end
    object Edit1: TEdit
      Left = 88
      Top = 32
      Width = 161
      Height = 24
      Color = cl3DLight
      TabOrder = 0
    end
    object Button1: TButton
      Left = 696
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkIndate: TCheckBox
      Left = 16
      Top = 8
      Width = 66
      Height = 17
      Caption = 'Inv Date'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 6
      Width = 89
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 192
      Top = 6
      Width = 89
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 4
    end
    object chkNoLock: TCheckBox
      Left = 304
      Top = 36
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 368
      Top = 6
      Width = 121
      Height = 24
      Color = clScrollBar
      TabOrder = 6
    end
    object chkLock: TCheckBox
      Left = 402
      Top = 36
      Width = 83
      Height = 17
      Caption = 'Confirmed'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 560
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 8
    end
    object chkDrop: TCheckBox
      Left = 536
      Top = 36
      Width = 129
      Height = 17
      Caption = 'Show Cancel RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1728
    Height = 200
    Align = alTop
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 51
      Width = 1726
      Height = 148
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      DataSource = DS1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 2
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
      ParentFont = False
      PopupMenu = Pop_M
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 0
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'INV_NO'
          Footer.FieldName = 'INV_NO'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Inv No.'
          Width = 77
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'INV_DATE'
          Footers = <>
          Title.Caption = 'Inv Date'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'Declaretion'
          Footers = <>
          Title.Caption = 'So TK'
          Width = 115
        end
        item
          EditButtons = <>
          FieldName = 'RISK'
          Footers = <>
          Width = 214
        end
        item
          EditButtons = <>
          FieldName = 'SHIP_BY'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Ship By'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'FROM_WHERE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'From Where'
          Width = 150
        end
        item
          ButtonStyle = cbsNone
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'TO_WHERE'
          Footers = <>
          PickList.Strings = (
            ''
            'ARGENTINA'
            'AUSTRALIA'
            'BELGIUM'
            'BRASIL'
            'CANADA'
            'CHILE'
            'CHINA'
            'COLUMBIA'
            'CONGO'
            'DJIBOUTI'
            'EGYPT'
            'FRANCE'
            'GABON'
            'GERMANY'
            'GREECE'
            'HONG KONG'
            'INDIA'
            'INDONESIA'
            'ISRAEL'
            'ITALY'
            'JAPAN'
            'KAZAKHSTAN'
            'KOREA'
            'LEBANON'
            'MALAYSIA'
            'MEXICO'
            'MONACO'
            'NEPAL'
            'NETHERLANDS'
            'NEW ZEALAND'
            'NORWAY'
            'PANAMA'
            'PARAGUAY'
            'PERU'
            'PHILIPPINES'
            'RUSSIA'
            'RUSSIAN'
            'S AFRICA'
            'SENEGAL'
            'SINGAPORE'
            'SPAIN'
            'TAIWAN'
            'THAILAND'
            'TUNISIA'
            'TURKEY'
            'U.K.'
            'USA'
            'UAE'
            'UKRAINE'
            'URUGUAY'
            'VENEZUELA'
            'VIETNAM'
            '')
          Title.Caption = 'To Where'
          Width = 65
        end
        item
          Color = clLime
          EditButtons = <>
          FieldName = 'CUSTID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Cust ID'
          Width = 49
        end
        item
          DisplayFormat = '#,###'
          EditButtons = <>
          FieldName = 'TOTAL_PAIRS'
          Footer.DisplayFormat = '#,###'
          Footer.FieldName = 'TOTAL_PAIRS'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Total Pairs'
          Width = 70
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'TOTAL_AMOUNT'
          Footer.DisplayFormat = '#,##0.00'
          Footer.FieldName = 'TOTAL_AMOUNT'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Total Amount'
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_AMOUNT_WORD'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Amount Word'
          Visible = False
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'CURRENCY'
          Footers = <>
          Title.Caption = 'Currency'
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'BRAND'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Brand'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'NO'
          Footers = <>
          Title.Caption = 'No.'
          Width = 34
        end
        item
          EditButtons = <>
          FieldName = 'FACTORY'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Factory'
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'YEAR'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Year'
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'SAVE_USER'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User ID'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'SAVE_TIME'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User Date'
          Width = 135
        end
        item
          Color = 7303167
          EditButtons = <>
          FieldName = 'PRINT_LOCK'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'CFM Status'
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'PRINT_USER'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'CFM by User'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'PRINT_TIME'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Confirm Date'
          Width = 132
        end
        item
          EditButtons = <>
          FieldName = 'REF'
          Footers = <>
          Width = 90
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1726
      Height = 50
      Align = alTop
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 904
        Top = 14
        Width = 91
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Signature'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnInsert: TBitBtn
        Left = 0
        Top = 0
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
        TabOrder = 0
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
      object btndelete: TBitBtn
        Left = 48
        Top = 0
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
        TabOrder = 1
        OnClick = btndeleteClick
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
      object btnModify: TBitBtn
        Left = 96
        Top = 0
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
        TabOrder = 2
        OnClick = btnModifyClick
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
      object btnSave: TBitBtn
        Left = 144
        Top = 0
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
        OnClick = btnSaveClick
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
      object btnCancel: TBitBtn
        Left = 192
        Top = 0
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
        TabOrder = 4
        OnClick = btnCancelClick
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
      object btnexit: TBitBtn
        Left = 240
        Top = 0
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
        TabOrder = 5
        OnClick = btnexitClick
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
      object btnPrint: TBitBtn
        Left = 300
        Top = 0
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Print'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnPrintClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object cboSign: TComboBox
        Left = 1008
        Top = 10
        Width = 153
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 7
        Text = 'Vice General Director'
        Items.Strings = (
          'Vice General Director'
          'Chief Accountant')
      end
      object btnExcel: TBitBtn
        Left = 423
        Top = 0
        Width = 53
        Height = 49
        Hint = 'Modify Current'
        Caption = 'ExcelTX'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = btnExcelClick
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
      object btnAnnex: TBitBtn
        Left = 357
        Top = 1
        Width = 57
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Annex'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = btnAnnexClick
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
      object btnExcel_TB: TBitBtn
        Left = 484
        Top = 1
        Width = 53
        Height = 49
        Hint = 'Modify Current'
        Caption = 'ExcelTB'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = btnExcel_TBClick
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
      object btnExcel_TT: TBitBtn
        Left = 543
        Top = 1
        Width = 53
        Height = 49
        Hint = 'Modify Current'
        Caption = 'ExcelTT'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = btnExcel_TTClick
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
      object btnExcel_CA: TBitBtn
        Left = 679
        Top = 1
        Width = 53
        Height = 49
        Hint = 'Modify Current'
        Caption = 'ExcelCA'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = btnExcel_CAClick
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
      object ExcelPR: TBitBtn
        Left = 744
        Top = 0
        Width = 105
        Height = 49
        Caption = 'Excel PR'
        TabOrder = 13
        OnClick = ExcelPRClick
      end
      object BitBtn1: TBitBtn
        Left = 608
        Top = 0
        Width = 65
        Height = 49
        Caption = 'AnnexTT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = BitBtn1Click
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 268
    Width = 1728
    Height = 528
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'All'
      object Splitter3: TSplitter
        Left = 521
        Top = 0
        Height = 497
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 497
        Align = alLeft
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 61
          Width = 519
          Height = 435
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FrozenCols = 3
          ParentFont = False
          PopupMenu = Pop_D
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh2GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'INV_NO'
              Footers = <>
              Title.Caption = 'Inv No.'
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'PACK_NO'
              Footers = <>
              Title.Caption = 'Pack No.'
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'RYNO'
              Footers = <>
              Title.Caption = 'RY'
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'STYLE_NAME'
              Footers = <>
              Title.Caption = 'Stype Name'
              Width = 105
            end
            item
              EditButtons = <>
              FieldName = 'KHDDBH1'
              Footers = <>
              Title.Caption = 'PO#'
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'CUSTORDNO'
              Footers = <>
              Title.Caption = 'Custord No.'
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.Caption = 'Article'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'SIZE_RUN'
              Footers = <>
              Title.Caption = 'Size Run'
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              Title.Caption = 'Pairs'
              Width = 40
            end
            item
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'UNIT_PRICE'
              Footers = <>
              Title.Caption = 'Unit Price'
            end
            item
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footers = <>
              Title.Caption = 'Amount'
            end
            item
              EditButtons = <>
              FieldName = 'PO'
              Footers = <>
              Title.Caption = 'Master PO#'
            end
            item
              EditButtons = <>
              FieldName = 'YSBH'
              Footers = <>
              Title.Caption = 'Master RY'
              Width = 81
            end>
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 519
          Height = 60
          Align = alTop
          Alignment = taLeftJustify
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label8: TLabel
            Left = 149
            Top = 8
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CTS:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 149
            Top = 36
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pairs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 262
            Top = 8
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'NW:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 262
            Top = 36
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'GW:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 389
            Top = 8
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CBM:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 64
            Top = 4
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 8
            Top = 40
            Width = 137
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Invoice Detail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 390
            Top = 36
            Width = 40
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RGW:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 192
            Top = 4
            Width = 65
            Height = 24
            Color = cl3DLight
            DataField = 'T_CTS'
            DataSource = DS5
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 192
            Top = 32
            Width = 65
            Height = 24
            Color = cl3DLight
            DataField = 'T_PAIRS'
            DataSource = DS5
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 304
            Top = 4
            Width = 81
            Height = 24
            Color = cl3DLight
            DataField = 'T_NW'
            DataSource = DS5
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 304
            Top = 32
            Width = 81
            Height = 24
            Color = cl3DLight
            DataField = 'T_GW'
            DataSource = DS5
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 432
            Top = 4
            Width = 81
            Height = 24
            Color = cl3DLight
            DataField = 'T_CBM'
            DataSource = DS5
            TabOrder = 4
          end
          object DBEdit2: TDBEdit
            Left = 433
            Top = 32
            Width = 81
            Height = 24
            Color = cl3DLight
            DataField = 'T_TRGW'
            DataSource = DS5
            TabOrder = 5
          end
        end
      end
      object Panel4: TPanel
        Left = 524
        Top = 0
        Width = 1196
        Height = 497
        Align = alClient
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 1
          Top = 26
          Width = 1194
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 29
          Width = 1194
          Height = 320
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          PopupMenu = Pop_P
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh3GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'INV_NO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Inv No.'
              Visible = False
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'RYNO'
              Footers = <>
              ReadOnly = True
              Visible = False
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'XH'
              Footers = <>
              ReadOnly = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'SIZ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Size'
              Width = 30
            end
            item
              Color = 16756991
              EditButtons = <>
              FieldName = 'SIZ_US'
              Footers = <>
              Title.Caption = 'Size(US)'
              Visible = False
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'CTQ'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'CTZ'
              Footers = <>
              ReadOnly = True
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'CTS'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'InboxCode'
              Footers = <>
              Title.Caption = 'InnerBoxCode'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'CtnboxCode'
              Footers = <>
              Title.Caption = 'OuterCartonCode'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Pairs'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'rgw'
              Footers = <>
              Title.Caption = 'RGW'
            end
            item
              EditButtons = <>
              FieldName = 'TRGW'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NW'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'GW'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'TNW'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'TGW'
              Footers = <>
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'L'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'W'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'H'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'CBM'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User Date'
              Width = 135
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              ReadOnly = True
              Width = 50
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1194
          Height = 25
          Align = alTop
          Caption = 'Packing List'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object rbtTX: TRadioButton
            Left = 1
            Top = 6
            Width = 124
            Height = 17
            Caption = 'Single size 1 row'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = rbtTXClick
          end
          object rbtTB: TRadioButton
            Left = 121
            Top = 6
            Width = 105
            Height = 17
            Caption = 'Mix size 1 row'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = rbtTBClick
          end
        end
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 349
          Width = 1194
          Height = 147
          Align = alBottom
          DataSource = DS_PD
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          PopupMenu = Pop_PD
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh4GetCellParams
          Columns = <
            item
              Color = 16754943
              EditButtons = <>
              FieldName = 'Word'
              Footers = <>
              ReadOnly = True
              Title.Caption = ' '
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'CTS'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              ReadOnly = True
              Width = 40
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'NW'
              Footers = <>
              Width = 40
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'GW'
              Footers = <>
              Width = 50
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'totalTRGW'
              Footers = <>
              Title.Caption = 'TRGW'
              Title.Color = clCream
            end
            item
              EditButtons = <>
              Footers = <>
              ReadOnly = True
              Width = 120
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'CBM'
              Footers = <>
              Width = 40
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              ReadOnly = True
              Width = 135
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              ReadOnly = True
              Width = 50
            end>
        end
      end
    end
  end
  object qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 792
    Top = 201
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT distinct INVOICE_M.*,do.DDZT as status '
      
        'FROM INVOICE_M LEFT JOIN INVOICE_D id ON id.INV_NO = INVOICE_M.I' +
        'NV_NO'
      #9#9#9#9'left join DDZL do ON do.DDBH=id.RYNO')
    UpdateObject = UpdateSQL1
    Left = 576
    Top = 216
    object Query1INV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_M.INV_NO'
      FixedChar = True
      Size = 15
    end
    object Query1INV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Origin = 'MYDB.INVOICE_M.INV_DATE'
    end
    object Query1RISK: TStringField
      FieldName = 'RISK'
      Origin = 'MYDB.INVOICE_M.RISK'
      FixedChar = True
      Size = 50
    end
    object Query1SHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      Origin = 'MYDB.INVOICE_M.SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object Query1FROM_WHERE: TStringField
      FieldName = 'FROM_WHERE'
      Origin = 'MYDB.INVOICE_M.FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object Query1TO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      Origin = 'MYDB.INVOICE_M.TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object Query1TOTAL_AMOUNT: TCurrencyField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT'
    end
    object Query1TOTAL_AMOUNT_WORD: TStringField
      FieldName = 'TOTAL_AMOUNT_WORD'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT_WORD'
      FixedChar = True
      Size = 200
    end
    object Query1BRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'MYDB.INVOICE_M.BRAND'
      FixedChar = True
      Size = 10
    end
    object Query1NO: TIntegerField
      FieldName = 'NO'
      Origin = 'MYDB.INVOICE_M.NO'
    end
    object Query1FACTORY: TStringField
      FieldName = 'FACTORY'
      Origin = 'MYDB.INVOICE_M.FACTORY'
      FixedChar = True
      Size = 10
    end
    object Query1YEAR: TStringField
      FieldName = 'YEAR'
      Origin = 'MYDB.INVOICE_M.YEAR'
      FixedChar = True
      Size = 10
    end
    object Query1SAVE_USER: TStringField
      FieldName = 'SAVE_USER'
      Origin = 'MYDB.INVOICE_M.SAVE_USER'
      FixedChar = True
      Size = 50
    end
    object Query1SAVE_TIME: TDateTimeField
      FieldName = 'SAVE_TIME'
      Origin = 'MYDB.INVOICE_M.SAVE_TIME'
    end
    object Query1PRINT_LOCK: TStringField
      FieldName = 'PRINT_LOCK'
      Origin = 'MYDB.INVOICE_M.PRINT_LOCK'
      FixedChar = True
      Size = 2
    end
    object Query1CFM_USER: TStringField
      FieldName = 'CFM_USER'
      Origin = 'MYDB.INVOICE_M.CFM_USER'
      FixedChar = True
      Size = 50
    end
    object Query1CFM_TIME: TDateTimeField
      FieldName = 'CFM_TIME'
      Origin = 'MYDB.INVOICE_M.CFM_TIME'
    end
    object Query1CFMED: TStringField
      FieldName = 'CFMED'
      Origin = 'MYDB.INVOICE_M.CFMED'
      FixedChar = True
      Size = 2
    end
    object Query1PRINT_USER: TStringField
      FieldName = 'PRINT_USER'
      Origin = 'MYDB.INVOICE_M.PRINT_USER'
      FixedChar = True
      Size = 50
    end
    object Query1PRINT_TIME: TDateTimeField
      FieldName = 'PRINT_TIME'
      Origin = 'MYDB.INVOICE_M.PRINT_TIME'
    end
    object Query1UNLOCK_USER: TStringField
      FieldName = 'UNLOCK_USER'
      Origin = 'MYDB.INVOICE_M.UNLOCK_USER'
      FixedChar = True
      Size = 50
    end
    object Query1UNLOCK_TIME: TDateTimeField
      FieldName = 'UNLOCK_TIME'
      Origin = 'MYDB.INVOICE_M.UNLOCK_TIME'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'MYDB.INVOICE_M.YN'
      FixedChar = True
      Size = 1
    end
    object Query1CUSTID: TStringField
      FieldName = 'CUSTID'
      Origin = 'MYDB.INVOICE_M.CUSTID'
      FixedChar = True
      Size = 10
    end
    object Query1TOTAL_PAIRS: TIntegerField
      FieldName = 'TOTAL_PAIRS'
      Origin = 'MYDB.INVOICE_M.TOTAL_PAIRS'
    end
    object Query1CURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'MYDB.INVOICE_M.CURRENCY'
      FixedChar = True
      Size = 10
    end
    object Query1Inv_Type: TStringField
      FieldName = 'Inv_Type'
      Origin = 'MYDB.INVOICE_M.Inv_Type'
      FixedChar = True
      Size = 50
    end
    object Query1status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
    end
    object Query1REF: TStringField
      FieldName = 'REF'
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 576
    Top = 248
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE INVOICE_M SET '
      '      INV_DATE = :INV_DATE'
      '      ,RISK = :RISK'
      '      ,Declaretion =:Declaretion'
      '      ,SHIP_BY = :SHIP_BY'
      '      ,FROM_WHERE = :FROM_WHERE'
      '      ,TO_WHERE = :TO_WHERE'
      '      ,BRAND = :BRAND'
      '      ,NO = :NO'
      '      ,FACTORY = :FACTORY'
      '      ,YEAR = :YEAR      '
      '      ,SAVE_USER = :SAVE_USER'
      '      ,SAVE_TIME = getdate()       '
      ',CURRENCY= :CURRENCY'
      ',REF=:REF'
      ' WHERE INV_NO=:INV_NO ')
    DeleteSQL.Strings = (
      'delete from INVOICE_M'
      'WHERE INV_NO=:old_INV_NO')
    Left = 632
    Top = 249
  end
  object Pop_M: TPopupMenu
    Left = 632
    Top = 217
    object LockAll1: TMenuItem
      Caption = 'Confirm All'
      Visible = False
      OnClick = LockAll1Click
    end
    object Unclock1: TMenuItem
      Caption = 'Un-Confirm'
      Visible = False
      OnClick = Unclock1Click
    end
  end
  object qrytemp1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'update INVOICE_M'
      'set'
      'CFM_USER = :CFM_USER,'
      'CFM_TIME = :CFM_TIME,'
      'CFMED = :CFMED'
      'where'
      'INV_NO = :INV_NO '
      '')
    Left = 728
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CFM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFM_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CFMED'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object qrytemp2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'update INVOICE_M'
      'set'
      'CFM_USER = :CFM_USER,'
      'CFM_TIME = :CFM_TIME,'
      'CFMED = :CFMED'
      'where'
      'INV_NO = :INV_NO '
      '')
    Left = 760
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CFM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFM_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CFMED'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object qry_total: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select sum(totalTRGW) T_TRGW,sum(CTS) T_CTS,sum(Pairs) T_PAIRS,s' +
        'um(NW) T_NW,sum(GW) T_GW,sum(CBM) T_CBM'
      'from('
      
        'select total.totalTRGW,Packing_D.inv_no,Packing_D.ryno,Packing_D' +
        '.cbm,Packing_D.cts,Packing_D.GW,Packing_D.nw,Packing_D.pairs,Pac' +
        'king_D.userdate,Packing_D.userid,Packing_D.yn,'#39'Total :'#39'  as Word'
      'from Packing_D '
      'left join ('
      'SELECT round(sum(rgw*CTS),2) totalTRGW,RYNO,INV_NO FROM ('
      
        'SELECT packing.CTQ,packing.CTZ,round(ywcp.rgw,2) as rgw,PACKING.' +
        'CTS,packing.RYNO,packing.INV_NO from packing'
      
        'left join (select ddbh,xh,Qty,round(avg(rgw),2) as rgw from YWCP' +
        ' '
      
        'group by ddbh,xh,Qty)YWCP on YWCP.ddbh=PACKING.RYNO and PACKING.' +
        'XH=YWCP.XH'
      'WHERE INV_NO=:INV_NO'
      
        'group by packing.CTQ,packing.CTZ,round(ywcp.rgw,2),PACKING.CTS,p' +
        'acking.RYNO,packing.INV_NO)total'
      'group by RYNO,INV_NO )'
      
        'total on total.INV_NO=Packing_D.INV_NO and total.RYNO=Packing_D.' +
        'ryno'
      'where Packing_D.INV_NO=:INV_NO  )a')
    Left = 96
    Top = 381
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
    object qry_totalT_CTS: TIntegerField
      FieldName = 'T_CTS'
      Origin = 'MYDB.PACKING_D.CTS'
    end
    object qry_totalT_PAIRS: TIntegerField
      FieldName = 'T_PAIRS'
      Origin = 'MYDB.PACKING_D.Pairs'
    end
    object qry_totalT_NW: TFloatField
      FieldName = 'T_NW'
      Origin = 'MYDB.PACKING_D.NW'
    end
    object qry_totalT_GW: TFloatField
      FieldName = 'T_GW'
      Origin = 'MYDB.PACKING_D.GW'
    end
    object qry_totalT_CBM: TFloatField
      FieldName = 'T_CBM'
      Origin = 'MYDB.PACKING_D.CBM'
    end
    object qry_totalT_TRGW: TFloatField
      FieldName = 'T_TRGW'
    end
  end
  object DS5: TDataSource
    DataSet = qry_total
    Left = 128
    Top = 388
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select INVOICE_D.INV_NO,INVOICE_D.RYNO,INVOICE_D.PACK_NO,INVOICE' +
        '_D.STYLE_NAME,INVOICE_D.PO,INVOICE_D.CUSTORDNO,INVOICE_D.ARTICLE' +
        ',INVOICE_D.Size_Run'
      
        #9#9',INVOICE_D.PAIRS,INVOICE_D.UNIT_PRICE,INVOICE_D.AMOUNT,INVOICE' +
        '_D.UserID,INVOICE_D.UserDate'
      
        '    ,SUBSTRING(xxzl.ARTICLE, CHARINDEX('#39'-'#39', xxzl.ARTICLE) + 1, L' +
        'EN(xxzl.ARTICLE)) AS YSSM'
      '    ,YWDD.KHDDBH1,YWDD.YSBH'
      'FROM INVOICE_D'
      'left join YWDD on YWDD.DDBH=INVOICE_D.RYNO'
      'left join ddzl on ddzl.DDBH=YWDD.YSBH'
      
        'left join xxzl on xxzl.xiexing=ddzl.xieXing and xxzl.shehao=ddzl' +
        '.shehao'
      'where INVOICE_D.INV_NO=:INV_NO'
      '')
    Left = 328
    Top = 457
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query2INV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_D.INV_NO'
      FixedChar = True
      Size = 15
    end
    object Query2PACK_NO: TStringField
      FieldName = 'PACK_NO'
      Origin = 'MYDB.INVOICE_D.PACK_NO'
      FixedChar = True
      Size = 10
    end
    object Query2RYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.INVOICE_D.RYNO'
      FixedChar = True
      Size = 15
    end
    object Query2STYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      Origin = 'MYDB.INVOICE_D.STYLE_NAME'
      FixedChar = True
      Size = 15
    end
    object Query2PO: TStringField
      FieldName = 'PO'
      Origin = 'MYDB.INVOICE_D.PO'
      FixedChar = True
      Size = 15
    end
    object Query2CUSTORDNO: TStringField
      FieldName = 'CUSTORDNO'
      Origin = 'MYDB.INVOICE_D.CUSTORDNO'
      FixedChar = True
      Size = 15
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'MYDB.INVOICE_D.ARTICLE'
      FixedChar = True
      Size = 15
    end
    object Query2SIZE_RUN: TStringField
      FieldName = 'SIZE_RUN'
      Origin = 'MYDB.INVOICE_D.SIZE_RUN'
      FixedChar = True
      Size = 15
    end
    object Query2PAIRS: TIntegerField
      FieldName = 'PAIRS'
      Origin = 'MYDB.INVOICE_D.PAIRS'
    end
    object Query2UNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
      Origin = 'MYDB.INVOICE_D.UNIT_PRICE'
    end
    object Query2AMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
      Origin = 'MYDB.INVOICE_D.AMOUNT'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.INVOICE_D.UserID'
      FixedChar = True
      Size = 15
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.INVOICE_D.UserDate'
    end
    object Query2YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object Query2KHDDBH1: TStringField
      FieldName = 'KHDDBH1'
      FixedChar = True
      Size = 30
    end
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 328
    Top = 489
  end
  object Pop_D: TPopupMenu
    Left = 328
    Top = 524
    object RevisePrice2: TMenuItem
      Caption = 'Revise...'
      Visible = False
      OnClick = RevisePrice2Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query3: TQuery
    AfterScroll = Query3AfterScroll
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'SELECT round(ywcp.rgw,2) as rgw,round(ywcp.rgw,2)*PACKING.CTS TR' +
        'GW,'
      
        'packing.INV_NO,packing.RYNO,packing.SIZ,packing.CBM,packing.CTQ,' +
        'packing.CTS,packing.CTZ,packing.GW,packing.H,packing.L,packing.N' +
        'W,'
      
        'packing.Pairs,convert(varchar,packing.Qty) as Qty,Siz_US,packing' +
        '.UserDate,packing.UserID,packing.W,packing.XH,packing.TNW,packin' +
        'g.TGW,'
      'YWBZPO.CtnboxCode,YWBZPOS.InboxCode'
      
        ', max(case when DDZL.DDGB=YWCPLH.GBBH then YWCPLH.InBoxBar else ' +
        ' case when YWCPLH.GBBH='#39'NORMAL'#39' then YWCPLH.InBoxBar end end ) a' +
        's InboxBar'
      'FROM PACKING'
      
        'left join (select ddbh,xh,Qty,avg(rgw) as rgw from YWCP where dd' +
        'bh=:RYNO'
      
        'group by ddbh,xh,Qty)YWCP on YWCP.ddbh=PACKING.RYNO and PACKING.' +
        'XH=YWCP.XH'
      
        'left join YWBZPOS on YWBZPOS.DDBH=PACKING.RYNO and YWBZPOS.XH=PA' +
        'CKING.XH and YWBZPOS.DDCC=PACKING.SIZ'
      
        'left join YWBZPO on YWBZPO.DDBH=PACKING.RYNO and PACKING.XH=PACK' +
        'ING.XH and YWBZPO.XH=YWBZPOS.XH'
      'LEFT join DDZL on DDZL.DDBH=PACKING.RYNO'
      
        'LEFT join YWCPLH on DDZL.XieXing=YWCPLH.XieXing and DDZL.SheHao=' +
        'YWCPLH.SheHao and YWCPLH.XXCC=PACKING.SIZ'
      'WHERE INV_NO=:INV_NO and RYNO=:RYNO'
      
        'group by ywcp.rgw,ywcp.rgw*PACKING.CTS,packing.inv_no,packing.ry' +
        'no,packing.siz,packing.cbm'
      
        ',packing.ctq,packing.cts,packing.ctz,packing.gw,packing.h,packin' +
        'g.l,packing.nw,packing.pairs,'
      
        'packing.qty,packing.siz_US,packing.userdate,packing.userid,packi' +
        'ng.w,packing.xh,packing.tnw,packing.tgw,YWBZPO.CtnboxCode,YWBZPO' +
        'S.InboxCode'
      'order by packing.xh')
    Left = 832
    Top = 377
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
      end>
    object Query3INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 15
    end
    object Query3RYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 10
    end
    object Query3XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 10
    end
    object Query3SIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 10
    end
    object Query3CTS: TIntegerField
      FieldName = 'CTS'
    end
    object Query3Qty: TStringField
      FieldName = 'Qty'
      FixedChar = True
      Size = 30
    end
    object Query3PAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object Query3NW: TFloatField
      FieldName = 'NW'
    end
    object Query3GW: TFloatField
      FieldName = 'GW'
    end
    object Query3L: TFloatField
      FieldName = 'L'
    end
    object Query3W: TFloatField
      FieldName = 'W'
    end
    object Query3H: TFloatField
      FieldName = 'H'
    end
    object Query3CBM: TFloatField
      FieldName = 'CBM'
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query3CTQ: TIntegerField
      FieldName = 'CTQ'
      Origin = 'MYDB.PACKING.CTQ'
    end
    object Query3CTZ: TIntegerField
      FieldName = 'CTZ'
      Origin = 'MYDB.PACKING.CTZ'
    end
    object Query3SIZ_US: TStringField
      FieldName = 'SIZ_US'
      Origin = 'MYDB.PACKING.SIZ_US'
      FixedChar = True
      Size = 10
    end
    object Query3TNW: TFloatField
      FieldName = 'TNW'
      Origin = 'DB.PACKING.TNW'
    end
    object Query3TGW: TFloatField
      FieldName = 'TGW'
      Origin = 'DB.PACKING.TGW'
    end
    object Query3rgw: TFloatField
      FieldName = 'rgw'
      Origin = 'DB.PACKING.INV_NO'
    end
    object Query3TRGW: TFloatField
      FieldName = 'TRGW'
    end
    object Query3CtnboxCode: TStringField
      FieldName = 'CtnboxCode'
      FixedChar = True
      Size = 30
    end
    object Query3InboxCode: TStringField
      FieldName = 'InboxCode'
      FixedChar = True
      Size = 30
    end
    object Query3Inboxbar: TStringField
      FieldName = 'Inboxbar'
      FixedChar = True
      Size = 50
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 833
    Top = 349
  end
  object Pop_P: TPopupMenu
    Left = 834
    Top = 407
    object RevisePackingList2: TMenuItem
      Caption = 'Revise Packing List'
      Visible = False
      OnClick = RevisePackingList2Click
    end
  end
  object qry_PD: TQuery
    AfterScroll = qry_PDAfterScroll
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select total.totalTRGW,Packing_D.inv_no,Packing_D.ryno,Packing_D' +
        '.cbm,Packing_D.cts,Packing_D.GW,Packing_D.nw,Packing_D.pairs,Pac' +
        'king_D.userdate,Packing_D.userid,Packing_D.yn,'#39'Total :'#39'  as Word'
      'from Packing_D '
      'left join ('
      'SELECT round(sum(rgw*CTS),2) totalTRGW,RYNO,INV_NO FROM ('
      
        'SELECT packing.CTQ,packing.CTZ,round(ywcp.rgw,2) as rgw,PACKING.' +
        'CTS,packing.RYNO,packing.INV_NO from packing'
      
        'left join (select ddbh,xh,Qty,round(avg(rgw),2) as rgw from YWCP' +
        ' where ddbh=:RYNO'
      
        'group by ddbh,xh,Qty)YWCP on YWCP.ddbh=PACKING.RYNO and PACKING.' +
        'XH=YWCP.XH'
      'WHERE INV_NO=:INV_NO and RYNO=:RYNO'
      
        'group by packing.CTQ,packing.CTZ,ywcp.rgw,PACKING.CTS,packing.RY' +
        'NO,packing.INV_NO)total'
      'group by RYNO,INV_NO )'
      
        'total on total.INV_NO=Packing_D.INV_NO and total.RYNO=Packing_D.' +
        'ryno'
      'where Packing_D.INV_NO=:INV_NO and'
      ' Packing_D.RYNO=:RYNO')
    UpdateObject = Upd_PD
    Left = 622
    Top = 564
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
      end>
    object qry_PDINV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.PACKING_D.INV_NO'
      FixedChar = True
      Size = 15
    end
    object qry_PDRYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.PACKING_D.RYNO'
      FixedChar = True
      Size = 15
    end
    object qry_PDCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'MYDB.PACKING_D.CTS'
    end
    object qry_PDPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'MYDB.PACKING_D.Pairs'
    end
    object qry_PDNW: TFloatField
      FieldName = 'NW'
      Origin = 'MYDB.PACKING_D.NW'
    end
    object qry_PDGW: TFloatField
      FieldName = 'GW'
      Origin = 'MYDB.PACKING_D.GW'
    end
    object qry_PDtotalTRGW: TFloatField
      FieldName = 'totalTRGW'
    end
    object qry_PDUserID: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.PACKING_D.UserID'
      FixedChar = True
      Size = 10
    end
    object qry_PDUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.PACKING_D.UserDate'
    end
    object qry_PDCBM: TFloatField
      DisplayWidth = 10
      FieldName = 'CBM'
      Origin = 'MYDB.PACKING_D.CBM'
    end
    object qry_PDWord: TStringField
      FieldName = 'Word'
      FixedChar = True
      Size = 7
    end
  end
  object Pop_PD: TPopupMenu
    Left = 652
    Top = 564
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      Visible = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      Visible = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      Visible = False
      OnClick = Cancel1Click
    end
  end
  object DS_PD: TDataSource
    DataSet = qry_PD
    Left = 588
    Top = 564
  end
  object Upd_PD: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PACKING_D set'
      '        CTS=:CTS'
      #9#9',Pairs=:Pairs'
      #9#9',NW=:NW'
      #9#9',GW=:GW'
      '                               ,CBM=:CBM'
      #9#9',UserID=:UserID'
      #9#9',UserDate=getdate()'
      'where INV_NO=:INV_NO and RYNO=:RYNO')
    Left = 692
    Top = 564
  end
  object DS_Checks: TDataSource
    Left = 212
    Top = 711
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select a.STYLE_NAME,SUBSTRING(A.ARTICLE, 1, CHARINDEX('#39'-'#39', A.ART' +
        'ICLE) - 1) AS Style_No,b.YSSM,SUBSTRING(B.ARTICLE, CHARINDEX('#39'-'#39 +
        ', B.ARTICLE) + 1,'
      
        ' LEN(B.ARTICLE)) AS YSSM_code,c.CC,c.Quantity as QTY_Left,c.Quan' +
        'tity as Qty_Right,c.Quantity*2 as Qty_total,c.Quantity as Qty_to' +
        'tal_pairs,A.UNIT_PRICE,'
      
        ' A.UNIT_PRICE*C.Quantity as Amount,D.TOTAL_AMOUNT_WORD,D.TOTAL_A' +
        'MOUNT, a.RYNO,a.INV_NO'
      #9#9',CASE '
      #9#9#9'WHEN LEFT(A.STYLE_NAME, 1) = '#39'M'#39' '
      #9#9#9#9' THEN '#39'Men'#39#39's '#39' + C.CC'
      #9#9#9#9#9'ELSE '#39'Women'#39#39's '#39' + C.CC'
      #9#9#9'END AS CCC,E.KHPO as KHPO,D.INV_DATE as UserDate'
      'from INVOICE_D A'
      'left join xxzl B on a.ARTICLE=b.ARTICLE'
      'left join DDZLs C on c.DDBH = a.RYNO'
      'left join INVOICE_M D on D.INV_NO=a.INV_NO'
      'left join ddzl E on E.DDBH=C.DDBH'
      'where A.INV_NO=:INV_NO'
      'order by a.RYNO asc')
    Left = 436
    Top = 455
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'if object_id('#39'tempdb..#TEMP'#39') is not null '
      'begin   drop table #TEMP end  '
      
        ' SELECT a.RYNO,a.INV_NO,a.STYLE_NAME,a.ARTICLE, Round(e.Nweigh,1' +
        ') as Nweigh,Round(e.OWeigh,1) as OWeigh,'
      '        CASE '
      '            WHEN CHARINDEX('#39'-'#39', A.ARTICLE) > 0 '
      
        '            THEN SUBSTRING(A.ARTICLE, 1, CHARINDEX('#39'-'#39', A.ARTICL' +
        'E) - 1) ELSE A.ARTICLE '
      '        END AS Style_No, b.YSSM,'
      '        CASE'
      
        '            WHEN CHARINDEX('#39'-'#39', B.ARTICLE) > 0  THEN SUBSTRING(B' +
        '.ARTICLE, CHARINDEX('#39'-'#39', B.ARTICLE) + 1, LEN(B.ARTICLE)) '
      '            ELSE B.ARTICLE '
      '        END AS YSSM_code, c.CC, C.Quantity AS QTY_Left,'
      '        C.Quantity AS Qty_Right,C.Quantity * 2 AS Qty_total,'
      #9#9'C.Quantity AS Qty_total_pairs,        c.IPrice,'
      '        ISNULL(c.IPrice, 0) * ISNULL(c.Quantity, 0) AS Amount,'
      
        '        D.TOTAL_AMOUNT_WORD,        D.TOTAL_AMOUNT,        a.INV' +
        '_NO AS INV_NO_FT'
      '        ,CASE '
      #9#9#9'WHEN LEFT(A.STYLE_NAME, 1) = '#39'M'#39' '
      #9#9#9#9' THEN '#39'Men'#39#39's '#39' + C.CC'
      #9#9#9#9#9'ELSE '#39'Women'#39#39's '#39' + C.CC'
      #9#9#9'END AS CCC , D.TO_WHERE'
      '    INTO #TEMP'
      #9'FROM INVOICE_D A'
      '    LEFT JOIN xxzl B ON a.ARTICLE = b.ARTICLE'
      '    LEFT JOIN DDZLs C ON c.DDBH = a.RYNO'
      '    LEFT JOIN INVOICE_M D ON D.INV_NO = a.INV_NO'
      
        #9'left join YWXXNew E on B.ARTICLE=E.Article and B.XieXing=E.XieX' +
        'ing and c.CC = e.XXCC'
      'where A.INV_NO=:INV_NO'
      ''
      'if object_id('#39'tempdb..#TAM'#39') is not null'
      'begin'
      '    drop table #TAM'
      'end'
      ''
      ';WITH RankedData AS ('
      
        '    SELECT YWBZPOS.*,YWBZPO.NW,YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZP' +
        'O.H,YWBZPO.CBM,'
      
        '        ROW_NUMBER() OVER (PARTITION BY YWBZPOS.DDBH ORDER BY YW' +
        'BZPOS.DDBH ASC) AS rn,'
      '        ROW_NUMBER() OVER ('
      '            PARTITION BY YWBZPOS.DDBH, YWBZPOS.ctq '
      
        '            ORDER BY YWBZPOS.DDBH ASC, YWBZPOS.ctq ASC, YWBZPOS.' +
        'XH ASC'
      '        ) AS rn1'
      '    FROM  YWBZPOS'
      
        #9'left join YWBZPO on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZ' +
        'POS.XH'
      '    WHERE'
      
        '        YWBZPOS.DDBH IN (SELECT RYNO FROM #TEMP)),MaxRanked AS (' +
        ' SELECT DDBH, ctq,MAX(rn1) AS max_rn1 FROM'
      '        RankedData GROUP BY DDBH, ctq)'
      'SELECT rd.*, mr.max_rn1 INTO #TAM FROM'
      
        '    RankedData rd    JOIN MaxRanked mr ON rd.DDBH = mr.DDBH AND ' +
        'rd.ctq = mr.ctq;'
      ''
      
        'SELECT *,#TAM.Qty*#TEMP.NWeigh as NWCarton FROM #TAM LEFT JOIN #' +
        'TEMP ON #TAM.DDBH=#TEMP.RYNO AND #TAM.DDCC=#TEMP.CC'
      'LEFT JOIN YWCP on ywcp.DDBH= #TAM.DDBH and YWCP.XH=#TAM.XH'
      
        'WHERE #TAM.DDBH IN (SELECT RYNO FROM #TEMP) ORDER BY #TAM.DDBH A' +
        'SC'
      '')
    Left = 888
    Top = 551
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
end
