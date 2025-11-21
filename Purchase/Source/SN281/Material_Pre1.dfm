object Material_Pre: TMaterial_Pre
  Left = 457
  Top = 254
  Width = 523
  Height = 392
  Caption = 'Material_Pre'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 9
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatID:'
    end
    object Label5: TLabel
      Left = 0
      Top = 38
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Edit2: TEdit
      Left = 79
      Top = 5
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 79
      Top = 34
      Width = 186
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 282
      Top = 8
      Width = 111
      Height = 49
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 515
    Height = 296
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 513
      Height = 294
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cldh'
          Footers = <>
          Title.Caption = 'MatID'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'CQDH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Mat Name'
          Width = 400
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          Title.Caption = 'Unit'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Footers = <>
          Width = 280
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          Width = 64
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select top 10'
      '       CLZL.cldh,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,'
      '       CLZL.CQDH,CLZL.ZSDH,ZSZL.ZSYWJC'
      'from clzl'
      'left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH')
    Left = 200
    Top = 161
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 161
  end
end
