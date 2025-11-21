object Reality_Remain_Quantity_Pre_YGNO: TReality_Remain_Quantity_Pre_YGNO
  Left = 493
  Top = 332
  Width = 895
  Height = 328
  Caption = 'Reality_Remain_Quantity_Pre_YGNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YGNO:'
    end
    object Label1: TLabel
      Left = 216
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label3: TLabel
      Left = 432
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor:'
    end
    object YGNOEdit: TEdit
      Left = 87
      Top = 8
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
    end
    object Button1: TButton
      Left = 648
      Top = 7
      Width = 81
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CLBHEdit: TEdit
      Left = 303
      Top = 8
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object ZSYWJCEdit: TEdit
      Left = 519
      Top = 8
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button2: TButton
      Left = 736
      Top = 7
      Width = 81
      Height = 25
      Caption = 'COPY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 887
    Height = 256
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
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
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YGNO, CLBH, YWPM, ZWPM, CQDH, DWBH, Sum(CLSL) as CLSL,CSB' +
        'H,ZSYWJC from ('
      
        'Select YGZLS2.*, ZSZL.ZSYWJC, CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL' +
        '.CQDH '
      'from YGZLS2'
      'left join CLZL on CLZL.cldh=YGZLS2.CLBH'
      'left join ZSZL on ZSZL.ZSDH=YGZLS2.CSBH'
      'where YGZLS2.YGNO='#39'20211100001'#39' ) YGZLS2'
      'Group by YGNO, CLBH , YWPM, ZWPM, CQDH, DWBH, CSBH, ZSYWJC'
      'Order by CLBH')
    Left = 224
    Top = 57
    object Query1YGNO: TStringField
      FieldName = 'YGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      DisplayWidth = 34
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      DisplayWidth = 38
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      DisplayWidth = 4
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      DisplayWidth = 10
      FieldName = 'CLSL'
    end
    object Query1CSBH: TStringField
      DisplayWidth = 6
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      DisplayWidth = 12
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 89
  end
  object YGZLS2Qry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select SIZE,Sum(CLSL) as CLSL'
      'from YGZLS2'
      'where YGZLS2.YGNO=:YGNO and CLBH=:CLBH'
      'Group by SIZE'
      'Order by SIZE')
    Left = 267
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
  end
end
