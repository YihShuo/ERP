object Brand: TBrand
  Left = 595
  Top = 305
  Width = 530
  Height = 383
  Caption = 'Brand'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 54
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 160
      Top = 27
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Brand:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 24
      Width = 73
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 376
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 514
    Height = 271
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'kfdh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kfjc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Brand EN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kfqm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Brand CH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from kfzl'
      'order by kfdh')
    Left = 232
    Top = 160
    object Query1kfdh: TStringField
      FieldName = 'kfdh'
      Origin = 'DB.kfzl.kfdh'
      FixedChar = True
      Size = 4
    end
    object Query1kfqm: TStringField
      FieldName = 'kfqm'
      Origin = 'DB.kfzl.kfqm'
      FixedChar = True
      Size = 40
    end
    object Query1kfjc: TStringField
      FieldName = 'kfjc'
      Origin = 'DB.kfzl.kfjc'
      FixedChar = True
    end
  end
end
