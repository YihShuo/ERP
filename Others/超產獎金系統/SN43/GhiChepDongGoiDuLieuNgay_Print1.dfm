object GhiChepDongGoiDuLieuNgay_Print: TGhiChepDongGoiDuLieuNgay_Print
  Left = 0
  Top = 0
  Caption = 'GhiChepDongGoiDuLieuNgay_Print'
  ClientHeight = 837
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
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
      Height = 118
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
        312.208333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 280
        Top = 40
        Width = 176
        Height = 30
        Size.Values = (
          79.375000000000000000
          740.833333333333300000
          105.833333333333300000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #36039#26009#20633#20221#26085#35468#34920
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
        Left = 38
        Top = 6
        Width = 665
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          15.875000000000000000
          1759.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'B'#7842'NG GHI CH'#201'P '#272#211'NG G'#211'I D'#7918' LI'#7878'U H'#192'NG NG'#192'Y'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
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
      object QRLabel7: TQRLabel
        Left = 13
        Top = 82
        Width = 134
        Height = 30
        Size.Values = (
          79.375000000000000000
          34.395833333333330000
          216.958333333333300000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #20786#23384#20301#32622':NAS'#20027#27231
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QPage1: TQRLabel
        Left = 709
        Top = 45
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1875.895833333333000000
          119.062500000000000000
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
      object QRLabel56: TQRLabel
        Left = 703
        Top = 45
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1860.020833333333000000
          119.062500000000000000
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
      object QRLabel57: TQRLabel
        Left = 658
        Top = 45
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1740.958333333333000000
          119.062500000000000000
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
        Left = 673
        Top = 45
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          119.062500000000000000
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
      object QRLabel11: TQRLabel
        Left = 325
        Top = 83
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          859.895833333333300000
          219.604166666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Userdate'
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
      Top = 137
      Width = 756
      Height = 50
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        132.291666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel14: TQRLabel
        Left = 526
        Top = 6
        Width = 180
        Height = 34
        Size.Values = (
          89.958333333333330000
          1391.708333333333000000
          15.875000000000000000
          476.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'K'#7871't qu'#7843' '#272'GDL '#36039#26009#20633#20221#32080#26524
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 59
        Top = 6
        Width = 42
        Height = 34
        Size.Values = (
          89.958333333333330000
          156.104166666666700000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ng'#224'y '#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 138
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          365.125000000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 491
        Top = 0
        Width = 1
        Height = 50
        Size.Values = (
          132.291666666666700000
          1299.104166666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 280
        Top = 6
        Width = 79
        Height = 34
        Size.Values = (
          89.958333333333330000
          740.833333333333300000
          15.875000000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CSDL '#36039#26009#24235
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 913
      Width = 756
      Height = 112
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        296.333333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRISO: TQRLabel
        Left = 668
        Top = 93
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          246.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T-IT-WS001-01B'
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
      object QCFMDate: TQRLabel
        Left = 557
        Top = 53
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          140.229166666666700000
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
      object QCFMDate1: TQRLabel
        Left = 557
        Top = 73
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          193.145833333333300000
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
        Top = 53
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          140.229166666666700000
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
        Top = 73
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          193.145833333333300000
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
      object QRLabel8: TQRLabel
        Left = 6
        Top = 33
        Width = 115
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          87.312500000000000000
          304.270833333333300000)
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
      object QRLabel107: TQRLabel
        Left = 6
        Top = 53
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          140.229166666666700000
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
      object QRLabel108: TQRLabel
        Left = 6
        Top = 73
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          193.145833333333300000
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
      object QRLabel109: TQRLabel
        Left = 697
        Top = 33
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          87.312500000000000000
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
      object QRLabel110: TQRLabel
        Left = 697
        Top = 53
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          140.229166666666700000
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
      object QRLabel111: TQRLabel
        Left = 697
        Top = 73
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1844.145833333333000000
          193.145833333333300000
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
      object QRLabel112: TQRLabel
        Left = 230
        Top = 13
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          608.541666666666700000
          34.395833333333330000
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
      object QRLabel113: TQRLabel
        Left = 590
        Top = 13
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          34.395833333333330000
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
      object QRLabel114: TQRLabel
        Left = 413
        Top = 13
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1092.729166666667000000
          34.395833333333330000
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
      object QRLabel115: TQRLabel
        Left = 705
        Top = 13
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1865.312500000000000000
          34.395833333333330000
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
      object QRLabel116: TQRLabel
        Left = 60
        Top = 13
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          158.750000000000000000
          34.395833333333330000
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
      object QRShape28: TQRShape
        Left = 3
        Top = 90
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          238.125000000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 146
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          386.291666666666700000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 3
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          7.937500000000000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 752
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1989.666666666667000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 3
        Top = 30
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          79.375000000000000000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 3
        Top = 50
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          132.291666666666700000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 3
        Top = 70
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          185.208333333333300000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 690
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1825.625000000000000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 350
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          926.041666666666800000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 550
        Top = 10
        Width = 1
        Height = 80
        Size.Values = (
          211.666666666666700000
          1455.208333333333000000
          26.458333333333330000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QUserDate: TQRLabel
        Left = 557
        Top = 33
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          87.312500000000000000
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
      object QUserName: TQRLabel
        Left = 153
        Top = 33
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          87.312500000000000000
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
      object QRShape38: TQRShape
        Left = 3
        Top = 10
        Width = 749
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          26.458333333333330000
          1981.729166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 187
      Width = 756
      Height = 726
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1920.875000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel9: TQRLabel
        Left = 279
        Top = 4
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          10.583333333333330000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ERP'#36039#26009#24235
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
      object QRLabel4: TQRLabel
        Left = 278
        Top = 50
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          132.291666666666700000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #36001#21209#31995#32113#36039#26009#24235
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
        Left = 279
        Top = 74
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          195.791666666666700000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #31805#26680#31995#32113#36039#26009#24235
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
      object QRLabel6: TQRLabel
        Left = 279
        Top = 25
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          66.145833333333330000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20154#20107#31995#32113#36039#26009#24235
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
        Left = 263
        Top = 4
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          695.854166666666700000
          10.583333333333330000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '01'
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
        Left = 263
        Top = 26
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          695.854166666666700000
          68.791666666666670000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '02'
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
      object QRLabel16: TQRLabel
        Left = 262
        Top = 50
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          693.208333333333300000
          132.291666666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '03'
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
        Left = 263
        Top = 74
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          695.854166666666700000
          195.791666666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '04'
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
      object QRLabel12: TQRLabel
        Left = 48
        Top = 4
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          10.583333333333330000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Userdate'
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
      object QRShape8: TQRShape
        Left = 138
        Top = 0
        Width = 1
        Height = 92
        Size.Values = (
          243.416666666666700000
          365.125000000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 92
        Size.Values = (
          243.416666666666700000
          0.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 491
        Top = 0
        Width = 1
        Height = 93
        Size.Values = (
          246.062500000000000000
          1299.104166666667000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 754
        Top = -1
        Width = 1
        Height = 93
        Size.Values = (
          246.062500000000000000
          1994.958333333333000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 3
        Top = 22
        Width = 750
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          58.208333333333330000
          1984.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 1
        Top = 0
        Width = 753
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          0.000000000000000000
          1992.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText50: TQRDBText
        Left = 525
        Top = 3
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1389.062500000000000000
          7.937500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel93: TQRLabel
        Left = 546
        Top = 2
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1444.625000000000000000
          5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText51: TQRDBText
        Left = 617
        Top = 3
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1632.479166666667000000
          7.937500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel94: TQRLabel
        Left = 638
        Top = 2
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1688.041666666667000000
          5.291666666666667000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 638
        Top = 25
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1688.041666666667000000
          66.145833333333330000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 617
        Top = 26
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1632.479166666667000000
          68.791666666666670000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 546
        Top = 25
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1444.625000000000000000
          66.145833333333330000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 525
        Top = 26
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1389.062500000000000000
          68.791666666666670000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 638
        Top = 51
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1688.041666666667000000
          134.937500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 617
        Top = 52
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1632.479166666667000000
          137.583333333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 546
        Top = 51
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1444.625000000000000000
          134.937500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 525
        Top = 52
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1389.062500000000000000
          137.583333333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 638
        Top = 75
        Width = 53
        Height = 20
        Size.Values = (
          52.916666666666670000
          1688.041666666667000000
          198.437500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TB'#22833#25943
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 617
        Top = 76
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1632.479166666667000000
          201.083333333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 546
        Top = 75
        Width = 56
        Height = 20
        Size.Values = (
          52.916666666666670000
          1444.625000000000000000
          198.437500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-TC'#25104#21151' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 525
        Top = 76
        Width = 15
        Height = 15
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1389.062500000000000000
          201.083333333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DongGoiQry
        DataField = 'TC1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Left = 48
        Top = 25
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          66.145833333333330000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Userdate'
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
      object QRLabel24: TQRLabel
        Left = 48
        Top = 50
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          132.291666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Userdate'
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
      object QRLabel25: TQRLabel
        Left = 48
        Top = 74
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          195.791666666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Userdate'
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
      object QRShape6: TQRShape
        Left = 3
        Top = 93
        Width = 750
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          246.062500000000000000
          1984.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 3
        Top = 44
        Width = 750
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          116.416666666666700000
          1984.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 3
        Top = 71
        Width = 750
        Height = 1
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          187.854166666666700000
          1984.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object DS1: TDataSource
    Left = 120
    Top = 64
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
    Left = 160
    Top = 65
  end
  object DongGoiQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      ''
      'select'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC1,'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB1,'
      
        'max(case when DAY(NgayThucHien)=1 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF1,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC2,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB2,'
      
        'max(case when DAY(NgayThucHien)=2 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF2,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC3,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB3,'
      
        'max(case when DAY(NgayThucHien)=3 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF3,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC4,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB4,'
      
        'max(case when DAY(NgayThucHien)=4 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF4,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC5,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB5,'
      
        'max(case when DAY(NgayThucHien)=5 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF5,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC6,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB6,'
      
        'max(case when DAY(NgayThucHien)=6 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF6,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC7,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB7,'
      
        'max(case when DAY(NgayThucHien)=7 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF7,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC8,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB8,'
      
        'max(case when DAY(NgayThucHien)=8 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF8,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=1 then '#39'V'#39' else '#39#39' ' +
        'end) as TC9,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=0 and a.USERID is n' +
        'ot null then '#39'V'#39' else '#39#39' end) as TB9,'
      
        'max(case when DAY(NgayThucHien)=9 and KetQua=1 and a.USERID is n' +
        'ot null then a.USERID else '#39#39' end) as TF9,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC10,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB10,'
      
        'max(case when DAY(NgayThucHien)=10 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF10,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC11,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB11,'
      
        'max(case when DAY(NgayThucHien)=11 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF11,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC12,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB12,'
      
        'max(case when DAY(NgayThucHien)=12 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF12,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC13,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB13,'
      
        'max(case when DAY(NgayThucHien)=13 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF13,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC14,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB14,'
      
        'max(case when DAY(NgayThucHien)=14 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF14,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC15,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB15,'
      
        'max(case when DAY(NgayThucHien)=15 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF15,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC16,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB16,'
      
        'max(case when DAY(NgayThucHien)=16 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF16,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC17,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB17,'
      
        'max(case when DAY(NgayThucHien)=17 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF17,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC18,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB18,'
      
        'max(case when DAY(NgayThucHien)=18 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF18,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC19,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB19,'
      
        'max(case when DAY(NgayThucHien)=19 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF19,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC20,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB20,'
      
        'max(case when DAY(NgayThucHien)=20 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF20,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC21,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB21,'
      
        'max(case when DAY(NgayThucHien)=21 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF21,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC22,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB22,'
      
        'max(case when DAY(NgayThucHien)=22 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF22,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC23,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB23,'
      
        'max(case when DAY(NgayThucHien)=23 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF23,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC24,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB24,'
      
        'max(case when DAY(NgayThucHien)=24 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF24,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC25,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB25,'
      
        'max(case when DAY(NgayThucHien)=25 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF25,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC26,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB26,'
      
        'max(case when DAY(NgayThucHien)=26 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF26,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC27,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB27,'
      
        'max(case when DAY(NgayThucHien)=27 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF27,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC28,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB28,'
      
        'max(case when DAY(NgayThucHien)=28 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF28,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC29,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB29,'
      
        'max(case when DAY(NgayThucHien)=29 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF29,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC30,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB30,'
      
        'max(case when DAY(NgayThucHien)=30 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF30,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=1 then '#39'V'#39' else '#39#39 +
        ' end) as TC31,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=0 and a.USERID is ' +
        'not null then '#39'V'#39' else '#39#39' end) as TB31,'
      
        'max(case when DAY(NgayThucHien)=31 and KetQua=1 and a.USERID is ' +
        'not null then a.USERID else '#39#39' end) as TF31,'
      
        '  max(a.USERID) USERID,max(a.CFMID) CFMID, max(Busers.USERNAME) ' +
        'USERNAME,'
      
        '  max(Busers_CFM.USERNAME) UserCFM, max(Busers_CFM1.USERNAME) Us' +
        'erCFM1,'
      
        '  max(a.UserDate) as UserDate, max(a.CFMDate) CFMDate, max(a.CFM' +
        'Date1) CFMDate1'
      'from ITPC_DongGoiDuLieu a'
      'left join LIY_ERP.dbo.Busers Busers on a.USERID=Busers.USERID'
      
        'left join LIY_ERP.dbo.Busers Busers_CFM on a.CFMID=Busers_CFM.US' +
        'ERID'
      
        'left join LIY_ERP.dbo.Busers Busers_CFM1 on a.CFMID1=Busers_CFM1' +
        '.USERID'
      'where MONTH(NgayThucHien)='#39'05'#39' and YEAR(NgayThucHien)='#39'2023'#39)
    Left = 72
    Top = 57
    object DongGoiQryTC1: TStringField
      FieldName = 'TC1'
      ReadOnly = True
      Size = 1
    end
    object DongGoiQryUSERID: TStringField
      FieldName = 'USERID'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryCFMID: TStringField
      FieldName = 'CFMID'
      ReadOnly = True
      Size = 15
    end
    object DongGoiQryUSERNAME: TStringField
      FieldName = 'USERNAME'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserCFM: TStringField
      FieldName = 'UserCFM'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserCFM1: TStringField
      FieldName = 'UserCFM1'
      ReadOnly = True
      Size = 30
    end
    object DongGoiQryUserDate: TDateTimeField
      FieldName = 'UserDate'
      ReadOnly = True
    end
    object DongGoiQryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      ReadOnly = True
    end
    object DongGoiQryCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      ReadOnly = True
    end
  end
end
