object GhiChepKhoiPhucDuLieu_Print: TGhiChepKhoiPhucDuLieu_Print
  Left = 0
  Top = 0
  Caption = 'GhiChepKhoiPhucDuLieu_Print'
  ClientHeight = 690
  ClientWidth = 1784
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
  object QuickRep2: TQuickRep
    Left = 788
    Top = 8
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
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 218
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        576.791666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel14: TQRLabel
        Left = 32
        Top = 47
        Width = 158
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          124.354166666666700000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' s'#7889' ghi ch'#233'p'#32000#63807#32232#34399':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_Ma1: TQRLabel
        Left = 196
        Top = 47
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          124.354166666666700000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_Ma'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 408
        Top = 47
        Width = 162
        Height = 17
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          124.354166666666700000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y '#273'i'#7873'n '#273#417'n '#22635#34920#26085#26399': '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_UserDate1: TQRLabel
        Left = 577
        Top = 47
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1526.645833333333000000
          124.354166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '2022/12/15'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 116
        Top = 80
        Width = 509
        Height = 33
        Size.Values = (
          87.312500000000000000
          306.916666666666700000
          211.666666666666700000
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
      object QRLabel23: TQRLabel
        Left = 242
        Top = 106
        Width = 254
        Height = 30
        Size.Values = (
          79.375000000000000000
          640.291666666666700000
          280.458333333333300000
          672.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #31995#32113#28797#23475#24489#21407#28436#32244#32000#37636#34920
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
      object QRLabel24: TQRLabel
        Left = 32
        Top = 141
        Width = 151
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          373.062500000000000000
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
      object QRLabel25: TQRLabel
        Left = 32
        Top = 164
        Width = 149
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          433.916666666666700000
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
      object QRLabel26: TQRLabel
        Left = 31
        Top = 187
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          494.770833333333300000
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
      object QRLabel_NguoiDamNhan1: TQRLabel
        Left = 189
        Top = 142
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          500.062500000000000000
          375.708333333333300000
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
      object QRLabel_DonVIHoTro1: TQRLabel
        Left = 194
        Top = 164
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          513.291666666666700000
          433.916666666666700000
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
      object QRLabel_NgayHuongDan1: TQRLabel
        Left = 209
        Top = 186
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          492.125000000000000000
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
      object QRShape27: TQRShape
        Left = 21
        Top = 77
        Width = 1
        Height = 137
        Size.Values = (
          362.479166666666700000
          55.562500000000000000
          203.729166666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 719
        Top = 77
        Width = 1
        Height = 135
        Size.Values = (
          357.187500000000000000
          1902.354166666667000000
          203.729166666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 22
        Top = 77
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          203.729166666666700000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 22
        Top = 211
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          558.270833333333300000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 22
        Top = 135
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          357.187500000000000000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 610
        Top = 5
        Width = 45
        Height = 21
        Size.Values = (
          55.562500000000000000
          1613.958333333333000000
          13.229166666666670000
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
      object QRSysData1: TQRSysData
        Left = 625
        Top = 5
        Width = 14
        Height = 17
        Size.Values = (
          44.979166666666670000
          1653.645833333333000000
          13.229166666666670000
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
      object QRLabel9: TQRLabel
        Left = 655
        Top = 5
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1733.020833333333000000
          13.229166666666670000
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
      object SumPage1: TQRLabel
        Left = 661
        Top = 5
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1748.895833333333000000
          13.229166666666670000
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
    object PageFooterBand2: TQRBand
      Left = 38
      Top = 256
      Width = 718
      Height = 153
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        404.812500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel18: TQRLabel
        Left = 670
        Top = 135
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1772.708333333333000000
          357.187500000000000000
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
      object QRLabel19: TQRLabel
        Left = 41
        Top = 1
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          2.645833333333333000
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
      object QRLabel21: TQRLabel
        Left = 183
        Top = 1
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          2.645833333333333000
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
      object QRLabel27: TQRLabel
        Left = 350
        Top = 3
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          926.041666666666700000
          7.937500000000000000
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
      object QRLabel28: TQRLabel
        Left = 507
        Top = 3
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          7.937500000000000000
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
      object QRLabel29: TQRLabel
        Left = 650
        Top = 3
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          7.937500000000000000
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
      object QRDBText14: TQRDBText
        Left = 28
        Top = 31
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          74.083333333333330000
          82.020833333333330000
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
      object QRDBText15: TQRDBText
        Left = 183
        Top = 31
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          82.020833333333330000
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
      object QRDBText16: TQRDBText
        Left = 366
        Top = 31
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          968.375000000000000000
          82.020833333333330000
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
      object QRDBText17: TQRDBText
        Left = 520
        Top = 31
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          82.020833333333330000
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
      object QRDBText18: TQRDBText
        Left = 648
        Top = 31
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          82.020833333333330000
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
    end
  end
  object QuickRep1: TQuickRep
    Left = -23
    Top = 8
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
    object QRBand2: TQRBand
      Left = 38
      Top = 297
      Width = 718
      Height = 94
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.708333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 66
        Top = 9
        Width = 183
        Height = 78
        Size.Values = (
          206.375000000000000000
          174.625000000000000000
          23.812500000000000000
          484.187500000000000000)
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
      object QRDBText2: TQRDBText
        Left = 256
        Top = 4
        Width = 457
        Height = 44
        Size.Values = (
          116.416666666666700000
          677.333333333333200000
          10.583333333333330000
          1209.145833333333000000)
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
        Left = 256
        Top = 51
        Width = 457
        Height = 40
        Size.Values = (
          105.833333333333300000
          677.333333333333300000
          134.937500000000000000
          1209.145833333333000000)
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
      object QRPShape1: TQRPShape
        Left = 22
        Top = 93
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333330000
          246.062500000000000000
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
          58.208333333333330000
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
        Height = 93
        Size.Values = (
          246.062500000000000000
          1902.354166666667000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 252
        Top = 0
        Width = 1
        Height = 93
        Size.Values = (
          246.062500000000000000
          666.750000000000000000
          0.000000000000000000
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
        Height = 93
        Size.Values = (
          246.062500000000000000
          55.562500000000000000
          -2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRSysData2: TQRSysData
        Left = 29
        Top = 43
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          76.729166666666670000
          113.770833333333300000
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
        Left = 63
        Top = 0
        Width = 1
        Height = 93
        Size.Values = (
          246.062500000000000000
          166.687500000000000000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 259
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        685.270833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 32
        Top = 47
        Width = 158
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          124.354166666666700000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#227' s'#7889' ghi ch'#233'p'#32000#63807#32232#34399':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_Ma: TQRLabel
        Left = 196
        Top = 47
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          124.354166666666700000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel_Ma'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 408
        Top = 47
        Width = 162
        Height = 17
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          124.354166666666700000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ng'#224'y '#273'i'#7873'n '#273#417'n '#22635#34920#26085#26399': '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel_UserDate: TQRLabel
        Left = 577
        Top = 47
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1526.645833333333000000
          124.354166666666700000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '2022/12/15'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object L1: TQRLabel
        Left = 116
        Top = 80
        Width = 509
        Height = 33
        Size.Values = (
          87.312500000000000000
          306.916666666666700000
          211.666666666666700000
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
        Top = 106
        Width = 254
        Height = 30
        Size.Values = (
          79.375000000000000000
          640.291666666666700000
          280.458333333333300000
          672.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = #31995#32113#28797#23475#24489#21407#28436#32244#32000#37636#34920
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
        Top = 141
        Width = 151
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          373.062500000000000000
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
        Top = 164
        Width = 149
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          433.916666666666700000
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
        Top = 187
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          494.770833333333300000
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
        Top = 142
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          500.062500000000000000
          375.708333333333300000
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
        Top = 164
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          513.291666666666700000
          433.916666666666700000
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
        Top = 186
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          492.125000000000000000
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
        Top = 77
        Width = 1
        Height = 184
        Size.Values = (
          486.833333333333300000
          55.562500000000000000
          203.729166666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 719
        Top = 77
        Width = 1
        Height = 184
        Size.Values = (
          486.833333333333300000
          1902.354166666667000000
          203.729166666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 22
        Top = 77
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          203.729166666666700000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 22
        Top = 211
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          558.270833333333300000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 28
        Top = 219
        Width = 217
        Height = 35
        Size.Values = (
          92.604166666666680000
          74.083333333333320000
          579.437500000000000000
          574.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'H'#432#7899'ng d'#7851'n l'#7853'p k'#7871' ho'#7841'ch h'#7841'ng m'#7909'c '#28436#63894#35215#21123#38917#30446
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 21
        Top = 260
        Width = 698
        Height = 1
        Size.Values = (
          2.645833333333333000
          55.562500000000000000
          687.916666666666800000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 274
        Top = 218
        Width = 429
        Height = 35
        Size.Values = (
          92.604166666666680000
          724.958333333333200000
          576.791666666666800000
          1135.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'N'#7897'i dung k'#7871' ho'#7841'ch '#35215#21123#20839#23481
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 252
        Top = 211
        Width = 1
        Height = 49
        Size.Values = (
          129.645833333333300000
          666.750000000000000000
          558.270833333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 22
        Top = 135
        Width = 697
        Height = 1
        Size.Values = (
          2.645833333333333000
          58.208333333333320000
          357.187500000000000000
          1844.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
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
    object QRBand3: TQRBand
      Left = 38
      Top = 391
      Width = 718
      Height = 42
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel2: TQRLabel
        Left = 660
        Top = 14
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1746.250000000000000000
          37.041666666666670000
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
        'users.USERNAME,ITPC_KhoiPhucDuLieu.UserID,ITPC_KhoiPhucDuLieu.CF' +
        'MID,ITPC_KhoiPhucDuLieu.NguoiDamNhan, ITPC_KhoiPhucDuLieu.DonViH' +
        'oTro,'
      
        '       ITPC_KhoiPhucDuLieu.NgayHuongDan,TLTen,ITPC_KhoiPhucDuLie' +
        'uChiTiet.NoidungVN,ITPC_KhoiPhucDuLieuChiTiet.NoiDungTW'
      'from ITPC_KhoiPhucDuLieuChiTiet'
      
        'left join ITPC_KhoiPhucDuLieu on  ITPC_KhoiPhucDuLieuChiTiet.KPD' +
        'LNo= ITPC_KhoiPhucDuLieu.KPDLNo'
      
        'left join ITPC_DanhSachTenTuongLua  on ITPC_KhoiPhucDuLieuChiTie' +
        't.TLMa=ITPC_DanhSachTenTuongLua.TLMa'
      
        'left join LIY_ERP.dbo.Busers Busers on ITPC_KhoiPhucDuLieu.UserI' +
        'D=Busers.USERID'
      
        'where ITPC_DanhSachTenTuongLua.LB='#39'05'#39' and ITPC_KhoiPhucDuLieuCh' +
        'iTiet.KPDLNo=:KPDLNo')
    Left = 152
    Top = 544
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
    Left = 112
    Top = 551
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
    Left = 220
    Top = 542
    object QApproverS_username: TStringField
      FieldName = 'S_username'
    end
    object QApproverremark: TStringField
      FieldName = 'remark'
    end
    object QApproverstatus: TStringField
      FieldName = 'status'
    end
    object QApproverLNO: TStringField
      FieldName = 'LNO'
    end
    object QApproverS_Step_Desc: TStringField
      FieldName = 'S_Step_Desc'
    end
    object QApproveruserdate: TDateTimeField
      FieldName = 'userdate'
      DisplayFormat = 'YYYY/MM/DD hh:nn:ss'
    end
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
    Left = 228
    Top = 25
  end
  object Query1: TQuery
    Left = 88
    Top = 40
  end
end
