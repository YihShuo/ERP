object Entry_Print_Price: TEntry_Print_Price
  Left = 407
  Top = 199
  Width = 1058
  Height = 391
  Caption = 'Entry_Print_Price'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = -4
    Width = 809
    Height = 529
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = EnDet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1400.000000000000000000
      100.000000000000000000
      2140.000000000000000000
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
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 733
      Height = 123
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
        325.437500000000000000
        1939.395833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBText1: TQRDBText
        Left = 72
        Top = 44
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          116.416666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 584
        Top = 8
        Width = 38
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1545.166666666667000000
          21.166666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'RKNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 676
        Top = 52
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          137.583333333333300000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 714
        Top = 52
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1889.125000000000000000
          137.583333333333300000
          10.583333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '/'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QPage1: TQRLabel
        Left = 720
        Top = 52
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1905.000000000000000000
          137.583333333333300000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 600
        Top = 24
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          63.500000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 120
        Top = 20
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          52.916666666666670000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'ZSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 424
        Top = 48
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          127.000000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'CKBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 696
        Top = 0
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1841.500000000000000000
          0.000000000000000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'GSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 158
        Top = 20
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          418.041666666666700000
          52.916666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MST:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 186
        Top = 20
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          492.125000000000000000
          52.916666666666670000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EntryConfirm.EnMas
        DataField = 'tybh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 161
      Width = 733
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1939.395833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRSysData1: TQRSysData
        Left = -3
        Top = 10
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.528301886792450000
          -7.188679245283019000
          26.358490566037740000
          40.735849056603770000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 34
        Top = 10
        Width = 22
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          89.958333333333330000
          26.458333333333330000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'CLBH'
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
      object QRDBText6: TQRDBText
        Left = 91
        Top = 10
        Width = 274
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          40.735849056603770000
          239.622641509434000000
          26.358490566037740000
          726.056603773584900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = EnDet
        DataField = 'YWPM'
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
      object QRDBText7: TQRDBText
        Left = 377
        Top = 10
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          40.735849056603770000
          996.830188679245300000
          26.358490566037740000
          67.094339622641510000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'DWBH'
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
      object QRDBText8: TQRDBText
        Left = 427
        Top = 10
        Width = 16
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1129.770833333333000000
          26.458333333333330000
          42.333333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'Qty'
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
      object QRDBText4: TQRDBText
        Left = 477
        Top = 10
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1262.062500000000000000
          26.458333333333330000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'USPrice'
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
      object QRDBText9: TQRDBText
        Left = 542
        Top = 10
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1434.041666666667000000
          26.458333333333330000
          84.666666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'USACC'
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
      object QRDBText10: TQRDBText
        Left = 613
        Top = 10
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1621.895833333333000000
          26.458333333333330000
          89.958333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'VNPrice'
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
      object QRDBText11: TQRDBText
        Left = 679
        Top = 10
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1796.520833333333000000
          26.458333333333330000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'VNACC'
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
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 221
      Width = 733
      Height = 60
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        1939.395833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel3: TQRLabel
        Left = 727
        Top = 52
        Width = 5
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1923.520833333333000000
          137.583333333333300000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 234
        Top = 52
        Width = 5
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          619.125000000000000000
          137.583333333333300000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 385
        Top = 52
        Width = 5
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1018.645833333333000000
          137.583333333333300000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 552
        Top = 52
        Width = 5
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1460.500000000000000000
          137.583333333333300000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object CQCNBPTM: TQRImage
        Left = 33
        Top = 32
        Width = 50
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          87.312500000000000000
          84.666666666666670000
          132.291666666666700000)
        Stretch = True
      end
      object CQBPTM: TQRImage
        Left = 179
        Top = 32
        Width = 50
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          473.604166666666700000
          84.666666666666670000
          132.291666666666700000)
        Stretch = True
      end
      object CQK: TQRImage
        Left = 329
        Top = 32
        Width = 50
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          870.479166666666700000
          84.666666666666670000
          132.291666666666700000)
        Stretch = True
      end
      object Applicant: TQRImage
        Left = 497
        Top = 32
        Width = 50
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1314.979166666667000000
          84.666666666666670000
          132.291666666666700000)
        Stretch = True
      end
      object TM: TQRImage
        Left = 672
        Top = 32
        Width = 50
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1778.000000000000000000
          84.666666666666670000
          132.291666666666700000)
        Stretch = True
      end
      object QRLabel4: TQRLabel
        Left = 88
        Top = 52
        Width = 5
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          232.833333333333300000
          137.583333333333300000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 193
      Width = 733
      Height = 28
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
        74.083333333333330000
        1939.395833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel1: TQRLabel
        Left = 418
        Top = 8
        Width = 30
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1105.958333333333000000
          21.166666666666670000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total:'
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
      object QRExpr1: TQRExpr
        Left = 515
        Top = 8
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1362.604166666667000000
          21.166666666666670000
          164.041666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(USACC)'
        Mask = '#,##0.00'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 648
        Top = 8
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1714.500000000000000000
          21.166666666666670000
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(VNACC)'
        Mask = '#,##0'
        FontSize = 8
      end
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 286
    Top = 65
  end
  object QRXMLSFilter1: TQRXMLSFilter
    Left = 334
    Top = 65
  end
  object QRTextFilter1: TQRTextFilter
    Left = 382
    Top = 65
  end
  object EnDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = EntryConfirm.DS4
    RequestLive = True
    SQL.Strings = (
      
        'select KCRKS.*,case when (KCRK.SB='#39'1'#39' and KCRK.SFL='#39'THU MUA'#39') th' +
        'en CLZL.YWPM+'#39'//'#39'+KCRK.ZSNO else CLZL.YWPM+'#39'//'#39'+KCRKS.CGBH end a' +
        's YWPM,CLZL.DWBH'
      'from KCRKS left join KCRK'
      'on KCRKS.RKNO=KCRK.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.CGBH,KCRKS.CLBH')
    UpdateObject = UpdateSQL1
    Left = 32
    Top = 11
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 217
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object EnDetPaQty: TFloatField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetFKZT: TStringField
      FieldName = 'FKZT'
      FixedChar = True
      Size = 1
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 72
    Top = 11
  end
  object ADOQuery: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Erp@admin2309;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168' +
      '.23.122'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(APPID) AS ApplicantID,'
      'MAX(APPNAME) AS Applicant,'
      'MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,'
      'MAX(CASE WHEN SITE_CODE = '#39'CQK'#39' THEN ACCOUNT END) AS CQKID,'
      'MAX(CASE WHEN SITE_CODE = '#39'CQK'#39' THEN NAME END) AS CQK,'
      
        'MAX(CASE WHEN SITE_CODE = '#39'CQK'#39' THEN FINISH_TIME END) AS CQKDate' +
        ','
      'MAX(CASE WHEN SITE_CODE = '#39#39' THEN ACCOUNT END) AS TMID,'
      'MAX(CASE WHEN SITE_CODE = '#39#39' THEN NAME END) AS TM,'
      'MAX(CASE WHEN SITE_CODE = '#39#39' THEN FINISH_TIME END) AS TMDate,'
      
        'MAX(CASE WHEN SITE_CODE = '#39'CQBPTM'#39' THEN ACCOUNT END) AS CQBPTMID' +
        ','
      'MAX(CASE WHEN SITE_CODE = '#39'CQBPTM'#39' THEN NAME END) AS  CQBPTM,'
      
        'MAX(CASE WHEN SITE_CODE = '#39'CQBPTM'#39' THEN FINISH_TIME END) AS CQBP' +
        'TMDate,'
      
        'MAX(CASE WHEN SITE_CODE = '#39'CQCNBPTM'#39' THEN ACCOUNT END) AS CQCNBP' +
        'TMID,'
      'MAX(CASE WHEN SITE_CODE = '#39'CQCNBPTM'#39' THEN NAME END) AS CQCNBPTM,'
      
        'MAX(CASE WHEN SITE_CODE = '#39'CQCNBPTM'#39' THEN FINISH_TIME END) AS CQ' +
        'CNBPTMDate'
      'FROM (  SELECT * FROM OPENQUERY([UOFWEB],'
      
        #39'SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX('#39#39'%[0-9]%'#39#39', TB_E' +
        'B_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) ACCOUNT,'
      
        'case when TB_WKF_TASK_NODE.ACTUAL_SIGNER<>TB_WKF_TASK_NODE.ORIGI' +
        'NAL_SIGNER then '#39#39'1'#39#39' else '#39#39#39#39' end as NAME,'
      
        'CAST(FINISH_TIME AS DATE) FINISH_TIME, TB_EB_GROUP.GROUP_NAME, T' +
        'ITLE_NAME, SUBSTRING(US.ACCOUNT, PATINDEX('#39#39'%[0-9]%'#39#39', US.ACCOUN' +
        'T), LEN(US.ACCOUNT)) APPID, CAST([UOF].[dbo].fSignsToNoSigns(US.' +
        'NAME) AS VARCHAR(200)) as APPNAME,'
      
        'TB_WKF_TASK.BEGIN_TIME, ROW_NUMBER() OVER (PARTITION BY FINISH_T' +
        'IME ORDER BY FINISH_TIME DESC) AS RowID, TB_WKF_TASK_TRIGGER_REC' +
        'ORD.SITE_CODE, TB_EB_GROUP.LEV, APPGROUP.LEV APPGROUP_LEV, APPGR' +
        'OUP.GROUP_NAME APPGROUP'
      'FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK'
      
        'LEFT JOIN [UOF].[dbo].[LYN_KCRK] LYN_KCRK on LYN_KCRK.LNO=TB_WKF' +
        '_TASK.DOC_NBR'
      
        'LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_' +
        'WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID'
      
        'LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_T' +
        'RIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID=TB_WKF_TASK_' +
        'NODE.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TAS' +
        'K_NODE.SITE_ID'
      
        'LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK' +
        '_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF' +
        '_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NOD' +
        'E_SIGNER_INFO.NODE_SEQ'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_N' +
        'ODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_E' +
        'MPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GU' +
        'ID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER' +
        '_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TAS' +
        'K.AGENT_USER'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_I' +
        'D=TB_WKF_TASK.USER_GROUP_ID'
      
        'LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB' +
        '_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID'
      
        'WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_KCRK.RKNO='#39#39'20251000786'#39 +
        #39#39') AS OP'
      ') AS ApproveDataBPM')
    Left = 120
    Top = 12
    object ADOQueryApplicantID: TWideStringField
      FieldName = 'ApplicantID'
      ReadOnly = True
      Size = 50
    end
    object ADOQueryApplicant: TStringField
      FieldName = 'Applicant'
      ReadOnly = True
      Size = 200
    end
    object ADOQueryApplicantDate: TWideStringField
      FieldName = 'ApplicantDate'
      ReadOnly = True
      Size = 10
    end
    object ADOQueryCQKID: TWideStringField
      FieldName = 'CQKID'
      ReadOnly = True
      Size = 50
    end
    object ADOQueryCQK: TStringField
      FieldName = 'CQK'
      ReadOnly = True
      Size = 1
    end
    object ADOQueryCQKDate: TWideStringField
      FieldName = 'CQKDate'
      ReadOnly = True
      Size = 10
    end
    object ADOQueryTMID: TWideStringField
      FieldName = 'TMID'
      ReadOnly = True
      Size = 50
    end
    object ADOQueryTM: TStringField
      FieldName = 'TM'
      ReadOnly = True
      Size = 1
    end
    object ADOQueryTMDate: TWideStringField
      FieldName = 'TMDate'
      ReadOnly = True
      Size = 10
    end
    object ADOQueryCQBPTMID: TWideStringField
      FieldName = 'CQBPTMID'
      ReadOnly = True
      Size = 50
    end
    object ADOQueryCQBPTM: TStringField
      FieldName = 'CQBPTM'
      ReadOnly = True
      Size = 1
    end
    object ADOQueryCQBPTMDate: TWideStringField
      FieldName = 'CQBPTMDate'
      ReadOnly = True
      Size = 10
    end
    object ADOQueryCQCNBPTMID: TWideStringField
      FieldName = 'CQCNBPTMID'
      ReadOnly = True
      Size = 50
    end
    object ADOQueryCQCNBPTM: TStringField
      FieldName = 'CQCNBPTM'
      ReadOnly = True
      Size = 1
    end
    object ADOQueryCQCNBPTMDate: TWideStringField
      FieldName = 'CQCNBPTMDate'
      ReadOnly = True
      Size = 10
    end
  end
end
