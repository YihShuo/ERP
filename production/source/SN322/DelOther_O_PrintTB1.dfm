object DelOther_O_PrintTB: TDelOther_O_PrintTB
  Left = 295
  Top = 228
  Width = 896
  Height = 500
  Caption = 'DelOther_O_PrintTB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -1
    Top = 1
    Width = 813
    Height = 529
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DelDet
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1400.000000000000000000
      70.000000000000000000
      2150.000000000000000000
      10.000000000000000000
      10.000000000000000000
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
      Left = 4
      Top = 26
      Width = 805
      Height = 128
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
        338.666666666666700000
        2129.895833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object Label1: TLabel
        Left = 720
        Top = 48
        Width = 32
        Height = 14
        Caption = 'Times:'
      end
      object QRDBText1: TQRDBText
        Left = 112
        Top = 72
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          190.500000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'CKBH'
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
      object QRDBText2: TQRDBText
        Left = 347
        Top = 72
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          190.500000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'DepName'
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
      object QRDBText3: TQRDBText
        Left = 585
        Top = 24
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1547.812500000000000000
          63.500000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'LLNO'
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
      object QRDBText4: TQRDBText
        Left = 602
        Top = 72
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          190.500000000000000000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'USERDATE'
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
      object QRDBText12: TQRDBText
        Left = 714
        Top = 8
        Width = 38
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1889.125000000000000000
          21.166666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'GSBH'
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
      object QRSysData3: TQRSysData
        Left = 723
        Top = 72
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1912.937500000000000000
          190.500000000000000000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 757
        Top = 72
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2002.895833333333000000
          190.500000000000000000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '/'
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
      object QPage1: TQRLabel
        Left = 763
        Top = 72
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2018.770833333333000000
          190.500000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page1'
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
      object QRDBText10: TQRDBText
        Left = 760
        Top = 48
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2010.833333333333000000
          127.000000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelOther_O.DelMas
        DataField = 'PMark'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 460
        Top = 22
        Width = 61
        Height = 61
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1217.083333333333000000
          58.208333333333330000
          161.395833333333300000)
        Center = True
        Stretch = True
      end
    end
    object DetailBand1: TQRBand
      Left = 4
      Top = 154
      Width = 805
      Height = 39
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
        103.187500000000000000
        2129.895833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRSysData1: TQRSysData
        Left = 42
        Top = 10
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          111.125000000000000000
          26.458333333333330000
          39.687500000000000000)
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
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 64
        Top = 10
        Width = 30
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          26.458333333333330000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'CLBH'
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
      object QRDBText6: TQRDBText
        Left = 136
        Top = 2
        Width = 313
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          359.833333333333400000
          5.291666666666667000
          828.145833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DelDet
        DataField = 'ZWPM'
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
      object QRDBText7: TQRDBText
        Left = 448
        Top = 10
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1185.333333333333000000
          26.458333333333330000
          92.604166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'DWBH'
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
      object QRDBText8: TQRDBText
        Left = 492
        Top = 10
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1301.750000000000000000
          26.458333333333330000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DelDet
        DataField = 'TempQty'
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
      object QRDBText11: TQRDBText
        Left = 608
        Top = 2
        Width = 193
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1608.666666666667000000
          5.291666666666667000
          510.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DelDet
        DataField = 'MEMO1'
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
      object QRDBText9: TQRDBText
        Left = 136
        Top = 18
        Width = 313
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          359.833333333333400000
          47.625000000000000000
          828.145833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DelDet
        DataField = 'YWPM'
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
    end
    object PageFooterBand1: TQRBand
      Left = 4
      Top = 193
      Width = 805
      Height = 69
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
        182.562500000000000000
        2129.895833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object ManagerSign: TQRImage
        Left = 197
        Top = 29
        Width = 70
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          521.229166666666700000
          76.729166666666670000
          185.208333333333300000)
        Stretch = True
      end
      object ApplicantSign: TQRImage
        Left = 691
        Top = 29
        Width = 70
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1828.270833333333000000
          76.729166666666670000
          185.208333333333300000)
        Stretch = True
      end
      object ConfirmorSign: TQRImage
        Left = 499
        Top = 29
        Width = 70
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1320.270833333333000000
          76.729166666666670000
          185.208333333333300000)
        Stretch = True
      end
      object Approver2Sign: TQRImage
        Left = 286
        Top = 29
        Width = 70
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          756.708333333333300000
          76.729166666666670000
          185.208333333333300000)
        Stretch = True
      end
      object DirectorSign: TQRImage
        Left = 48
        Top = 31
        Width = 74
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          127.000000000000000000
          82.020833333333330000
          195.791666666666700000)
        Stretch = True
      end
      object QRDBText13: TQRDBText
        Left = 63
        Top = 46
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          166.687500000000000000
          121.708333333333300000
          105.833333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Director'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 53
        Top = 64
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          140.229166666666700000
          169.333333333333300000
          164.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'DirectorDate'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 295
        Top = 40
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          780.520833333333300000
          105.833333333333300000
          137.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Approver2'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 284
        Top = 55
        Width = 74
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          751.416666666666700000
          145.520833333333300000
          195.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Approver2Date'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 509
        Top = 40
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1346.729166666667000000
          105.833333333333300000
          132.291666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Confirmor'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 498
        Top = 55
        Width = 72
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1317.625000000000000000
          145.520833333333300000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'ConfirmorDate'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 702
        Top = 40
        Width = 47
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1857.375000000000000000
          105.833333333333300000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Applicant'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 691
        Top = 55
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1828.270833333333000000
          145.520833333333300000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'ApplicantDate'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object Approver1Sign: TQRImage
        Left = 372
        Top = 29
        Width = 70
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          984.250000000000000000
          76.729166666666670000
          185.208333333333300000)
        Stretch = True
      end
      object QRDBText21: TQRDBText
        Left = 381
        Top = 40
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1008.062500000000000000
          105.833333333333300000
          137.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Approver1'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 370
        Top = 55
        Width = 74
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          978.958333333333300000
          145.520833333333300000
          195.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Approver1Date'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 212
        Top = 40
        Width = 41
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          560.916666666666700000
          105.833333333333300000
          108.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Manager'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText24: TQRDBText
        Left = 201
        Top = 56
        Width = 63
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          531.812500000000000000
          148.166666666666700000
          166.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'ManagerDate'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText25: TQRDBText
        Left = 377
        Top = 40
        Width = 61
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          997.479166666666700000
          105.833333333333300000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Supvervisor1'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText26: TQRDBText
        Left = 366
        Top = 55
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          968.375000000000000000
          145.520833333333300000
          219.604166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'Supvervisor1Date'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object DelDet: TQuery
    AutoCalcFields = False
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DelOther_O.DS3
    RequestLive = True
    SQL.Strings = (
      
        'SELECT KCLLS.*, CLZL.YWPM, CLZL.DWBH, SCBLYY.YWSM, CONVERT(TEXT,' +
        ' KCLLS.MEMO) AS MEMO1, SCBLYY.ZWSM, CLZL.ZWPM FROM KCLLS'
      'LEFT JOIN CLZL ON CLZL.CLDH = KCLLS.CLBH'
      'LEFT JOIN SCBLYY ON SCBLYY.YYBH = KCLLS.YYBH'
      'WHERE KCLLS.LLNO = :LLNO'
      'ORDER BY KCLLS.DFL, KCLLS.CLBH, KCLLS.SCBH')
    UpdateObject = UPDet
    Left = 92
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetTempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object DelDetYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object DelDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object DelDetMEMO: TStringField
      DisplayWidth = 250
      FieldName = 'MEMO'
      Size = 250
    end
    object DelDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object DelDetMEMO1: TMemoField
      FieldName = 'MEMO1'
      BlobType = ftMemo
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  LLNO = :LLNO,'
      '  CLBH = :CLBH,'
      '  DFL = :DFL,'
      '  SCBH = :SCBH,'
      '  TempQty = :TempQty,'
      '  Qty = :Qty,'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice,'
      '  CWHL = :CWHL,'
      '  CostID = :CostID,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  CLSL = :CLSL,'
      '  YYBH = :YYBH,'
      '  VNACC = :VNACC,'
      '  MEMO = :MEMO'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    InsertSQL.Strings = (
      'insert into KCLLS'
      
        '  (LLNO, CLBH, DFL, SCBH, TempQty, Qty, USPrice, VNPrice, CWHL, ' +
        'CostID, '
      '   USERDATE, USERID, YN, CLSL, YYBH, VNACC, MEMO)'
      'values'
      
        '  (:LLNO, :CLBH, :DFL, :SCBH, :TempQty, :Qty, :USPrice, :VNPrice' +
        ', :CWHL, '
      
        '   :CostID, :USERDATE, :USERID, :YN, :CLSL, :YYBH, :VNACC, :MEMO' +
        ')')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 92
    Top = 67
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 340
    Top = 43
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DelOther_O.DS3
    SQL.Strings = (
      'SELECT DFL FROM KCCK WHERE CKBH = :CKBH')
    Left = 124
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CKBH'
        ParamType = ptUnknown
      end>
    object Query1DFL: TStringField
      FieldName = 'DFL'
      Size = 1
    end
  end
  object QApprover: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT LLNO, flowflag, ApplicantID, Applicant, ApplicantDate, KC' +
        'LL.CFMID AS ConfirmorID, BUsers.UserName AS Confirmor,'
      
        '      CONVERT(VARCHAR, CFMDate, 111) AS ConfirmorDate, ManagerID' +
        ' , Manager ,'
      '      ManagerDate , DirectorID , Director , DirectorDate ,'
      
        '      Approver1ID, Approver1, Approver1Date, Supvervisor1ID, Sup' +
        'vervisor1, Supvervisor1Date, Approver2ID, Approver2 , Approver2D' +
        'ate FROM KCLL'
      'LEFT JOIN BUsers ON BUsers.USERID = KCLL.CFMID'
      'LEFT JOIN ('
      
        ' SELECT MAX(CASE WHEN S_STEP_DESC = '#39#30003#35531#20154#39'  THEN S_USER_ID END) A' +
        'S ApplicantID,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#30003#35531#20154#39'  THEN USERNAME END) AS Appli' +
        'cant,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#30003#35531#20154#39'  THEN ApproveDate END) AS Ap' +
        'plicantDate,  '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#21934#20301#20027#31649#39') or (S_STEP_DESC = '#39#30003#35531#20154#39' ' +
        'and LEVEL_NO>0))  THEN S_USER_ID END) AS SupvervisorID,  '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#21934#20301#20027#31649#39') or (S_STEP_DESC = '#39#30003#35531#20154#39' ' +
        'and LEVEL_NO>0)) THEN USERNAME END) AS Supvervisor,  '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#21934#20301#20027#31649#39') or (S_STEP_DESC = '#39#30003#35531#20154#39' ' +
        'and LEVEL_NO>0)) THEN ApproveDate END) AS SupvervisorDate,  '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#37096#38272#20027#31649#39') or (S_STEP_DESC = '#39#21934#20301#20027#31649#39 +
        ' and LEVEL_NO>10) or (S_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>10) ) THE' +
        'N S_USER_ID END) AS ManagerID,    '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#37096#38272#20027#31649#39') or (S_STEP_DESC = '#39#21934#20301#20027#31649#39 +
        ' and LEVEL_NO>10) or (S_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>10) ) THE' +
        'N USERNAME END) AS Manager,    '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#37096#38272#20027#31649#39') or (S_STEP_DESC = '#39#21934#20301#20027#31649#39 +
        ' and LEVEL_NO>10) or (S_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>10) ) THE' +
        'N ApproveDate END) AS ManagerDate,    '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#24288#20027#31649#39') or (S_STEP_DESC = '#39#37096#38272#20027#31649#39' ' +
        'and LEVEL_NO>20) or (S_STEP_DESC = '#39#21934#20301#20027#31649#39' and LEVEL_NO>20) or (S' +
        '_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>20) )  THEN S_USER_ID END) AS Di' +
        'rectorID,    '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#24288#20027#31649#39') or (S_STEP_DESC = '#39#37096#38272#20027#31649#39' ' +
        'and LEVEL_NO>20) or (S_STEP_DESC = '#39#21934#20301#20027#31649#39' and LEVEL_NO>20) or (S' +
        '_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>20) ) THEN USERNAME END) AS Dire' +
        'ctor,    '
      
        '  MAX(CASE WHEN ((S_STEP_DESC = '#39#24288#20027#31649#39') or (S_STEP_DESC = '#39#37096#38272#20027#31649#39' ' +
        'and LEVEL_NO>20) or (S_STEP_DESC = '#39#21934#20301#20027#31649#39' and LEVEL_NO>20) or (S' +
        '_STEP_DESC = '#39#30003#35531#20154#39' and LEVEL_NO>20) ) THEN ApproveDate END) AS D' +
        'irectorDate,    '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#20225#21123#20027#31649#39' THEN S_USER_ID END) AS Appr' +
        'over1ID,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#20225#21123#20027#31649#39' THEN USERNAME END) AS Appro' +
        'ver1,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#20225#21123#20027#31649#39' THEN ApproveDate END) AS Ap' +
        'prover1Date,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#21209#21934#20301#20027#31649#39' THEN S_USER_ID END) AS Su' +
        'pvervisor1ID,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#21209#21934#20301#20027#31649#39' THEN USERNAME END) AS Sup' +
        'vervisor1,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#21209#21934#20301#20027#31649#39' THEN ApproveDate END) AS ' +
        'Supvervisor1Date,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#23529#26680#39' THEN S_USER_ID END) AS Appro' +
        'ver2ID,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#23529#26680#39' THEN USERNAME END) AS Approv' +
        'er2,  '
      
        '  MAX(CASE WHEN S_STEP_DESC = '#39#32317#23529#26680#39' THEN ApproveDate END) AS App' +
        'rover2Date  '
      '       FROM (  '
      '      '
      
        '    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 11' +
        '1) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, S_STEP_DESC,' +
        ' ROW_NUMBER() OVER ( ORDER BY ApproveDate) AS Seq FROM (  '
      
        '      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC,Ma' +
        'x(ApproveDate) as ApproveDate from (  '
      
        '      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE ' +
        '+ '#39' '#39' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,' +
        'S_STEP_DESC,  '
      
        '      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT' +
        '(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) DESC) AS RowID FROM ' +
        '[EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  '
      
        '      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() O' +
        'VER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[S' +
        'YS_ORG]  ) AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID' +
        ' --and SYS_ORG.ORG_KIND='#39'1000'#39'  '
      
        '      WHERE FORM_TABLE = '#39'KCLL'#39' AND STATUS IN ('#39'N'#39', '#39'Z'#39') AND FOR' +
        'M_PRESENTATION LIKE '#39'%20230500001%'#39'  '
      
        '      '#9'  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STE' +
        'P_DESC  '
      '    ) AS ApproveData    '
      '  ) AS ApproveData'
      ''
      ') AS ApproveData ON 1 = 1'
      'WHERE KCLL.LLNO = '#39'20230500001'#39)
    Left = 123
    Top = 65
    object QApproverLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object QApproverflowflag: TStringField
      FieldName = 'flowflag'
      FixedChar = True
      Size = 1
    end
    object QApproverApplicantID: TStringField
      FieldName = 'ApplicantID'
      FixedChar = True
      Size = 40
    end
    object QApproverApplicant: TStringField
      FieldName = 'Applicant'
      FixedChar = True
      Size = 60
    end
    object QApproverApplicantDate: TStringField
      FieldName = 'ApplicantDate'
      FixedChar = True
      Size = 30
    end
    object QApproverConfirmorID: TStringField
      FieldName = 'ConfirmorID'
      FixedChar = True
      Size = 15
    end
    object QApproverConfirmor: TStringField
      FieldName = 'Confirmor'
      FixedChar = True
      Size = 30
    end
    object QApproverConfirmorDate: TStringField
      FieldName = 'ConfirmorDate'
      FixedChar = True
      Size = 30
    end
    object QApproverManagerID: TStringField
      FieldName = 'ManagerID'
      FixedChar = True
      Size = 40
    end
    object QApproverManager: TStringField
      FieldName = 'Manager'
      FixedChar = True
      Size = 60
    end
    object QApproverManagerDate: TStringField
      FieldName = 'ManagerDate'
      FixedChar = True
      Size = 30
    end
    object QApproverDirectorID: TStringField
      FieldName = 'DirectorID'
      FixedChar = True
      Size = 40
    end
    object QApproverDirector: TStringField
      FieldName = 'Director'
      FixedChar = True
      Size = 60
    end
    object QApproverDirectorDate: TStringField
      FieldName = 'DirectorDate'
      FixedChar = True
      Size = 30
    end
    object QApproverApprover1ID: TStringField
      FieldName = 'Approver1ID'
      FixedChar = True
      Size = 40
    end
    object QApproverApprover1: TStringField
      FieldName = 'Approver1'
      FixedChar = True
      Size = 60
    end
    object QApproverApprover1Date: TStringField
      FieldName = 'Approver1Date'
      FixedChar = True
      Size = 30
    end
    object QApproverSupvervisor1ID: TStringField
      FieldName = 'Supvervisor1ID'
      FixedChar = True
      Size = 40
    end
    object QApproverSupvervisor1: TStringField
      FieldName = 'Supvervisor1'
      FixedChar = True
      Size = 60
    end
    object QApproverSupvervisor1Date: TStringField
      FieldName = 'Supvervisor1Date'
      FixedChar = True
      Size = 30
    end
    object QApproverApprover2ID: TStringField
      FieldName = 'Approver2ID'
      FixedChar = True
      Size = 40
    end
    object QApproverApprover2: TStringField
      FieldName = 'Approver2'
      FixedChar = True
      Size = 60
    end
    object QApproverApprover2Date: TStringField
      FieldName = 'Approver2Date'
      FixedChar = True
      Size = 30
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SET ANSI_NULLS ON '
      'SET ANSI_WARNINGS ON ')
    Left = 163
    Top = 65
  end
end
