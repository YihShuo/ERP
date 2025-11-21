object MaterialList: TMaterialList
  Left = 339
  Top = 279
  Width = 870
  Height = 500
  Caption = 'MaterialList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 13
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 242
      Top = 13
      Width = 105
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Engnish Name:'
    end
    object Label3: TLabel
      Left = 235
      Top = 43
      Width = 112
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chinese Name:'
    end
    object Edit1: TEdit
      Left = 100
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 352
      Top = 8
      Width = 81
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 440
      Top = 8
      Width = 73
      Height = 24
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 520
      Top = 8
      Width = 65
      Height = 24
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 352
      Top = 40
      Width = 81
      Height = 24
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 440
      Top = 40
      Width = 73
      Height = 24
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 520
      Top = 40
      Width = 65
      Height = 24
      TabOrder = 6
    end
    object Button1: TButton
      Left = 608
      Top = 32
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 704
      Top = 32
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 862
    Height = 396
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
        FieldName = 'cldh'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'lycc'
        Footers = <>
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'gjlb'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Width = 21
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLZl')
    Left = 16
    Top = 160
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.CLZl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1lycc: TStringField
      FieldName = 'lycc'
      Origin = 'DB.CLZl.lycc'
      FixedChar = True
      Size = 1
    end
    object Query1gjlb: TStringField
      FieldName = 'gjlb'
      Origin = 'DB.CLZl.gjlb'
      FixedChar = True
      Size = 4
    end
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      Origin = 'DB.CLZl.cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      Origin = 'DB.CLZl.tyjh'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 128
  end
end
