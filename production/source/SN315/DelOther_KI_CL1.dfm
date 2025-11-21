object DelOther_KI_CL: TDelOther_KI_CL
  Left = 352
  Top = 193
  Width = 928
  Height = 480
  Caption = 'DelOther_KI_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 28
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 360
      Top = 26
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 0
      Top = 26
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Button1: TButton
      Left = 608
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 446
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EDIT1: TEdit
      Left = 248
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 528
      Top = 24
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 80
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 912
    Height = 376
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 226
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 251
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(KHUON' +
        'IN_ZLZLS2.CLSL) as CLSL '
      'from CLZL '
      'left join KHUONIN_ZLZLS2 on CLZL.CLDH=KHUONIN_ZLZLS2.CLBH'
      'where CLZL.CLDH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%'#39
      '      and CLZL.YWPM like '#39'%'#39
      '      and KHUONIN_ZLZLS2.ZLBH like '#39'KI202210000001%'#39
      '      and CLZL.CLDH like '#39'W%'#39
      'group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH '
      'order by CLZL.CLDH')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
  end
end
