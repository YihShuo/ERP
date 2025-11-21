object UploadExcleReport: TUploadExcleReport
  Left = 568
  Top = 323
  Width = 1007
  Height = 577
  Caption = 'UploadExcleReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 464
      Height = 16
      Caption = 
        'The following data in red color will be updated, press confirm b' +
        'utton to proceed'
    end
    object Label2: TLabel
      Left = 133
      Top = 13
      Width = 53
      Height = 16
      Caption = 'red color'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 497
    Width = 991
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 458
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirm'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 991
    Height = 456
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taLeftJustify
        EditButtons = <>
        FieldName = 'No_ID'
        Footers = <>
        Title.Caption = 'SID'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Mat. ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Mat. Name'
        Width = 150
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'Lab_FinishDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Finished Date'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Lab_Check'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Result'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'File_Name_Lab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Report File'
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT No_ID, RKNO, RY, Article, CLBH, YWPM, Qty, Lab_Check, Lab' +
        '_FinishDate, File_Name_Lab FROM MaterialQCcheck'
      'LEFT JOIN CLZL ON CLZL.CLDH = MaterialQCcheck.CLBH'
      
        'WHERE DateInput = '#39'2022/11/7'#39' AND CLBH = '#39'D080019825'#39' AND GSBH =' +
        ' '#39'VA12'#39)
    Left = 16
    Top = 120
    object Query1No_ID: TIntegerField
      FieldName = 'No_ID'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 255
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 255
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1Lab_Check: TStringField
      FieldName = 'Lab_Check'
      FixedChar = True
      Size = 50
    end
    object Query1Lab_FinishDate: TDateTimeField
      FieldName = 'Lab_FinishDate'
    end
    object Query1File_Name_Lab: TStringField
      FieldName = 'File_Name_Lab'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 88
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 120
  end
end
