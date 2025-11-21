object NXT_Print_S: TNXT_Print_S
  Left = 435
  Top = 122
  Width = 1367
  Height = 817
  Caption = 'NXT_Print_S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  WindowState = wsMinimized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 16
    Top = 8
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Report_NXT.Query2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      50.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 227
      Width = 1085
      Height = 338
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        894.291666666666700000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object L16: TQRLabel
        Left = 328
        Top = 295
        Width = 110
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          867.833333333333300000
          780.520833333333300000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'KE TOAN TRUONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L14: TQRLabel
        Left = 704
        Top = 295
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1862.666666666667000000
          780.520833333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'THU KHO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 8
        Top = 295
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          780.520833333333300000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BAN GIAM DOC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 973
        Top = 295
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2574.395833333333000000
          780.520833333333300000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NGUOILAP BIEU'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 24
        Top = 279
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          738.187500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20027#31649#37096
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 352
        Top = 279
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          931.333333333333300000
          738.187500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26371#35336#38263
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 712
        Top = 279
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1883.833333333333000000
          738.187500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20489#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 1008
        Top = 279
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2667.000000000000000000
          738.187500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21015#34920
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 600
        Top = 29
        Width = 481
        Height = 239
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          632.354166666666700000
          1587.500000000000000000
          76.729166666666670000
          1272.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object L17: TQRLabel
        Left = 612
        Top = 34
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          89.958333333333330000
          42.333333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object L15: TQRLabel
        Left = 612
        Top = 59
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          156.104166666666700000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NK'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 601
        Top = 55
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          145.520833333333300000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 612
        Top = 82
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          216.958333333333300000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 612
        Top = 106
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          280.458333333333300000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'KD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 601
        Top = 79
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          209.020833333333300000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 640
        Top = 30
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          1693.333333333333000000
          79.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText19: TQRDBText
        Left = 641
        Top = 35
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1695.979166666667000000
          92.604166666666680000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText20: TQRDBText
        Left = 642
        Top = 59
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          156.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText21: TQRDBText
        Left = 642
        Top = 83
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          219.604166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText22: TQRDBText
        Left = 642
        Top = 107
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          283.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText23: TQRDBText
        Left = 694
        Top = 35
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1836.208333333333000000
          92.604166666666680000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText24: TQRDBText
        Left = 694
        Top = 59
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.132075471698120000
          1835.509433962264000000
          155.754716981132100000
          141.377358490566000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText25: TQRDBText
        Left = 694
        Top = 83
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1836.208333333333000000
          219.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText26: TQRDBText
        Left = 694
        Top = 107
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1836.208333333333000000
          283.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText27: TQRDBText
        Left = 749
        Top = 35
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1981.729166666667000000
          92.604166666666670000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText28: TQRDBText
        Left = 805
        Top = 35
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2129.895833333333000000
          92.604166666666670000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText29: TQRDBText
        Left = 750
        Top = 59
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1984.375000000000000000
          156.104166666666700000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText30: TQRDBText
        Left = 807
        Top = 59
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2135.187500000000000000
          156.104166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText31: TQRDBText
        Left = 750
        Top = 83
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1984.375000000000000000
          219.604166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText32: TQRDBText
        Left = 805
        Top = 83
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2129.895833333333000000
          219.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText33: TQRDBText
        Left = 751
        Top = 107
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          283.104166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText34: TQRDBText
        Left = 807
        Top = 107
        Width = 50
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2135.187500000000000000
          283.104166666666700000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText35: TQRDBText
        Left = 859
        Top = 35
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.132075471698120000
          2274.018867924528000000
          93.452830188679260000
          146.169811320754700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText36: TQRDBText
        Left = 918
        Top = 35
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          92.604166666666680000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText37: TQRDBText
        Left = 862
        Top = 59
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          156.104166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText38: TQRDBText
        Left = 918
        Top = 59
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          156.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText39: TQRDBText
        Left = 861
        Top = 83
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2278.062500000000000000
          219.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText40: TQRDBText
        Left = 918
        Top = 83
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          219.604166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText41: TQRDBText
        Left = 862
        Top = 107
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          283.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText42: TQRDBText
        Left = 918
        Top = 107
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          283.104166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText43: TQRDBText
        Left = 974
        Top = 35
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2577.041666666667000000
          92.604166666666680000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText44: TQRDBText
        Left = 1030
        Top = 35
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2725.208333333333000000
          92.604166666666680000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_TC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText45: TQRDBText
        Left = 975
        Top = 59
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          156.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText46: TQRDBText
        Left = 1030
        Top = 59
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2725.208333333333000000
          156.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_NK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText47: TQRDBText
        Left = 974
        Top = 83
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2577.041666666667000000
          219.604166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText48: TQRDBText
        Left = 1030
        Top = 83
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2725.208333333333000000
          219.604166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_HD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText50: TQRDBText
        Left = 974
        Top = 107
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2577.041666666667000000
          283.104166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRLabel45: TQRLabel
        Left = 364
        Top = 6
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          963.083333333333300000
          15.875000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TONG CONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel46: TQRLabel
        Left = 380
        Top = 18
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          47.625000000000000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32317#20849
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRExpr2: TQRExpr
        Left = 637
        Top = 3
        Width = 52
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1685.395833333333000000
          7.937500000000000000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(LastQty)'
        Mask = '#,##0.0000'
        FontSize = 5
      end
      object QRExpr1: TQRExpr
        Left = 693
        Top = 3
        Width = 53
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          1833.562500000000000000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(LastACC)'
        Mask = '#,##0'
        FontSize = 5
      end
      object QRExpr3: TQRExpr
        Left = 747
        Top = 3
        Width = 53
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          1976.437500000000000000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(RKQty)'
        Mask = '#,##0.0000'
        FontSize = 5
      end
      object QRExpr4: TQRExpr
        Left = 801
        Top = 3
        Width = 55
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          2119.312500000000000000
          7.937500000000000000
          145.520833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(RKACC)'
        Mask = '#,##0'
        FontSize = 5
      end
      object QRExpr5: TQRExpr
        Left = 859
        Top = 2
        Width = 56
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          2272.770833333333000000
          5.291666666666667000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(CKQty)'
        Mask = '#,##0.0000'
        FontSize = 5
      end
      object QRExpr6: TQRExpr
        Left = 917
        Top = 2
        Width = 56
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          2426.229166666667000000
          5.291666666666667000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(CKACC)'
        Mask = '#,##0'
        FontSize = 5
      end
      object QRExpr7: TQRExpr
        Left = 974
        Top = 2
        Width = 53
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          2577.041666666667000000
          5.291666666666667000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(RemQty)'
        Mask = '#,##0.0000'
        FontSize = 5
      end
      object QRExpr8: TQRExpr
        Left = 1027
        Top = 1
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          2717.270833333333000000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(RemACC)'
        Mask = '#,##0'
        FontSize = 5
      end
      object QRDBText53: TQRDBText
        Left = 1028
        Top = 106
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2719.916666666667000000
          280.458333333333300000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRShape48: TQRShape
        Left = 601
        Top = 102
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          269.875000000000000000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 693
        Top = 29
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          1833.562500000000000000
          76.729166666666670000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 749
        Top = 29
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          1981.729166666667000000
          76.729166666666670000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 804
        Top = 30
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          2127.250000000000000000
          79.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 860
        Top = 30
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          2275.416666666667000000
          79.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 917
        Top = 30
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          2426.229166666667000000
          79.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 1028
        Top = 29
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          2719.916666666667000000
          76.729166666666670000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 973
        Top = 29
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.062500000000000000
          2574.395833333333000000
          76.729166666666670000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 601
        Top = 124
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          328.083333333333300000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 601
        Top = 149
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          394.229166666666700000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 601
        Top = 173
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          457.729166666666700000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 601
        Top = 198
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          523.875000000000000000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 611
        Top = 130
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          343.958333333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TC1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel51: TQRLabel
        Left = 611
        Top = 154
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          407.458333333333300000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NK1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 611
        Top = 178
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          470.958333333333300000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HD1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel53: TQRLabel
        Left = 611
        Top = 202
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          534.458333333333300000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'KD1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText49: TQRDBText
        Left = 641
        Top = 130
        Width = 50
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1695.979166666667000000
          343.958333333333300000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText54: TQRDBText
        Left = 642
        Top = 155
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          410.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText55: TQRDBText
        Left = 642
        Top = 179
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          473.604166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText56: TQRDBText
        Left = 642
        Top = 203
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          537.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText57: TQRDBText
        Left = 695
        Top = 130
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1838.854166666667000000
          343.958333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText58: TQRDBText
        Left = 694
        Top = 155
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1836.208333333333000000
          410.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText59: TQRDBText
        Left = 694
        Top = 179
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1836.208333333333000000
          473.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText60: TQRDBText
        Left = 695
        Top = 203
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1838.854166666667000000
          537.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText61: TQRDBText
        Left = 750
        Top = 130
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1984.375000000000000000
          343.958333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText62: TQRDBText
        Left = 750
        Top = 179
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1984.375000000000000000
          473.604166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText63: TQRDBText
        Left = 751
        Top = 155
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          410.104166666666700000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText64: TQRDBText
        Left = 751
        Top = 202
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          534.458333333333300000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText65: TQRDBText
        Left = 805
        Top = 130
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2129.895833333333000000
          343.958333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText66: TQRDBText
        Left = 806
        Top = 155
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2132.541666666667000000
          410.104166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText67: TQRDBText
        Left = 805
        Top = 179
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2129.895833333333000000
          473.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText68: TQRDBText
        Left = 806
        Top = 202
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2132.541666666667000000
          534.458333333333300000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText69: TQRDBText
        Left = 861
        Top = 129
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2278.062500000000000000
          341.312500000000000000
          145.520833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText70: TQRDBText
        Left = 862
        Top = 155
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          410.104166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText71: TQRDBText
        Left = 861
        Top = 179
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2278.062500000000000000
          473.604166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText72: TQRDBText
        Left = 862
        Top = 202
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          534.458333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText73: TQRDBText
        Left = 918
        Top = 129
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          341.312500000000000000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText74: TQRDBText
        Left = 918
        Top = 155
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          410.104166666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText75: TQRDBText
        Left = 918
        Top = 179
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          473.604166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText76: TQRDBText
        Left = 918
        Top = 107
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          283.104166666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_KD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText77: TQRDBText
        Left = 918
        Top = 202
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          534.458333333333300000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText78: TQRDBText
        Left = 975
        Top = 129
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          341.312500000000000000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText79: TQRDBText
        Left = 975
        Top = 155
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          410.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText80: TQRDBText
        Left = 975
        Top = 179
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          473.604166666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText82: TQRDBText
        Left = 1029
        Top = 129
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2722.562500000000000000
          341.312500000000000000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_TC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText83: TQRDBText
        Left = 1029
        Top = 155
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2722.562500000000000000
          410.104166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_NK1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText84: TQRDBText
        Left = 1030
        Top = 179
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2725.208333333333000000
          473.604166666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_HD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText85: TQRDBText
        Left = 1029
        Top = 202
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2722.562500000000000000
          534.458333333333300000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRShape59: TQRShape
        Left = 601
        Top = 221
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          584.729166666666700000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel54: TQRLabel
        Left = 613
        Top = 225
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1621.895833333333000000
          595.312500000000000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText86: TQRDBText
        Left = 642
        Top = 226
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          597.958333333333300000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText87: TQRDBText
        Left = 695
        Top = 226
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1838.854166666667000000
          597.958333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText88: TQRDBText
        Left = 751
        Top = 226
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          597.958333333333300000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText89: TQRDBText
        Left = 806
        Top = 226
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2132.541666666667000000
          597.958333333333300000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText90: TQRDBText
        Left = 862
        Top = 226
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          597.958333333333300000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText91: TQRDBText
        Left = 918
        Top = 226
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          597.958333333333300000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText81: TQRDBText
        Left = 975
        Top = 202
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          534.458333333333300000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_KD1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText92: TQRDBText
        Left = 975
        Top = 226
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          597.958333333333300000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText93: TQRDBText
        Left = 1029
        Top = 225
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2722.562500000000000000
          595.312500000000000000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_NQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRLabel55: TQRLabel
        Left = 605
        Top = 248
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1600.729166666667000000
          656.166666666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NKNQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape60: TQRShape
        Left = 601
        Top = 243
        Width = 479
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1590.145833333333000000
          642.937500000000000000
          1267.354166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText94: TQRDBText
        Left = 642
        Top = 248
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          656.166666666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastQty_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText95: TQRDBText
        Left = 695
        Top = 248
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1838.854166666667000000
          656.166666666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'LastACC_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText96: TQRDBText
        Left = 751
        Top = 248
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          656.166666666666700000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKQty_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText97: TQRDBText
        Left = 806
        Top = 248
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2132.541666666667000000
          656.166666666666700000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RKACC_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText98: TQRDBText
        Left = 862
        Top = 248
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2280.708333333333000000
          656.166666666666700000
          140.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKQty_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText99: TQRDBText
        Left = 918
        Top = 248
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2428.875000000000000000
          656.166666666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'CKACC_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText100: TQRDBText
        Left = 975
        Top = 247
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2579.687500000000000000
          653.520833333333300000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemQty_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText101: TQRDBText
        Left = 1029
        Top = 247
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2722.562500000000000000
          653.520833333333300000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query1
        DataField = 'RemACC_NKNQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 171
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        452.437500000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object L1: TQRLabel
        Left = 0
        Top = 1
        Width = 186
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          0.000000000000000000
          2.645833333333333000
          492.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CTY TNHH TY XUAN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object L2: TQRLabel
        Left = 0
        Top = 24
        Width = 169
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          0.000000000000000000
          63.500000000000000000
          447.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20740#26149#36012#20219#26377#38480#20844#21496
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object L21: TQRLabel
        Left = 136
        Top = 127
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          359.833333333333300000
          336.020833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NGUON'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object L22: TQRLabel
        Left = 174
        Top = 127
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          460.375000000000000000
          336.020833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CODE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object L24: TQRLabel
        Left = 377
        Top = 127
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          997.479166666666700000
          336.020833333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TEN VAT TU'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object L25: TQRLabel
        Left = 590
        Top = 128
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1561.041666666667000000
          338.666666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DON GIA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 224
        Top = 127
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          592.666666666666700000
          336.020833333333300000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MA VT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 526
        Top = 128
        Width = 19
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1391.708333333333000000
          338.666666666666700000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DVT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 558
        Top = 128
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1476.375000000000000000
          338.666666666666700000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TK'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object L18: TQRLabel
        Left = 2
        Top = 127
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          5.291666666666667000
          336.020833333333300000
          42.333333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'STT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel9: TQRLabel
        Left = 23
        Top = 127
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          60.854166666666670000
          336.020833333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'KHO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object L20: TQRLabel
        Left = 58
        Top = 127
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          153.458333333333300000
          336.020833333333300000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'MA GOP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 48
        Width = 537
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          127.000000000000000000
          1420.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BANG TONG HOP NHAP XUAT TON '#20837#20986#24235#23384#22577#21578#32156#21512#34920
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 0
        Top = 99
        Width = 129
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          261.937500000000000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TAI KHOAN:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 978
        Top = 146
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2587.625000000000000000
          386.291666666666700000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S.LUONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel17: TQRLabel
        Left = 1037
        Top = 146
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2743.729166666667000000
          386.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SO TIEN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 865
        Top = 145
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2288.645833333333000000
          383.645833333333300000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S.LUONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel11: TQRLabel
        Left = 926
        Top = 145
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2450.041666666667000000
          383.645833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SO TIEN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel12: TQRLabel
        Left = 753
        Top = 145
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1992.312500000000000000
          383.645833333333300000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S.LUONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel13: TQRLabel
        Left = 812
        Top = 145
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2148.416666666667000000
          383.645833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SO TIEN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel14: TQRLabel
        Left = 700
        Top = 145
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1852.083333333333000000
          383.645833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SO TIEN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 640
        Top = 144
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1693.333333333333000000
          381.000000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S.LUONG'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 977
        Top = 128
        Width = 99
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2584.979166666667000000
          338.666666666666700000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TON CUOIKY'#26376#24213#24235#23384
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 888
        Top = 128
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2349.500000000000000000
          338.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'XUAT KHO '#20986
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 776
        Top = 128
        Width = 63
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2053.166666666667000000
          338.666666666666700000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NHAP KHO '#20837
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 640
        Top = 128
        Width = 99
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1693.333333333333000000
          338.666666666666700000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TON DAU KY'#19978#26376#24235#23384
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText18: TQRDBText
        Left = 116
        Top = 99
        Width = 65
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.905660377358490000
          306.716981132075500000
          261.188679245283000000
          172.528301886792400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel6: TQRLabel
        Left = 0
        Top = 73
        Width = 68
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          0.000000000000000000
          193.145833333333300000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'THANG'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText52: TQRDBText
        Left = 161
        Top = 73
        Width = 81
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          425.979166666666700000
          193.145833333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'KCYEAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText51: TQRDBText
        Left = 77
        Top = 73
        Width = 100
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          203.729166666666700000
          193.145833333333300000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'KCMONTH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel28: TQRLabel
        Left = 111
        Top = 73
        Width = 46
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          293.687500000000000000
          193.145833333333300000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NAM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape25: TQRShape
        Left = 1
        Top = 170
        Width = 1082
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          449.791666666666700000
          2862.791666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 125
        Width = 1084
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          330.729166666666700000
          2868.083333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 1084
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          2868.083333333333000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 0
        Top = 127
        Width = 1
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125000000000000000
          0.000000000000000000
          336.020833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel29: TQRLabel
        Left = 1
        Top = 149
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2.645833333333333000
          394.229166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38918#24207
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape29: TQRShape
        Left = 0
        Top = 125
        Width = 1084
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          330.729166666666700000
          2868.083333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 0
        Top = 144
        Width = 1084
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          381.000000000000000000
          2868.083333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 23
        Top = 149
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          60.854166666666670000
          394.229166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20489#24235
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel31: TQRLabel
        Left = 58
        Top = 150
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          153.458333333333300000
          396.875000000000000000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #26009#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel32: TQRLabel
        Left = 142
        Top = 150
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          375.708333333333300000
          396.875000000000000000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20358#28304
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel33: TQRLabel
        Left = 175
        Top = 145
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          463.020833333333300000
          383.645833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #28023#38364
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel34: TQRLabel
        Left = 175
        Top = 154
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          463.020833333333300000
          407.458333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #32232#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape31: TQRShape
        Left = 22
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          58.208333333333320000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 50
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          132.291666666666700000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 136
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          359.833333333333300000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel35: TQRLabel
        Left = 227
        Top = 150
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          600.604166666666700000
          396.875000000000000000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26009#34399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel36: TQRLabel
        Left = 380
        Top = 150
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1005.416666666667000000
          396.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26448#26009#21517#31281
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel37: TQRLabel
        Left = 526
        Top = 149
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1391.708333333333000000
          394.229166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35336#31639
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel38: TQRLabel
        Left = 595
        Top = 149
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1574.270833333333000000
          394.229166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21934#20729
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel39: TQRLabel
        Left = 556
        Top = 149
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1471.083333333333000000
          394.229166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25142#21475
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape34: TQRShape
        Left = 173
        Top = 128
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          457.729166666666700000
          338.666666666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 202
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          534.458333333333300000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 275
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          727.604166666666800000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 521
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1378.479166666667000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 551
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1457.854166666667000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 580
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1534.583333333333000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 636
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1682.750000000000000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 748
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1979.083333333333000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 861
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          2278.062500000000000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 973
        Top = 126
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          2574.395833333333000000
          333.375000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel40: TQRLabel
        Left = 651
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1722.437500000000000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel41: TQRLabel
        Left = 708
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1873.250000000000000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#38989
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape44: TQRShape
        Left = 692
        Top = 145
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1830.916666666667000000
          383.645833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 804
        Top = 144
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          2127.250000000000000000
          381.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 916
        Top = 145
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          2423.583333333333000000
          383.645833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 1028
        Top = 145
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          2719.916666666667000000
          383.645833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel42: TQRLabel
        Left = 763
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2018.770833333333000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel43: TQRLabel
        Left = 820
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2169.583333333333000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#38989
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel44: TQRLabel
        Left = 876
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2317.750000000000000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel47: TQRLabel
        Left = 933
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2468.562500000000000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#38989
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel48: TQRLabel
        Left = 990
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2619.375000000000000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25976#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel49: TQRLabel
        Left = 1045
        Top = 155
        Width = 21
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2764.895833333333000000
          410.104166666666700000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#38989
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object khu: TQRLabel
        Left = 194
        Top = 98
        Width = 36
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          513.291666666666700000
          259.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'khu'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 209
      Width = 1085
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -6
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        47.625000000000000000
        2870.729166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 52
        Top = 5
        Width = 84
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          136.584905660377400000
          14.377358490566040000
          222.849056603773600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'MaGop'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText2: TQRDBText
        Left = 277
        Top = 6
        Width = 243
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          732.895833333333300000
          15.875000000000000000
          642.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'YWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText4: TQRDBText
        Left = 139
        Top = 5
        Width = 30
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          366.622641509434000000
          14.377358490566040000
          79.075471698113200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'HGLB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText5: TQRDBText
        Left = 173
        Top = 5
        Width = 25
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          457.679245283018900000
          14.377358490566040000
          67.094339622641510000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'HGBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRSysData1: TQRSysData
        Left = 1
        Top = 5
        Width = 20
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.754716981132080000
          2.396226415094340000
          14.377358490566040000
          52.716981132075480000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 5
      end
      object QRDBText10: TQRDBText
        Left = 582
        Top = 3
        Width = 52
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1539.875000000000000000
          7.937500000000000000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'TotPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText6: TQRDBText
        Left = 522
        Top = 5
        Width = 23
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1381.125000000000000000
          13.229166666666670000
          60.854166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText16: TQRDBText
        Left = 24
        Top = 5
        Width = 25
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          62.301886792452840000
          14.377358490566040000
          67.094339622641510000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CKBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText11: TQRDBText
        Left = 553
        Top = 5
        Width = 22
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          1464.094339622642000000
          14.377358490566040000
          57.509433962264150000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText7: TQRDBText
        Left = 205
        Top = 5
        Width = 69
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.150943396226420000
          541.547169811320800000
          14.377358490566040000
          182.113207547169800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CLBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText3: TQRDBText
        Left = 639
        Top = 2
        Width = 51
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1690.687500000000000000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'LastQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText8: TQRDBText
        Left = 694
        Top = 3
        Width = 51
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1836.208333333333000000
          7.937500000000000000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'LastACC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText9: TQRDBText
        Left = 751
        Top = 3
        Width = 49
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          1987.020833333333000000
          7.937500000000000000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'RKQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText12: TQRDBText
        Left = 806
        Top = 2
        Width = 51
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          2132.541666666667000000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'RKACC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText13: TQRDBText
        Left = 862
        Top = 2
        Width = 52
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          2280.708333333333000000
          5.291666666666667000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CKQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText14: TQRDBText
        Left = 917
        Top = 2
        Width = 54
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          2426.229166666667000000
          5.291666666666667000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'CKACC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText15: TQRDBText
        Left = 976
        Top = 2
        Width = 50
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          2582.333333333333000000
          5.291666666666667000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'RemQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRDBText17: TQRDBText
        Left = 1030
        Top = 3
        Width = 51
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          2725.208333333333000000
          7.937500000000000000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Report_NXT.Query2
        DataField = 'RemACC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 5
      end
      object QRShape6: TQRShape
        Left = 50
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          132.291666666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 22
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.716981132075480000
          57.509433962264150000
          0.000000000000000000
          2.396226415094340000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 136
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          359.833333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 173
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          457.729166666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 202
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          534.458333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 275
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          727.604166666666800000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 521
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1378.479166666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 551
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1457.854166666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 580
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1534.583333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 636
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1682.750000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 692
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1830.916666666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 748
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1979.083333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 804
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2127.250000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 861
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2278.062500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 916
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2423.583333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 973
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2574.395833333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 1028
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2719.916666666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 1084
        Top = 1
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          2868.083333333333000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 0
        Top = 1
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object Mas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'if   object_id('#39'tempdb..#CGZLP'#39')   is   not   null   '
      'begin'
      'drop table #CGZLP'
      'end'
      ''
      'select  *'
      'into #CGZLP from CGZLS'
      'where CGNO=:CGNO'
      ''
      'alter table #CGZLP add ZLNO text'
      'alter table #CGZLP add FDAll text'
      ''
      
        'select  #CGZLP.*,CGZL.MEMO,CLZL.YWPM,CLZL.DWBH,Convert(varchar(2' +
        '00),'#39#39') as PartAll'
      'from #CGZLP'
      'left join CLZL on CLZL.CLDH= #CGZLP.CLBH '
      'left join CGZL on CGZL.CGNO=#CGZLP.CGNO'
      'order by #CGZLP.CLBH')
    UpdateObject = UpdateSQL1
    Left = 368
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object MasCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object MasCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MasXqQty: TCurrencyField
      FieldName = 'XqQty'
      DisplayFormat = '#,##0.0'
    end
    object MasQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object MasUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object MasVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object MasMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object MasBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'MM/dd'
    end
    object MasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object MasUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'MM/dd'
    end
    object MasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object MasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object MasYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MasDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MasZLNO: TMemoField
      FieldName = 'ZLNO'
      BlobType = ftMemo
    end
    object MasMEMO_1: TStringField
      FieldName = 'MEMO_1'
      FixedChar = True
      Size = 50
    end
    object MasREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object MasPartAll: TStringField
      FieldName = 'PartAll'
    end
    object MasFDAll: TMemoField
      FieldName = 'FDAll'
      BlobType = ftMemo
    end
  end
  object Det: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select CGZLSS.ZLBH,CGZLSS.Qty,CGZLSS.XXCC,KFXXZL.XIEMING,IsNull(' +
        'KFXXZL.ARTICLE,'#39'ALL'#39') as ARTICLE,KFXXZL.FD'
      'from CGZLSS'
      'left join YPZL  on CGZLSS.ZLBH=YPZL.YPDH'
      
        'left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing  and KFXXZL.SheH' +
        'ao=YPZL.SheHao'
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH')
    Left = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Mas
    Left = 352
    Top = 144
  end
  object UpdateSQL1: TUpdateSQL
    Left = 384
    Top = 144
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 414
    Top = 142
  end
  object BWQY: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      'select * from ('
      'select bwzl.ywsm from YPZLS'
      'inner join clzl on ypzls.clbh=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where YPZLS.CLBH=:CLBH and'
      'YPDH in (select ypzl.YPDH from ypzl '
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select bwzl.ywsm from YPZLS'
      'inner join clzhzl on clzhzl.cldh=YPZLS.clbh and clzhzl.syl>0'
      'inner join clzl on clzhzl.cldh1=clzl.cldh and clzl.clzmlb='#39'N'#39
      'left join bwzl on bwzl.bwdh=YPZLS.bwbh'
      'where clzhzl.cldh1=:CLBH  and'
      'YPDH in (select ypzl.YPDH from ypzl'
      'left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      'where CGZLSS.CGNO=:CGNO)'
      'Group by bwzl.ywsm'
      'union all'
      'select distinct clzhzl2.ywsm'
      'from ( select bwzl.ywsm as ywsm,clzhzl.CLDH1 as CLBH '
      
        '  from ypzls ypzls inner join clzhzl ON  ypzls.CLBH = CLZHZL.cld' +
        'h'
      '  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      '  left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      '  WHERE YPDH  in (select ypzl.YPDH from ypzl'
      '  left join CGZLSS on ypzl.YPDH=CGZLSS.zlbh'
      
        '  where CGZLSS.CGNO=:CGNO)  and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'where clzhzl.cldh1=:CLBH    and CLZHZL.SYL>0   and clzl.clzmlb='#39 +
        'N'#39
      ') as YPZLS'
      '')
    Left = 401
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object BWQYywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select CWCLZL.KCYEAR,CWCLZL.KCMONTH, CWCLZL.CWBH, '
      
        '       sum(isnull(LastQty_TC,0)) as LastQty_TC, sum(isnull(LastQ' +
        'ty_NK,0)) as LastQty_NK, sum(isnull(LastQty_HD,0)) as LastQty_HD' +
        ', sum(isnull(LastQty_KD,0)) as LastQty_KD,'
      
        #9#9'    sum(isnull(LastACC_TC,0)) as LastACC_TC, sum(isnull(LastAC' +
        'C_NK,0)) as LastACC_NK, sum(isnull(LastACC_HD,0)) as LastACC_HD,' +
        ' sum(isnull(LastACC_KD,0)) as LastACC_KD,'
      
        '   '#9#9'sum(isnull(RKQty_TC,0)) as RKQty_TC, sum(isnull(RKQty_NK,0)' +
        ') as RKQty_NK, sum(isnull(RKQty_HD,0)) as RKQty_HD, sum(isnull(R' +
        'KQty_KD,0)) as RKQty_KD,'
      
        '   '#9#9'sum(isnull(RKACC_TC,0)) as RKACC_TC, sum(isnull(RKACC_NK,0)' +
        ') as RKACC_NK, sum(isnull(RKACC_HD,0)) as RKACC_HD, sum(isnull(R' +
        'KACC_KD,0)) as RKACC_KD,'
      
        '   '#9#9'sum(isnull(CKQty_TC,0)) as CKQty_TC, sum(isnull(CKQty_NK,0)' +
        ') as CKQty_NK, sum(isnull(CKQty_HD,0)) as CKQty_HD, sum(isnull(C' +
        'KQty_KD,0)) as CKQty_KD,'
      
        '   '#9#9'sum(isnull(CKACC_TC,0)) + sum(isnull(VNACC_TC,0)) as CKACC_' +
        'TC, sum(isnull(CKACC_NK,0)) + sum(isnull(VNACC_NK,0)) as CKACC_N' +
        'K,'
      
        '       sum(isnull(CKACC_HD,0)) + sum(isnull(VNACC_HD,0))as CKACC' +
        '_HD, sum(isnull(CKACC_KD,0)) + sum(isnull(VNACC_KD,0)) as CKACC_' +
        'KD,'
      
        '   '#9#9'sum(isnull(RemQty_TC,0)) as RemQty_TC, sum(isnull(RemQty_NK' +
        ',0)) as RemQty_NK, sum(isnull(RemQty_HD,0)) as RemQty_HD, sum(is' +
        'null(RemQty_KD,0)) as RemQty_KD, '
      
        '   '#9#9'sum(isnull(RemACC_TC,0)) - sum(isnull(VNACC_TC,0)) as RemAC' +
        'C_TC, sum(isnull(RemACC_NK,0)) - sum(isnull(VNACC_NK,0)) as RemA' +
        'CC_NK,'
      
        '       sum(isnull(RemACC_HD,0)) - sum(isnull(VNACC_HD,0)) as Rem' +
        'ACC_HD, sum(isnull(RemACC_KD,0))- sum(isnull(VNACC_KD,0))  as Re' +
        'mACC_KD'
      'from ( select CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,'
      
        ' '#9#9'         case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.La' +
        'stQty,0)) end  as LastQty_TC, '
      
        '     '#9#9'     case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.L' +
        'astQty,0)) end  as LastQty_NK, '
      
        '           '#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.' +
        'LastQty,0)) end  as LastQty_HD, '
      
        '           '#9' case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL.' +
        'LastQty,0)) end  as LastQty_KD, '
      
        '          '#9#9' case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.L' +
        'astACC,0)) end  as LastACC_TC, '
      
        #9#9'           case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.' +
        'LastACC,0)) end  as LastACC_NK, '
      
        '            '#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL' +
        '.LastACC,0)) end  as LastACC_HD, '
      
        '              case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL' +
        '.LastACC,0)) end  as LastACC_KD, '
      
        '              case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.' +
        'RKQty,0)) end  as RKQty_TC,     '
      
        '           '#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.' +
        'RKQty,0)) end  as RKQty_NK,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.R' +
        'KQty,0)) end  as RKQty_HD,     '
      
        '           '#9' case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL.' +
        'RKQty,0)) end  as RKQty_KD,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.RK' +
        'ACC,0)) end  as RKACC_TC,     '
      
        '           '#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.' +
        'RKACC,0)) end  as RKACC_NK,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.R' +
        'KACC,0)) end  as RKACC_HD,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL.R' +
        'KACC,0)) end  as RKACC_KD,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.CK' +
        'Qty,0)) end  as CKQty_TC,     '
      
        '          '#9#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.' +
        'CKQty,0)) end  as CKQty_NK,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.C' +
        'KQty,0)) end  as CKQty_HD,     '
      
        '              case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL' +
        '.CKQty,0)) end  as CKQty_KD,     '
      
        #9#9'           case when CWCLZL.HGLB='#39'TC'#39' then  sum(isnull(CWCLZL.' +
        'CKACC,0)) end  as CKACC_TC,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.C' +
        'KACC,0)) end  as CKACC_NK,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.C' +
        'KACC,0)) end  as CKACC_HD,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL.C' +
        'KACC,0)) end  as CKACC_KD,     '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.Re' +
        'mQty,0)) end  as RemQty_TC,   '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.R' +
        'emQty,0)) end  as RemQty_NK,   '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.R' +
        'emQty,0)) end  as RemQty_HD,   '
      
        '            '#9' case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL' +
        '.RemQty,0)) end  as RemQty_KD,   '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'TC'#39' then'#9'sum(isnull(CWCLZL.Re' +
        'mACC,0)) end  as RemACC_TC,   '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'NK'#39' then  sum(isnull(CWCLZL.R' +
        'emACC,0)) end  as RemACC_NK,   '
      
        '         '#9#9' case when CWCLZL.HGLB='#39'HD'#39' then  sum(isnull(CWCLZL.R' +
        'emACC,0)) end  as RemACC_HD,   '
      
        #9#9'           case when CWCLZL.HGLB='#39'KD'#39' then  sum(isnull(CWCLZL.' +
        'RemACC,0)) end  as RemACC_KD,   '
      
        '           '#9' case when CWCLCOUNT.HGLB='#39'TC'#39' then  sum(isnull(CWCL' +
        'COUNT.VNACC,0)) end  as VNACC_TC,'
      
        '         '#9#9' case when CWCLCOUNT.HGLB='#39'NK'#39' then  sum(isnull(CWCLC' +
        'OUNT.VNACC,0)) end  as VNACC_NK,'
      
        #9#9'           case when CWCLCOUNT.HGLB='#39'HD'#39' then  sum(isnull(CWCL' +
        'COUNT.VNACC,0)) end  as VNACC_HD,'
      
        '           '#9' case when CWCLCOUNT.HGLB='#39'KD'#39' then  sum(isnull(CWCL' +
        'COUNT.VNACC,0)) end  as VNACC_KD '
      '       from  CWCLZL_HG CWCLZL'
      
        '       left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCL' +
        'ZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH '
      
        '       and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.' +
        'HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH'
      '       left join CLZL on  CLZL.CLDH= CWCLZL.CLBH'
      
        '       left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CW' +
        'CLZL.CKBH '
      '       left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      'where CWCLZL.KCYEAR='#39'2020'#39
      '      and CWCLZL.KCMONTH='#39'01'#39
      '   '#9' and KCZLS.CWBH ='#39'152'#39
      '      and CWCLZL.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CWCLZL.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')'
      ' and KCCK.GSBH='#39'CDC'#39
      
        '      group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,CWCLZL.HG' +
        'LB,KCZLS.CWBH,CWCLCOUNT.HGLB) CWCLZL '
      'group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CWBH'
      '')
    Left = 536
    Top = 24
    object StringField8: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'LastQty_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'LastQty_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'LastQty_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'LastQty_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'LastACC_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField10: TCurrencyField
      FieldName = 'LastACC_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField11: TCurrencyField
      FieldName = 'LastACC_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField12: TCurrencyField
      FieldName = 'LastACC_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField13: TCurrencyField
      FieldName = 'RKQty_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField14: TCurrencyField
      FieldName = 'RKQty_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField15: TCurrencyField
      FieldName = 'RKQty_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField16: TCurrencyField
      FieldName = 'RKQty_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField17: TCurrencyField
      FieldName = 'RKACC_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField18: TCurrencyField
      FieldName = 'RKACC_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField19: TCurrencyField
      FieldName = 'RKACC_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField20: TCurrencyField
      FieldName = 'RKACC_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField21: TCurrencyField
      FieldName = 'CKQty_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField22: TCurrencyField
      FieldName = 'CKQty_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField23: TCurrencyField
      FieldName = 'CKQty_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField24: TCurrencyField
      FieldName = 'CKQty_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField25: TCurrencyField
      FieldName = 'CKACC_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField26: TCurrencyField
      FieldName = 'CKACC_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField27: TCurrencyField
      FieldName = 'CKACC_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField28: TCurrencyField
      FieldName = 'CKACC_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField29: TCurrencyField
      FieldName = 'RemQty_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField30: TCurrencyField
      FieldName = 'RemQty_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField31: TCurrencyField
      FieldName = 'RemQty_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField32: TCurrencyField
      FieldName = 'RemQty_KD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField33: TCurrencyField
      FieldName = 'RemACC_TC'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField34: TCurrencyField
      FieldName = 'RemACC_NK'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField35: TCurrencyField
      FieldName = 'RemACC_HD'
      EditFormat = '#.##'
      currency = False
    end
    object CurrencyField36: TCurrencyField
      FieldName = 'RemACC_KD'
      EditFormat = '#.##'
      currency = False
    end
    object Query1LastQty_TC1: TCurrencyField
      FieldName = 'LastQty_TC1'
      EditFormat = '#.##'
    end
    object Query1LastQty_NK1: TCurrencyField
      FieldName = 'LastQty_NK1'
      EditFormat = '#.##'
    end
    object Query1LastQty_HD1: TCurrencyField
      FieldName = 'LastQty_HD1'
      EditFormat = '#.##'
    end
    object Query1LastQty_KD1: TCurrencyField
      FieldName = 'LastQty_KD1'
      EditFormat = '#.##'
    end
    object Query1LastACC_TC1: TCurrencyField
      FieldName = 'LastACC_TC1'
      EditFormat = '#.##'
    end
    object Query1LastACC_NK1: TCurrencyField
      FieldName = 'LastACC_NK1'
      EditFormat = '#.##'
    end
    object Query1LastACC_HD1: TCurrencyField
      FieldName = 'LastACC_HD1'
      EditFormat = '#.##'
    end
    object Query1LastACC_KD1: TCurrencyField
      FieldName = 'LastACC_KD1'
      EditFormat = '#.##'
    end
    object Query1RKQty_TC1: TCurrencyField
      FieldName = 'RKQty_TC1'
      EditFormat = '#.##'
    end
    object Query1RKQty_NK1: TCurrencyField
      FieldName = 'RKQty_NK1'
      EditFormat = '#.##'
    end
    object Query1RKQty_HD1: TCurrencyField
      FieldName = 'RKQty_HD1'
      EditFormat = '#.##'
    end
    object Query1RKQty_KD1: TCurrencyField
      FieldName = 'RKQty_KD1'
      EditFormat = '#.##'
    end
    object Query1RKACC_TC1: TCurrencyField
      FieldName = 'RKACC_TC1'
      EditFormat = '#.##'
    end
    object Query1RKACC_NK1: TCurrencyField
      FieldName = 'RKACC_NK1'
      EditFormat = '#.##'
    end
    object Query1RKACC_HD1: TCurrencyField
      FieldName = 'RKACC_HD1'
      EditFormat = '#.##'
    end
    object Query1RKACC_KD1: TCurrencyField
      FieldName = 'RKACC_KD1'
      EditFormat = '#.##'
    end
    object Query1CKQty_TC1: TCurrencyField
      FieldName = 'CKQty_TC1'
      EditFormat = '#.##'
    end
    object Query1CKQty_NK1: TCurrencyField
      FieldName = 'CKQty_NK1'
      EditFormat = '#.##'
    end
    object Query1CKQty_HD1: TCurrencyField
      FieldName = 'CKQty_HD1'
      EditFormat = '#.##'
    end
    object Query1CKQty_KD1: TCurrencyField
      FieldName = 'CKQty_KD1'
      EditFormat = '#.##'
    end
    object Query1CKACC_TC1: TCurrencyField
      FieldName = 'CKACC_TC1'
      EditFormat = '#.##'
    end
    object Query1CKACC_NK1: TCurrencyField
      FieldName = 'CKACC_NK1'
      EditFormat = '#.##'
    end
    object Query1CKACC_HD1: TCurrencyField
      FieldName = 'CKACC_HD1'
      EditFormat = '#.##'
    end
    object Query1CKACC_KD1: TCurrencyField
      FieldName = 'CKACC_KD1'
      EditFormat = '#.##'
    end
    object Query1RemQty_TC1: TCurrencyField
      FieldName = 'RemQty_TC1'
      EditFormat = '#.##'
    end
    object Query1RemQty_NK1: TCurrencyField
      FieldName = 'RemQty_NK1'
      EditFormat = '#.##'
    end
    object Query1RemQty_HD1: TCurrencyField
      FieldName = 'RemQty_HD1'
      EditFormat = '#.##'
    end
    object Query1RemQty_KD1: TCurrencyField
      FieldName = 'RemQty_KD1'
      EditFormat = '#.##'
    end
    object Query1RemACC_TC1: TCurrencyField
      FieldName = 'RemACC_TC1'
      EditFormat = '#.##'
    end
    object Query1RemACC_NK1: TCurrencyField
      FieldName = 'RemACC_NK1'
      EditFormat = '#.##'
    end
    object Query1RemACC_HD1: TCurrencyField
      FieldName = 'RemACC_HD1'
      EditFormat = '#.##'
    end
    object Query1RemACC_KD1: TCurrencyField
      FieldName = 'RemACC_KD1'
      EditFormat = '#.##'
    end
    object Query1LastQty_NQ: TCurrencyField
      FieldName = 'LastQty_NQ'
    end
    object Query1LastACC_NQ: TCurrencyField
      FieldName = 'LastACC_NQ'
    end
    object Query1RKQty_NQ: TCurrencyField
      FieldName = 'RKQty_NQ'
      EditFormat = '#.##'
    end
    object Query1RKACC_NQ: TCurrencyField
      FieldName = 'RKACC_NQ'
      EditFormat = '#.##'
    end
    object Query1CKQty_NQ: TCurrencyField
      FieldName = 'CKQty_NQ'
      EditFormat = '#.##'
    end
    object Query1CKACC_NQ: TCurrencyField
      FieldName = 'CKACC_NQ'
      EditFormat = '#.##'
    end
    object Query1RemQty_NQ: TCurrencyField
      FieldName = 'RemQty_NQ'
      EditFormat = '#.##'
    end
    object Query1RemACC_NQ: TCurrencyField
      FieldName = 'RemACC_NQ'
      EditFormat = '#.##'
    end
    object Query1LastQty_NKNQ: TCurrencyField
      FieldName = 'LastQty_NKNQ'
    end
    object Query1LastACC_NKNQ: TCurrencyField
      FieldName = 'LastACC_NKNQ'
    end
    object Query1RKQty_NKNQ: TCurrencyField
      FieldName = 'RKQty_NKNQ'
    end
    object Query1RKACC_NKNQ: TCurrencyField
      FieldName = 'RKACC_NKNQ'
    end
    object Query1CKQty_NKNQ: TCurrencyField
      FieldName = 'CKQty_NKNQ'
    end
    object Query1CKACC_NKNQ: TCurrencyField
      FieldName = 'CKACC_NKNQ'
    end
    object Query1RemQty_NKNQ: TCurrencyField
      FieldName = 'RemQty_NKNQ'
    end
    object Query1RemACC_NKNQ: TCurrencyField
      FieldName = 'RemACC_NKNQ'
    end
  end
end
