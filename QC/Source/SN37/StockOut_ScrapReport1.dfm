object StockOut_ScrapReport: TStockOut_ScrapReport
  Left = 454
  Top = 174
  Width = 830
  Height = 685
  VertScrollBar.Position = 477
  Caption = 'StockOut_ScrapReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = -477
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      0.000000000000000000
      2100.000000000000000000
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
    object QRBand1: TQRBand
      Left = 0
      Top = 0
      Width = 794
      Height = 97
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        256.645833333333300000
        2100.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 225
        Top = 8
        Width = 343
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          595.312500000000000000
          21.166666666666670000
          907.520833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'B'#12289'C'#21697#22577#24290#20986#24235#30003#35531#21934
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 24
      end
      object QRLabel2: TQRLabel
        Left = 18
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          47.625000000000000000
          201.083333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#24235#21934#34399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 90
        Top = 76
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          238.125000000000000000
          201.083333333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = StockOut_BC.QKCLL
        DataField = 'LLNO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 96
        Width = 794
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          254.000000000000000000
          2100.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object UserDate: TQRLabel
        Left = 718
        Top = 76
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1899.708333333333000000
          201.083333333333300000
          145.520833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UserDate'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 0
      Top = 97
      Width = 794
      Height = 900
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
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
        2381.250000000000000000
        2100.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
    end
    object QRBand3: TQRBand
      Left = 0
      Top = 997
      Width = 794
      Height = 125
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        330.729166666666700000
        2100.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object ApplicantSign: TQRImage
        Left = 683
        Top = 27
        Width = 100
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          1807.104166666667000000
          71.437500000000000000
          264.583333333333300000)
        Center = True
        Stretch = True
      end
      object ApplicantName: TQRRichText
        Left = 683
        Top = 27
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1807.104166666667000000
          71.437500000000000000
          264.583333333333300000)
        Alignment = taCenter
        AutoStretch = False
        Color = clWindow
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QCSign: TQRImage
        Left = 571
        Top = 27
        Width = 100
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          1510.770833333333000000
          71.437500000000000000
          264.583333333333300000)
        Center = True
        Stretch = True
      end
      object MPSign: TQRImage
        Left = 459
        Top = 27
        Width = 100
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          1214.437500000000000000
          71.437500000000000000
          264.583333333333300000)
        Center = True
        Stretch = True
      end
      object PCSign: TQRImage
        Left = 347
        Top = 27
        Width = 100
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          918.104166666666700000
          71.437500000000000000
          264.583333333333300000)
        Center = True
        Stretch = True
      end
      object ApplicantDate: TQRDBText
        Left = 683
        Top = 100
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1807.104166666667000000
          264.583333333333300000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QSignature
        DataField = 'ApplicantDate'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QCDate: TQRDBText
        Left = 571
        Top = 100
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          264.583333333333300000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QSignature
        DataField = 'QCDate'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object MPDate: TQRDBText
        Left = 459
        Top = 100
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          264.583333333333300000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QSignature
        DataField = 'MPDate'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PCDate: TQRDBText
        Left = 347
        Top = 100
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          264.583333333333300000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QSignature
        DataField = 'PCDate'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QCName: TQRRichText
        Left = 571
        Top = 27
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          71.437500000000000000
          264.583333333333300000)
        Alignment = taCenter
        AutoStretch = False
        Color = clWindow
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object MPName: TQRRichText
        Left = 459
        Top = 27
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          71.437500000000000000
          264.583333333333300000)
        Alignment = taCenter
        AutoStretch = False
        Color = clWindow
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object PCName: TQRRichText
        Left = 347
        Top = 27
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          71.437500000000000000
          264.583333333333300000)
        Alignment = taCenter
        AutoStretch = False
        Color = clWindow
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 1
        Width = 794
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          2.645833333333333000
          2100.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 235
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          621.770833333333300000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26371#35336
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 123
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          325.437500000000000000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29983#31649#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 11
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29983#31649#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 347
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29983#31649#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 459
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #24288#21209#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 571
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21697#31649#20027#31649
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 683
        Top = 8
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1807.104166666667000000
          21.166666666666670000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #30003#35531#20154
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QDetail: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT bwzl.ywsm, CBY_Colors.DescriptionEN, CBY_Orders_ZLZLS2.CL' +
        'BH, CBY_IDCard.GXLB FROM CBY_Orders'
      
        'LEFT JOIN CBY_Orders_ZLZLS2 ON CBY_Orders_ZLZLS2.workorderId = C' +
        'BY_Orders.workOrderId'
      'LEFT JOIN bwzl ON bwzl.bwdh = CBY_Orders_ZLZLS2.BWBH'
      
        'LEFT JOIN CBY_Colors ON CBY_Colors.ID = CBY_Orders_ZLZLS2.CBYCol' +
        'or'
      
        'LEFT JOIN CBY_IDCard ON CBY_IDCard.Article = CBY_Orders.style AN' +
        'D CBY_IDCard.BWBH = CBY_Orders_ZLZLS2.BWBH'
      
        'WHERE CBY_Orders.workorderId = :workorderId AND CBY_Orders_ZLZLS' +
        '2.ZMLB = '#39'N'#39' AND CBY_IDCard.GXLB <> '#39#39
      
        'ORDER BY CASE WHEN CBY_IDCard.GXLB = '#39'C'#39' THEN 0 ELSE CASE WHEN C' +
        'BY_IDCard.GXLB = '#39'S'#39' THEN 1 ELSE CASE WHEN CBY_IDCard.GXLB = '#39'A'#39 +
        ' THEN 2 END END END, bwzl.bwdh')
    Left = 36
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workOrderId'
        ParamType = ptUnknown
      end>
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 3
  end
  object QSignature: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#30003#35531#20154'%'#39' THEN S_USER_ID END) ' +
        'AS ApplicantID,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#30003#35531#20154'%'#39' THEN USERNAME END) AS Appli' +
        'cant,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#30003#35531#20154'%'#39' THEN ApproveDate END) AS Ap' +
        'plicantDate,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#29983#29986#24185#37096'%'#39' THEN S_USER_ID END) AS Sup' +
        'ervisorID,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#29983#29986#24185#37096'%'#39' THEN USERNAME END) AS Supe' +
        'rvisor,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#29983#29986#24185#37096'%'#39' THEN ApproveDate END) AS S' +
        'upervisorDate,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#37327#29986#20027#31649'%'#39' THEN S_USER_ID END) AS Man' +
        'agerID,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#37327#29986#20027#31649'%'#39' THEN USERNAME END) AS Mana' +
        'ger,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#37327#29986#20027#31649'%'#39' THEN ApproveDate END) AS M' +
        'anagerDate,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#24185#37096'%'#39' THEN S_USER_ID END) AS Sup' +
        'ervisorQCID,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#24185#37096'%'#39' THEN USERNAME END) AS Supe' +
        'rvisorQC,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#24185#37096'%'#39' THEN ApproveDate END) AS S' +
        'upervisorQCDate,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#20027#31649'%'#39' THEN S_USER_ID END) AS Man' +
        'agerQCID,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#20027#31649'%'#39' THEN USERNAME END) AS Mana' +
        'gerQC,'
      
        'MAX(CASE WHEN S_STEP_ID LIKE '#39'%'#21697#31649#20027#31649'%'#39' THEN ApproveDate END) AS M' +
        'anagerQCDate FROM ('
      
        '  SELECT S_STEP_ID, S_USER_ID, USERNAME, CONVERT(VARCHAR, CONVER' +
        'T(DATETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME), 111) AS ApproveDat' +
        'e,'
      
        '  ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DAT' +
        'ETIME, UPDATE_DATE + '#39' '#39' + UPDATE_TIME) DESC) AS RowID FROM [EEP' +
        '].[LingYi].[dbo].[SYS_TODOHIS]'
      
        '  WHERE FORM_TABLE = '#39'KCRK_BC'#39' AND STATUS IN ('#39'N'#39', '#39'Z'#39') AND FORM' +
        '_PRESENTATION LIKE '#39'%20221100003%'#39
      ') AS ApproveData'
      'WHERE RowID = 1')
    Left = 64
    Top = 3
  end
end
