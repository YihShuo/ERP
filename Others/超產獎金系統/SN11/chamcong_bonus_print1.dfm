object Chamcong_bonus_print: TChamcong_bonus_print
  Left = 0
  Top = 0
  Caption = 'Chamcong_bonus_print'
  ClientHeight = 407
  ClientWidth = 871
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 37
    Top = 21
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = HRMDonviQry
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
    Page.PaperSize = A4Trans
    Page.Continuous = False
    Page.Values = (
      30.003750000000000000
      2100.000000000000000000
      50.006249999999990000
      2970.000000000000000000
      0.000000000000000000
      0.000000000000000000
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
    Units = Pixels
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageFooterBand1: TQRBand
      Left = 0
      Top = 181
      Width = 1123
      Height = 105
      Frame.DrawTop = True
      AlignToBottom = True
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        277.812500000000000000
        2971.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel23: TQRLabel
        Left = 381
        Top = 18
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1008.062500000000000000
          47.625000000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20225#21123
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 668
        Top = 18
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          1767.416666666667000000
          47.625000000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #21046'    '#34920
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 50
        Top = 16
        Width = 61
        Height = 15
        Size.Values = (
          39.687500000000000000
          132.291666666666700000
          42.333333333333330000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20844#21496#20027#31649#37096
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 44
        Top = 0
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          116.416666666666700000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ban Gia'#769'm '#272#244#769'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 370
        Top = 2
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          978.958333333333300000
          5.291666666666667000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'K'#234#769' Hoa'#803'ch'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 665
        Top = 2
        Width = 43
        Height = 15
        Size.Values = (
          39.687500000000000000
          1759.479166666667000000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'L'#226#803'p Bi'#234#777'u'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 0
      Top = 19
      Width = 1123
      Height = 65
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        2971.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabelVMonth: TQRLabel
        Left = 197
        Top = 4
        Width = 434
        Height = 29
        Size.Values = (
          76.729166666666680000
          521.229166666666700000
          10.583333333333330000
          1148.291666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ba'#777'ng CHI TI'#202#769'T TI'#202#768'N TH'#431#416#777'NG V'#431#416#803'T SA'#777'N L'#431#416#803'NG'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabelMonth: TQRLabel
        Left = 279
        Top = 23
        Width = 274
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          60.854166666666680000
          724.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #26376#36229#29986#29518#37329#26126#32048#34920
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
      object QRLabel6: TQRLabel
        Left = 547
        Top = 45
        Width = 179
        Height = 20
        Size.Values = (
          52.916666666666670000
          1447.270833333333000000
          119.062500000000000000
          473.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #24046#21220#20154#25976'T'#244#777'ng s'#244#769' ng'#432#417#768'i ch'#226#769'm c'#244'ng:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 693
        Top = 9
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1833.562500000000000000
          23.812500000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 6
        Top = 17
        Width = 73
        Height = 30
        Size.Values = (
          79.375000000000000000
          15.875000000000000000
          44.979166666666670000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ti'#7873'n th'#432#7903'ng s'#7843'n xu'#7845't'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 19
        Top = 45
        Width = 61
        Height = 15
        Size.Values = (
          39.687500000000000000
          50.270833333333330000
          119.062500000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #29983#29986#32317#29518#37329
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object VNACCLabel: TQRLabel
        Left = 86
        Top = 33
        Width = 155
        Height = 19
        Size.Values = (
          50.270833333333330000
          227.541666666666700000
          87.312500000000000000
          410.104166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Lean'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 661
        Top = 9
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1748.895833333333000000
          23.812500000000000000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nga'#768'y:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object StaffLabel: TQRLabel
        Left = 727
        Top = 44
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1923.520833333333000000
          116.416666666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Staff'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object StaffVNDLabel: TQRLabel
        Left = 727
        Top = 26
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1923.520833333333000000
          68.791666666666670000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'StaffVND'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 618
        Top = 28
        Width = 108
        Height = 20
        Size.Values = (
          52.916666666666670000
          1635.125000000000000000
          74.083333333333330000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #24179#22343#29518#37329'VND/ng'#432#417'i'#768
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object CompanyLabel: TQRLabel
        Left = 12
        Top = 2
        Width = 150
        Height = 15
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          5.291666666666667000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #20740#26575#36012#20219#26377#38480#20844#21496
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 773
        Top = 1
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          2045.229166666667000000
          2.645833333333333000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel35: TQRLabel
        Left = 746
        Top = 1
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          1973.791666666667000000
          2.645833333333333000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object QRMaster: TQRBand
      Left = 0
      Top = 84
      Width = 1123
      Height = 72
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        190.500000000000000000
        2971.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape4: TQRShape
        Left = -19
        Top = 0
        Width = 786
        Height = 36
        Size.Values = (
          95.250000000000000000
          -50.270833333333330000
          0.000000000000000000
          2079.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 38
        Top = 38
        Width = 94
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          100.541666666666700000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ho'#803' T'#234'n'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape25: TQRShape
        Left = 795
        Top = 39
        Width = 9
        Height = 50
        Size.Values = (
          132.291666666666700000
          2103.437500000000000000
          103.187500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 3
        Top = 18
        Width = 41
        Height = 18
        Size.Values = (
          47.625000000000000000
          7.937500000000000000
          47.625000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = #21934#20301':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 1
        Top = 3
        Width = 43
        Height = 18
        Size.Values = (
          47.625000000000000000
          2.645833333333333000
          7.937500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'D'#417'n vi'#803
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape8: TQRShape
        Left = 42
        Top = 0
        Width = 9
        Height = 39
        Size.Values = (
          103.187500000000000000
          111.125000000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 360
        Top = 18
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          47.625000000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #20154#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 360
        Top = 3
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          7.937500000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 's'#244#769' ng'#432#417#768'i'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 420
        Top = 3
        Width = 9
        Height = 34
        Size.Values = (
          89.958333333333320000
          1111.250000000000000000
          7.937500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 50
        Top = 6
        Width = 304
        Height = 19
        Size.Values = (
          50.270833333333330000
          132.291666666666700000
          15.875000000000000000
          804.333333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = HRMDonviQry
        DataField = 'DV_TEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 428
        Top = 6
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333320000
          1132.416666666667000000
          15.875000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMDonviQry
        DataField = 'CNV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object Q1: TQRLabel
        Left = 176
        Top = 53
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          140.229166666666700000
          74.083333333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #24037#34399
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 355
        Top = 2
        Width = 9
        Height = 35
        Size.Values = (
          92.604166666666680000
          939.270833333333200000
          5.291666666666667000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 532
        Top = 3
        Width = 9
        Height = 39
        Size.Values = (
          103.187500000000000000
          1407.583333333333000000
          7.937500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 539
        Top = 4
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          10.583333333333330000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ti'#7873'n th'#432#417#768'ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 539
        Top = 19
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          50.270833333333330000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #29518#37329
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape31: TQRShape
        Left = 614
        Top = 3
        Width = 9
        Height = 39
        Size.Values = (
          103.187500000000000000
          1624.541666666667000000
          7.937500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 621
        Top = 4
        Width = 156
        Height = 23
        Size.Values = (
          60.854166666666680000
          1643.062500000000000000
          10.583333333333330000
          412.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMDonviQry
        DataField = 'TIENVUOTSANLUONG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 38
        Top = 52
        Width = 94
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          137.583333333333300000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #22995#21517
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 176
        Top = 38
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          100.541666666666700000
          74.083333333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'MSNV'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 258
        Top = 53
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          682.625000000000000000
          140.229166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #768#32887#32026
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 257
        Top = 38
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          679.979166666666800000
          100.541666666666700000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ch'#432#769'c vu'#803
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 339
        Top = 38
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          896.937500000000000000
          100.541666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#7879' s'#7889' s'#7843'n xu'#7845't'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 355
        Top = 52
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          939.270833333333200000
          137.583333333333300000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #29986#33021#20418#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 436
        Top = 52
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          137.583333333333300000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #21934#20301#20418#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 418
        Top = 38
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          100.541666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#7879' s'#7889' D'#417'n vi'#803
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 495
        Top = 38
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          100.541666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#7879' s'#7889' Ch'#432#769'c vu'#803
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 511
        Top = 52
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1352.020833333333000000
          137.583333333333300000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #32887#32026#20418#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 576
        Top = 38
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          100.541666666666700000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'nga'#768'y s'#244#769' vi'#234#803'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 591
        Top = 53
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          140.229166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #20986#21220#22825#25976
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 648
        Top = 53
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          140.229166666666700000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #36948#25104#29575
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 648
        Top = 38
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          100.541666666666700000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T'#7927' l'#7879
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 694
        Top = 38
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1836.208333333333000000
          100.541666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ti'#7873'n th'#432#7903'ng'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 715
        Top = 53
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1891.770833333333000000
          140.229166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #29518#37329
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRSubDetail: TQRSubDetail
      Left = 0
      Top = 156
      Width = 1123
      Height = 25
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2971.270833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = HRMQry
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape1: TQRShape
        Left = 4
        Top = 6
        Width = 782
        Height = 35
        Size.Values = (
          92.604166666666680000
          10.583333333333330000
          15.875000000000000000
          2069.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 4
        Top = 3
        Width = 152
        Height = 17
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          7.937500000000000000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'NV_TEN'
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
        Left = 162
        Top = 5
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          428.625000000000000000
          13.229166666666670000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'NV_MA'
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
        Left = 218
        Top = 3
        Width = 131
        Height = 17
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          7.937500000000000000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'CVU_TEN'
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
      object QRDBText7: TQRDBText
        Left = 355
        Top = 4
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          939.270833333333200000
          10.583333333333330000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'HESOSANLUONG'
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
        Left = 437
        Top = 4
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          10.583333333333330000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'HESODONVI'
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
      object QRDBText9: TQRDBText
        Left = 509
        Top = 4
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1346.729166666667000000
          10.583333333333330000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'HESOCVUVU'
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
      object QRDBText10: TQRDBText
        Left = 587
        Top = 5
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1553.104166666667000000
          13.229166666666670000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'SONGAYCONG'
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
      object QRDBText11: TQRDBText
        Left = 643
        Top = 5
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1701.270833333333000000
          13.229166666666670000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'HESONGAYCONG'
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
      object QRDBText12: TQRDBText
        Left = 689
        Top = 5
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          1822.979166666667000000
          13.229166666666670000
          232.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = HRMQry
        DataField = 'TIENVUOTSANLUONG'
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
    end
  end
  object HRMQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    DataSource = DS1
    Parameters = <
      item
        Name = 'DV_MA'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select IT_NHANVIENCHAMCONG.NV_MA'
      '       ,IT_NHANVIENCHAMCONG.NV_TEN'
      '       ,IT_NHANVIENCHAMCONG.CVU_TEN'
      '       ,IT_NHANVIENCHAMCONG.HESOSANLUONG'
      '       ,IT_NHANVIENCHAMCONG.HESODONVI'
      '       ,IT_NHANVIENCHAMCONG.HESOCVUVU'
      '       ,IT_NHANVIENCHAMCONG.SONGAYCONG'
      '       ,IT_NHANVIENCHAMCONG.HESONGAYCONG'
      '       ,IT_NHANVIENCHAMCONG.TIENVUOTSANLUONG'
      'from LIY_TYBACH.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG'
      
        'left join LIY_TYBACH.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_' +
        'NHANVIENCHAMCONG.DV_MA'
      
        'left join LIY_TYBACH.dbo.ST_CHUCVU ST_CHUCVU on ST_CHUCVU.CVU_MA' +
        '=IT_NHANVIENCHAMCONG.CVU_MA'
      'where IT_NHANVIENCHAMCONG.T_MA='#39'04-2021'#39
      '      and IT_NHANVIENCHAMCONG.DV_MA=:DV_MA')
    Left = 256
    Top = 265
    object HRMQryNV_MA: TWideStringField
      FieldName = 'NV_MA'
      Size = 50
    end
    object HRMQryNV_TEN: TWideStringField
      FieldName = 'NV_TEN'
      Size = 50
    end
    object HRMQryCVU_TEN: TWideStringField
      FieldName = 'CVU_TEN'
      Size = 50
    end
    object HRMQryHESOSANLUONG: TFloatField
      FieldName = 'HESOSANLUONG'
    end
    object HRMQryHESODONVI: TFloatField
      FieldName = 'HESODONVI'
    end
    object HRMQryHESOCVUVU: TFloatField
      FieldName = 'HESOCVUVU'
    end
    object HRMQrySONGAYCONG: TFloatField
      FieldName = 'SONGAYCONG'
    end
    object HRMQryHESONGAYCONG: TFloatField
      FieldName = 'HESONGAYCONG'
      DisplayFormat = '00%'
    end
    object HRMQryTIENVUOTSANLUONG: TLargeintField
      FieldName = 'TIENVUOTSANLUONG'
      DisplayFormat = '#,##0'
    end
  end
  object HRMDonviQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      
        'select IT_NHANVIENCHAMCONG.DV_MA,ST_DONVI.DV_TEN,COUNT(IT_NHANVI' +
        'ENCHAMCONG.NV_MA) as CNV,SUM(IT_NHANVIENCHAMCONG.TIENVUOTSANLUON' +
        'G) as TIENVUOTSANLUONG '
      'from LIY_TYBACH.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG'
      
        'left join LIY_TYBACH.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_' +
        'NHANVIENCHAMCONG.DV_MA'
      'where T_MA='#39'04-2021'#39
      'Group by IT_NHANVIENCHAMCONG.DV_MA,ST_DONVI.DV_TEN '
      'Order by ST_DONVI.DV_TEN ')
    Left = 208
    Top = 265
    object HRMDonviQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object HRMDonviQryDV_TEN: TWideStringField
      FieldName = 'DV_TEN'
      Size = 50
    end
    object HRMDonviQryCNV: TIntegerField
      FieldName = 'CNV'
      ReadOnly = True
    end
    object HRMDonviQryTIENVUOTSANLUONG: TLargeintField
      FieldName = 'TIENVUOTSANLUONG'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
  end
  object DS1: TDataSource
    DataSet = HRMDonviQry
    Left = 208
    Top = 320
  end
  object Qtemp: TADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select COUNT(IT_NHANVIE.NV_MA) as CNV,SUM(IT_NHANVIE.TIENVUOTSAN' +
        'LUONG) as TIENVUOTSANLUONG '
      'from LIY_TYBACH.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE'
      'where IT_NHANVIE.T_MA='#39'04-2021'#39'  '
      '      AND IT_NHANVIE.DV_MA='#39'A1GCDan'#39)
    Left = 152
    Top = 264
  end
end
