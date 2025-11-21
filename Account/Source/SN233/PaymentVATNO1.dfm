object PaymentVATNO: TPaymentVATNO
  Left = 307
  Top = 203
  Width = 1386
  Height = 742
  Caption = 'PaymentVATNO'
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
  object Panel18: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label60: TLabel
      Left = 404
      Top = 32
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label58: TLabel
      Left = 273
      Top = 4
      Width = 40
      Height = 16
      Caption = 'HDNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label61: TLabel
      Left = 272
      Top = 30
      Width = 31
      Height = 16
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label59: TLabel
      Left = 365
      Top = 4
      Width = 63
      Height = 16
      Caption = 'SupplierID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 510
      Top = 28
      Width = 35
      Height = 16
      Caption = 'FKBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 508
      Top = 4
      Width = 87
      Height = 16
      Caption = 'SupplierName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 668
      Top = 30
      Width = 42
      Height = 16
      Caption = 'DeptID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 784
      Top = 30
      Width = 66
      Height = 16
      Caption = 'DeptName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 741
      Top = 4
      Width = 109
      Height = 16
      Caption = 'SupplierNameTW'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Btn_I: TBitBtn
      Left = 2
      Top = 3
      Width = 45
      Height = 45
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_IClick
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
    object Btn_D: TBitBtn
      Left = 46
      Top = 3
      Width = 46
      Height = 45
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_DClick
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
    object Btn_M: TBitBtn
      Left = 91
      Top = 3
      Width = 46
      Height = 45
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_MClick
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
    object Btn_S: TBitBtn
      Left = 136
      Top = 3
      Width = 45
      Height = 45
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Btn_SClick
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
    object Btn_C: TBitBtn
      Left = 180
      Top = 3
      Width = 46
      Height = 45
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Btn_CClick
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
    object Btn_E: TBitBtn
      Left = 225
      Top = 3
      Width = 45
      Height = 45
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Btn_EClick
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
    object Btn_Q: TButton
      Left = 1020
      Top = 18
      Width = 75
      Height = 29
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Btn_QClick
    end
    object Check: TCheckBox
      Left = 1023
      Top = 3
      Width = 47
      Height = 15
      Caption = 'Mine'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object DTP7: TDateTimePicker
      Left = 314
      Top = 24
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edt_HDNO: TEdit
      Left = 314
      Top = 0
      Width = 47
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edt_Supplier: TEdit
      Left = 431
      Top = 0
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DTP8: TDateTimePicker
      Left = 415
      Top = 24
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edt_FKBH: TEdit
      Left = 550
      Top = 24
      Width = 111
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edt_SupplierName: TEdit
      Left = 600
      Top = 0
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edt_DeptID: TEdit
      Left = 714
      Top = 24
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edt_SupplierNameTW: TEdit
      Left = 856
      Top = 0
      Width = 153
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object edt_DeptNameTW: TEdit
      Left = 856
      Top = 24
      Width = 153
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
  end
  object PC2: TPageControl
    Left = 0
    Top = 48
    Width = 1370
    Height = 655
    ActivePage = TS25
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PC2Change
    object TS21: TTabSheet
      Caption = 'TOKHAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 241
        Width = 916
        Height = 383
        Align = alClient
        DataSource = DS_CGPaymentS
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh3EditButtonClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            ReadOnly = True
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DECLARATION'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'LOAIHINH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LOAI HINH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NGAY_THUCLANH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'NGAY THUC LANH'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'USACC_CHUATHUE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'USACC CHUA THUE'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Percent_TT'
            Footers = <>
            PickList.Strings = (
              '100'
              '99')
            Title.Caption = 'P_TT(%)'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_CHUATHUE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'VNACC CHUA THUE'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'USACC_NHATHAU'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'NHA THAU|USACC'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_NHATHAU'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'NHA THAU|VNACC'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'USACC_THANHTOAN'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THANH TOAN|USACC'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_THANHTOAN'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'THANH TOAN|VNACC'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'TIENTE'
            Footers = <>
            PickList.Strings = (
              ''
              'USD'
              'VND')
            Width = 60
          end
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'PLX'
            Footers = <>
            Title.Caption = 'PHU LUC X'
          end>
      end
      object Panel20: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object BtnS_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          TabOrder = 0
          OnClick = BtnS_IClick
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
        object BtnS_D: TBitBtn
          Left = 47
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          TabOrder = 1
          OnClick = BtnS_DClick
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
        object BtnS_M: TBitBtn
          Left = 137
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          TabOrder = 2
          OnClick = BtnS_MClick
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
        object BtnS_S: TBitBtn
          Left = 182
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          TabOrder = 3
          OnClick = BtnS_SClick
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
        object BtnS_C: TBitBtn
          Left = 227
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 4
          OnClick = BtnS_CClick
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
        object BtnS_P: TBitBtn
          Left = 317
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          TabOrder = 5
          OnClick = BtnS_PClick
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
        object BtnS_E: TBitBtn
          Left = 362
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          TabOrder = 6
          OnClick = BtnS_EClick
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
        object BtnS_DA: TBitBtn
          Left = 92
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Del-All'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BtnS_DAClick
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
        object Panel3: TPanel
          Left = 916
          Top = 0
          Width = 446
          Height = 49
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 8
          object Label72: TLabel
            Left = 9
            Top = 15
            Width = 309
            Height = 20
            AutoSize = False
            Caption = '-- Tru tien vat tu khong dat'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object BtnS_P_TB: TBitBtn
          Left = 431
          Top = 0
          Width = 55
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_TB'
          Enabled = False
          TabOrder = 9
          OnClick = BtnS_P_TBClick
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
        object BtnS_P_TB_VN: TBitBtn
          Left = 486
          Top = 0
          Width = 70
          Height = 46
          Hint = 'Modify Current'
          Caption = 'PrintTBVN'
          Enabled = False
          TabOrder = 10
          OnClick = BtnS_P_TB_VNClick
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
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh1EditButtonClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ZSBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|NameTW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|DEPID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'HD_NOIDUNG_TW'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG_TW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end>
      end
      object Panel7: TPanel
        Left = 916
        Top = 241
        Width = 446
        Height = 383
        Align = alRight
        TabOrder = 3
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 444
          Height = 48
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object BtnSTT_I: TBitBtn
            Left = 2
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            TabOrder = 0
            OnClick = BtnSTT_IClick
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
          object BtnSTT_D: TBitBtn
            Left = 46
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            TabOrder = 1
            OnClick = BtnSTT_DClick
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
          object BtnSTT_M: TBitBtn
            Left = 90
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            TabOrder = 2
            OnClick = BtnSTT_MClick
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
          object BtnSTT_S: TBitBtn
            Left = 135
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            TabOrder = 3
            OnClick = BtnSTT_SClick
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
          object BtnSTT_C: TBitBtn
            Left = 179
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 4
            OnClick = BtnSTT_CClick
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
        end
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 49
          Width = 444
          Height = 136
          Align = alTop
          DataSource = DS_CGPaymentSTT
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = [fsBold]
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnGetCellParams = DBGridEh5GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FKBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DECLARATION'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'MEMO'
              Footers = <>
              PickList.Strings = (
                'Tru tien vat tu khong dat'
                'Tru tien boi thuong ton that')
              Title.Caption = 'NGUYEN NHAN'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'USACC_CHUATHUE'
              Footers = <>
              Title.Caption = 'USACC CHUA THUE'
            end
            item
              EditButtons = <>
              FieldName = 'CWHL'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'VNACC_CHUATHUE'
              Footers = <>
              Title.Caption = 'VNACC CHUA THUE'
            end
            item
              EditButtons = <>
              FieldName = 'USACC_NHATHAU'
              Footers = <>
              Title.Caption = 'NHATHAU|USACC'
            end
            item
              EditButtons = <>
              FieldName = 'VNACC_NHATHAU'
              Footers = <>
              Title.Caption = 'NHATHAU|VNACC'
            end
            item
              EditButtons = <>
              FieldName = 'USACC_THANHTOAN'
              Footers = <>
              Title.Caption = 'THANHTOAN|USACC'
            end
            item
              EditButtons = <>
              FieldName = 'VNACC_THANHTOAN'
              Footers = <>
              Title.Caption = 'THANHTOAN|VNACC'
            end
            item
              EditButtons = <>
              FieldName = 'Percent_TT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'YN'
              Footers = <>
            end>
        end
        object Panel6: TPanel
          Left = 1
          Top = 185
          Width = 444
          Height = 197
          Align = alClient
          TabOrder = 2
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 442
            Height = 48
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label4: TLabel
              Left = 240
              Top = 15
              Width = 185
              Height = 20
              AutoSize = False
              Caption = 'Tra truoc to khai'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object btn_I_TT: TBitBtn
              Left = 2
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              TabOrder = 0
              OnClick = btn_I_TTClick
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
            object Btn_D_TT: TBitBtn
              Left = 46
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              TabOrder = 1
              OnClick = Btn_D_TTClick
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
            object Btn_M_TT: TBitBtn
              Left = 90
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              TabOrder = 2
              OnClick = Btn_M_TTClick
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
            object btn_S_TT: TBitBtn
              Left = 135
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              TabOrder = 3
              OnClick = btn_S_TTClick
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
            object btn_C_TT: TBitBtn
              Left = 179
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              TabOrder = 4
              OnClick = btn_C_TTClick
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
          end
          object DBGridEh10: TDBGridEh
            Left = 1
            Top = 49
            Width = 442
            Height = 147
            Align = alClient
            DataSource = DS_TTTK
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnEditButtonClick = DBGridEh10EditButtonClick
            OnGetCellParams = DBGridEh10GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FKBH_TTT'
                Footers = <>
                ReadOnly = True
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'TONGTRIGIA_HOADON'
                Footers = <>
                Title.Caption = 'USACC_CHUATHUE'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'Percent_TT'
                Footers = <>
              end>
          end
        end
      end
    end
    object TS22: TTabSheet
      Caption = 'HOADON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 241
        Width = 911
        Height = 383
        Align = alClient
        DataSource = DS_CGPaymentSS
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh4EditButtonClick
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            ReadOnly = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'KYHIEU'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'VATNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VATDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'TRU_CHIETKHAU'
            Footers = <>
            Title.Caption = 'TRU CHIET KHAU'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'TONGTIEN_CHUATHUE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TONG TIEN|CHUA THUE'
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'TONGTIEN_THUE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TONG TIEN|THUE'
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'TONGTIEN_THANHTOAN'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TONG TIEN|THANH TOAN'
            Width = 140
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ZSBH_MST'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 50
          end
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'PLX'
            Footers = <>
            Title.Caption = 'PHU LUC X'
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object BtnSS_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BtnSS_IClick
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
        object BtnSS_D: TBitBtn
          Left = 47
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnSS_DClick
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
        object BtnSS_M: TBitBtn
          Left = 137
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BtnSS_MClick
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
        object BtnSS_S: TBitBtn
          Left = 182
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BtnSS_SClick
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
        object BtnSS_C: TBitBtn
          Left = 227
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BtnSS_CClick
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
        object BtnSS_P: TBitBtn
          Left = 317
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BtnSS_PClick
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
        object BtnSS_E: TBitBtn
          Left = 362
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BtnSS_EClick
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
        object BtnSS_DA: TBitBtn
          Left = 92
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Del-All'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BtnSS_DAClick
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
        object Panel12: TPanel
          Left = 916
          Top = 0
          Width = 446
          Height = 49
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 8
          object Label6: TLabel
            Left = 9
            Top = 15
            Width = 309
            Height = 20
            AutoSize = False
            Caption = '-- Tru tien vat tu hao hut'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object BtnSS_P_TB: TBitBtn
          Left = 415
          Top = 0
          Width = 55
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_TB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = BtnSS_P_TBClick
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
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ZSBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|NameTW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|DEPID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'HD_NOIDUNG_TW'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG_TW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end>
      end
      object Panel10: TPanel
        Left = 911
        Top = 241
        Width = 451
        Height = 383
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 451
          Height = 48
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object BtnSTT2_I: TBitBtn
            Left = 2
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            TabOrder = 0
            OnClick = BtnSTT2_IClick
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
          object BtnSTT2_D: TBitBtn
            Left = 46
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            TabOrder = 1
            OnClick = BtnSTT2_DClick
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
          object BtnSTT2_M: TBitBtn
            Left = 90
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            TabOrder = 2
            OnClick = BtnSTT2_MClick
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
          object BtnSTT2_S: TBitBtn
            Left = 135
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            TabOrder = 3
            OnClick = BtnSTT2_SClick
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
          object BtnSTT2_C: TBitBtn
            Left = 179
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 4
            OnClick = BtnSTT2_CClick
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
        end
        object DBGridEh12: TDBGridEh
          Left = 0
          Top = 48
          Width = 451
          Height = 136
          Align = alTop
          DataSource = DS_CGPaymentSTT2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = [fsBold]
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnGetCellParams = DBGridEh12GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FKBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_CHUATHUE'
              Footers = <>
              Title.Caption = 'TONG TIEN|CHUA THUE'
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_THUE'
              Footers = <>
              Title.Caption = 'TONG TIEN|THUE'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_THANHTOAN'
              Footers = <>
              Title.Caption = 'TONG TIEN|THANH TOAN'
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH_MST'
              Footers = <>
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'VATNO'
              Footers = <>
              Width = 120
            end>
        end
        object Panel9: TPanel
          Left = 0
          Top = 184
          Width = 451
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            Left = 241
            Top = 15
            Width = 309
            Height = 20
            AutoSize = False
            Caption = 'Tra truoc hoa don'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object btn_C_TTHD: TBitBtn
            Left = 179
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 0
            OnClick = btn_C_TTHDClick
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
          object btn_S_TTHD: TBitBtn
            Left = 135
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            TabOrder = 1
            OnClick = btn_S_TTHDClick
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
          object btn_M_TTHD: TBitBtn
            Left = 90
            Top = 0
            Width = 46
            Height = 46
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            TabOrder = 2
            OnClick = btn_M_TTHDClick
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
          object btn_D_TTHD: TBitBtn
            Left = 46
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            TabOrder = 3
            OnClick = btn_D_TTHDClick
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
          object btn_I_TTHD: TBitBtn
            Left = 2
            Top = 0
            Width = 45
            Height = 46
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            TabOrder = 4
            OnClick = btn_I_TTHDClick
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
        end
        object DBGridEh11: TDBGridEh
          Left = 0
          Top = 233
          Width = 451
          Height = 150
          Align = alClient
          DataSource = DS_TTHD
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = [fsBold]
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnEditButtonClick = DBGridEh11EditButtonClick
          OnGetCellParams = DBGridEh11GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FKBH_TTT'
              Footers = <>
              ReadOnly = True
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'KYHIEU_HOADON'
              Footers = <>
              Title.Caption = 'KY HIEU HOA DON'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'VATNO'
              Footers = <>
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'VATDATE'
              Footers = <>
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_CHUATHUE'
              Footers = <>
              Title.Caption = 'TONG TIEN|CHUA THUE'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_THUE'
              Footers = <>
              Title.Caption = 'TONG TIEN|THUE'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'TONGTIEN_THANHTOAN'
              Footers = <>
              Title.Caption = 'TONG TIEN|THANH TOAN'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH_MST'
              Footers = <>
              Width = 100
            end>
        end
      end
    end
    object TS23: TTabSheet
      Caption = 'TRATRUOC_TK'
      ImageIndex = 2
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh6EditButtonClick
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ZSBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|NameTW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|DEPID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'HD_NOIDUNG_TW'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG_TW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 400
          Top = 15
          Width = 264
          Height = 20
          AutoSize = False
          Caption = '-- Thanh toan tra truoc tien do'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BtnUNG_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          TabOrder = 0
          OnClick = BtnUNG_IClick
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
        object BtnUNG_D: TBitBtn
          Left = 46
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          TabOrder = 1
          OnClick = BtnUNG_DClick
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
        object BtnUNG_M: TBitBtn
          Left = 90
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          TabOrder = 2
          OnClick = BtnUNG_MClick
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
        object BtnUNG_S: TBitBtn
          Left = 136
          Top = 0
          Width = 44
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          TabOrder = 3
          OnClick = BtnUNG_SClick
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
        object BtnUNG_C: TBitBtn
          Left = 179
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 4
          OnClick = BtnUNG_CClick
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
        object BtnUNG_P: TBitBtn
          Left = 269
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BtnUNG_PClick
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
        object BtnUNG_P_TB: TBitBtn
          Left = 325
          Top = 0
          Width = 55
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_TB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BtnUNG_P_TBClick
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
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 240
        Width = 1362
        Height = 384
        Align = alClient
        DataSource = DS_CGPaymentUNG
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnGetCellParams = DBGridEh7GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'MALOAIHINH'
            Footers = <>
            Title.Caption = 'LOAI HINH'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'NGAY_THUCLANH'
            Footers = <>
            Title.Caption = 'NGAY THUC LANH'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'USACC_CHUATHUE'
            Footers = <>
            Title.Caption = 'CHUATHUE|USACC'
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_CHUATHUE'
            Footers = <>
            Title.Caption = 'CHUATHUE|VNACC'
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'Percent_TT'
            Footers = <>
            Title.Caption = 'Percent TT'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USACC_NHATHAU'
            Footers = <>
            Title.Caption = 'NHATHAU|USACC'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_NHATHAU'
            Footers = <>
            Title.Caption = 'NHATHAU|VNACC'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USACC_THANHTOAN'
            Footers = <>
            Title.Caption = 'THANHTOAN|USACC'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VNACC_THANHTOAN'
            Footers = <>
            Title.Caption = 'THANHTOAN|VNACC'
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end>
      end
    end
    object TS24: TTabSheet
      Caption = 'TRA TRUOC_HD'
      ImageIndex = 3
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh8EditButtonClick
        OnGetCellParams = DBGridEh8GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ZSBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|NameTW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|DEPID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'HD_NOIDUNG_TW'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG_TW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 400
          Top = 15
          Width = 272
          Height = 20
          AutoSize = False
          Caption = '-- Thanh toan tra truoc tien viet'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BtnUNGHD_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          TabOrder = 0
          OnClick = BtnUNGHD_IClick
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
        object BtnUNGHD_D: TBitBtn
          Left = 46
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          TabOrder = 1
          OnClick = BtnUNGHD_DClick
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
        object BtnUNGHD_M: TBitBtn
          Left = 90
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          TabOrder = 2
          OnClick = BtnUNGHD_MClick
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
        object BtnUNGHD_S: TBitBtn
          Left = 135
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          TabOrder = 3
          OnClick = BtnUNGHD_SClick
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
        object BtnUNGHD_C: TBitBtn
          Left = 179
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 4
          OnClick = BtnUNGHD_CClick
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
        object BtnUNGHD_P: TBitBtn
          Left = 269
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BtnUNGHD_PClick
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
        object BtnUNGHD_P_TB: TBitBtn
          Left = 325
          Top = 0
          Width = 55
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_TB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BtnUNGHD_P_TBClick
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
      end
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 240
        Width = 1362
        Height = 384
        Align = alClient
        DataSource = DS_CGPaymentUNGHD
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnGetCellParams = DBGridEh9GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'KYHIEU_HOADON'
            Footers = <>
            Title.Caption = 'KY HIEU HOA DON'
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'VATNO'
            Footers = <>
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'VATDATE'
            Footers = <>
            Width = 97
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'TONGTIEN_CHUATHUE'
            Footers = <>
            Title.Caption = 'TONGTIEN|CHUATHUE'
            Width = 162
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'TONGTIEN_THUE'
            Footers = <>
            Title.Caption = 'TONGTIEN|THUE'
            Width = 126
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'TONGTIEN_THANHTOAN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TONGTIEN|THANHTOAN'
            Width = 176
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH_MST'
            Footers = <>
            Width = 95
          end>
      end
    end
    object TS25: TTabSheet
      Caption = 'TT_TAMUNG'
      ImageIndex = 4
      object Splitter1: TSplitter
        Left = 939
        Top = 240
        Height = 384
        Align = alRight
        Color = clSkyBlue
        ParentColor = False
      end
      object Splitter2: TSplitter
        Left = 386
        Top = 240
        Height = 384
        Align = alRight
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDrawColumnCell = DBGridEh13DrawColumnCell
        OnEditButtonClick = DBGridEh13EditButtonClick
        OnGetCellParams = DBGridEh13GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ZSBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|NameTW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|DEPID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Department|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'HD_NOIDUNG_TW'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG_TW'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
          end>
      end
      object Panel14: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label11: TLabel
          Left = 402
          Top = 15
          Width = 200
          Height = 20
          AutoSize = False
          Caption = '-- Thanh toan tam ung'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BtnTAM_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          TabOrder = 0
          OnClick = BtnTAM_IClick
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
        object BtnTAM_D: TBitBtn
          Left = 46
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          TabOrder = 1
          OnClick = BtnTAM_DClick
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
        object BtnTAM_M: TBitBtn
          Left = 90
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          TabOrder = 2
          OnClick = BtnTAM_MClick
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
        object BtnTAM_S: TBitBtn
          Left = 135
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          TabOrder = 3
          OnClick = BtnTAM_SClick
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
        object BtnTAM_C: TBitBtn
          Left = 179
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 4
          OnClick = BtnTAM_CClick
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
        object BtnTAM_P: TBitBtn
          Left = 269
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BtnTAM_PClick
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
        object BtnTAM_P_USD: TBitBtn
          Left = 614
          Top = 2
          Width = 68
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_USD'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BtnTAM_P_USDClick
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
        object BtnTAM_P_TB: TBitBtn
          Left = 325
          Top = 1
          Width = 55
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_TB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BtnTAM_P_TBClick
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
      end
      object Panel16: TPanel
        Left = 942
        Top = 240
        Width = 420
        Height = 384
        Align = alRight
        TabOrder = 2
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 418
          Height = 382
          Align = alClient
          TabOrder = 0
          object Panel21: TPanel
            Left = 1
            Top = 1
            Width = 416
            Height = 48
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 241
              Top = 15
              Width = 309
              Height = 20
              AutoSize = False
              Caption = '-Phieu tam ung'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object btn_C_PTU: TBitBtn
              Left = 179
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              TabOrder = 0
              OnClick = btn_C_PTUClick
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
            object btn_S_PTU: TBitBtn
              Left = 135
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              TabOrder = 1
              OnClick = btn_S_PTUClick
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
            object btn_M_PTU: TBitBtn
              Left = 90
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              TabOrder = 2
              OnClick = btn_M_PTUClick
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
            object btn_D_PTU: TBitBtn
              Left = 46
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              TabOrder = 3
              OnClick = btn_D_PTUClick
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
            object btn_I_PTU: TBitBtn
              Left = 2
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              TabOrder = 4
              OnClick = btn_I_PTUClick
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
          end
          object DBGridEh18: TDBGridEh
            Left = 1
            Top = 49
            Width = 416
            Height = 332
            Align = alClient
            DataSource = DS_TTPTU
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnEditButtonClick = DBGridEh18EditButtonClick
            OnGetCellParams = DBGridEh18GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'fkbh_ttt'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'FKBH_TTT'
                Width = 113
              end
              item
                DisplayFormat = '#,##0'
                EditButtons = <>
                FieldName = 'THANHTOAN'
                Footers = <>
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'fkbh'
                Footers = <>
                Title.Caption = 'FKBH'
              end>
          end
        end
      end
      object DBGridEh15: TDBGridEh
        Left = 0
        Top = 240
        Width = 386
        Height = 384
        Align = alClient
        DataSource = DS_CGPaymentTAM
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnGetCellParams = DBGridEh15GetCellParams
        Columns = <
          item
            Color = cl3DLight
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_TAMUNG'
            Footers = <>
            Title.Caption = 'SO TIEN TAM UNG'
            Width = 110
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'NGAY_TAMUNG'
            Footers = <>
            Title.Caption = 'NGAY TAM UNG'
            Width = 90
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'SOPHIEU'
            Footers = <>
            PickList.Strings = (
              'SO HOA DON')
            Title.Caption = 'SO PHIEU'
            Width = 93
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'LOAI_CHUNGTU'
            Footers = <>
            PickList.Strings = (
              'HD')
            Title.Caption = 'LOAI CHUNG TU'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'NGAY_HOADON'
            Footers = <>
            Title.Caption = 'NGAY HOA DON'
            Width = 90
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_CHUATHUE'
            Footers = <>
            Title.Caption = 'SOTIEN|CHUATHUE'
            Width = 154
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_THUE'
            Footers = <>
            Title.Caption = 'SOTIEN|THUE'
            Width = 142
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_TT'
            Footers = <>
            ShowImageAndText = True
            Title.Caption = 'SOTIEN|TT'
            Width = 103
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_HOANLAI'
            Footers = <>
            Title.Caption = 'SO TIEN HOAN LAI'
            Width = 120
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_CHITHEM'
            Footers = <>
            Title.Caption = 'SO TIEN CHI THEM'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TIENTE'
            Footers = <>
            PickList.Strings = (
              ''
              'USD'
              'VND')
            Title.Caption = 'TIEN TE'
            Width = 50
          end>
      end
      object Panel17: TPanel
        Left = 389
        Top = 240
        Width = 550
        Height = 384
        Align = alRight
        TabOrder = 4
        object Panel22: TPanel
          Left = 1
          Top = 1
          Width = 548
          Height = 382
          Align = alClient
          TabOrder = 0
          object Panel23: TPanel
            Left = 1
            Top = 1
            Width = 546
            Height = 48
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              Left = 241
              Top = 15
              Width = 140
              Height = 20
              AutoSize = False
              Caption = '-Tra no Hoa don'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object BtnTAMss_C: TBitBtn
              Left = 179
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              TabOrder = 0
              OnClick = BtnTAMss_CClick
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
            object BtnTAMss_S: TBitBtn
              Left = 135
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              TabOrder = 1
              OnClick = BtnTAMss_SClick
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
            object BtnTAMss_M: TBitBtn
              Left = 90
              Top = 0
              Width = 46
              Height = 46
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              TabOrder = 2
              OnClick = BtnTAMss_MClick
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
            object BtnTAMss_D: TBitBtn
              Left = 46
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              TabOrder = 3
              OnClick = BtnTAMss_DClick
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
            object BtnTAMss_I: TBitBtn
              Left = 2
              Top = 0
              Width = 45
              Height = 46
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              TabOrder = 4
              OnClick = BtnTAMss_IClick
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
          end
          object DBGridEh17: TDBGridEh
            Left = 1
            Top = 49
            Width = 546
            Height = 332
            Align = alClient
            DataSource = DS_CGPaymentTAMss
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnEditButtonClick = DBGridEh17EditButtonClick
            OnGetCellParams = DBGridEh17GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'KYHIEU'
                Footers = <>
                ReadOnly = True
                Width = 69
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'VATNO'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'VATDATE'
                Footers = <>
                ReadOnly = True
                Width = 89
              end
              item
                DisplayFormat = '#,##0'
                EditButtons = <>
                FieldName = 'TRU_CHIETKHAU'
                Footers = <>
                Width = 93
              end
              item
                DisplayFormat = '#,##0'
                EditButtons = <>
                FieldName = 'TONGTIEN_CHUATHUE'
                Footer.DisplayFormat = '#,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'TONGTIEN|CHUATHUE'
                Width = 122
              end
              item
                DisplayFormat = '#,##0'
                EditButtons = <>
                FieldName = 'TONGTIEN_THUE'
                Footer.DisplayFormat = '#,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'TONGTIEN|THUE'
                Width = 135
              end
              item
                DisplayFormat = '#,##0'
                EditButtons = <>
                FieldName = 'TONGTIEN_THANHTOAN'
                Footer.DisplayFormat = '#,##0'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'TONGTIEN|THANHTOAN'
                Width = 135
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'ZSBH_MST'
                Footers = <>
                ReadOnly = True
                Visible = False
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                ReadOnly = True
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
                ReadOnly = True
                Visible = False
                Width = 50
              end>
          end
        end
      end
    end
    object TS26: TTabSheet
      Caption = 'PHIEU_TAMUNG'
      ImageIndex = 5
      object Panel15: TPanel
        Left = 0
        Top = 192
        Width = 1362
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label12: TLabel
          Left = 390
          Top = 15
          Width = 152
          Height = 20
          AutoSize = False
          Caption = '-- Phieu tam ung'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BtnTAMP_I: TBitBtn
          Left = 2
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          TabOrder = 0
          OnClick = BtnTAMP_IClick
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
        object BtnTAMP_D: TBitBtn
          Left = 46
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          TabOrder = 1
          OnClick = BtnTAMP_DClick
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
        object BtnTAMP_M: TBitBtn
          Left = 90
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          TabOrder = 2
          OnClick = BtnTAMP_MClick
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
        object BtnTAMP_S: TBitBtn
          Left = 135
          Top = 0
          Width = 45
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          TabOrder = 3
          OnClick = BtnTAMP_SClick
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
        object BtnTAMP_C: TBitBtn
          Left = 179
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          TabOrder = 4
          OnClick = BtnTAMP_CClick
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
        object BtnTAMP_P: TBitBtn
          Left = 269
          Top = 0
          Width = 46
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BtnTAMP_PClick
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
        object BtnTAMP_P_USD: TBitBtn
          Left = 570
          Top = 1
          Width = 76
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print_USD'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BtnTAMP_P_USDClick
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
        object BtnTAMP_P_TB: TBitBtn
          Left = 325
          Top = 2
          Width = 52
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Print TB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BtnTAMP_P_TBClick
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
      end
      object DBGridEh14: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 192
        Align = alTop
        DataSource = DS_CGPayment
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDrawColumnCell = DBGridEh14DrawColumnCell
        OnEditButtonClick = DBGridEh14EditButtonClick
        OnGetCellParams = DBGridEh14GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HDNO'
            Footers = <>
            Title.Caption = 'Contract|HDNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'HD_LOAI'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Contract|LOAI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DEPID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Suggestion Department|DeptID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Suggestion Department|DeptName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Suggestion Department|USERID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DV_TAMUNG'
            Footers = <>
            Title.Caption = 'Advance Department|DeptName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'USERID_TAMUNG'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Advance Department|USERID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 70
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'USERNAME_TAMUNG'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Advance Department|USERNAME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'NGAY_TAMUNG'
            Footers = <>
            Title.Caption = 'Advance Department|NGAY_TAMUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'HD_NOIDUNG'
            Footers = <>
            Title.Caption = 'Content|HD_NOIDUNG'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
      object DBGridEh16: TDBGridEh
        Left = 0
        Top = 240
        Width = 1362
        Height = 384
        Align = alClient
        DataSource = DS_CGPaymentTAM_P
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnEditButtonClick = DBGridEh3EditButtonClick
        OnGetCellParams = DBGridEh16GetCellParams
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            Width = 57
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'LYDO'
            Footers = <>
            Title.Caption = 'LY DO'
            Width = 177
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'SOTIEN_TT'
            Footers = <>
            Title.Caption = 'SO TIEN TT'
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TIENTE'
            Footers = <>
            PickList.Strings = (
              ''
              'USD'
              'VND')
            Title.Caption = 'TIEN TE'
            Width = 50
          end>
      end
    end
  end
  object qry_CGPayment: TQuery
    AfterScroll = qry_CGPaymentAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT FKBH,HDNO, ZSBH, ZSZL.zsywjc, CGZL_Payment.DEPID,BDepartm' +
        'ent.DepName, HD_NOIDUNG,HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USE' +
        'RID, CGZL_Payment.USERDATE, CGZL_Payment.YN'
      '  FROM CGZL_Payment '
      '  LEFT JOIN ZSZL ON CGZL_Payment.ZSBH=ZSDH'
      
        '  LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ' +
        'WHERE 1=2')
    UpdateObject = Up_CGPay
    Left = 676
    Top = 115
    object qry_CGPaymentFKBH: TStringField
      FieldName = 'FKBH'
    end
    object qry_CGPaymentHDNO: TStringField
      FieldName = 'HDNO'
      Origin = 'DB.CGZL_Payment.HDNO'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.CGZL_Payment.ZSBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentzsqm: TStringField
      FieldName = 'zsqm'
      Size = 200
    end
    object qry_CGPaymentzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object qry_CGPaymentDEPID: TStringField
      FieldName = 'DEPID'
      Origin = 'DB.CGZL_Payment.DEPID'
      FixedChar = True
    end
    object qry_CGPaymentDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentHD_LOAI: TStringField
      FieldName = 'HD_LOAI'
      Origin = 'DB.CGZL_Payment.HD_LOAI'
      FixedChar = True
    end
    object qry_CGPaymentUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_Payment.USERID'
      FixedChar = True
    end
    object qry_CGPaymentUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_Payment.USERDATE'
    end
    object qry_CGPaymentYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_Payment.YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentDepMemo: TStringField
      FieldName = 'DepMemo'
    end
    object qry_CGPaymentGSBH: TStringField
      FieldName = 'GSBH'
    end
    object qry_CGPaymentHD_NOIDUNG: TStringField
      FieldName = 'HD_NOIDUNG'
      FixedChar = True
      Size = 255
    end
    object qry_CGPaymentHD_NOIDUNG_TW: TStringField
      FieldName = 'HD_NOIDUNG_TW'
      FixedChar = True
      Size = 255
    end
    object qry_CGPaymentReason: TStringField
      FieldName = 'Reason'
      Size = 100
    end
    object qry_CGPaymentNGAY_DUTINH_TT: TDateTimeField
      FieldName = 'NGAY_DUTINH_TT'
    end
    object qry_CGPaymentNGAY_TAMUNG: TDateTimeField
      FieldName = 'NGAY_TAMUNG'
    end
    object qry_CGPaymentCFMID: TStringField
      FieldName = 'CFMID'
    end
    object qry_CGPaymentCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object qry_CGPaymentDV_TAMUNG: TStringField
      FieldName = 'DV_TAMUNG'
      Size = 80
    end
    object qry_CGPaymentUSERNAME_TAMUNG: TStringField
      FieldName = 'USERNAME_TAMUNG'
      Size = 80
    end
    object qry_CGPaymentUSERID_TAMUNG: TStringField
      FieldName = 'USERID_TAMUNG'
    end
  end
  object DS_CGPayment: TDataSource
    DataSet = qry_CGPayment
    Left = 676
    Top = 147
  end
  object Up_CGPay: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_Payment'
      'set'
      '  CGZL_Payment.HDNO = :HDNO,'
      '  CGZL_Payment.ZSBH = :ZSBH,'
      '  CGZL_Payment.DEPID = :DEPID,'
      '  CGZL_Payment.GSBH = :GSBH,'
      '  CGZL_Payment.HD_NOIDUNG = :HD_NOIDUNG,'
      '  CGZL_Payment.HD_NOIDUNG_TW = :HD_NOIDUNG_TW,'
      '  CGZL_Payment.NGAY_TAMUNG = :NGAY_TAMUNG,'
      '  CGZL_Payment.DV_TAMUNG = :DV_TAMUNG,'
      '  CGZL_Payment.USERNAME_TAMUNG = :USERNAME_TAMUNG,'
      '  CGZL_Payment.USERID_TAMUNG = :USERID_TAMUNG,'
      '  CGZL_Payment.USERID = :USERID,'
      '  CGZL_Payment.USERDATE = GETDATE(),'
      '  CGZL_Payment.YN = 1'
      'where'
      '  CGZL_Payment.FKBH = :OLD_FKBH'
      '')
    InsertSQL.Strings = (
      'insert into CGZL_Payment'
      
        '  (FKBH,HDNO, HD_LOAI, ZSBH, GSBH, DEPID, HD_NOIDUNG, HD_NOIDUNG' +
        '_TW, CFMID,'
      
        '   USERID, USERDATE, YN, NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG' +
        ', USERID_TAMUNG)'
      'values'
      
        '  (:FKBH,:HDNO,:HD_LOAI,:ZSBH,:GSBH, :DEPID, :HD_NOIDUNG, :HD_NO' +
        'IDUNG_TW, '#39'NO'#39','
      
        '  :USERID, GETDATE(), 1, :NGAY_TAMUNG, :DV_TAMUNG, :USERNAME_TAM' +
        'UNG, :USERID_TAMUNG)'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from CGZL_Payment'
      'where'
      '  CGZL_Payment.FKBH = :OLD_FKBH')
    Left = 680
    Top = 179
  end
  object Up_CGPayS: TUpdateSQL
    ModifySQL.Strings = (
      '    update CGZL_PaymentS'
      'set'
      '  DECLARATION = :DECLARATION,'
      '  CWHL = :CWHL,'
      '  Percent_TT = :Percent_TT,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TIENTE = :TIENTE'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION and'
      '  DOCNO =:OLD_DOCNO')
    InsertSQL.Strings = (
      ' insert into CGZL_PaymentS'
      
        '  (FKBH, DECLARATION, DOCNO, CWHL, Percent_TT, USERID, USERDATE,' +
        ' YN)'
      'values'
      
        '  (:FKBH, :DECLARATION,:DOCNO, :CWHL, :Percent_TT,  :USERID, GET' +
        'DATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentS'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION')
    Left = 712
    Top = 179
  end
  object DS_CGPaymentS: TDataSource
    DataSet = qry_CGPaymentS
    Left = 708
    Top = 147
  end
  object qry_CGPaymentS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        ' SELECT ROW_NUMBER() OVER(ORDER BY a.DECLARATION DESC) AS STT, F' +
        'KBH, a.DECLARATION, b.MALOAIHINH LOAIHINH'
      
        #9#9',isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH,b.TONGTRIG' +
        'IA_HOADON USACC_CHUATHUE, a.CWHL CWHL'
      #9#9',(a.CWHL*b.TONGTRIGIA_HOADON) VNACC_CHUATHUE, a.Percent_TT,'
      #9#9'(b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100) USACC_NHATHAU,'
      
        #9#9'(a.CWHL*round(b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100,2)) V' +
        'NACC_NHATHAU '
      #9#9',(b.TONGTRIGIA_HOADON*a.Percent_TT/100) USACC_THANHTOAN, '
      
        #9#9'(a.CWHL*round(b.TONGTRIGIA_HOADON*a.Percent_TT/100,2)) VNACC_T' +
        'HANHTOAN'
      #9#9',a.USERID, a.USERDATE, a.YN, b.DOCNO'
      '  FROM CGZL_PaymentS a'
      '  LEFT JOIN CGZL_Declaration b ON a.DECLARATION  =b.DECLARATION '
      '   WHERE FKBH=:FKBH and a.DECLARATION<>'#39'TRUTIEN'#39
      '')
    UpdateObject = Up_CGPayS
    Left = 708
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FKBH'
        ParamType = ptUnknown
      end>
    object qry_CGPaymentSSTT: TFloatField
      FieldName = 'STT'
    end
    object qry_CGPaymentSFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentSSO_TOKHAI: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
    end
    object qry_CGPaymentSLOAIHINH: TStringField
      FieldName = 'LOAIHINH'
      FixedChar = True
      Size = 5
    end
    object qry_CGPaymentSNGAY_THUCLANH: TDateTimeField
      FieldName = 'NGAY_THUCLANH'
    end
    object qry_CGPaymentSUSACC_CHUATHUE: TCurrencyField
      FieldName = 'USACC_CHUATHUE'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentSCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object qry_CGPaymentSVNACC_CHUATHUE: TCurrencyField
      FieldName = 'VNACC_CHUATHUE'
    end
    object qry_CGPaymentSUSACC_NHATHAU: TCurrencyField
      FieldName = 'USACC_NHATHAU'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentSVNACC_NHATHAU: TCurrencyField
      FieldName = 'VNACC_NHATHAU'
    end
    object qry_CGPaymentSUSACC_THANHTOAN: TCurrencyField
      FieldName = 'USACC_THANHTOAN'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentSVNACC_THANHTOAN: TCurrencyField
      FieldName = 'VNACC_THANHTOAN'
    end
    object qry_CGPaymentSPercent_TT: TIntegerField
      FieldName = 'Percent_TT'
    end
    object qry_CGPaymentSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentSDOCNO: TStringField
      FieldName = 'DOCNO'
      Size = 50
    end
    object qry_CGPaymentSTIENTE: TStringField
      FieldName = 'TIENTE'
      Size = 5
    end
    object qry_CGPaymentSPLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object qry_CGPaymentSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(ORDER BY a.VATNO DESC) AS STT, FKBH, a.' +
        'ZSBH_MST, a.VATNO,a.KYHIEU_HOADON'
      
        #9#9',b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU,b.VATDATE,(b.TONGTIEN_' +
        'CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0))+ isnull(b.TONGTIEN_PHI' +
        ',0) TONGTIEN_CHUATHUE'
      
        #9#9',b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, ' +
        'a.YN '
      '  FROM CGZL_PaymentSS a'
      
        '  LEFT JOIN CGZL_VATNO b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZS' +
        'BH_MST AND a.KYHIEU_HOAD=b.KYHIEU_HOADON'
      '   WHERE FKBH=:FKBH and a.ZSBH_MST<>'#39'TRUTIEN'#39#9)
    UpdateObject = Up_CGPaySS
    Left = 742
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FKBH'
        ParamType = ptUnknown
      end>
    object qry_CGPaymentSSSTT: TFloatField
      FieldName = 'STT'
    end
    object qry_CGPaymentSSFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentSSZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentSSKYHIEU: TStringField
      FieldName = 'KYHIEU'
      Size = 10
    end
    object qry_CGPaymentSSSO_HOADON: TStringField
      FieldName = 'VATNO'
      FixedChar = True
    end
    object qry_CGPaymentSSVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_CGPaymentSSTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry_CGPaymentSSTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry_CGPaymentSSTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object qry_CGPaymentSSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentSSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentSSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentSSKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      FixedChar = True
      Size = 10
    end
    object qry_CGPaymentSSTRU_CHIETKHAU: TBooleanField
      FieldName = 'TRU_CHIETKHAU'
    end
    object qry_CGPaymentSSPLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object DS_CGPaymentSS: TDataSource
    DataSet = qry_CGPaymentSS
    Left = 744
    Top = 149
  end
  object Up_CGPaySS: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_PaymentSS'
      'set '
      '  ZSBH_MST = :ZSBH_MST,'
      '  VATNO = :VATNO,   '
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TRU_CHIETKHAU = :TRU_CHIETKHAU      '
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO and'
      '   KYHIEU_HOADON =:OLD_KYHIEU_HOADON')
    InsertSQL.Strings = (
      'INSERT INTO  CGZL_PaymentSS'
      
        '           (FKBH,ZSBH_MST,VATNO,KYHIEU_HOADON,USERID,USERDATE,YN' +
        ')'
      '     VALUES'
      
        '           (:FKBH,:ZSBH_MST,:VATNO,:KYHIEU_HOADON,:USERID,GETDAT' +
        'E(),1)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentSS'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO and'
      '  KYHIEU_HOADON =:OLD_KYHIEU_HOADON')
    Left = 744
    Top = 181
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 612
    Top = 213
  end
  object qry_temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 648
    Top = 216
  end
  object qry_id: TQuery
    DatabaseName = 'DB'
    Left = 680
    Top = 216
    object qry_idUSERID: TStringField
      FieldName = 'USERID'
    end
    object qry_idUSERNAME: TStringField
      FieldName = 'USERNAME'
    end
  end
  object qry_CGPaymentSTT: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT  a.FKBH, a.DECLARATION, a.TONGTRIGIA_HOADON USACC_CHUATHU' +
        'E, a.CWHL CWHL'
      
        #9#9',round((a.CWHL*a.TONGTRIGIA_HOADON),0) VNACC_CHUATHUE, a.Perce' +
        'nt_TT,'
      
        #9#9'round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NH' +
        'ATHAU,'
      
        #9#9'round((a.CWHL*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/10' +
        '0),2)),0) VNACC_NHATHAU'
      
        #9#9',round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100' +
        '-a.Percent_TT)/100),2))),2) USACC_THANHTOAN, '
      
        #9#9'round(((round((a.CWHL*a.TONGTRIGIA_HOADON),0))-(round((a.CWHL*' +
        'round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) V' +
        'NACC_THANHTOAN'
      #9#9',a.USERID, a.USERDATE, a.YN, a.Memo'
      '  FROM CGZL_PaymentS a'
      '  WHERE FKBH=:FKBH and a.DECLARATION='#39'TRUTIEN'#39)
    UpdateObject = Up_CGPaySTT
    Left = 772
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FKBH'
        ParamType = ptUnknown
      end>
    object qry_CGPaymentSTTFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentSTTSO_TOKHAI: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
    end
    object qry_CGPaymentSTTUSACC_CHUATHUE: TCurrencyField
      FieldName = 'USACC_CHUATHUE'
    end
    object qry_CGPaymentSTTCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object qry_CGPaymentSTTVNACC_CHUATHUE: TCurrencyField
      FieldName = 'VNACC_CHUATHUE'
    end
    object qry_CGPaymentSTTUSACC_NHATHAU: TCurrencyField
      FieldName = 'USACC_NHATHAU'
    end
    object qry_CGPaymentSTTVNACC_NHATHAU: TCurrencyField
      FieldName = 'VNACC_NHATHAU'
    end
    object qry_CGPaymentSTTUSACC_THANHTOAN: TCurrencyField
      FieldName = 'USACC_THANHTOAN'
    end
    object qry_CGPaymentSTTVNACC_THANHTOAN: TCurrencyField
      FieldName = 'VNACC_THANHTOAN'
    end
    object qry_CGPaymentSTTPercent_TT: TIntegerField
      FieldName = 'Percent_TT'
    end
    object qry_CGPaymentSTTUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentSTTUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentSTTYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentSTTMEMO: TStringField
      FieldName = 'MEMO'
      Size = 50
    end
  end
  object DS_CGPaymentSTT: TDataSource
    DataSet = qry_CGPaymentSTT
    Left = 772
    Top = 147
  end
  object Up_CGPaySTT: TUpdateSQL
    ModifySQL.Strings = (
      '    update CGZL_PaymentS'
      'set'
      '  TONGTRIGIA_HOADON= :USACC_CHUATHUE,'
      '  CWHL = :CWHL,'
      '  Percent_TT = :Percent_TT,'
      '  MEMO = :MEMO,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION')
    InsertSQL.Strings = (
      ' insert into CGZL_PaymentS'
      
        '  (FKBH, DECLARATION, DOCNO, CWHL, Percent_TT,  TONGTRIGIA_HOADO' +
        'N'
      ', USERID, USERDATE, YN, MEMO)'
      'values'
      
        '  (:FKBH, :DECLARATION, '#39'...'#39', :CWHL, :Percent_TT, :USACC_CHUATH' +
        'UE'
      ',  :USERID, GETDATE(), 1, :MEMO)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentS'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION')
    Left = 776
    Top = 179
  end
  object DS_CGPaymentUNGHD: TDataSource
    DataSet = qry_CGPaymentUNGHD
    Left = 532
    Top = 387
  end
  object qry_CGPaymentUNGHD: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        '   SELECT a.STT,  a.FKBH,a.ZSBH_MST, a.VATNO, a.KYHIEU_HOADON, a' +
        '.VATDATE'
      #9#9',a.TONGTIEN_CHUATHUE, a.TONGTIEN_THUE,a.TONGTIEN_THANHTOAN'
      #9#9',a.USERID, a.USERDATE, a.YN '
      '  FROM CGZL_PaymentSS a'
      '  WHERE FKBH=:FKBH and a.ZSBH_MST='#39'TRATRUOC'#39)
    UpdateObject = Up_CGPayUNGHD
    Left = 532
    Top = 355
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_CGPaymentUNGHDSTT: TStringField
      FieldName = 'STT'
      FixedChar = True
      Size = 10
    end
    object qry_CGPaymentUNGHDFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentUNGHDZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentUNGHDVATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentUNGHDVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_CGPaymentUNGHDTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry_CGPaymentUNGHDTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry_CGPaymentUNGHDTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object qry_CGPaymentUNGHDUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentUNGHDUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentUNGHDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentUNGHDKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      Origin = 'DB.CGZL_PaymentSS.KYHIEU_HOADON'
      FixedChar = True
      Size = 200
    end
  end
  object Up_CGPayUNGHD: TUpdateSQL
    ModifySQL.Strings = (
      '    update CGZL_PaymentSS'
      'set'
      '  KYHIEU_HOADON= :KYHIEU_HOADON,'
      '  VATDATE= :VATDATE,'
      '  VATNO = :VATNO,'
      '  STT = :STT,'
      '  TONGTIEN_CHUATHUE = :TONGTIEN_CHUATHUE,'
      '  TONGTIEN_THUE = :TONGTIEN_THUE,'
      '  TONGTIEN_THANHTOAN = :TONGTIEN_THANHTOAN,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  VATNO = :OLD_VATNO and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  KYHIEU_HOADON = :OLD_KYHIEU_HOADON')
    InsertSQL.Strings = (
      'insert into CGZL_PaymentSS'
      
        '  (FKBH,STT, VATNO, ZSBH_MST, KYHIEU_HOADON,  VATDATE, TONGTIEN_' +
        'CHUATHUE, TONGTIEN_THUE, TONGTIEN_THANHTOAN'
      ', USERID, USERDATE, YN)'
      'values'
      
        '  (:FKBH, :STT, :VATNO,'#39'TRATRUOC'#39', :KYHIEU_HOADON, :VATDATE , :T' +
        'ONGTIEN_CHUATHUE, :TONGTIEN_THUE, :TONGTIEN_THANHTOAN'
      ',  :USERID, GETDATE(), 1)')
    DeleteSQL.Strings = (
      ' delete from CGZL_PaymentSS'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  VATNO = :OLD_VATNO and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  KYHIEU_HOADON = :OLD_KYHIEU_HOADON')
    Left = 536
    Top = 419
  end
  object qry_CGPaymentUNG: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT  a.FKBH, a.DECLARATION, a.TONGTRIGIA_HOADON USACC_CHUATHU' +
        'E, 0.00 CWHL'
      #9#9', a.VNACC_CHUATHUE, a.Percent_TT,'
      
        #9#9'round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NH' +
        'ATHAU,'
      #9#9'(a.VNACC_CHUATHUE*(100-a.Percent_TT)/100) VNACC_NHATHAU'
      
        #9#9',round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100' +
        '-a.Percent_TT)/100),2))),2) USACC_THANHTOAN, '
      #9#9'(a.VNACC_CHUATHUE*a.Percent_TT/100) VNACC_THANHTOAN'
      
        #9#9',a.USERID, a.USERDATE, a.YN, a.MEMO, a.DOCNO, a.MALOAIHINH, a.' +
        'NGAY_THUCLANH'
      '  FROM CGZL_PaymentS a'
      '  WHERE FKBH=:FKBH and a.DECLARATION='#39'TRATRUOC'#39)
    UpdateObject = Up_CGPayUNG
    Left = 428
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FKBH'
        ParamType = ptUnknown
      end>
    object qry_CGPaymentUNGFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentUNGDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentUNGUSACC_CHUATHUE: TCurrencyField
      FieldName = 'USACC_CHUATHUE'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGCWHL: TCurrencyField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGVNACC_CHUATHUE: TCurrencyField
      FieldName = 'VNACC_CHUATHUE'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGPercent_TT: TIntegerField
      FieldName = 'Percent_TT'
    end
    object qry_CGPaymentUNGUSACC_NHATHAU: TCurrencyField
      FieldName = 'USACC_NHATHAU'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGVNACC_NHATHAU: TCurrencyField
      FieldName = 'VNACC_NHATHAU'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGUSACC_THANHTOAN: TCurrencyField
      FieldName = 'USACC_THANHTOAN'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGVNACC_THANHTOAN: TCurrencyField
      FieldName = 'VNACC_THANHTOAN'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentUNGUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentUNGUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentUNGYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentUNGMEMO: TStringField
      FieldName = 'MEMO'
      Size = 50
    end
    object qry_CGPaymentUNGDOCNO: TStringField
      FieldName = 'DOCNO'
      Size = 50
    end
    object qry_CGPaymentUNGMALOAIHINH: TStringField
      FieldName = 'MALOAIHINH'
    end
    object qry_CGPaymentUNGNGAY_THUCLANH: TDateTimeField
      FieldName = 'NGAY_THUCLANH'
    end
  end
  object DS_CGPaymentUNG: TDataSource
    DataSet = qry_CGPaymentUNG
    Left = 428
    Top = 403
  end
  object Up_CGPayUNG: TUpdateSQL
    ModifySQL.Strings = (
      '    update CGZL_PaymentS'
      'set'
      '  TONGTRIGIA_HOADON= :USACC_CHUATHUE,'
      '  VNACC_CHUATHUE= :VNACC_CHUATHUE,'
      '  CWHL = :CWHL,'
      '  Percent_TT = :Percent_TT,'
      '  MEMO = :MEMO,'
      '  MALOAIHINH = :MALOAIHINH,'
      '  NGAY_THUCLANH = :NGAY_THUCLANH,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION and'
      '  DOCNO = :OLD_DOCNO')
    InsertSQL.Strings = (
      ' insert into CGZL_PaymentS'
      
        '  (FKBH, DOCNO, DECLARATION, CWHL, Percent_TT,  TONGTRIGIA_HOADO' +
        'N, VNACC_CHUATHUE'
      ',MEMO, MALOAIHINH, NGAY_THUCLANH, USERID, USERDATE, YN)'
      'values'
      
        '  (:FKBH, :DOCNO, :DECLARATION,0, :Percent_TT, :USACC_CHUATHUE, ' +
        ':VNACC_CHUATHUE'
      ',:MEMO , :MALOAIHINH, :NGAY_THUCLANH,  :USERID, GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentS'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  DECLARATION = :OLD_DECLARATION and'
      '  DOCNO = :OLD_DOCNO')
    Left = 432
    Top = 435
  end
  object qry_TTTK: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'select CGZL_Payment_Map.*,CGZL_PaymentS.TONGTRIGIA_HOADON,Percen' +
        't_TT'
      'from CGZL_Payment_Map'
      
        'left join CGZL_Payment on CGZL_Payment_Map.FKBH_TTT=CGZL_Payment' +
        '.FKBH and CGZL_Payment.HD_LOAI='#39'3'#39
      'left join CGZL_PaymentS on CGZL_Payment.FKBH=CGZL_PaymentS.FKBH'
      'where CGZL_Payment_Map.FKBH=:FKBH'
      '')
    UpdateObject = Up_TTTK
    Left = 980
    Top = 590
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_TTTKFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
    end
    object qry_TTTKFKBH_TTT: TStringField
      FieldName = 'FKBH_TTT'
      FixedChar = True
    end
    object qry_TTTKUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object qry_TTTKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_TTTKYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_TTTKHD_LOAI: TStringField
      FieldName = 'HD_LOAI'
      FixedChar = True
      Size = 1
    end
    object qry_TTTKHD_LOAITTT: TStringField
      FieldName = 'HD_LOAITTT'
      FixedChar = True
      Size = 1
    end
    object qry_TTTKTONGTRIGIA_HOADON: TCurrencyField
      FieldName = 'TONGTRIGIA_HOADON'
    end
    object qry_TTTKPercent_TT: TIntegerField
      FieldName = 'Percent_TT'
    end
  end
  object DS_TTTK: TDataSource
    DataSet = qry_TTTK
    Left = 982
    Top = 619
  end
  object Up_TTTK: TUpdateSQL
    InsertSQL.Strings = (
      'insert into CGZL_Payment_Map(FKBH,FKBH_TTT,UserID,UserDate,YN)'
      'values(:FKBH,:FKBH_TTT,:UserID,GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_Payment_Map'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  FKBH_TTT = :OLD_FKBH_TTT')
    Left = 1016
    Top = 591
  end
  object qry_TTHD: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'select CGZL_Payment_Map.*,CGZL_PaymentSS.STT,CGZL_PaymentSS.KYHI' +
        'EU_HOADON,CGZL_PaymentSS.VATNO,'
      
        'CGZL_PaymentSS.VATDATE,CGZL_PaymentSS.TONGTIEN_CHUATHUE,CGZL_Pay' +
        'mentSS.TONGTIEN_THUE,'
      'CGZL_PaymentSS.TONGTIEN_THANHTOAN,CGZL_PaymentSS.ZSBH_MST'
      'from CGZL_Payment_Map'
      
        'left join CGZL_Payment on CGZL_Payment_Map.FKBH_TTT=CGZL_Payment' +
        '.FKBH and CGZL_Payment.HD_LOAI='#39'4'#39
      
        'left join CGZL_PaymentSS on CGZL_Payment.FKBH=CGZL_PaymentSS.FKB' +
        'H'
      'where CGZL_Payment_Map.FKBH=:FKBH'
      ''
      '')
    UpdateObject = Up_TTHD
    Left = 852
    Top = 446
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object StringField1: TStringField
      FieldName = 'FKBH'
      FixedChar = True
    end
    object StringField2: TStringField
      FieldName = 'FKBH_TTT'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField4: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'HD_LOAI'
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'HD_LOAITTT'
      FixedChar = True
      Size = 1
    end
    object qry_TTHDSTT: TStringField
      FieldName = 'STT'
      Size = 10
    end
    object qry_TTHDZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Size = 50
    end
    object qry_TTHDVATNO: TStringField
      FieldName = 'VATNO'
      Size = 50
    end
    object qry_TTHDVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_TTHDKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      Size = 200
    end
    object qry_TTHDTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry_TTHDTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry_TTHDTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
  end
  object Up_TTHD: TUpdateSQL
    InsertSQL.Strings = (
      'insert into CGZL_Payment_Map(FKBH,FKBH_TTT,UserID,UserDate,YN)'
      'values(:FKBH,:FKBH_TTT,:UserID,GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_Payment_Map'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  FKBH_TTT = :OLD_FKBH_TTT')
    Left = 880
    Top = 447
  end
  object DS_TTHD: TDataSource
    DataSet = qry_TTHD
    Left = 854
    Top = 475
  end
  object qry_CGPaymentSTT2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      'SELECT 1 AS STT, FKBH, a.ZSBH_MST, a.VATNO'
      #9#9',a.KYHIEU_HOADON,a.VATDATE'
      '    ,a.TONGTIEN_CHUATHUE'
      
        #9#9',a.TONGTIEN_THUE, a.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, ' +
        'a.YN'
      '  FROM CGZL_PaymentSS a'
      ' '
      '   WHERE FKBH=:FKBH and a.ZSBH_MST='#39'TRUTIEN'#39
      '')
    UpdateObject = Up_CGPaySTT2
    Left = 804
    Top = 115
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_CGPaymentSTT2FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentSTT2ZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentSTT2VATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentSTT2TONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry_CGPaymentSTT2TONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry_CGPaymentSTT2TONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object qry_CGPaymentSTT2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry_CGPaymentSTT2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_CGPaymentSTT2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_CGPaymentSTT2: TDataSource
    DataSet = qry_CGPaymentSTT2
    Left = 805
    Top = 148
  end
  object Up_CGPaySTT2: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_PaymentSS'
      'set '
      '  ZSBH_MST = :ZSBH_MST,'
      '  VATNO = :VATNO,   '
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TONGTIEN_CHUATHUE= :TONGTIEN_CHUATHUE,'
      '  TONGTIEN_THUE= :TONGTIEN_THUE,'
      '  TONGTIEN_THANHTOAN= :TONGTIEN_THANHTOAN'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO')
    InsertSQL.Strings = (
      'INSERT INTO  CGZL_PaymentSS'
      
        '           (FKBH,ZSBH_MST,VATNO,USERID,USERDATE,YN,TONGTIEN_CHUA' +
        'THUE,TONGTIEN_THUE,TONGTIEN_THANHTOAN)'
      '     VALUES'
      
        '           (:FKBH,:ZSBH_MST,:VATNO,:USERID,GETDATE(),1,:TONGTIEN' +
        '_CHUATHUE,:TONGTIEN_THUE,:TONGTIEN_THANHTOAN)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentSS'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO')
    Left = 808
    Top = 181
  end
  object Up_CGPayTAM_P: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_AdvanceS'
      'set  '
      '  LYDO = :LYDO,  '
      '  SOTIEN_TT = :SOTIEN_TT,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TIENTE = :TIENTE'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  STT = :OLD_STT')
    InsertSQL.Strings = (
      'insert into CGZL_AdvanceS'
      '  (FKBH, STT, LYDO, SOTIEN_TT, USERID, USERDATE, YN)'
      'values'
      '  (:FKBH, :STT, :LYDO, :SOTIEN_TT, :USERID,GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_AdvanceS'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  STT = :OLD_STT')
    Left = 1035
    Top = 275
  end
  object DS_CGPaymentTAM_P: TDataSource
    DataSet = qry_CGPaymentTAM_P
    Left = 1036
    Top = 243
  end
  object qry_CGPaymentTAM_P: TQuery
    AfterOpen = qry_CGPaymentTAM_PAfterOpen
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT a.FKBH,a.STT,a.LYDO, a.SOTIEN_TT, a.USERID, a.USERDATE, a' +
        '.YN, a.TIENTE'
      '  FROM CGZL_AdvanceS a'
      '   WHERE FKBH=:FKBH ')
    UpdateObject = Up_CGPayTAM_P
    Left = 1036
    Top = 211
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_CGPaymentTAM_PFKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_AdvanceS.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentTAM_PSTT: TStringField
      FieldName = 'STT'
      Origin = 'DB.CGZL_AdvanceS.STT'
      FixedChar = True
      Size = 3
    end
    object qry_CGPaymentTAM_PLYDO: TStringField
      FieldName = 'LYDO'
      Origin = 'DB.CGZL_AdvanceS.LYDO'
      FixedChar = True
      Size = 80
    end
    object qry_CGPaymentTAM_PSOTIEN_TT: TCurrencyField
      FieldName = 'SOTIEN_TT'
      Origin = 'DB.CGZL_AdvanceS.SOTIEN_TT'
    end
    object qry_CGPaymentTAM_PUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_AdvanceS.USERID'
      FixedChar = True
    end
    object qry_CGPaymentTAM_PUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_AdvanceS.USERDATE'
    end
    object qry_CGPaymentTAM_PYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_AdvanceS.YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentTAM_PTIENTE: TStringField
      FieldName = 'TIENTE'
      Size = 5
    end
  end
  object qry_CGPaymentTAM: TQuery
    AfterOpen = qry_CGPaymentTAMAfterOpen
    AfterScroll = qry_CGPaymentTAMAfterScroll
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      'SELECT a.FKBH,'
      
        '       Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))SOTIEN_TAMU' +
        'NG,'
      
        '       Isnull(c.NGAY_TAMUNG, isnull(a.NGAY_TAMUNG,'#39'1900/01/01'#39'))' +
        'NGAY_TAMUNG,'
      
        '       CASE WHEN d.VATNO IS NOT NULL THEN '#39'HD'#39' ELSE a.LOAI_CHUNG' +
        'TU END AS LOAI_CHUNGTU,'
      
        '       CASE WHEN d.VATNO IS NOT NULL THEN d.VATNO ELSE Isnull( a' +
        '.SOPHIEU,'#39'-'#39') END AS SOPHIEU,'
      
        '       CASE WHEN d.VATNO IS NOT NULL THEN d.VATDATE ELSE a.NGAY_' +
        'HOADON END AS NGAY_HOADON,'
      
        '       CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)' +
        '=1'
      '        THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) '
      '        WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0'
      
        '        THEN (d.TONGTIEN_CHUATHUE -isnull(d.TONGTIEN_CHIETKHAU,0' +
        '))+ isnull(d.TONGTIEN_PHI,0) '
      '        ELSE a.SOTIEN_CHUATHUE '
      '       END AS SOTIEN_CHUATHUE,'
      
        '       CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THUE ELSE a' +
        '.SOTIEN_THUE END AS SOTIEN_THUE,'
      
        '       CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THANHTOAN E' +
        'LSE a.SOTIEN_TT END AS SOTIEN_TT,'
      
        '       CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))' +
        '-a.SOTIEN_TT) >0 THEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUN' +
        'G,0))-a.SOTIEN_TT) else 0  end SOTIEN_HOANLAI,'
      
        '       CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))' +
        '-a.SOTIEN_TT) <0 THEN (a.SOTIEN_TT -Isnull(c.THANHTOAN, isnull(a' +
        '.SOTIEN_TAMUNG,0))) else 0  end  SOTIEN_CHITHEM,'
      '       a.USERID,'
      '       a.USERDATE,'
      '       a.YN ,c.DV_TAMUNG, c.USERNAME_TAMUNG, c.USERID_TAMUNG'
      'FROM   cgzl_payments_advance a'
      '       LEFT JOIN cgzl_payment_map b'
      '              ON b.FKBH = a.FKBH'
      '       LEFT JOIN (SELECT cgzl_advances.FKBH,'
      '                         cgzl_payment.NGAY_TAMUNG,'
      '                         cgzl_payment.DV_TAMUNG,'
      '                         cgzl_payment.USERNAME_TAMUNG, '
      '                         cgzl_payment.USERID_TAMUNG,'
      '                         Sum(cgzl_advances.SOTIEN_TT) THANHTOAN'
      '                  FROM   cgzl_advances'
      '                         LEFT JOIN cgzl_payment'
      
        '                                ON cgzl_payment.FKBH = cgzl_adva' +
        'nces.FKBH'
      '                  GROUP  BY cgzl_advances.FKBH,'
      '                            cgzl_payment.NGAY_TAMUNG,'
      #9#9#9#9#9#9'    cgzl_payment.DV_TAMUNG,'
      #9#9#9#9#9#9#9'cgzl_payment.USERNAME_TAMUNG, '
      #9#9#9#9#9#9#9'cgzl_payment.USERID_TAMUNG) c'
      '              ON b.FKBH_TTT = c.FKBH'
      
        #9#9'LEFT JOIN CGZL_VATNO d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZS' +
        'BH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON'
      'WHERE  a.FKBH = :FKBH')
    UpdateObject = Up_CGPayTAM
    Left = 908
    Top = 203
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_CGPaymentTAMFKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_PaymentS_Advance.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentTAMSOTIEN_TAMUNG: TCurrencyField
      FieldName = 'SOTIEN_TAMUNG'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_TAMUNG'
    end
    object qry_CGPaymentTAMNGAY_TAMUNG: TDateTimeField
      FieldName = 'NGAY_TAMUNG'
      Origin = 'DB.CGZL_PaymentS_Advance.NGAY_TAMUNG'
    end
    object qry_CGPaymentTAMLOAI_CHUNGTU: TStringField
      FieldName = 'LOAI_CHUNGTU'
      Origin = 'DB.CGZL_PaymentS_Advance.LOAI_CHUNGTU'
      FixedChar = True
      Size = 30
    end
    object qry_CGPaymentTAMSOPHIEU: TStringField
      FieldName = 'SOPHIEU'
      Origin = 'DB.CGZL_PaymentS_Advance.SOPHIEU'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentTAMNGAY_HOADON: TDateTimeField
      FieldName = 'NGAY_HOADON'
      Origin = 'DB.CGZL_PaymentS_Advance.NGAY_HOADON'
    end
    object qry_CGPaymentTAMSOTIEN_CHUATHUE: TCurrencyField
      FieldName = 'SOTIEN_CHUATHUE'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_CHUATHUE'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentTAMSOTIEN_THUE: TCurrencyField
      FieldName = 'SOTIEN_THUE'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_THUE'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentTAMSOTIEN_TT: TCurrencyField
      FieldName = 'SOTIEN_TT'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_TT'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentTAMSOTIEN_HOANLAI: TCurrencyField
      FieldName = 'SOTIEN_HOANLAI'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_HOANLAI'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentTAMSOTIEN_CHITHEM: TCurrencyField
      FieldName = 'SOTIEN_CHITHEM'
      Origin = 'DB.CGZL_PaymentS_Advance.SOTIEN_CHITHEM'
      DisplayFormat = '##,#0.00'
    end
    object qry_CGPaymentTAMUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_PaymentS_Advance.USERID'
      FixedChar = True
    end
    object qry_CGPaymentTAMUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_PaymentS_Advance.USERDATE'
    end
    object qry_CGPaymentTAMYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_PaymentS_Advance.YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentTAMDV_TAMUNG: TStringField
      FieldName = 'DV_TAMUNG'
      FixedChar = True
      Size = 80
    end
    object qry_CGPaymentTAMUSERNAME_TAMUNG: TStringField
      FieldName = 'USERNAME_TAMUNG'
      FixedChar = True
      Size = 80
    end
    object qry_CGPaymentTAMUSERID_TAMUNG: TStringField
      FieldName = 'USERID_TAMUNG'
      FixedChar = True
    end
    object qry_CGPaymentTAMTIENTE: TStringField
      FieldName = 'TIENTE'
      Size = 5
    end
  end
  object qry_CGPaymentTAMss: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(ORDER BY b.VATDATE ASC,b.VATNO ASC) AS ' +
        'STT, FKBH, a.ZSBH_MST, a.VATNO'
      
        #9#9',b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU, a.KYHIEU_HOADON, b.VA' +
        'TDATE'
      
        '    ,CASE WHEN isnull(TRU_CHIETKHAU,0)=1 THEN b.TONGTIEN_CHUATHU' +
        'E+ isnull(b.TONGTIEN_PHI,0) ELSE  (b.TONGTIEN_CHUATHUE -isnull(b' +
        '.TONGTIEN_CHIETKHAU,0))+ isnull(b.TONGTIEN_PHI,0) end TONGTIEN_C' +
        'HUATHUE'
      
        #9#9',b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, ' +
        'a.YN,isnull(TRU_CHIETKHAU,0) TRU_CHIETKHAU, a.SOPHIEU'
      '  FROM CGZL_PaymentS_Advance a'
      
        '  LEFT JOIN CGZL_VATNO b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZS' +
        'BH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON'
      '   WHERE FKBH=:FKBH and a.ZSBH_MST<>'#39'TRUTIEN'#39)
    UpdateObject = Up_CGPayTAMss
    Left = 942
    Top = 203
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object FloatField1: TFloatField
      FieldName = 'STT'
    end
    object StringField23: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object StringField24: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentTAMssKYHIEU: TStringField
      FieldName = 'KYHIEU'
      Size = 200
    end
    object StringField25: TStringField
      FieldName = 'KYHIEU_HOADON'
      FixedChar = True
      Size = 10
    end
    object StringField26: TStringField
      FieldName = 'VATNO'
      FixedChar = True
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'VATDATE'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object StringField27: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField28: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentTAMssTRU_CHIETKHAU: TBooleanField
      FieldName = 'TRU_CHIETKHAU'
    end
    object qry_CGPaymentTAMssSOPHIEU: TStringField
      FieldName = 'SOPHIEU'
    end
  end
  object DS_CGPaymentTAMss: TDataSource
    DataSet = qry_CGPaymentTAMss
    Left = 944
    Top = 237
  end
  object DS_CGPaymentTAM: TDataSource
    DataSet = qry_CGPaymentTAM
    Left = 908
    Top = 235
  end
  object Up_CGPayTAM: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_PaymentS_Advance'
      'set'
      '  SOTIEN_TAMUNG = :SOTIEN_TAMUNG,'
      '  NGAY_TAMUNG = :NGAY_TAMUNG,'
      '  LOAI_CHUNGTU = :LOAI_CHUNGTU,'
      '  NGAY_HOADON = :NGAY_HOADON,'
      '  SOTIEN_CHUATHUE = :SOTIEN_CHUATHUE,'
      '  SOTIEN_THUE = :SOTIEN_THUE,'
      '  SOTIEN_TT = :SOTIEN_TT,'
      '  SOTIEN_HOANLAI = :SOTIEN_HOANLAI,'
      '  SOTIEN_CHITHEM = :SOTIEN_CHITHEM,'
      '  SOPHIEU = :SOPHIEU ,'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TIENTE = :TIENTE'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  LOAI_CHUNGTU = :OLD_LOAI_CHUNGTU and'
      '  SOPHIEU = :OLD_SOPHIEU'
      '')
    InsertSQL.Strings = (
      'insert into CGZL_PaymentS_Advance'
      
        '  (FKBH,SOPHIEU,SOTIEN_TAMUNG, NGAY_TAMUNG, LOAI_CHUNGTU, NGAY_H' +
        'OADON, '
      'SOTIEN_CHUATHUE, '
      
        '   SOTIEN_THUE, SOTIEN_TT, SOTIEN_HOANLAI, SOTIEN_CHITHEM, USERI' +
        'D, '
      'USERDATE, '
      '   YN)'
      'values'
      
        '  (:FKBH,:SOPHIEU,:SOTIEN_TAMUNG, :NGAY_TAMUNG, :LOAI_CHUNGTU, :' +
        'NGAY_HOADON, '
      ':SOTIEN_CHUATHUE, '
      '   :SOTIEN_THUE, :SOTIEN_TT, :SOTIEN_HOANLAI, :SOTIEN_CHITHEM, '
      ':USERID, '
      '   GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentS_Advance'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  LOAI_CHUNGTU = :OLD_LOAI_CHUNGTU and'
      '  SOPHIEU = :OLD_SOPHIEU')
    Left = 912
    Top = 267
  end
  object Up_CGPayTAMss: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_PaymentS_Advance'
      'set '
      '  ZSBH_MST = :ZSBH_MST,'
      '  VATNO = :VATNO,  '
      '  KYHIEU_HOADON =:KYHIEU_HOADON, '
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  YN = 1,'
      '  TRU_CHIETKHAU = :TRU_CHIETKHAU'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO and'
      '  KYHIEU_HOADON=:OLD_KYHIEU_HOADON and'
      '  LOAI_CHUNGTU='#39'-'#39' and'
      '  SOPHIEU=:OLD_SOPHIEU')
    InsertSQL.Strings = (
      'INSERT INTO  CGZL_PaymentS_Advance'
      
        '(FKBH,ZSBH_MST,VATNO,KYHIEU_HOADON,USERID,USERDATE,YN,TRU_CHIETK' +
        'HAU, SOPHIEU, LOAI_CHUNGTU, SOTIEN_CHUATHUE,SOTIEN_THUE, SOTIEN_' +
        'TT)'
      'VALUES'
      '(:FKBH,:ZSBH_MST,:VATNO,:KYHIEU_HOADON,:USERID,GETDATE'
      '(),1,:TRU_CHIETKHAU, :VATNO, '#39'-'#39',0,0,0)')
    DeleteSQL.Strings = (
      'delete from CGZL_PaymentS_Advance'
      'where'
      '  FKBH = :OLD_FKBH and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  VATNO = :OLD_VATNO and'
      '  KYHIEU_HOADON =:OLD_KYHIEU_HOADON and '
      '  LOAI_CHUNGTU='#39'-'#39' and'
      '  SOPHIEU=:OLD_SOPHIEU')
    Left = 944
    Top = 269
  end
  object qry_TTPTU: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      'SELECT cgzl_payment_map.fkbh,'
      '       cgzl_payment_map.fkbh_ttt,'
      '       cgzl_payment_map.userid,'
      '       cgzl_payment_map.userdate,'
      '       cgzl_payment_map.yn,'
      #9'   cgzl_payment.USERID_TAMUNG,'
      
        '       Sum(CGZL_PaymentS.sotien_tt)                            T' +
        'HANHTOAN'
      'FROM   cgzl_payment_map'
      '       LEFT JOIN cgzl_payment'
      '              ON cgzl_payment_map.fkbh_ttt = cgzl_payment.fkbh'
      '                 AND cgzl_payment.hd_loai = '#39'6'#39
      '       LEFT JOIN cgzl_advances CGZL_PaymentS'
      '              ON cgzl_payment.fkbh = CGZL_PaymentS.fkbh'
      'WHERE  cgzl_payment_map.fkbh = :FKBH'
      'GROUP  BY cgzl_payment_map.fkbh,'
      '          cgzl_payment_map.fkbh_ttt,'
      '          cgzl_payment_map.userid,'
      '          cgzl_payment_map.userdate,'
      '          cgzl_payment_map.yn,'
      #9#9'  cgzl_payment.USERID_TAMUNG')
    UpdateObject = Up_TTPTU
    Left = 911
    Top = 300
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry_TTPTUfkbh: TStringField
      FieldName = 'fkbh'
      FixedChar = True
    end
    object qry_TTPTUfkbh_ttt: TStringField
      FieldName = 'fkbh_ttt'
      FixedChar = True
    end
    object qry_TTPTUuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object qry_TTPTUuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object qry_TTPTUyn: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
    object qry_TTPTUTHANHTOAN: TCurrencyField
      FieldName = 'THANHTOAN'
    end
    object qry_TTPTUUSERID_TAMUNG: TStringField
      FieldName = 'USERID_TAMUNG'
    end
  end
  object DS_TTPTU: TDataSource
    DataSet = qry_TTPTU
    Left = 910
    Top = 328
  end
  object Up_TTPTU: TUpdateSQL
    InsertSQL.Strings = (
      'insert into CGZL_Payment_Map(FKBH,FKBH_TTT,UserID,UserDate,YN)'
      'values(:FKBH,:FKBH_TTT,:UserID,GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_Payment_Map'
      'where'
      '  FKBH= :OLD_FKBH and'
      '  FKBH_TTT = :OLD_FKBH_TTT')
    Left = 911
    Top = 359
  end
end
