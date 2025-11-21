object QCScanReport: TQCScanReport
  Left = 349
  Top = 141
  Width = 1305
  Height = 829
  Caption = 'QCScanReport'
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
    Top = 0
    Width = 281
    Height = 798
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 24
      Top = 57
      Width = 11
      Height = 16
      Caption = 'to'
    end
    object LabSKU: TLabel
      Left = 16
      Top = 112
      Width = 25
      Height = 16
      Caption = 'Line'
    end
    object Label3: TLabel
      Left = 16
      Top = 440
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label4: TLabel
      Left = 8
      Top = 288
      Width = 37
      Height = 16
      Caption = 'Article'
    end
    object Label5: TLabel
      Left = 24
      Top = 88
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object Button1: TButton
      Left = 64
      Top = 600
      Width = 81
      Height = 37
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
    object DTP1: TDateTimePicker
      Left = 50
      Top = 13
      Width = 153
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 50
      Top = 53
      Width = 153
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 2
      OnChange = DTP2Change
    end
    object CkJustSKU: TCheckBox
      Left = 184
      Top = 88
      Width = 81
      Height = 17
      Caption = 'Just Article'
      TabOrder = 3
    end
    object LbLines: TListBox
      Left = 48
      Top = 112
      Width = 210
      Height = 129
      ItemHeight = 16
      MultiSelect = True
      TabOrder = 4
    end
    object LbSku: TListBox
      Left = 48
      Top = 312
      Width = 210
      Height = 105
      ItemHeight = 16
      TabOrder = 5
      OnClick = LbLinesClick
    end
    object LbArticle: TListBox
      Left = 48
      Top = 464
      Width = 210
      Height = 121
      ItemHeight = 16
      TabOrder = 6
      OnClick = LbLinesClick
    end
    object CbSku: TComboBox
      Left = 48
      Top = 288
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 7
      OnClick = CbArticleDblClick
    end
    object CbArticle: TComboBox
      Left = 48
      Top = 440
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 8
      OnClick = CbArticleDblClick
    end
    object BtExcel: TButton
      Left = 160
      Top = 600
      Width = 81
      Height = 37
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BtExcelClick
    end
    object EtSKU: TEdit
      Left = 48
      Top = 288
      Width = 190
      Height = 24
      TabOrder = 10
      OnExit = EtSKUExit
    end
    object EtArticle: TEdit
      Left = 48
      Top = 440
      Width = 190
      Height = 24
      TabOrder = 11
      OnExit = EtArticleExit
    end
    object Button2: TButton
      Left = 152
      Top = 248
      Width = 91
      Height = 25
      Caption = 'Query Article'
      TabOrder = 12
      OnClick = Button2Click
    end
    object EdRY: TEdit
      Left = 51
      Top = 83
      Width = 78
      Height = 24
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 281
    Top = 0
    Width = 1016
    Height = 798
    Align = alClient
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DS1: TDataSource
    DataSet = QReport
    Left = 8
    Top = 544
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
    UpdateObject = UpdateSQL1
    Left = 8
    Top = 512
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
    Left = 8
    Top = 480
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
    Left = 8
    Top = 600
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 8
    Top = 656
  end
  object UpdateSQL1: TUpdateSQL
    Left = 8
    Top = 696
  end
  object QXiming: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 168
    Top = 448
  end
  object QArticle: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, SCDate , 111) AS Date, Defect, DDMH + '#39'-' +
        #39' + CAST(CAST(SUBSTRING(Size, 1, LEN(Size)-1) AS FLOAT) AS VARCH' +
        'AR) + RIGHT(Size, 1) AS DDMH, SUM(Qty) AS Pairs FROM WOPR_Outsol' +
        'e'
      
        'WHERE GSBH = '#39'VA12'#39' AND GXLB = '#39'O'#39' AND CONVERT(VARCHAR, SCDate ,' +
        ' 111) = '#39'2023/01/06'#39
      'GROUP BY CONVERT(VARCHAR, SCDate , 111), Defect, DDMH, Size')
    Left = 168
    Top = 296
  end
end
