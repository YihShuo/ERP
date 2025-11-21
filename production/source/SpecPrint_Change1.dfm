object SpecPrint_Change: TSpecPrint_Change
  Left = 365
  Top = 222
  Width = 696
  Height = 428
  BorderIcons = [biSystemMenu]
  Caption = 'SpecPrint_Change'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 18
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 153
      Top = 19
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 272
      Top = 20
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#'
    end
    object Label4: TLabel
      Left = 408
      Top = 19
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Button1: TButton
      Left = 592
      Top = 9
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 16
      Width = 97
      Height = 24
      Date = 39873.901973379630000000
      Time = 39873.901973379630000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 176
      Top = 16
      Width = 97
      Height = 24
      Date = 39873.901973379630000000
      Time = 39873.901973379630000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 328
      Top = 16
      Width = 81
      Height = 24
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 480
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 688
    Height = 340
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 137
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 319
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 51
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,XXBW' +
        'FLS.DFL,XXBWFLS.XFL '
      '        ,XXZL.Article,XXZL.XieMing'
      'from XXZLSVN'
      'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      
        'left join XXZL on XXZl.XieXing=XXZLSVN.XieXing and XXZL.SheHao=X' +
        'XZLSVN.SheHao'
      'left join ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH'
      'left join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      'left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH'
      
        'where  convert(smalldatetime,convert(varchar,XXZLSVN.USERDATE,11' +
        '1)) between '
      '       '#39'2009/02/26'#39' and '#39'2009/03/01'#39
      '       and XXZL.Article like '#39'%%'#39
      '       and XXZL.XieMing like '#39'%%'#39
      'order by XXZL.XieXing,XXZL.SheHao')
    Left = 168
    Top = 80
    object Query1XieXing: TStringField
      DisplayWidth = 15
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      DisplayWidth = 5
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      DisplayWidth = 50
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1BWBH: TStringField
      DisplayWidth = 8
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      DisplayWidth = 20
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query1CLBH: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TCurrencyField
      DisplayWidth = 10
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object Query1FLBH: TStringField
      DisplayWidth = 2
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object Query1DFL: TStringField
      DisplayWidth = 1
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1XFL: TStringField
      DisplayWidth = 10
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object Query1CSBH: TStringField
      DisplayWidth = 6
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      DisplayWidth = 20
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1LYCC: TStringField
      DisplayWidth = 1
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object Query1USERID: TStringField
      DisplayWidth = 15
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YN: TStringField
      DisplayWidth = 1
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 80
  end
end
