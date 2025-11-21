object MaterialList: TMaterialList
  Left = 258
  Top = 263
  Width = 1305
  Height = 687
  Caption = 'MaterialList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 59
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 10
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 10
      Width = 107
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Engnish Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 204
      Top = 36
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #20013#25991#21517#31281':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 78
      Top = 7
      Width = 98
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 286
      Top = 7
      Width = 66
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 358
      Top = 7
      Width = 59
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 423
      Top = 7
      Width = 52
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 286
      Top = 33
      Width = 66
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 358
      Top = 33
      Width = 59
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 423
      Top = 33
      Width = 52
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button1: TButton
      Left = 507
      Top = 26
      Width = 66
      Height = 27
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 585
      Top = 26
      Width = 61
      Height = 27
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 59
    Width = 1297
    Height = 597
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 244
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 243
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'lycc'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 24
      end
      item
        EditButtons = <>
        FieldName = 'gjlb'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 17
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLZl')
    Left = 256
    Top = 144
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
    Left = 296
    Top = 144
  end
end
