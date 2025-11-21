object StuffCost: TStuffCost
  Left = 130
  Top = 409
  Width = 1239
  Height = 477
  Caption = 'Stuff Cost'
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
  object pnMid: TPanel
    Left = 0
    Top = 57
    Width = 1223
    Height = 89
    Align = alTop
    TabOrder = 0
    Visible = False
    object lbCompany: TLabel
      Left = 16
      Top = 0
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbTo: TLabel
      Left = 608
      Top = 24
      Width = 21
      Height = 20
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbSupplier: TLabel
      Left = 120
      Top = 40
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbXieXing: TLabel
      Left = 16
      Top = 40
      Width = 57
      Height = 17
      AutoSize = False
      Caption = 'XieXing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbCFMDate: TLabel
      Left = 512
      Top = 8
      Width = 60
      Height = 13
      AutoSize = False
      Caption = 'CFM Date:'
    end
    object lbCLDH: TLabel
      Left = 120
      Top = 0
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'CLDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbDDBH: TLabel
      Left = 224
      Top = 0
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbArticle: TLabel
      Left = 224
      Top = 40
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbBuyNo: TLabel
      Left = 312
      Top = 0
      Width = 65
      Height = 17
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnQuery: TButton
      Left = 744
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object cbCompany: TComboBox
      Left = 16
      Top = 16
      Width = 97
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = cbCompanyChange
    end
    object dtpFrom: TDateTimePicker
      Left = 512
      Top = 24
      Width = 89
      Height = 25
      Date = 41689.401880324080000000
      Time = 41689.401880324080000000
      TabOrder = 2
    end
    object dtpTo: TDateTimePicker
      Left = 640
      Top = 24
      Width = 89
      Height = 25
      Date = 41689.401906979170000000
      Time = 41689.401906979170000000
      TabOrder = 3
    end
    object cbMaterial: TCheckBox
      Left = 512
      Top = 56
      Width = 81
      Height = 17
      Caption = 'Material'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object cbOut: TCheckBox
      Left = 576
      Top = 56
      Width = 89
      Height = 17
      Caption = 'Outsource'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object edSupplier: TEdit
      Left = 120
      Top = 56
      Width = 81
      Height = 21
      TabOrder = 6
    end
    object bnSupplier: TButton
      Left = 200
      Top = 56
      Width = 17
      Height = 25
      Caption = '...'
      TabOrder = 7
      OnClick = bnSupplierClick
    end
    object edXieXing: TEdit
      Left = 16
      Top = 56
      Width = 81
      Height = 21
      TabOrder = 8
    end
    object bnXieXing: TButton
      Left = 96
      Top = 56
      Width = 17
      Height = 25
      Caption = '...'
      TabOrder = 9
      OnClick = bnXieXingClick
    end
    object edCLDH: TEdit
      Left = 120
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 10
    end
    object edDDBH: TEdit
      Left = 224
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 11
    end
    object cbVNACC: TComboBox
      Left = 416
      Top = 8
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 12
      Text = 'All VNACC'
      Items.Strings = (
        'All VNACC'
        'VNACC > 0'
        'VNACC = 0')
    end
    object cbUSACC: TComboBox
      Left = 416
      Top = 32
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 13
      Text = 'All USACC'
      Items.Strings = (
        'All USACC'
        'USACC > 0'
        'USACC = 0')
    end
    object edArticle: TEdit
      Left = 224
      Top = 56
      Width = 81
      Height = 21
      TabOrder = 14
    end
    object edBuyNo: TEdit
      Left = 312
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 15
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 209
    Width = 1223
    Height = 230
    Align = alClient
    ColumnDefValues.Title.TitleButton = True
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnTitleBtnClick = gdMainTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'number'
        Footers = <>
        Title.Caption = #20837#24235'/'#21152#24037#32232#34399'|NO'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #29289#26009#32232#34399'|CLDH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footer.FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #21517#31281'|ywpm'
        Width = 281
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footer.FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301'|dwbh'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.FieldName = 'ACC'
        Footers = <>
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32654#37329#32317#21512'|USACC'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #21295#29575'|CWHL'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #36234#30462#21934#20729'|VNPrice'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#30462#32317#21512'|VNACC'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        Title.Caption = #20379#25033#21830'|zsjc'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #23565#25033#35330#21934'|DDBH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = #38795#22411'|XieXing'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU|Article'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'BuyNo'
        Footers = <>
        Title.Caption = 'Buy'#21029'|BuyNo'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Title.Caption = #23458#25142'|kfjc'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'kind'
        Footers = <>
        Title.Caption = #20998#39006'|Kind'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20837#24235#20154#21729'|userid'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #20837#24115#26085#26399'|CFMDate'
      end>
  end
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1223
    Height = 57
    Align = alTop
    TabOrder = 2
    object bnShow: TBitBtn
      Left = 8
      Top = 8
      Width = 57
      Height = 41
      Caption = 'Query'
      TabOrder = 0
      OnClick = bnShowClick
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
    object bnExcel: TBitBtn
      Left = 80
      Top = 8
      Width = 57
      Height = 41
      Caption = 'Excel'
      TabOrder = 1
      OnClick = bnExcelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bnCDCHint: TBitBtn
      Left = 152
      Top = 8
      Width = 57
      Height = 41
      Caption = 'CDC Hint'
      TabOrder = 2
      OnClick = bnCDCHintClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
        33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
        FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
        FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
        FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
        FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
        FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
        3333333773FFFF77333333333FBFBF3333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bnColumns: TBitBtn
      Left = 224
      Top = 8
      Width = 57
      Height = 41
      Caption = 'Columns'
      TabOrder = 3
      OnClick = bnColumnsClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object pnBtm: TPanel
    Left = 0
    Top = 146
    Width = 1223
    Height = 63
    Align = alTop
    TabOrder = 3
    Visible = False
    object bnHide: TButton
      Left = 776
      Top = 24
      Width = 57
      Height = 25
      Caption = 'Hide'
      TabOrder = 0
      OnClick = bnHideClick
    end
    object cbNO: TCheckBox
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = 'NO '#20837#24235'/'#21152#24037#32232#34399
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbNOClick
    end
    object cbCLDH: TCheckBox
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'CLDH '#29289#26009#32232#34399
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cbCLDHClick
    end
    object cbYWPM: TCheckBox
      Left = 8
      Top = 40
      Width = 89
      Height = 17
      Caption = 'YWPM '#21517#31281
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = cbYWPMClick
    end
    object cbDWBH: TCheckBox
      Left = 128
      Top = 8
      Width = 89
      Height = 17
      Caption = 'DWBH '#21934#20301
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = cbDWBHClick
    end
    object cbQty: TCheckBox
      Left = 128
      Top = 24
      Width = 89
      Height = 17
      Caption = 'Qty '#25976#37327
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = cbQtyClick
    end
    object cbUSPrice: TCheckBox
      Left = 128
      Top = 40
      Width = 113
      Height = 17
      Caption = 'USPrice '#32654#37329#21934#20729
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = cbUSPriceClick
    end
    object cbAC: TCheckBox
      Left = 240
      Top = 8
      Width = 113
      Height = 17
      Caption = 'USACC '#32654#37329#32317#21512
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = cbACClick
    end
    object cbCWHL: TCheckBox
      Left = 240
      Top = 24
      Width = 113
      Height = 17
      Caption = 'CWHL '#21295#29575
      Checked = True
      State = cbChecked
      TabOrder = 8
      OnClick = cbCWHLClick
    end
    object cbVNPrice: TCheckBox
      Left = 240
      Top = 40
      Width = 113
      Height = 17
      Caption = 'VNPrice '#36234#30462#21934#20729
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = cbVNPriceClick
    end
    object cbVNAC: TCheckBox
      Left = 352
      Top = 8
      Width = 113
      Height = 17
      Caption = 'VNACC '#36234#30462#32317#21512
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = cbVNACClick
    end
    object cbZSJC: TCheckBox
      Left = 352
      Top = 24
      Width = 113
      Height = 17
      Caption = 'zsjc '#20379#25033#21830
      Checked = True
      State = cbChecked
      TabOrder = 11
      OnClick = cbZSJCClick
    end
    object cbDDBH: TCheckBox
      Left = 352
      Top = 40
      Width = 113
      Height = 17
      Caption = 'DDBH '#23565#25033#35330#21934
      Checked = True
      State = cbChecked
      TabOrder = 12
      OnClick = cbDDBHClick
    end
    object cbXieXing: TCheckBox
      Left = 464
      Top = 6
      Width = 113
      Height = 17
      Caption = 'XieXing '#38795#22411
      Checked = True
      State = cbChecked
      TabOrder = 13
      OnClick = cbXieXingClick
    end
    object cbArticle: TCheckBox
      Left = 464
      Top = 22
      Width = 113
      Height = 17
      Caption = 'Article SKU'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = cbArticleClick
    end
    object cbBuyNo: TCheckBox
      Left = 464
      Top = 38
      Width = 113
      Height = 17
      Caption = 'BuyNo Buy'#21029
      Checked = True
      State = cbChecked
      TabOrder = 15
      OnClick = cbBuyNoClick
    end
    object cbKFJC: TCheckBox
      Left = 552
      Top = 6
      Width = 73
      Height = 17
      Caption = 'kfjc '#23458#25142
      Checked = True
      State = cbChecked
      TabOrder = 16
      OnClick = cbKFJCClick
    end
    object cbKind: TCheckBox
      Left = 552
      Top = 22
      Width = 73
      Height = 17
      Caption = 'Kind '#20998#39006
      Checked = True
      State = cbChecked
      TabOrder = 17
      OnClick = cbKindClick
    end
    object cbUserid: TCheckBox
      Left = 552
      Top = 38
      Width = 105
      Height = 17
      Caption = 'Userid '#20837#24235#20154#21729
      Checked = True
      State = cbChecked
      TabOrder = 18
      OnClick = cbUseridClick
    end
    object cbCFMDate: TCheckBox
      Left = 648
      Top = 6
      Width = 121
      Height = 17
      Caption = 'CFMDate '#20837#24115#26085#26399
      Checked = True
      State = cbChecked
      TabOrder = 19
      OnClick = cbCFMDateClick
    end
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 384
    object qrMainGSBH: TStringField
      FieldName = 'number'
    end
    object qrMainCLDH: TStringField
      FieldName = 'CLDH'
    end
    object qrMainzwpm: TStringField
      FieldName = 'ywpm'
    end
    object qrMainDwbh: TStringField
      FieldName = 'dwbh'
    end
    object qrMainQty: TFloatField
      FieldName = 'Qty'
    end
    object qrMainUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object qrMainUSACC: TFloatField
      FieldName = 'USACC'
    end
    object qrMainCWHL: TIntegerField
      FieldName = 'CWHL'
    end
    object qrMainVNPrice: TFloatField
      FieldName = 'VNPrice'
    end
    object qrMainVNACC: TFloatField
      FieldName = 'VNACC'
    end
    object qrMainzsjc: TStringField
      FieldName = 'zsjc'
    end
    object qrMainDDBH: TStringField
      FieldName = 'DDBH'
    end
    object qrMainXieXing: TStringField
      FieldName = 'XieXing'
    end
    object qrMainArticle: TStringField
      FieldName = 'Article'
    end
    object qrMainBuyNo: TStringField
      FieldName = 'BuyNo'
    end
    object qrMainkfjc: TStringField
      FieldName = 'kfjc'
    end
    object qrMainkind: TStringField
      FieldName = 'kind'
    end
    object qrMainUSERNAME: TStringField
      FieldName = 'USERID'
    end
    object qrMainCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 24
    Top = 384
  end
  object qrGS: TQuery
    DatabaseName = 'dB'
    Left = 104
    Top = 384
  end
end
