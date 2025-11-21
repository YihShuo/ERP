object QCDefectReport: TQCDefectReport
  Left = 224
  Top = 162
  Width = 1305
  Height = 829
  Caption = 'QCDefectReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 273
    Height = 724
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 16
      Top = 57
      Width = 11
      Height = 16
      Caption = 'to'
    end
    object Label4: TLabel
      Left = 0
      Top = 248
      Width = 37
      Height = 16
      Caption = 'Article'
    end
    object LabSKU: TLabel
      Left = 8
      Top = 88
      Width = 25
      Height = 16
      Caption = 'Line'
    end
    object Label3: TLabel
      Left = 8
      Top = 416
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object DTP1: TDateTimePicker
      Left = 40
      Top = 13
      Width = 153
      Height = 24
      Date = 0.638309201392985400
      Format = 'yyyy/MM/dd'
      Time = 0.638309201392985400
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 42
      Top = 53
      Width = 153
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 1
      OnChange = DTP2Change
    end
    object LbLines: TListBox
      Left = 40
      Top = 88
      Width = 210
      Height = 121
      ItemHeight = 16
      MultiSelect = True
      TabOrder = 2
      OnClick = LbLinesClick
    end
    object CbSku: TComboBox
      Left = 40
      Top = 248
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 3
      OnClick = CbArticleDblClick
    end
    object LbSku: TListBox
      Left = 40
      Top = 272
      Width = 210
      Height = 105
      ItemHeight = 16
      TabOrder = 4
      OnClick = LbLinesClick
    end
    object CbArticle: TComboBox
      Left = 40
      Top = 408
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 5
      OnClick = CbArticleDblClick
    end
    object LbArticle: TListBox
      Left = 40
      Top = 440
      Width = 210
      Height = 105
      ItemHeight = 16
      TabOrder = 6
      OnClick = LbLinesClick
    end
    object EtArticle: TEdit
      Left = 40
      Top = 408
      Width = 190
      Height = 24
      TabOrder = 7
      OnExit = EtArticleExit
    end
    object EtSKU: TEdit
      Left = 40
      Top = 248
      Width = 190
      Height = 24
      TabOrder = 8
      OnExit = EtSKUExit
    end
    object Button3: TButton
      Left = 136
      Top = 216
      Width = 83
      Height = 25
      Caption = 'Query Article'
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 273
    Top = 49
    Width = 568
    Height = 724
    Align = alLeft
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = 'ID'
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Defect Name'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Defect Quantity'
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1441
    Height = 49
    Align = alTop
    DockSite = True
    TabOrder = 1
    object Lab100: TLabel
      Left = 16
      Top = 8
      Width = 174
      Height = 20
      Caption = 'Pass Quantity Total'#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTotal: TLabel
      Left = 192
      Top = 8
      Width = 11
      Height = 20
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 288
      Top = 10
      Width = 100
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object BtExcel: TButton
      Left = 456
      Top = 10
      Width = 100
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtExcelClick
    end
    object Button2: TButton
      Left = 616
      Top = 10
      Width = 100
      Height = 30
      Caption = 'Detail Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 841
    Top = 49
    Width = 600
    Height = 724
    Align = alLeft
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = 'ID'
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Defect Name'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Defect Quantity'
      end>
  end
  object DS1: TDataSource
    DataSet = QReport
    Left = 8
    Top = 680
  end
  object QReport: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 48
    Top = 680
    object QReportYYBH: TStringField
      FieldName = 'YYBH'
      Size = 6
    end
    object QReportYWSM: TStringField
      FieldName = 'YWSM'
      Size = 50
    end
    object QReportQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 88
    Top = 680
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 8
    Top = 728
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 88
    Top = 728
    object Query2YYBH: TStringField
      FieldName = 'YYBH'
      Size = 6
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      Size = 50
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 208
    Top = 680
  end
end
