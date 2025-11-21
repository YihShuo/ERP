object QCSpecialDefect: TQCSpecialDefect
  Left = 192
  Top = 117
  Width = 1305
  Height = 868
  Caption = 'QCSpecialDefect'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 837
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 16
      Top = 57
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label4: TLabel
      Left = 0
      Top = 248
      Width = 29
      Height = 13
      Caption = 'Article'
    end
    object LabSKU: TLabel
      Left = 8
      Top = 104
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object Label3: TLabel
      Left = 8
      Top = 416
      Width = 22
      Height = 13
      Caption = 'SKU'
    end
    object Button1: TButton
      Left = 40
      Top = 556
      Width = 121
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
      Left = 40
      Top = 13
      Width = 153
      Height = 24
      Date = 0.638309201392985400
      Format = 'yyyy/MM/dd'
      Time = 0.638309201392985400
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 42
      Top = 53
      Width = 153
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 2
    end
    object LbLines: TListBox
      Left = 40
      Top = 112
      Width = 210
      Height = 121
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 3
    end
    object CbSku: TComboBox
      Left = 40
      Top = 248
      Width = 210
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
    end
    object LbSku: TListBox
      Left = 40
      Top = 272
      Width = 210
      Height = 105
      ItemHeight = 13
      TabOrder = 5
    end
    object CbArticle: TComboBox
      Left = 40
      Top = 408
      Width = 210
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 6
    end
    object LbArticle: TListBox
      Left = 40
      Top = 440
      Width = 210
      Height = 105
      ItemHeight = 13
      TabOrder = 7
    end
    object BtExcel: TButton
      Left = 40
      Top = 602
      Width = 121
      Height = 39
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object EtArticle: TEdit
      Left = 40
      Top = 408
      Width = 190
      Height = 21
      TabOrder = 9
    end
    object EtSKU: TEdit
      Left = 40
      Top = 248
      Width = 190
      Height = 21
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 273
    Top = 0
    Width = 1024
    Height = 837
    Align = alClient
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
      Size = 100
    end
    object QReportQty: TIntegerField
      FieldName = 'Qty'
    end
    object QReportSCDate: TStringField
      FieldName = 'SCDate'
      Size = 10
    end
    object QReportGSBH: TStringField
      FieldName = 'GSBH'
      Size = 50
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
end
