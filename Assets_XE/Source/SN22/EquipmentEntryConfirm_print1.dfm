object EquipmentEntryConfirm_print: TEquipmentEntryConfirm_print
  Left = 369
  Top = 280
  Caption = 'EquipmentEntryConfirm_print'
  ClientHeight = 607
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 24
    Top = 5
    Width = 841
    Height = 529
    ShowingPreview = False
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
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      1399.645833333333000000
      100.000000000000000000
      2225.145833333333000000
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
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 765
      Height = 123
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        325.437500000000000000
        2024.062500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBText1: TQRDBText
        Left = 72
        Top = 44
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          116.416666666666700000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = EquipmentEntryConfirm.EnMas
        DataField = 'ZSJC_YW'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
      object QRDBText3: TQRDBText
        Left = 584
        Top = 8
        Width = 38
        Height = 23
        Size.Values = (
          60.854166666666670000
          1545.166666666667000000
          21.166666666666670000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = EquipmentEntryConfirm.EnMas
        DataField = 'RKNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 676
        Top = 52
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          137.583333333333300000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 714
        Top = 52
        Width = 4
        Height = 17
        Size.Values = (
          44.979166666666670000
          1889.125000000000000000
          137.583333333333300000
          10.583333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '/'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QPage1: TQRLabel
        Left = 720
        Top = 52
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1905.000000000000000000
          137.583333333333300000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Page1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 600
        Top = 24
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          63.500000000000000000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = EquipmentEntryConfirm.EnMas
        DataField = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
      object QRDBText12: TQRDBText
        Left = 120
        Top = 20
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          52.916666666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = EquipmentEntryConfirm.EnMas
        DataField = 'ZSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 720
        Top = 0
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1905.000000000000000000
          0.000000000000000000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'GSBH'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 161
      Width = 765
      Height = 32
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        2024.062500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRSysData1: TQRSysData
        Left = 2
        Top = 10
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          26.458333333333330000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 24
        Top = 10
        Width = 21
        Height = 15
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          26.458333333333330000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = EnDet
        DataField = 'SBBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText6: TQRDBText
        Left = 77
        Top = 10
        Width = 337
        Height = 15
        Size.Values = (
          39.687500000000000000
          203.729166666666700000
          26.458333333333330000
          891.645833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 416
        Top = 10
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1100.666666666667000000
          26.458333333333330000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 462
        Top = 9
        Width = 16
        Height = 15
        Size.Values = (
          39.687500000000000000
          1222.375000000000000000
          23.812500000000000000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 504
        Top = 10
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          1333.500000000000000000
          26.458333333333330000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 569
        Top = 10
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          1505.479166666667000000
          26.458333333333330000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 628
        Top = 10
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          1661.583333333333000000
          26.458333333333330000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 689
        Top = 10
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          1822.979166666667000000
          26.458333333333330000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
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
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 221
      Width = 765
      Height = 60
      Frame.Style = psDot
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        2024.062500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 193
      Width = 765
      Height = 28
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        2024.062500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel1: TQRLabel
        Left = 448
        Top = 8
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1185.333333333333000000
          21.166666666666670000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 548
        Top = 8
        Width = 62
        Height = 15
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          21.166666666666670000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(USACC)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 657
        Top = 8
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          1738.312500000000000000
          21.166666666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(VNACC)'
        Mask = '#,##0'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object EnDet: TQuery
    DatabaseName = 'DB'
    DataSource = EquipmentEntryConfirm.DS1
    SQL.Strings = (
      
        'select TSCD_KCRKS.RKNO,TSCD_SB.SBBH,TSCD_KCRKS.USERID,TSCD_KCRKS' +
        '.USERDATE,TSCD_KCRKS.YN'
      
        '       ,TSCD_SB.YWPM+'#39' '#39'+TSCD_SB.LSBH as YWPM,TSCD_SB.ZWPM+'#39' '#39'+T' +
        'SCD_SB.LSBH as ZWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_KCRKS.Qty'
      
        '       ,TSCD_KCRKS.VNPrice,TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,T' +
        'SCD_KCRKS.USACC'
      'from TSCD_KCRKS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH'
      'where TSCD_KCRKS.RKNO=:RKNO'
      'order by TSCD_KCRKS.RKNO')
    Left = 180
    Top = 300
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.TSCD_KCRKS.RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetSBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_SB.SBBH'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCRKS.USERID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCRKS.USERDATE'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCRKS.YN'
      FixedChar = True
      Size = 1
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetLSBH: TStringField
      FieldName = 'LSBH'
      Origin = 'DB.TSCD_SB.LSBH'
      FixedChar = True
      Size = 30
    end
    object EnDetQUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 30
    end
    object EnDetQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.TSCD_KCRKS.Qty'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.TSCD_KCRKS.VNPrice'
      DisplayFormat = '#,##0'
    end
    object EnDetUSPrice: TFloatField
      FieldName = 'USPrice'
      Origin = 'DB.TSCD_KCRKS.USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      Origin = 'DB.TSCD_KCRKS.VNACC'
      DisplayFormat = '#,##0'
    end
    object EnDetUSACC: TFloatField
      FieldName = 'USACC'
      Origin = 'DB.TSCD_KCRKS.USACC'
      DisplayFormat = '#,##0.00'
    end
  end
end
