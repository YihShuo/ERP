object NewMaterial: TNewMaterial
  Left = 472
  Top = 281
  Width = 1009
  Height = 572
  Caption = 'NewMaterial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 97
      Height = 24
      Enabled = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 184
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 993
    Height = 451
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 430
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 430
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 492
    Width = 993
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Button2: TButton
      Left = 424
      Top = 4
      Width = 145
      Height = 33
      Caption = 'Add all materials'
      Enabled = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 120
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 88
  end
end
