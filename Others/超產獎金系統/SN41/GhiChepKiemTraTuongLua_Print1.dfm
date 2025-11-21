object GhiChepKiemTraTuongLua_Print: TGhiChepKiemTraTuongLua_Print
  Left = 0
  Top = 0
  Caption = 'GhiChepKiemTraTuongLua_Print'
  ClientHeight = 690
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = TuongLuaQry
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial Narrow'
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
      50.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 150
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        396.875000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 231
        Top = 88
        Width = 276
        Height = 30
        Size.Values = (
          79.375000000000000000
          611.187500000000000000
          232.833333333333400000
          730.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #27231#25151#26085#24120#24037#20316#27298#26597#32000#37636#34920
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 18
      end
      object L1: TQRLabel
        Left = 88
        Top = 6
        Width = 580
        Height = 67
        Size.Values = (
          177.270833333333300000
          232.833333333333400000
          15.875000000000000000
          1534.583333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'B'#7842'NG GHI CH'#201'P KI'#7874'M TRA T'#431#7900'NG L'#7916'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRLabel24: TQRLabel
        Left = 588
        Top = 122
        Width = 57
        Height = 21
        Size.Values = (
          55.562500000000000000
          1555.750000000000000000
          322.791666666666700000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' '#32232#34399':'
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
      object QRLabel_TLuaNo: TQRLabel
        Left = 646
        Top = 122
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1709.208333333333000000
          322.791666666666700000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TLuaNo'
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
      object QRShape1: TQRShape
        Left = 4
        Top = 149
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          394.229166666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel56: TQRLabel
        Left = 711
        Top = 10
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1881.187500000000000000
          26.458333333333330000
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
      object QPage1: TQRLabel
        Left = 717
        Top = 10
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1897.062500000000000000
          26.458333333333330000
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
      object QRLabel57: TQRLabel
        Left = 666
        Top = 10
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1762.125000000000000000
          26.458333333333330000
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
      object QRSysData2: TQRSysData
        Left = 681
        Top = 10
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1801.812500000000000000
          26.458333333333330000
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
    end
    object QRPBand1: TQRPBand
      Left = 19
      Top = 249
      Width = 756
      Height = 306
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        809.625000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRLabel4: TQRLabel
        Left = 7
        Top = 5
        Width = 137
        Height = 33
        Size.Values = (
          87.312500000000000000
          18.520833333333330000
          13.229166666666670000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#244' t'#7843' v'#7845'n '#273#7873' x'#7843'y ra l'#7895'i '#25925#38556#21839#38988#35498#26126
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
      object QRLabel5: TQRLabel
        Left = 7
        Top = 49
        Width = 137
        Height = 33
        Size.Values = (
          87.312500000000000000
          18.520833333333330000
          129.645833333333300000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#244' t'#7843' lo'#7841'i b'#7887' v'#7845'n '#273#7873' '#21839#38988#25490#38500#35498#26126
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
      object QRShape13: TQRShape
        Left = 3
        Top = 42
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          111.125000000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 3
        Top = 87
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          230.187500000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 146
        Top = 0
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          386.291666666666700000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 752
        Top = 0
        Width = 1
        Height = 88
        Size.Values = (
          232.833333333333300000
          1989.666666666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 3
        Top = 0
        Width = 1
        Height = 86
        Size.Values = (
          227.541666666666700000
          7.937500000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 705
        Top = 99
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1865.312500000000000000
          261.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32080#26524
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
      object QRLabel8: TQRLabel
        Left = 60
        Top = 99
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          158.750000000000000000
          261.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #38542#27573
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
      object QRShape18: TQRShape
        Left = 3
        Top = 94
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          248.708333333333300000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 3
        Top = 214
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          566.208333333333400000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 146
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          386.291666666666700000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 3
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          7.937500000000000000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 752
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          1989.666666666667000000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 3
        Top = 124
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          328.083333333333400000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 3
        Top = 154
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          407.458333333333400000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 3
        Top = 184
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          486.833333333333400000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 8
        Top = 129
        Width = 115
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          341.312500000000000000
          304.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531#20154'(IT'#36039#35338#37096')'
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
      object QRLabel13: TQRLabel
        Left = 8
        Top = 159
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          420.687500000000000000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21934#20301#20027#31649'(IT'#36039#35338#37096')'
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
      object QRLabel15: TQRLabel
        Left = 7
        Top = 189
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333340000
          500.062500000000000000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #37096#38272#20027#31649'(IT'#36039#35338#37096')'
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
      object QRShape26: TQRShape
        Left = 690
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          1825.625000000000000000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 697
        Top = 129
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          341.312500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #30003#35531
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
      object QRLabel17: TQRLabel
        Left = 697
        Top = 159
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          420.687500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26680#20934
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
      object QRLabel18: TQRLabel
        Left = 697
        Top = 189
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          500.062500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #32080#26696
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
      object QRShape27: TQRShape
        Left = 350
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          926.041666666666800000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 230
        Top = 99
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          608.541666666666700000
          261.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QRLabel20: TQRLabel
        Left = 590
        Top = 99
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          261.937500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#26178#38291
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
      object QRShape28: TQRShape
        Left = 550
        Top = 94
        Width = 1
        Height = 120
        Size.Values = (
          317.500000000000000000
          1455.208333333333000000
          248.708333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel21: TQRLabel
        Left = 414
        Top = 98
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1095.375000000000000000
          259.291666666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#24847#35211
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
      object QUserName: TQRLabel
        Left = 153
        Top = 131
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          346.604166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMName1: TQRLabel
        Left = 153
        Top = 191
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          505.354166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMName: TQRLabel
        Left = 153
        Top = 161
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          425.979166666666700000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QUserDate: TQRLabel
        Left = 557
        Top = 129
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          341.312500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#26178#38291
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
      object QCFMDate1: TQRLabel
        Left = 557
        Top = 189
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          500.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
      object QCFMDate: TQRLabel
        Left = 557
        Top = 159
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          420.687500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#32773
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
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 169
      Width = 756
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel14: TQRLabel
        Left = 153
        Top = 6
        Width = 268
        Height = 21
        Size.Values = (
          55.562500000000000000
          404.812500000000000000
          15.875000000000000000
          709.083333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#7841'ng m'#7909'c'#38917#30446
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
      object QRLabel2: TQRLabel
        Left = 434
        Top = 6
        Width = 312
        Height = 21
        Size.Values = (
          55.562500000000000000
          1148.291666666667000000
          15.875000000000000000
          825.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ki'#7875'm tra t'#236'nh tr'#7841'ng '#27298#26597#29376#27841
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
      object QRLabel3: TQRLabel
        Left = 7
        Top = 2
        Width = 130
        Height = 34
        Size.Values = (
          89.958333333333320000
          18.520833333333330000
          5.291666666666667000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#244'ng vi'#7879'c h'#224'ng ng'#224'y '#20363#34892#20316#26989
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
      object QRShape2: TQRShape
        Left = 3
        Top = 38
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          100.541666666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 3
        Top = -1
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          7.937500000000000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 146
        Top = -1
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          386.291666666666700000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 427
        Top = -1
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          1129.770833333333000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 752
        Top = -1
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          1989.666666666667000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 209
      Width = 756
      Height = 40
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 149
        Top = 6
        Width = 268
        Height = 28
        Size.Values = (
          74.083333333333320000
          394.229166666666700000
          15.875000000000000000
          709.083333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TuongLuaQry
        DataField = 'TLTen'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText2: TQRDBText
        Left = 434
        Top = 6
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          15.875000000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TuongLuaQry
        DataField = 'TTBinhThuong'
        Font.Charset = ANSI_CHARSET
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
        Left = 593
        Top = 6
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1568.979166666667000000
          15.875000000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TuongLuaQry
        DataField = 'TTKhongBinhThuong'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel6: TQRLabel
        Left = 3
        Top = 9
        Width = 137
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          23.812500000000000000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#7895'i ng'#224'y '#27599#26085
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
      object QRShape7: TQRShape
        Left = 3
        Top = 0
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          7.937500000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 146
        Top = 0
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          386.291666666666700000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 427
        Top = -1
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          1129.770833333333000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 586
        Top = -2
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          1550.458333333333000000
          -5.291666666666667000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 752
        Top = -3
        Width = 1
        Height = 40
        Size.Values = (
          105.833333333333300000
          1989.666666666667000000
          -7.937500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 4
        Top = 38
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          100.541666666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 455
        Top = 5
        Width = 125
        Height = 27
        Size.Values = (
          71.437500000000000000
          1203.854166666667000000
          13.229166666666670000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'B'#236'nh Th'#432#7901'ng'#27491#24120
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
      object QRLabel10: TQRLabel
        Left = 614
        Top = 6
        Width = 125
        Height = 27
        Size.Values = (
          71.437500000000000000
          1624.541666666667000000
          15.875000000000000000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Kh'#225'c th'#432#7901'ng'#30064#24120
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
    end
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 555
      Width = 756
      Height = 30
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 697
        Top = 6
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CT-07F'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    end
  end
  object TuongLuaQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    DataSource = GhiChepKiemTraTuongLua.DS2
    Parameters = <
      item
        Name = 'TLuaNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      
        'select ITPC_GhiChepTuongLuaChiTiet.TLuaNo,ITPC_GhiChepTuongLuaCh' +
        'iTiet.TLTen'
      
        #9#9'   ,cast(case when TTBinhThuong='#39'1'#39' then '#39'V'#39' else '#39#39' end as nv' +
        'archar(50)) as TTBinhThuong'
      
        #9#9'   ,cast(case when TTKhongBinhThuong='#39'1'#39' then '#39'V'#39' else '#39#39' end ' +
        'as nvarchar(50)) as TTKhongBinhThuong'
      #9#9'   ,ITPC_GhiChepTuongLua.TLDate'
      #9#9'   ,Busers.USERNAME'
      #9#9'   ,Busers_CFM.USERNAME as UserCFM'
      '       ,ITPC_GhiChepTuongLua.UserID,ITPC_GhiChepTuongLua.CFMID'
      '       ,ITPC_GhiChepTuongLuaChiTiet.TLMa'
      'from ITPC_GhiChepTuongLuaChiTiet'
      
        'left join ITPC_GhiChepTuongLua on ITPC_GhiChepTuongLuaChiTiet.TL' +
        'uaNo=ITPC_GhiChepTuongLua.TLuaNo'
      
        'left join ITPC_DanhSachTenTuongLua on ITPC_GhiChepTuongLuaChiTie' +
        't.TLMa=ITPC_DanhSachTenTuongLua.TLMa'
      
        'left join LIY_ERP.dbo.Busers Busers on ITPC_GhiChepTuongLua.User' +
        'ID=Busers.USERID'
      
        'left join LIY_ERP.dbo.Busers Busers_CFM on ITPC_GhiChepTuongLua.' +
        'CFMID=Busers_CFM.USERID'
      
        'where ITPC_DanhSachTenTuongLua.LB='#39'01'#39' and ITPC_GhiChepTuongLua.' +
        'TLuaNo=:TLuaNo'
      '')
    Left = 528
    Top = 209
    object TuongLuaQryTLuaNo: TStringField
      FieldName = 'TLuaNo'
      Size = 11
    end
    object TuongLuaQryTLTen: TWideStringField
      FieldName = 'TLTen'
      Size = 200
    end
    object TuongLuaQryTTBinhThuong: TWideStringField
      FieldName = 'TTBinhThuong'
      ReadOnly = True
      Size = 50
    end
    object TuongLuaQryTTKhongBinhThuong: TWideStringField
      FieldName = 'TTKhongBinhThuong'
      ReadOnly = True
      Size = 50
    end
    object TuongLuaQryTLDate: TDateTimeField
      FieldName = 'TLDate'
    end
    object TuongLuaQryUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 30
    end
    object TuongLuaQryUserCFM: TStringField
      FieldName = 'UserCFM'
      Size = 30
    end
    object TuongLuaQryUserCFM1: TStringField
      FieldName = 'UserCFM1'
      Size = 30
    end
    object TuongLuaQryUserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object TuongLuaQryCFMID: TStringField
      FieldName = 'CFMID'
      Size = 10
    end
    object TuongLuaQryTLMa: TStringField
      FieldName = 'TLMa'
    end
    object TuongLuaQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD HH:nn:ss'
    end
    object TuongLuaQryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object TuongLuaQryCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
  end
  object DS1: TDataSource
    DataSet = TuongLuaQry
    Left = 664
    Top = 304
  end
  object TempQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 528
    Top = 258
  end
end
