object EquipmentAccountConfirm_print: TEquipmentAccountConfirm_print
  Left = 0
  Top = 0
  Caption = 'EquipmentAccountConfirm_print'
  ClientHeight = 749
  ClientWidth = 940
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
    Left = 24
    Top = 24
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = KCRKSQry
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
      Height = 258
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
        682.625000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 211
        Top = 55
        Width = 304
        Height = 28
        Size.Values = (
          74.083333333333330000
          558.270833333333300000
          145.520833333333300000
          804.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'PHI'#7870'U NH'#7852'P T'#192'I S'#7842'N C'#7888' '#272#7882'NH'
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
      object QRSysData1: TQRSysData
        Left = 674
        Top = 1
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          1783.291666666667000000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 716
        Top = 1
        Width = 4
        Height = 15
        Size.Values = (
          39.687500000000000000
          1894.416666666667000000
          2.645833333333333000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '/'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Page1: TQRLabel
        Left = 722
        Top = 1
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          1910.291666666667000000
          2.645833333333333000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 5
        Top = 15
        Width = 158
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          39.687500000000000000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#212'NG TY TNHH T'#7926' XU'#194'N'
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
      object L1: TQRLabel
        Left = 275
        Top = 78
        Width = 172
        Height = 27
        Size.Values = (
          71.437500000000000000
          727.604166666666700000
          206.375000000000000000
          455.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #22266' '#23450' '#36001' '#29986' '#20837' '#24235' '#21934
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 33
        Width = 129
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          87.312500000000000000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20740#26149#36012#20219#26377#38480#20844#21496
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
        Left = 5
        Top = 112
        Width = 162
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          296.333333333333300000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#234'n nh'#224' cung '#7913'ng '#24288#21830#21517':'
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
      object QRLabel9: TQRLabel
        Left = 5
        Top = 157
        Width = 204
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          415.395833333333300000
          539.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' h'#243'a '#273#417'n/S'#7889' Invoice '#30332#31080#34399#30908':'
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
        Left = 5
        Top = 228
        Width = 130
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          603.250000000000000000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nh'#7853'p t'#7841'i kho '#20837#24235#22312':'
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
      object QRLabel11: TQRLabel
        Left = 555
        Top = 134
        Width = 71
        Height = 21
        Size.Values = (
          55.562500000000000000
          1468.437500000000000000
          354.541666666666700000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#417#803' TK : 211'
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
        Left = 555
        Top = 157
        Width = 70
        Height = 21
        Size.Values = (
          55.562500000000000000
          1468.437500000000000000
          415.395833333333300000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243' TK : 331'
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
      object QRLabel21: TQRLabel
        Left = 555
        Top = 182
        Width = 77
        Height = 21
        Size.Values = (
          55.562500000000000000
          1468.437500000000000000
          481.541666666666700000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243' TK : 3333'
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
      object QRLabel_DOCdate: TQRLabel
        Left = 325
        Top = 157
        Width = 124
        Height = 21
        Size.Values = (
          55.562500000000000000
          859.895833333333300000
          415.395833333333300000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y      th'#225'ng      n'#259'm '
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
      object QRLabel23: TQRLabel
        Left = 441
        Top = 228
        Width = 76
        Height = 18
        Size.Values = (
          47.625000000000000000
          1166.812500000000000000
          603.250000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ty'#777' gi'#225' '#27719#29575':'
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
        Left = 575
        Top = 15
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          1521.354166666667000000
          39.687500000000000000
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
      object QRLabel_ALLVNACC: TQRLabel
        Left = 638
        Top = 134
        Width = 69
        Height = 21
        Size.Values = (
          55.562500000000000000
          1688.041666666667000000
          354.541666666666700000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ALLVNACC'
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
      object QRLabel_VNACC: TQRLabel
        Left = 638
        Top = 157
        Width = 46
        Height = 21
        Size.Values = (
          55.562500000000000000
          1688.041666666667000000
          415.395833333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VNACC'
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
      object QRLabel_VNACC_Tax: TQRLabel
        Left = 638
        Top = 182
        Width = 74
        Height = 21
        Size.Values = (
          55.562500000000000000
          1688.041666666667000000
          481.541666666666700000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VNACC_Tax'
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
      object QRLabel_DOCNO: TQRLabel
        Left = 209
        Top = 157
        Width = 46
        Height = 21
        Size.Values = (
          55.562500000000000000
          552.979166666666700000
          415.395833333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOCNO'
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
      object QRLabel_ZSJC: TQRLabel
        Left = 170
        Top = 112
        Width = 32
        Height = 21
        Size.Values = (
          55.562500000000000000
          449.791666666666700000
          296.333333333333300000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ZSJC'
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
      object QRLabel_CWHL: TQRLabel
        Left = 523
        Top = 228
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          1383.770833333333000000
          603.250000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CWHL'
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
      object QRLabel_RKNO: TQRLabel
        Left = 633
        Top = 15
        Width = 38
        Height = 18
        Size.Values = (
          47.625000000000000000
          1674.812500000000000000
          39.687500000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RKNO'
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
      object QRLabel22: TQRLabel
        Left = 5
        Top = 181
        Width = 148
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          478.895833333333300000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' h'#7907'p '#273#7891'ng '#21512#32004#21934#34399':'
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
      object QRLabel_HDDate: TQRLabel
        Left = 325
        Top = 181
        Width = 121
        Height = 21
        Size.Values = (
          55.562500000000000000
          859.895833333333300000
          478.895833333333300000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y      th'#225'ng      n'#259'm'
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
      object QRLabel_HDNO: TQRLabel
        Left = 153
        Top = 181
        Width = 37
        Height = 21
        Size.Values = (
          55.562500000000000000
          404.812500000000000000
          478.895833333333300000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HDNO'
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
      object QRLabel47: TQRLabel
        Left = 5
        Top = 133
        Width = 81
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          351.895833333333300000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' hi'#7879'u'#32232#34399':'
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
      object QRLabel48: TQRLabel
        Left = 5
        Top = 205
        Width = 134
        Height = 21
        Size.Values = (
          55.562500000000000000
          13.229166666666670000
          542.395833333333300000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#7889' t'#7901' khai '#22577#38364#21934#34399':'
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
      object QRLabel_TKDate: TQRLabel
        Left = 325
        Top = 205
        Width = 121
        Height = 21
        Size.Values = (
          55.562500000000000000
          859.895833333333300000
          542.395833333333300000
          320.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y      th'#225'ng      n'#259'm'
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
      object QRLabel_SOHIEU: TQRLabel
        Left = 88
        Top = 134
        Width = 47
        Height = 21
        Size.Values = (
          55.562500000000000000
          232.833333333333300000
          354.541666666666700000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SOHIEU'
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
      object QRLabel_TOKHAI: TQRLabel
        Left = 138
        Top = 205
        Width = 44
        Height = 21
        Size.Values = (
          55.562500000000000000
          365.125000000000000000
          542.395833333333300000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOKHAI'
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
      object QRLabel49: TQRLabel
        Left = 575
        Top = 33
        Width = 71
        Height = 18
        Size.Values = (
          47.625000000000000000
          1521.354166666667000000
          87.312500000000000000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y '#26085#26399':'
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
      object QRLabel_UserDate: TQRLabel
        Left = 649
        Top = 33
        Width = 55
        Height = 18
        Size.Values = (
          47.625000000000000000
          1717.145833333333000000
          87.312500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UserDate'
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
      object QRLabel50: TQRLabel
        Left = 136
        Top = 228
        Width = 128
        Height = 21
        Size.Values = (
          55.562500000000000000
          359.833333333333300000
          603.250000000000000000
          338.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = ' C'#244'ng ty TNHH T'#7927' Xu'#226'n'
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
      object QRLabel51: TQRLabel
        Left = 285
        Top = 228
        Width = 97
        Height = 20
        Size.Values = (
          52.916666666666670000
          754.062500000000000000
          603.250000000000000000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20740#26149#36012#20219#26377#38480#20844#21496
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
    object TitleBand1: TQRBand
      Left = 19
      Top = 277
      Width = 756
      Height = 100
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        264.583333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel26: TQRLabel
        Left = 36
        Top = 65
        Width = 51
        Height = 31
        Size.Values = (
          82.020833333333330000
          95.250000000000000000
          171.979166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Theo CT'#7915' '#25818#31080
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape7: TQRShape
        Left = 33
        Top = 25
        Width = 632
        Height = 2
        Size.Values = (
          5.291666666666667000
          87.312500000000000000
          66.145833333333330000
          1672.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 712
        Top = 0
        Width = 2
        Height = 100
        Size.Values = (
          264.583333333333300000
          1883.833333333333000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 35
        Top = 5
        Width = 627
        Height = 21
        Size.Values = (
          55.562500000000000000
          92.604166666666670000
          13.229166666666670000
          1658.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T'#202'N T'#192'I S'#7842'N NH'#195'N HI'#7878'U QUY C'#193'CH '#36001#29986#21517#31281#35215#26684
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
      object QRShape24: TQRShape
        Left = 32
        Top = 0
        Width = 2
        Height = 100
        Size.Values = (
          264.583333333333300000
          84.666666666666670000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 665
        Top = 0
        Width = 2
        Height = 100
        Size.Values = (
          264.583333333333300000
          1759.479166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 151
        Top = 25
        Width = 2
        Height = 75
        Size.Values = (
          198.437500000000000000
          399.520833333333300000
          66.145833333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 1
        Top = 35
        Width = 32
        Height = 44
        Size.Values = (
          116.416666666666700000
          2.645833333333333000
          92.604166666666670000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'S'#7889' TT '#27425#24207
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 670
        Top = 35
        Width = 40
        Height = 28
        Size.Values = (
          74.083333333333330000
          1772.708333333333000000
          92.604166666666670000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#417'n v'#7883' '#21934#20301
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 52
        Top = 28
        Width = 80
        Height = 31
        Size.Values = (
          82.020833333333330000
          137.583333333333300000
          74.083333333333330000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'S'#7889' l'#432#7907'ng '#25976#37327
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
        Left = 183
        Top = 28
        Width = 72
        Height = 31
        Size.Values = (
          82.020833333333330000
          484.187500000000000000
          74.083333333333330000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#417'n gi'#225' '#21934#20729
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
        Left = 338
        Top = 28
        Width = 90
        Height = 31
        Size.Values = (
          82.020833333333330000
          894.291666666666700000
          74.083333333333330000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Th'#224'nh ti'#7873'n '#21512#35336
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
        Left = 718
        Top = 35
        Width = 34
        Height = 50
        Size.Values = (
          132.291666666666700000
          1899.708333333333000000
          92.604166666666670000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ghi ch'#250' '#20633#35387
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 93
        Top = 65
        Width = 57
        Height = 31
        Size.Values = (
          82.020833333333330000
          246.062500000000000000
          171.979166666666700000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Th'#7921'c Nh'#7853'p '#23526#38555
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape6: TQRShape
        Left = 215
        Top = 62
        Width = 2
        Height = 37
        Size.Values = (
          97.895833333333330000
          568.854166666666700000
          164.041666666666700000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel29: TQRLabel
        Left = 168
        Top = 65
        Width = 35
        Height = 31
        Size.Values = (
          82.020833333333330000
          444.500000000000000000
          171.979166666666700000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'USD '#32654#37329
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 230
        Top = 65
        Width = 46
        Height = 31
        Size.Values = (
          82.020833333333330000
          608.541666666666700000
          171.979166666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VND '#36234#30462
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 315
        Top = 65
        Width = 36
        Height = 31
        Size.Values = (
          82.020833333333330000
          833.437500000000000000
          171.979166666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'USD '#32654#37329
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 415
        Top = 65
        Width = 46
        Height = 31
        Size.Values = (
          82.020833333333330000
          1098.020833333333000000
          171.979166666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VND '#36234#30462
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape8: TQRShape
        Left = 490
        Top = 25
        Width = 2
        Height = 75
        Size.Values = (
          198.437500000000000000
          1296.458333333333000000
          66.145833333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 378
        Top = 62
        Width = 2
        Height = 37
        Size.Values = (
          97.895833333333330000
          1000.125000000000000000
          164.041666666666700000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 515
        Top = 28
        Width = 135
        Height = 31
        Size.Values = (
          82.020833333333330000
          1362.604166666667000000
          74.083333333333330000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Thu'#7871' Nh'#7853'p Kh'#7849'u '#36914#21475#31237' / Thu'#7871' Tr'#432#7899'c B'#7841' '#22865#31246
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 605
        Top = 65
        Width = 36
        Height = 31
        Size.Values = (
          82.020833333333330000
          1600.729166666667000000
          171.979166666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VND '#36234#30462
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel35: TQRLabel
        Left = 510
        Top = 65
        Width = 51
        Height = 31
        Size.Values = (
          82.020833333333330000
          1349.375000000000000000
          171.979166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #272#417'n gi'#225' '#21934#20729
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape14: TQRShape
        Left = 285
        Top = 25
        Width = 2
        Height = 75
        Size.Values = (
          198.437500000000000000
          754.062500000000000000
          66.145833333333330000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 33
        Top = 62
        Width = 632
        Height = 2
        Size.Values = (
          5.291666666666667000
          87.312500000000000000
          164.041666666666700000
          1672.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 575
        Top = 62
        Width = 2
        Height = 37
        Size.Values = (
          97.895833333333330000
          1521.354166666667000000
          164.041666666666700000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 89
        Top = 62
        Width = 2
        Height = 37
        Size.Values = (
          97.895833333333330000
          235.479166666666700000
          164.041666666666700000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 377
      Width = 756
      Height = 90
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        238.125000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Left = 36
        Top = 3
        Width = 621
        Height = 30
        Size.Values = (
          79.375000000000000000
          95.250000000000000000
          7.937500000000000000
          1643.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'VWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRSysData2: TQRSysData
        Left = 1
        Top = 30
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          79.375000000000000000
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
      object QRDBText1: TQRDBText
        Left = 672
        Top = 30
        Width = 37
        Height = 28
        Size.Values = (
          74.083333333333330000
          1778.000000000000000000
          79.375000000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'DWBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRDBText2: TQRDBText
        Left = 45
        Top = 60
        Width = 30
        Height = 18
        Size.Values = (
          47.625000000000000000
          119.062500000000000000
          158.750000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 105
        Top = 60
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          158.750000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRDBText4: TQRDBText
        Left = 167
        Top = 60
        Width = 35
        Height = 18
        Size.Values = (
          47.625000000000000000
          441.854166666666700000
          158.750000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'USPrice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 420
        Top = 60
        Width = 34
        Height = 18
        Size.Values = (
          47.625000000000000000
          1111.250000000000000000
          158.750000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'VNACC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRShape1: TQRShape
        Left = 32
        Top = -1
        Width = 2
        Height = 91
        Size.Values = (
          240.770833333333300000
          84.666666666666670000
          -2.645833333333333000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText6: TQRDBText
        Left = 233
        Top = 60
        Width = 35
        Height = 18
        Size.Values = (
          47.625000000000000000
          616.479166666666700000
          158.750000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'VNPrice'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 317
        Top = 60
        Width = 34
        Height = 18
        Size.Values = (
          47.625000000000000000
          838.729166666666700000
          158.750000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'USACC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 598
        Top = 60
        Width = 49
        Height = 23
        Size.Values = (
          60.854166666666670000
          1582.208333333333000000
          158.750000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'VNTax_HG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
      object QRShape22: TQRShape
        Left = 712
        Top = -1
        Width = 2
        Height = 91
        Size.Values = (
          240.770833333333300000
          1883.833333333333000000
          -2.645833333333333000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 33
        Top = 50
        Width = 632
        Height = 2
        Size.Values = (
          5.291666666666667000
          87.312500000000000000
          132.291666666666700000
          1672.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 665
        Top = 0
        Width = 2
        Height = 90
        Size.Values = (
          238.125000000000000000
          1759.479166666667000000
          0.000000000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 89
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          235.479166666666700000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 215
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          568.854166666666700000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 378
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          1000.125000000000000000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 575
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          1521.354166666667000000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 490
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          1296.458333333333000000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 285
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          754.062500000000000000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 151
        Top = 51
        Width = 2
        Height = 39
        Size.Values = (
          103.187500000000000000
          399.520833333333300000
          134.937500000000000000
          5.291666666666667000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText9: TQRDBText
        Left = 508
        Top = 60
        Width = 53
        Height = 23
        Enabled = False
        Size.Values = (
          60.854166666666670000
          1344.083333333333000000
          158.750000000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'VNPrice_HG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
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
        Left = 36
        Top = 36
        Width = 621
        Height = 14
        Size.Values = (
          37.041666666666670000
          95.250000000000000000
          95.250000000000000000
          1643.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = KCRKSQry
        DataField = 'TSBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
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
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 564
      Width = 756
      Height = 229
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        605.895833333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel3: TQRLabel
        Left = 20
        Top = 17
        Width = 58
        Height = 19
        Size.Values = (
          50.270833333333330000
          52.916666666666670000
          44.979166666666670000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '   '#20027#31649#37096
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
      object QRLabel12: TQRLabel
        Left = 670
        Top = 18
        Width = 65
        Height = 19
        Size.Values = (
          50.270833333333330000
          1772.708333333333000000
          47.625000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20489#24235#20154#21729
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
      object QRLabel13: TQRLabel
        Left = 243
        Top = 17
        Width = 49
        Height = 19
        Size.Values = (
          50.270833333333330000
          642.937500000000000000
          44.979166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26371#35336#21729
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
      object QRLabel15: TQRLabel
        Left = 12
        Top = 2
        Width = 86
        Height = 19
        Size.Values = (
          50.270833333333330000
          31.750000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ban Gi'#225'm '#272#7889'c'
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
        Left = 678
        Top = 2
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          5.291666666666667000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NV Kho'
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
      object QRLabel19: TQRLabel
        Left = 233
        Top = 2
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          616.479166666666700000
          5.291666666666667000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'K.To'#225'n Vi'#234'n'
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
      object QRLabel38: TQRLabel
        Left = 556
        Top = 2
        Width = 86
        Height = 19
        Size.Values = (
          50.270833333333330000
          1471.083333333333000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ch'#7911' Qu'#7843'n Kho'
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
      object QRLabel39: TQRLabel
        Left = 565
        Top = 18
        Width = 65
        Height = 19
        Size.Values = (
          50.270833333333330000
          1494.895833333333000000
          47.625000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #20489#24235#20027#31649
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
      object QRLabel40: TQRLabel
        Left = 459
        Top = 2
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          5.291666666666667000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NV Thu mua'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial '
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 464
        Top = 18
        Width = 65
        Height = 19
        Size.Values = (
          50.270833333333330000
          1227.666666666667000000
          47.625000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25505#36092#20154#21729
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
      object QRLabel42: TQRLabel
        Left = 127
        Top = 2
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          336.020833333333300000
          5.291666666666667000
          232.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'K.To'#225'n Tr'#432#417#777'ng'
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
      object QRLabel43: TQRLabel
        Left = 144
        Top = 18
        Width = 49
        Height = 19
        Size.Values = (
          50.270833333333330000
          381.000000000000000000
          47.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #26371#35336#37096
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
      object QRLabel44: TQRLabel
        Left = 325
        Top = 2
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          859.895833333333300000
          5.291666666666667000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ch'#7911' Qu'#7843'n Thu Mua'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial '
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 348
        Top = 18
        Width = 65
        Height = 19
        Size.Values = (
          50.270833333333330000
          920.750000000000000000
          47.625000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #25505#36092#20027#31649
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
      object ISO: TQRLabel
        Left = 638
        Top = 134
        Width = 108
        Height = 17
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          354.541666666666700000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'T-DCC-101A(ERP)'
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
    object SummaryBand1: TQRBand
      Left = 19
      Top = 467
      Width = 756
      Height = 97
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        256.645833333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr5: TQRExpr
        Left = 297
        Top = 9
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          785.812500000000000000
          23.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(USACC)'
        Mask = '##,#0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 402
        Top = 31
        Width = 74
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          82.020833333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(VNACC)'
        Mask = '##,#0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 580
        Top = 7
        Width = 91
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          1534.583333333333000000
          18.520833333333330000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(VNTax_HG)'
        Mask = '##,#0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 7
        Top = 9
        Width = 126
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          23.812500000000000000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#244#777'ng s'#7889' ti'#234#768'n '#24635#37329#39069':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 378
        Top = 9
        Width = 123
        Height = 16
        Size.Values = (
          42.333333333333330000
          1000.125000000000000000
          23.812500000000000000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(VNACC)+sum(VNTax_HG)'
        Mask = '##,#0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 7
        Top = 52
        Width = 155
        Height = 19
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          137.583333333333300000
          410.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#244#777'ng s'#7889' ti'#234#768'n (vi'#7871't b'#7857'ng ch'#432#771'):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 7
        Top = 74
        Width = 93
        Height = 19
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          195.791666666666700000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #24635#37329#39069' '#22823#20889':'
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
      object QRLabel_VNMoney: TQRLabel
        Left = 190
        Top = 52
        Width = 539
        Height = 17
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          137.583333333333300000
          1426.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel_VNMoney'
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
      object QRLabel_CNMoney: TQRLabel
        Left = 190
        Top = 74
        Width = 539
        Height = 17
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          195.791666666666700000
          1426.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel_CNMoney'
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
  end
  object KCRKSQry: TQuery
    DatabaseName = 'DB'
    DataSource = EquipmentAccountConfirm.DS1
    SQL.Strings = (
      ''
      'Select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,'
      '        --TSCD_SB.VWPM+TSCD_SB.ZWPM as VWPM,'
      
        #9#9'--case when TSCD_KCRKS.RKMeMo is not null then TSCD_SB.VWPM+TS' +
        'CD_SB.ZWPM+'#39' ('#39'+TSCD_KCRKS.RKMeMo+'#39')'#39' else '
      #9'   --TSCD_SB.VWPM+TSCD_SB.ZWPM end as VWPM,'
      
        '       case when TSCD_KCRKS.RKMeMo is not null and isnull(TSCD_S' +
        'B.HGPM,'#39#39')='#39#39' then TSCD_SB.VWPM+TSCD_SB.ZWPM+'#39' ('#39'+TSCD_KCRKS.RKM' +
        'eMo+'#39')'#39
      
        #9'   when TSCD_KCRKS.RKMeMo is not null and isnull(TSCD_SB.HGPM,'#39 +
        #39')<>'#39#39' then TSCD_SB.HGPM+TSCD_SB.ZWPM+'#39' ('#39'+TSCD_KCRKS.RKMeMo+'#39')'#39 +
        ' '
      
        #9'   when TSCD_KCRKS.RKMeMo is null and isnull(TSCD_SB.HGPM,'#39#39')<>' +
        #39#39' then TSCD_SB.HGPM+TSCD_SB.ZWPM else '
      #9'   TSCD_SB.VWPM+TSCD_SB.ZWPM end as VWPM,'
      '       TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNPrice,'
      
        '       TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USACC, TSC' +
        'D_KCRKS.VNTax_HG, TSCD_KCRKS.VNPrice_HG,--TSCD.TSBH'
      ''
      
        #9#9'case when  TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo el' +
        'se CAST(substring (( select '#39','#39' + TSCD.TSBH'
      
        #9#9#9#9#9'from TSCD where TSCD.SBBH=TSCD_SB.SBBH and TSCD.RKNO=TSCD_K' +
        'CRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH'
      #9#9#9#9#9'and TSCD_KCRKS.RKNO=:RKNO'
      #9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000)) end as TSBH'
      'from TSCD_KCRKS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH'
      
        'left join TSCD on TSCD_SB.SBBH = TSCD.SBBH and TSCD.RKNO=TSCD_KC' +
        'RKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH'
      'where TSCD_KCRKS.RKNO=:RKNO'
      
        'group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_SB.VWPM,TSCD_SB.ZW' +
        'PM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNPrice,'
      
        '       TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USACC, TSC' +
        'D_KCRKS.VNTax_HG, TSCD_KCRKS.VNPrice_HG,TSCD_SB.SBBH,TSCD_KCRKS.' +
        'Memo,TSCD_KCRKS.RKMemo'
      'order by TSCD_KCRKS.RKNO, TSCD_KCRKS.SBBH desc')
    Left = 117
    Top = 85
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
      end>
    object KCRKSQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKSQrySBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object KCRKSQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKSQryQty: TFloatField
      FieldName = 'Qty'
    end
    object KCRKSQryVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object KCRKSQryUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object KCRKSQryVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object KCRKSQryUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '#,##0.00'
    end
    object KCRKSQryVNTax_HG: TCurrencyField
      FieldName = 'VNTax_HG'
      DisplayFormat = '#,##0'
    end
    object KCRKSQryVNPrice_HG: TCurrencyField
      FieldName = 'VNPrice_HG'
      Origin = 'DB.TSCD_KCRKS.VNPrice_HG'
    end
    object KCRKSQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 1000
    end
    object KCRKSQryVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
  end
  object KCRKQry: TQuery
    DatabaseName = 'DB'
    DataSource = EquipmentAccountConfirm.DS1
    SQL.Strings = (
      
        'Select TSCD_KCRK.SOHIEU,TSCD_KCRK.RKNO,TSCD_KCRK.DOCNO,TSCD_KCRK' +
        '.DOCDate,TSCD_KCRK.HDNO,TSCD_KCRK.HDDate,TSCD_ZSZL.zsjc_yw,'
      
        '      IsNull(Sum(VNACC),0) as VNACC,IsNull(Sum(VNTax_HG),0) as V' +
        'NTax_HG,IsNull(Sum(VNACC),0) +IsNull(Sum(VNTax_HG),0) as AllVNAC' +
        'C,Max(TSCD_KCRK.UserDate) as UserDate,Max(CWHL_HG) as CWHL ,'
      '      TSCD_KCPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate'
      'from TSCD_KCRK'
      'left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_KCRK.ZSBH '
      'left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO'
      'left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO'
      'where TSCD_KCRK.RKNO=:RKNO'
      
        'Group by TSCD_KCRK.SOHIEU,TSCD_KCRK.RKNO,TSCD_KCRK.DOCNO,TSCD_KC' +
        'RK.DOCDate,TSCD_KCRK.HDNO,TSCD_KCRK.HDDate,TSCD_ZSZL.zsjc_yw,'
      'TSCD_KCPK.Declaretion,TSCD_KCPK.TKDate')
    Left = 85
    Top = 85
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object KCRKQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKQryDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object KCRKQryzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
      Size = 50
    end
    object KCRKQryVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object KCRKQryVNTax_HG: TCurrencyField
      FieldName = 'VNTax_HG'
    end
    object KCRKQryAllVNACC: TCurrencyField
      FieldName = 'AllVNACC'
    end
    object KCRKQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object KCRKQryCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object KCRKQryDOCDate: TDateTimeField
      FieldName = 'DOCDate'
    end
    object KCRKQryHDNO: TStringField
      FieldName = 'HDNO'
      FixedChar = True
      Size = 50
    end
    object KCRKQryHDDate: TDateTimeField
      FieldName = 'HDDate'
    end
    object KCRKQrySOHIEU: TStringField
      FieldName = 'SOHIEU'
      FixedChar = True
    end
    object KCRKQryTOKHAI: TStringField
      FieldName = 'TOKHAI'
      FixedChar = True
      Size = 50
    end
    object KCRKQryTKDate: TDateTimeField
      FieldName = 'TKDate'
    end
  end
end
