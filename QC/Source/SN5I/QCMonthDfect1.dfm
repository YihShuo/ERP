object QCMonthDefect: TQCMonthDefect
  Left = 192
  Top = 117
  Width = 1630
  Height = 836
  Caption = 'QCMonthDefect'
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
    Height = 805
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 33
      Width = 36
      Height = 16
      Caption = 'Month'
    end
    object Label2: TLabel
      Left = 8
      Top = 88
      Width = 25
      Height = 16
      Caption = 'Line'
    end
    object Label4: TLabel
      Left = 8
      Top = 384
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label5: TLabel
      Left = 0
      Top = 232
      Width = 37
      Height = 16
      Caption = 'Article'
    end
    object Button1: TButton
      Left = 40
      Top = 604
      Width = 153
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
      Top = 29
      Width = 143
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 1
      OnChange = DTP1Change
    end
    object LbLines: TListBox
      Left = 40
      Top = 88
      Width = 210
      Height = 129
      ItemHeight = 16
      MultiSelect = True
      Sorted = True
      TabOrder = 2
    end
    object CbArticle: TComboBox
      Left = 40
      Top = 384
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 3
      OnClick = CbArticleDblClick
    end
    object LbArticle: TListBox
      Left = 40
      Top = 408
      Width = 210
      Height = 105
      ItemHeight = 16
      Sorted = True
      TabOrder = 4
      OnDblClick = LbLinesClick
    end
    object CbSku: TComboBox
      Left = 40
      Top = 232
      Width = 210
      Height = 24
      ItemHeight = 16
      Sorted = True
      TabOrder = 5
      OnClick = CbArticleDblClick
    end
    object LbSku: TListBox
      Left = 40
      Top = 256
      Width = 210
      Height = 105
      ItemHeight = 16
      Sorted = True
      TabOrder = 6
      OnDblClick = LbLinesClick
    end
    object EtSKU: TEdit
      Left = 40
      Top = 232
      Width = 190
      Height = 24
      TabOrder = 7
      OnExit = EtSKUExit
    end
    object EtArticle: TEdit
      Left = 40
      Top = 384
      Width = 190
      Height = 24
      TabOrder = 8
      OnExit = EtArticleExit
    end
  end
  object DS1: TDataSource
    DataSet = QReport
    Left = 16
    Top = 96
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
    Left = 16
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 32
    Top = 200
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
    Left = 8
    Top = 520
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
    Left = 16
    Top = 616
  end
end
