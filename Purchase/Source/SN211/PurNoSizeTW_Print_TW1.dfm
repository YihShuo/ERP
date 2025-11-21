object PurNoSizeTW_Print_TW: TPurNoSizeTW_Print_TW
  Left = 596
  Top = 119
  Width = 1178
  Height = 661
  Caption = 'PurNoSizeTW_Print_TW'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 869
    Height = 577
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Mas
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
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1526.645833333333000000
      100.000000000000000000
      2299.229166666667000000
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
      Width = 793
      Height = 155
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
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        410.104166666666700000
        2098.145833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QPage1: TQRLabel
        Left = 694
        Top = 128
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1836.208333333333000000
          338.666666666666700000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 689
        Top = 128
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1822.979166666667000000
          338.666666666666700000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '/'
        Color = clWhite
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
      object QRSysData2: TQRSysData
        Left = 652
        Top = 128
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333333000000
          338.666666666666700000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 429
        Top = 127
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1135.062500000000000000
          336.020833333333300000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'CGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 673
        Top = 47
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          124.354166666666700000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'CGDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 70
        Top = 81
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          214.312500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
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
        Left = 183
        Top = 11
        Width = 19
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          29.104166666666670000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'DH'
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
      object QRDBText11: TQRDBText
        Left = 184
        Top = 35
        Width = 17
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          92.604166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'CZ'
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
      object L6: TQRLabel
        Left = 622
        Top = 46
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          121.708333333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date PO:'
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
      object L7: TQRLabel
        Left = 404
        Top = 127
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          336.020833333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NO:'
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
      object L5: TQRLabel
        Left = 623
        Top = 99
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          261.937500000000000000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FAX:+84-70-3962093'
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
      object L4: TQRLabel
        Left = 404
        Top = 99
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          261.937500000000000000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TEL: +84-70-3962052'
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
      object L3: TQRLabel
        Left = 9
        Top = 81
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          214.312500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mat Supp:'
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
      object L1: TQRLabel
        Left = 264
        Top = 7
        Width = 250
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          698.500000000000000000
          18.520833333333330000
          661.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONG TY TNHH TY XUAN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object L2: TQRLabel
        Left = 272
        Top = 36
        Width = 228
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          719.666666666666700000
          95.250000000000000000
          603.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PHIEU DAT MUA HANG'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText12: TQRDBText
        Left = 657
        Top = 7
        Width = 36
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1738.312500000000000000
          18.520833333333330000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'GSBH'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L8: TQRLabel
        Left = 404
        Top = 80
        Width = 378
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          211.666666666666700000
          1000.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Company address: HoaPhu Industrial Zone, Vinh Long Prince, Vietn' +
          'am'
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
      object L9: TQRLabel
        Left = 404
        Top = 64
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          169.333333333333300000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BUYNO:'
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
      object L10: TQRLabel
        Left = 539
        Top = 8
        Width = 108
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          21.166666666666670000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BRAND: Converse/'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object NoteInfo: TQRLabel
        Left = 69
        Top = 134
        Width = 47
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          182.562500000000000000
          354.541666666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NoteInfo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L11: TQRLabel
        Left = 712
        Top = 9
        Width = 23
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1883.833333333333000000
          23.812500000000000000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'L11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L12: TQRLabel
        Left = 9
        Top = 61
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          161.395833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Supplier:'
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
      object QRDBText13: TQRDBText
        Left = 64
        Top = 61
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          161.395833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PurNoSize.CGMas
        DataField = 'zsywjctw'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object L_address: TQRLabel
        Left = 8
        Top = 101
        Width = 377
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          21.166666666666670000
          267.229166666666700000
          997.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Supplier address:'
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
      object QRLabel2: TQRLabel
        Left = 622
        Top = 62
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          164.041666666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date:'
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
      object QRDBText15: TQRDBText
        Left = 655
        Top = 62
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1733.020833333333000000
          164.041666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'YQDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 623
        Top = 128
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          338.666666666666700000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page:'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 193
      Width = 793
      Height = 32
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
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        84.666666666666670000
        2098.145833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 96
        Top = 8
        Width = 297
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          21.166666666666670000
          785.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Mas
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
      object QRDBText2: TQRDBText
        Left = 520
        Top = 4
        Width = 249
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1375.833333333333000000
          10.583333333333330000
          658.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Mas
        DataField = 'ZLNO'
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
        Left = 395
        Top = 8
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1045.104166666667000000
          21.166666666666670000
          92.604166666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Mas
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
      object QRDBText5: TQRDBText
        Left = 458
        Top = 8
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1211.791666666667000000
          21.166666666666670000
          42.333333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Mas
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
      object QRDBText6: TQRDBText
        Left = 480
        Top = 8
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          21.166666666666670000
          108.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Mas
        DataField = 'YQDate'
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
      object QRDBText7: TQRDBText
        Left = 26
        Top = 8
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          21.166666666666670000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Mas
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
      object QRSysData1: TQRSysData
        Left = 0
        Top = 8
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          21.166666666666670000
          66.145833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Transparent = False
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 96
        Top = 8
        Width = 297
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.000000000000000000
          254.000000000000000000
          21.166666666666670000
          786.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Mas
        DataField = 'ZWPM'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 225
      Width = 793
      Height = 288
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
        762.000000000000000000
        2098.145833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel1: TQRLabel
        Left = 440
        Top = 214
        Width = 187
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1164.166666666667000000
          566.208333333333300000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21934#20301#20027#31649'(Material management)'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage2: TQRImage
        Left = 471
        Top = 232
        Width = 120
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1246.187500000000000000
          613.833333333333300000
          317.500000000000000000)
        Stretch = True
      end
      object QRImage1: TQRImage
        Left = 650
        Top = 232
        Width = 120
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1719.791666666667000000
          613.833333333333300000
          317.500000000000000000)
        Stretch = True
      end
      object QRLabel4: TQRLabel
        Left = 637
        Top = 214
        Width = 144
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1685.395833333333000000
          566.208333333333300000
          381.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25505#36092#21729'(Purchasing staff)'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 8
        Top = 3
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          320.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20633#27880'/Remark:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 34
        Top = 18
        Width = 425
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          47.625000000000000000
          1124.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1. '#38991#33394#24050#25353#38918#24207#27161#35387','#38656#36981#24490'CSI'#12290#22914#26377#20219#20309#30097#21839','#35531#21578#35380#25105#12290
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
      object QRLabel7: TQRLabel
        Left = 44
        Top = 33
        Width = 425
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          87.312500000000000000
          1124.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'The color had noted in order & need to follow CSI. If any questi' +
          'on, pls let me know.'
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
      object QRLabel8: TQRLabel
        Left = 44
        Top = 49
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          129.645833333333300000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Mau sac da duoc ghi chu trong don hang & can lam theo CSI. Neu c' +
          'o bat cu cau hoi nao, xin vui long cho toi biet.'
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
      object QRLabel9: TQRLabel
        Left = 35
        Top = 65
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          92.604166666666670000
          171.979166666666700000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2.'#22914#26524#24744#25910#21040#35330#21934'2'#22825#21518#36996#27794#26377#25910#21040'C/S,'#35531#24171#21161#21453#39243#12290
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
      object QRLabel10: TQRLabel
        Left = 44
        Top = 81
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          214.312500000000000000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Pls help to feed back if you have not received C/S after 2days y' +
          'ou received orders.'
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
      object QRLabel11: TQRLabel
        Left = 44
        Top = 96
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          254.000000000000000000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Sau 2 ngay nhan don hang , vui long phan hoi cho chung toi biet ' +
          'neu ban khong nhan duoc mau'
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
      object QRLabel12: TQRLabel
        Left = 35
        Top = 111
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          92.604166666666670000
          293.687500000000000000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3. '#36889#20123#35330#21934#21487#20197#22312'3'#22825#20839#30001#23458#25142#20462#25913','#25152#20197#22914#26524#26377#20219#20309#20132#25563','#25105#20497#26371#31435#21363#20462#25913#32102#24744' '
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
      object QRLabel13: TQRLabel
        Left = 44
        Top = 126
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          333.375000000000000000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Those orders can be revised in 3 days by customers so if have an' +
          'y exchange, we will revise to you immediately.'
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
      object QRLabel14: TQRLabel
        Left = 44
        Top = 142
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          375.708333333333300000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Khach hang co the chinh sua don trong vong 3 ngay, neu co bat ki' +
          ' thay doi nao, chung toi se gui cho ban ngay lap tuc.'
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
      object QRLabel15: TQRLabel
        Left = 35
        Top = 159
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          92.604166666666670000
          420.687500000000000000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '4.'#35531#25552#20379'1%'#25613#22833
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
      object QRLabel16: TQRLabel
        Left = 44
        Top = 175
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          463.020833333333300000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Please provide 1% loss'
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
      object QRLabel17: TQRLabel
        Left = 44
        Top = 191
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          505.354166666666700000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Vui long cung cap 1% loss'
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
      object QRLabel18: TQRLabel
        Left = 242
        Top = 214
        Width = 184
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          640.291666666666700000
          566.208333333333300000
          486.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37096#38272#20027#31649'(Purchasing Manager)'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImage3: TQRImage
        Left = 273
        Top = 232
        Width = 120
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          722.312500000000000000
          613.833333333333300000
          317.500000000000000000)
        Stretch = True
      end
      object QRImage4: TQRImage
        Left = 54
        Top = 232
        Width = 120
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          142.875000000000000000
          613.833333333333300000
          317.500000000000000000)
        Stretch = True
      end
      object QRLabel19: TQRLabel
        Left = 16
        Top = 214
        Width = 210
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          42.333333333333330000
          566.208333333333300000
          555.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37096#38272#26368#39640#20027#31649'(Production Director)'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 13
        Top = 208
        Width = 770
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          34.395833333333330000
          550.333333333333300000
          2037.291666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 13
        Top = 285
        Width = 770
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          34.395833333333330000
          754.062500000000000000
          2037.291666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 13
        Top = 209
        Width = 1
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          34.395833333333330000
          552.979166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 235
        Top = 209
        Width = 1
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          621.770833333333300000
          552.979166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 434
        Top = 209
        Width = 1
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          1148.291666666667000000
          552.979166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 635
        Top = 209
        Width = 1
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          1680.104166666667000000
          552.979166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 782
        Top = 209
        Width = 1
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          2069.041666666667000000
          552.979166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 13
        Top = 230
        Width = 770
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          34.395833333333330000
          608.541666666666700000
          2037.291666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QR_ApplicantDate: TQRDBText
        Left = 687
        Top = 270
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1817.687500000000000000
          714.375000000000000000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'ApplicantDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText16: TQRDBText
        Left = 499
        Top = 270
        Width = 68
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1320.270833333333000000
          714.375000000000000000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'WarehouseDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText17: TQRDBText
        Left = 303
        Top = 270
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          801.687500000000000000
          714.375000000000000000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'PurchaseDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText18: TQRDBText
        Left = 78
        Top = 270
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          714.375000000000000000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QApprover
        DataField = 'PurchaseDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 513
      Width = 793
      Height = 26
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
        68.791666666666670000
        2098.145833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object L20: TQRLabel
        Left = 658
        Top = 3
        Width = 119
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1740.958333333333000000
          7.937500000000000000
          314.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T-KH-QP009-11A(ERP)'
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
    end
  end
  object Mas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = PurNoSize.DS3
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
      ''
      'select  #CGZLP.*,CLZL.YWPM,CLZL.DWBH,CLZL.ZWPM'
      'from #CGZLP'
      'left join CLZL on CLZL.CLDH= #CGZLP.CLBH '
      'order by #CGZLP.CLBH')
    UpdateObject = UpdateSQL1
    Left = 32
    Top = 24
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
    object MasYQDate: TDateTimeField
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
    object MasZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
  object Det: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select CGZLSS.ZLBH,CGZLSS.Qty,DDZL.Article,xxzl.xieming'
      'from CGZLSS'
      'left join DDZL on DDZL.DDBH=CGZLSS.ZLBH'
      
        'left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.shehao=xxzl' +
        '.shehao'
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH')
    Left = 32
    Top = 48
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
    Left = 72
    Top = 24
  end
  object UpdateSQL1: TUpdateSQL
    Left = 112
    Top = 24
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 294
    Top = 22
  end
  object SeasonQ: TQuery
    DatabaseName = 'DB'
    DataSource = PurNoSize.DS3
    SQL.Strings = (
      'select DDZL.GSBH,MAX(DDZL.BUYNO) as BUYNO from DDZL'
      'left join CGZLSS on DDZL.ZLBH = CGZLSS.ZLBH '
      
        'where DDZL.DDBH in (select ZLBH from CGZLSS where CGNO =:CGNO GR' +
        'OUP by ZLBH)'
      'and DDZL.GSBH = '#39'VA12'#39
      'group by DDZL.GSBH'
      '')
    Left = 168
    Top = 24
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object SeasonQGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SeasonQBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 256
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PurNoSize.DS3
    SQL.Strings = (
      'select max(YQDate) as YQDate'
      'from cgzls'
      'where CGNO =:CGNO '
      ''
      '')
    Left = 168
    Top = 48
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLS.YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object QApprover: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.122'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(CASE WHEN S_STEP_ID = '#39#21046#34920#39' THEN S_USER_ID END) AS App' +
        'licantID,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#21046#34920#39' THEN USERNAM' +
        'E END) AS Applicant,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#21046#34920#39' THEN Approve' +
        'Date END) AS ApplicantDate, '
      
        #9#9#9#9#9' MAX(CASE WHEN S_STEP_ID Like '#39#36039#26448#20027#31649'%'#39' THEN S_USER_ID END) A' +
        'S WarehouseID,  '
      
        '                     MAX(CASE WHEN S_STEP_ID Like '#39#36039#26448#20027#31649'%'#39' THEN U' +
        'SERNAME END) AS Warehouse,  '
      
        '                     MAX(CASE WHEN S_STEP_ID Like '#39#36039#26448#20027#31649'%'#39' THEN A' +
        'pproveDate END) AS WarehouseDate,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#25505#36092#20027#31649#39' THEN S_USE' +
        'R_ID END) AS PurchaseID,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#25505#36092#20027#31649#39' THEN USERN' +
        'AME END) AS Purchase,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#25505#36092#20027#31649#39' THEN Appro' +
        'veDate END) AS PurchaseDate,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#21332#29702#39'  THEN S_USER' +
        '_ID END) AS APressidentID,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#21332#29702#39'  THEN USERNA' +
        'ME END) AS APressident,  '
      
        '                     MAX(CASE WHEN S_STEP_ID = '#39#21332#29702#39'  THEN Approv' +
        'eDate END) AS APressidentDate FROM (  '
      
        '                      SELECT S_STEP_ID, REPLACE(S_USER_ID, '#39' '#39', ' +
        #39#39') AS S_USER_ID, USERNAME, ApproveDate, ROW_NUMBER() OVER (ORDE' +
        'R BY ApproveDate) AS Seq '
      #9#9#9#9#9'  FROM (  '
      
        '                        SELECT S_STEP_ID, S_USER_ID, USERNAME, C' +
        'ONVERT(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) AS ApproveDate' +
        ',  '
      
        '                        ROW_NUMBER() OVER (PARTITION BY S_STEP_I' +
        'D ORDER BY CONVERT(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) DE' +
        'SC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] SYS_TODOHIS' +
        '  '
      
        '                        WHERE FORM_TABLE = '#39'WF_PurchaseList'#39' AND' +
        ' FORM_PRESENTATION LIKE '#39'%R20240319040%'#39' AND STATUS IN ('#39'N'#39', '#39'Z'#39 +
        ')  '
      '                        UNION ALL  '
      
        '                        SELECT '#39#21046#34920#39', CGZL.UserID COLLATE Chinese' +
        '_PRC_CI_AS AS UserID,  '
      
        '                        BUsers.UserName COLLATE Chinese_PRC_CI_A' +
        'S AS UserName,  '
      '                        CGZL.UserDate, 1 FROM  WF_PurchaseList  '
      
        '                        LEFT JOIN CGZL ON CGZL.CGNO = WF_Purchas' +
        'eList.CGNO  '
      
        '                        LEFT JOIN BUsers ON BUsers.UserID = CGZL' +
        '.UserID  '
      '                        WHERE LNO = '#39'R20240319040'#39'  '
      '                      ) AS ApproveData  '
      '                      WHERE RowID = 1  '
      '                     ) AS ApproveData '
      '')
    Left = 108
    Top = 67
    object QApproverApplicantID: TWideStringField
      FieldName = 'ApplicantID'
      ReadOnly = True
      Size = 4000
    end
    object QApproverApplicant: TWideStringField
      FieldName = 'Applicant'
      ReadOnly = True
      Size = 30
    end
    object QApproverApplicantDate: TDateTimeField
      FieldName = 'ApplicantDate'
      ReadOnly = True
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QApproverWarehouseID: TWideStringField
      FieldName = 'WarehouseID'
      ReadOnly = True
      Size = 4000
    end
    object QApproverWarehouse: TWideStringField
      FieldName = 'Warehouse'
      ReadOnly = True
      Size = 30
    end
    object QApproverWarehouseDate: TDateTimeField
      FieldName = 'WarehouseDate'
      ReadOnly = True
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QApproverPurchaseID: TWideStringField
      FieldName = 'PurchaseID'
      ReadOnly = True
      Size = 4000
    end
    object QApproverPurchase: TWideStringField
      FieldName = 'Purchase'
      ReadOnly = True
      Size = 30
    end
    object QApproverPurchaseDate: TDateTimeField
      FieldName = 'PurchaseDate'
      ReadOnly = True
      DisplayFormat = 'YYYY/MM/DD'
    end
    object QApproverAPressidentID: TWideStringField
      FieldName = 'APressidentID'
      ReadOnly = True
      Size = 4000
    end
    object QApproverAPressident: TWideStringField
      FieldName = 'APressident'
      ReadOnly = True
      Size = 30
    end
    object QApproverAPressidentDate: TDateTimeField
      FieldName = 'APressidentDate'
      ReadOnly = True
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
end
