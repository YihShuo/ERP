object QCScanReport: TQCScanReport
  Left = 365
  Top = 192
  Width = 1305
  Height = 675
  Caption = 'QCScanReport'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 152
      Top = 17
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object LabSKU: TLabel
      Left = 288
      Top = 16
      Width = 22
      Height = 13
      Caption = 'SKU'
    end
    object Button1: TButton
      Left = 656
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 50
      Top = 13
      Width = 97
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 1
    end
    object Button2: TButton
      Left = 744
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 170
      Top = 13
      Width = 97
      Height = 24
      Date = 44932.638309201390000000
      Format = 'yyyy/MM/dd'
      Time = 44932.638309201390000000
      TabOrder = 3
    end
    object EditSKU: TEdit
      Left = 344
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object CkJustSKU: TCheckBox
      Left = 504
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Just SKU'
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1297
    Height = 595
    Align = alClient
    DataSource = DS1
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
    Columns = <
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Production Team'
        Width = 220
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'SKU'
        Width = 140
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'ARTICLE'
        Width = 140
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Interval'
        Width = 140
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Pass Quantity'
        Width = 100
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'NG Times'
        Width = 100
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Total Inspections'
        Width = 100
      end
      item
        EditButtons = <>
        Footers = <>
        Title.Caption = 'FIT'
        Width = 100
      end>
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
end
