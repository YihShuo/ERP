object GhiChepKhoiPhucDuLieuThucTe_Print: TGhiChepKhoiPhucDuLieuThucTe_Print
  Left = 0
  Top = -55
  Caption = 'Ghi ch'#233'p kh'#244'i ph'#7909'c d'#7919' li'#7879'u th'#7921'c t'#7871
  ClientHeight = 701
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 29
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = KPDLQry
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 360
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        952.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object L1: TQRLabel
        Left = 116
        Top = 50
        Width = 509
        Height = 33
        Size.Values = (
          87.312500000000000000
          306.916666666666700000
          132.291666666666700000
          1346.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'B'#7842'NG GHI CH'#201'P H'#431#7898'NG D'#7850'N KH'#212'I PH'#7908'C D'#7918' LI'#7878'U'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel4: TQRLabel
        Left = 242
        Top = 76
        Width = 254
        Height = 30
        Size.Values = (
          79.375000000000000000
          640.291666666666700000
          201.083333333333300000
          672.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #31995#32113#28797#23475#24489#21407#28436#32244#22519#64008#34920
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel5: TQRLabel
        Left = 32
        Top = 111
        Width = 151
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          293.687500000000000000
          399.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#432#7901'i '#273#7843'm nh'#7853'n'#25215#36774#20154':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 32
        Top = 134
        Width = 149
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          354.541666666666700000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #272#417'n v'#7883' h'#7895' tr'#7907' '#21332#36774#21934#20301':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 31
        Top = 157
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          415.395833333333300000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y h'#432#7899'ng d'#7851'n '#28436#63894#26085#26399':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_NguoiDamNhan: TQRLabel
        Left = 189
        Top = 112
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          500.062500000000000000
          296.333333333333300000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_NguoiDamNhan'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_DonVIHoTro: TQRLabel
        Left = 194
        Top = 134
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          513.291666666666700000
          354.541666666666700000
          336.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_DonVIHoTro'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_NgayHuongDan: TQRLabel
        Left = 209
        Top = 156
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          412.750000000000000000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_NgayHuongDan'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 21
        Top = 43
        Width = 1
        Height = 318
        Size.Values = (
          841.375000000000000000
          55.562500000000000000
          113.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 719
        Top = 43
        Width = 1
        Height = 318
        Size.Values = (
          841.375000000000000000
          1902.354166666667000000
          113.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 22
        Top = 43
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          113.770833333333300000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 22
        Top = 180
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          476.250000000000000000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 25
        Top = 287
        Width = 195
        Height = 50
        Size.Values = (
          132.291666666666700000
          66.145833333333320000
          759.354166666666800000
          515.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#432#7899'ng d'#7851'n th'#7921'c hi'#7879'n h'#7841'ng m'#7909'c   '#28436#63894#22519#64008#38917#30446
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 21
        Top = 230
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          608.541666666666800000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 244
        Top = 287
        Width = 230
        Height = 55
        Size.Values = (
          145.520833333333300000
          645.583333333333200000
          759.354166666666800000
          608.541666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 
          'Ch'#432#417'ng tr'#236'nh th'#7921'c hi'#7879'n '#22519#64008#31243#24207'     Ghi ch'#233'p qu'#225' tr'#236'nh h'#432#7899'ng d'#7851'n th'#7921 +
          'c t'#7871' '#65288#23526#38555#28436#63894#36942#31243#20043#22519#64008#32000#63807#65289
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 170
        Top = 180
        Width = 1
        Height = 100
        Size.Values = (
          264.583333333333300000
          449.791666666666700000
          476.250000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 21
        Top = 280
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          740.833333333333200000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 21
        Top = 105
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          277.812500000000000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 21
        Top = 360
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          952.500000000000000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 28
        Top = 187
        Width = 136
        Height = 35
        Size.Values = (
          92.604166666666680000
          74.083333333333320000
          494.770833333333300000
          359.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Th'#7901'i gian b'#7855't '#273#7847'u k'#7871' ho'#7841'ch'#35336#30059#38283#22987#26178#38291
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 28
        Top = 237
        Width = 136
        Height = 35
        Size.Values = (
          92.604166666666680000
          74.083333333333320000
          627.062500000000000000
          359.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Th'#7901'i gian k'#7871't th'#250'c k'#7871' ho'#7841'ch'#35336#30059#32080#26463#26178#38291
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape22: TQRShape
        Left = 510
        Top = 180
        Width = 1
        Height = 180
        Size.Values = (
          476.250000000000000000
          1349.375000000000000000
          476.250000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 225
        Top = 280
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          595.312500000000000000
          740.833333333333200000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 607
        Top = 280
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1606.020833333333000000
          740.833333333333200000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 340
        Top = 180
        Width = 1
        Height = 100
        Size.Values = (
          264.583333333333300000
          899.583333333333200000
          476.250000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 347
        Top = 189
        Width = 154
        Height = 35
        Size.Values = (
          92.604166666666680000
          918.104166666666800000
          500.062500000000000000
          407.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'L'#7853'p k'#7871' ho'#7841'ch c'#7847'n c'#243' th'#7901'i gian'#35336#30059#38656#35201#26178#38291
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 347
        Top = 237
        Width = 157
        Height = 35
        Size.Values = (
          92.604166666666680000
          918.104166666666800000
          627.062500000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Th'#7901'i gian l'#224'm vi'#7879'c th'#7921'c t'#7871#23526#38555#20316#26989#26178#38291' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 523
        Top = 300
        Width = 76
        Height = 55
        Size.Values = (
          145.520833333333300000
          1383.770833333333000000
          793.750000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'K'#7871't qu'#7843' '#32080#26524
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 612
        Top = 300
        Width = 101
        Height = 55
        Size.Values = (
          145.520833333333300000
          1619.250000000000000000
          793.750000000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ng'#432#7901'i ph'#7909' tr'#225'ch '#36000#36012#20154
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_ThoiGianBatDau: TQRLabel
        Left = 177
        Top = 189
        Width = 152
        Height = 17
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          500.062500000000000000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_ThoiGianBatDau'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_ThoiGianKetThuc: TQRLabel
        Left = 177
        Top = 237
        Width = 157
        Height = 17
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          627.062500000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_ThoiGianKetThuc'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_ThoiGianThucTe: TQRLabel
        Left = 549
        Top = 237
        Width = 151
        Height = 17
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          627.062500000000000000
          399.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'QRLabel_ThoiGianThucTe'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_ThoiGianLapKeHoach: TQRLabel
        Left = 517
        Top = 187
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          1367.895833333333000000
          494.770833333333300000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'QRLabel_ThoiGianLapKeHoach'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 622
        Top = 4
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1645.708333333333000000
          10.583333333333330000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31532'   '#38913
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 637
        Top = 4
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1685.395833333333000000
          10.583333333333330000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 667
        Top = 4
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1764.770833333333000000
          10.583333333333330000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '/'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object SumPage: TQRLabel
        Left = 673
        Top = 4
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          10.583333333333330000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 398
      Width = 718
      Height = 86
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        227.541666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 59
        Top = 7
        Width = 160
        Height = 64
        Size.Values = (
          169.333333333333300000
          156.104166666666700000
          18.520833333333330000
          423.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KPDLQry
        DataField = 'TLTen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRPShape1: TQRPShape
        Left = 22
        Top = 86
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333340000
          227.541666666666700000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape2: TQRPShape
        Left = 22
        Top = 0
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333340000
          0.000000000000000000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRShape7: TQRShape
        Left = 719
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          1902.354166666667000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 225
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          595.312500000000000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 21
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          55.562500000000000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRSysData2: TQRSysData
        Left = 25
        Top = 34
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          66.145833333333320000
          89.958333333333320000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape18: TQRShape
        Left = 55
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          145.520833333333300000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 229
        Top = 3
        Width = 280
        Height = 44
        Size.Values = (
          116.416666666666700000
          605.895833333333200000
          7.937500000000000000
          740.833333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KPDLQry
        DataField = 'NoidungVN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 229
        Top = 48
        Width = 280
        Height = 35
        Size.Values = (
          92.604166666666680000
          605.895833333333200000
          127.000000000000000000
          740.833333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KPDLQry
        DataField = 'NoiDungTW'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape26: TQRShape
        Left = 510
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          1349.375000000000000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 607
        Top = -1
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          1606.020833333333000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object TQ: TQRDBText
        Left = 513
        Top = 7
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1357.312500000000000000
          18.520833333333330000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfIntRound
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KPDLQry
        DataField = 'TQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object KTQ: TQRDBText
        Left = 513
        Top = 42
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1357.312500000000000000
          111.125000000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfIntRound
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = KPDLQry
        DataField = 'KTQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 530
        Top = 4
        Width = 68
        Height = 34
        Size.Values = (
          89.958333333333320000
          1402.291666666667000000
          10.583333333333330000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'th'#244'ng qua '#36890#36942' '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 530
        Top = 40
        Width = 76
        Height = 34
        Size.Values = (
          89.958333333333320000
          1402.291666666667000000
          105.833333333333300000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'kh'#244'ng th'#244'ng qua '#19981#36890#36942
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object ExecuteIDImage: TQRImage
        Left = 612
        Top = 24
        Width = 101
        Height = 40
        Size.Values = (
          105.833333333333300000
          1619.250000000000000000
          63.500000000000000000
          267.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 484
      Width = 718
      Height = 192
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        508.000000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape10: TQRShape
        Left = 21
        Top = 190
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          502.708333333333300000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 719
        Top = 0
        Width = 1
        Height = 190
        Size.Values = (
          502.708333333333300000
          1902.354166666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 21
        Top = 0
        Width = 1
        Height = 190
        Size.Values = (
          502.708333333333300000
          55.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 170
        Top = 152
        Width = 1
        Height = 38
        Size.Values = (
          100.541666666666700000
          449.791666666666700000
          402.166666666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 350
        Top = 153
        Width = 1
        Height = 38
        Size.Values = (
          100.541666666666700000
          926.041666666666800000
          404.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 520
        Top = 152
        Width = 1
        Height = 38
        Size.Values = (
          100.541666666666700000
          1375.833333333333000000
          402.166666666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 21
        Top = 152
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          402.166666666666700000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 24
        Top = 4
        Width = 195
        Height = 17
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          10.583333333333330000
          515.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#225'nh gi'#225' k'#7871't qu'#7843' '#32080#26524#27298#35342#65306
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape28: TQRShape
        Left = 21
        Top = 0
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          0.000000000000000000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 46
        Top = 21
        Width = 667
        Height = 51
        Size.Values = (
          134.937500000000000000
          121.708333333333300000
          55.562500000000000000
          1764.770833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          'C'#225'c m'#7909'c th'#7921'c thi, th'#7911' t'#7909'c v'#224' k'#7871't qu'#7843' c'#7911'a h'#7841'ng m'#7909'c tr'#234'n '#273#432#7907'c s'#7917' d' +
          #7909'ng l'#224'm t'#224'i li'#7879'u tham kh'#7843'o cho vi'#7879'c kh'#7855'c ph'#7909'c s'#7921' c'#7889' v'#224' ph'#7909'c h'#7891'i ' +
          'm'#225'y ch'#7911' c'#417' s'#7903' d'#7919' li'#7879'u trong t'#432#417'ng lai. '#20381#25818#19978#36848#28436#32244#22519#34892#38917#30446#12289#31243#24207#21450#32080#26524#65292#20316#28858#24448#24460#36039#26009#24235#20282 +
          ' '#26381#22120#25925#38556#25490#38500#21450#24489#21407#20043#21443#32771#12290
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 25
        Top = 21
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          66.145833333333320000
          55.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 25
        Top = 78
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          66.145833333333320000
          206.375000000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 46
        Top = 78
        Width = 667
        Height = 51
        Size.Values = (
          134.937500000000000000
          121.708333333333300000
          206.375000000000000000
          1764.770833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          'Do quy tr'#236'nh v'#7853'n h'#224'nh c'#7911'a l'#7847'n h'#432#7899'ng d'#7851'n n'#224'y ch'#432'a th'#224'nh th'#7841'o v'#224' m' +
          #244'i tr'#432#7901'ng h'#7879' th'#7889'ng th'#7917' nghi'#7879'm ch'#432'a ho'#224'n thi'#7879'n, ch'#250'ng t'#244'i d'#7921' '#273#7883'nh' +
          ' s'#7855'p x'#7871'p m'#7897't b'#224'i t'#7853'p h'#432#7899'ng d'#7851'n kh'#225'c '#273#7875' x'#225'c nh'#7853'n t'#237'nh hi'#7879'u qu'#7843#26412#27425#28436 +
          #32244#20043#20316#26989#27969#31243#26410#33275#29087#32244' '#20197#21450#28204#35430#31995#32113#29872#22659#35373#23450#19981#22816#23436#25972#25152#33268#65292#25836#21478#23433#25490#26178#31243#20877#27425#28436#32244#65292#20197#30906#35469#26377#25928#24615#12290
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 75
        Top = 167
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          198.437500000000000000
          441.854166666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #38542#27573
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape35: TQRShape
        Left = 650
        Top = 152
        Width = 1
        Height = 38
        Size.Values = (
          100.541666666666700000
          1719.791666666667000000
          402.166666666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 225
        Top = 167
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          441.854166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 392
        Top = 167
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          441.854166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#24847#35211
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 549
        Top = 167
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          441.854166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#26178#38291
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 671
        Top = 167
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          441.854166666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32080#26524
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 832
    Top = 51
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = QApprover
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4Small
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 31
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 177
        Top = 9
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          23.812500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'S_username'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 357
        Top = 8
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          944.562500000000000000
          21.166666666666670000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Remark'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 527
        Top = 9
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          23.812500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Userdate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 657
        Top = 7
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1738.312500000000000000
          18.520833333333330000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 28
        Top = 9
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          74.083333333333330000
          23.812500000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'S_Step_Desc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape12: TQRShape
        Left = 21
        Top = 30
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          79.375000000000000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 21
        Top = 0
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          55.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 170
        Top = -2
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          449.791666666666700000
          -5.291666666666667000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 350
        Top = 0
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          926.041666666666800000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 520
        Top = 0
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          1375.833333333333000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 650
        Top = 0
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          1719.791666666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 719
        Top = 0
        Width = 1
        Height = 30
        Size.Values = (
          79.375000000000000000
          1902.354166666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 69
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel27: TQRLabel
        Left = 697
        Top = 23
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          60.854166666666670000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CT-09F'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object KPDLQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    DataSource = GhiChepKhoiPhucDuLieu.DS2
    Parameters = <
      item
        Name = 'KPDLNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      
        'select ITPC_KhoiPhucDuLieu.KPDLNo,ITPC_KhoiPhucDuLieu.UserDate,B' +
        'users.USERNAME,ITPC_KhoiPhucDuLieu.NguoiDamNhan, ITPC_KhoiPhucDu' +
        'Lieu.DonViHoTro,'
      
        '       ITPC_KhoiPhucDuLieu.NgayHuongDan,TLTen,ITPC_KhoiPhucDuLie' +
        'uChiTiet.NoidungVN,ITPC_KhoiPhucDuLieuChiTiet.NoiDungTW,ThoiGian' +
        'BatDau,ThoiGianKetThuc,ThoiGianLapKeHoach,ThoiGianThucTe,'
      
        #9'   case when TrangThai=1 then '#39'V'#39' else '#39#39' end as TQ, case when ' +
        'TrangThai=0 then '#39'V'#39' else '#39#39' end as KTQ,ITPC_KhoiPhucDuLieu.User' +
        'ID,ITPC_KhoiPhucDuLieu.CFMID'
      'from ITPC_KhoiPhucDuLieuChiTiet'
      
        'left join ITPC_KhoiPhucDuLieu on  ITPC_KhoiPhucDuLieuChiTiet.KPD' +
        'LNo= ITPC_KhoiPhucDuLieu.KPDLNo'
      
        'left join ITPC_DanhSachTenTuongLua  on ITPC_KhoiPhucDuLieuChiTie' +
        't.TLMa=ITPC_DanhSachTenTuongLua.TLMa'
      
        'left join LIY_ERP.dbo.Busers Busers on ITPC_KhoiPhucDuLieu.UserI' +
        'D=Busers.USERID'
      'where  ITPC_KhoiPhucDuLieuChiTiet.KPDLNo=:KPDLNo')
    Left = 16
    Top = 432
    object KPDLQryKPDLNo: TStringField
      FieldName = 'KPDLNo'
      Size = 11
    end
    object KPDLQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object KPDLQryTLTen: TWideStringField
      FieldName = 'TLTen'
      Size = 200
    end
    object KPDLQryNguoiDamNhan: TWideStringField
      FieldName = 'NguoiDamNhan'
      Size = 50
    end
    object KPDLQryDonViHoTro: TWideStringField
      FieldName = 'DonViHoTro'
      Size = 100
    end
    object KPDLQryNgayHuongDan: TDateTimeField
      FieldName = 'NgayHuongDan'
    end
    object KPDLQryNoidungVN: TWideStringField
      FieldName = 'NoidungVN'
      Size = 250
    end
    object KPDLQryNoiDungTW: TStringField
      FieldName = 'NoiDungTW'
      Size = 250
    end
    object KPDLQryThoiGianBatDau: TDateTimeField
      FieldName = 'ThoiGianBatDau'
    end
    object KPDLQryThoiGianKetThuc: TDateTimeField
      FieldName = 'ThoiGianKetThuc'
    end
    object KPDLQryThoiGianLapKeHoach: TStringField
      FieldName = 'ThoiGianLapKeHoach'
    end
    object KPDLQryThoiGianThucTe: TStringField
      FieldName = 'ThoiGianThucTe'
    end
    object KPDLQryTQ: TStringField
      FieldName = 'TQ'
    end
    object KPDLQryKTQ: TStringField
      FieldName = 'KTQ'
    end
    object KPDLQryUserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object KPDLQryCFMID: TStringField
      FieldName = 'CFMID'
      Size = 10
    end
    object KPDLQryUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = KPDLQry
    Left = 24
    Top = 376
  end
  object QApprover: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.122'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  SELECT MAX(CASE WHEN Seq = 1 THEN S_USER_ID END) AS ApplicantI' +
        'D,'
      '  MAX(CASE WHEN Seq = 1 THEN USERNAME END) AS Applicant,'
      '  MAX(CASE WHEN Seq = 1 THEN ApproveDate END) AS ApplicantDate,'
      '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN S_USER_ID END) AS LeaderID,'
      '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN USERNAME END) AS Leader,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'20'#39' THEN ApproveDate END) AS LeaderD' +
        'ate,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN S_USER_ID END) AS ManagerID' +
        ','
      '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN USERNAME END) AS Manager,'
      
        '  MAX(CASE WHEN LEVEL_NO = '#39'30'#39' THEN ApproveDate END) AS Manager' +
        'Date,'
      '  MAX(CASE WHEN Seq = 2 THEN S_USER_ID END) AS HardwareID,'
      '  MAX(CASE WHEN Seq = 2 THEN USERNAME END) AS Hardware,'
      '  MAX(CASE WHEN Seq = 2 THEN ApproveDate END) AS HardwareDate,'
      '  MAX(CASE WHEN Seq = 3 THEN S_USER_ID END) AS HardwareMID,'
      '  MAX(CASE WHEN Seq = 3 THEN USERNAME END) AS HardwareM,'
      '  MAX(CASE WHEN Seq = 3 THEN ApproveDate END) AS HardwareMDate'
      ' FROM ('
      
        '    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 11' +
        '1) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, ORG_DESC, RO' +
        'W_NUMBER() OVER (PARTITION BY LEVEL_NO ORDER BY ApproveDate) AS ' +
        'Seq FROM ('
      
        '      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,Max(ApproveDat' +
        'e) as ApproveDate from ('
      
        '      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE ' +
        '+ '#39' '#39' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,'
      
        '      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT' +
        '(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) DESC) AS RowID FROM ' +
        '[EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS'
      
        '      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() O' +
        'VER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[S' +
        'YS_ORG] where ORG_MAN='#39'A0027'#39' ) AS SYS_ORG ON SYS_ORG.ORG_MAN = ' +
        'SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND='#39'1000'#39
      
        '      WHERE FORM_TABLE = '#39'SGDH'#39' AND STATUS IN ('#39'N'#39', '#39'Z'#39') AND FOR' +
        'M_PRESENTATION LIKE '#39'%20221200011%'#39'  '
      #9'  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC'
      '    ) AS ApproveData'
      '  ) AS ApproveData')
    Left = 12
    Top = 494
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = A4
    PageCount = 0
    Left = 60
    Top = 25
  end
end
