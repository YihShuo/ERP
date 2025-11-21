object Pur_Choice: TPur_Choice
  Left = 461
  Top = 390
  Width = 916
  Height = 411
  Caption = 'Pur_Choice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 43
      Height = 16
      Caption = 'PO No:'
    end
    object XieXingEdit: TEdit
      Left = 68
      Top = 8
      Width = 153
      Height = 26
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 240
      Top = 1
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 908
    Height = 331
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = 'PO NO'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material No'
      end
      item
        DisplayFormat = '00.00'
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = ArticleQry
    Left = 384
    Top = 144
  end
  object ArticleQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGNO,CLBH,QTY from CGZLS'
      'where 1 = 2')
    Left = 384
    Top = 176
    object ArticleQryCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object ArticleQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ArticleQryQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '00.00'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KFXXZL.XieXing,KFXXZL.SheHao,KFXXZL.XieMing,KFXXZL.YSSM,K' +
        'FXXZL.JiJie,XXZL.Article,kfxxzl.FD,KFXXZL.DevCode from KFXXZL '
      
        'Left join XXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KF' +
        'XXZL.SheHao '
      'where KFXXZL.XieXing like '#39'%'#39' '
      'and KFXXZL.SheHao like '#39'%'#39' '
      'and KFXXZL.jijie like '#39'%20F%'#39' '
      'and XXZL.Article like '#39'%168508C%'#39)
    Left = 184
    Top = 184
  end
end
