object SKUQry: TSKUQry
  Left = 322
  Top = 219
  Width = 696
  Height = 409
  Caption = 'SKUQry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SKUDBGrid: TDBGridEh
    Left = 0
    Top = 41
    Width = 680
    Height = 330
    Align = alClient
    DataSource = DS
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
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SKUDBGridDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 95
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 10
      Width = 40
      Height = 16
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 10
      Width = 51
      Height = 16
      Caption = 'XieMing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 384
      Top = 10
      Width = 53
      Height = 16
      Caption = 'DAOMH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object QryBtn: TButton
      Left = 584
      Top = 2
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object Edit1: TEdit
      Left = 64
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 256
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 440
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object DS: TDataSource
    DataSet = SKUQuery
    Left = 520
    Top = 48
  end
  object SKUQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select top 1  ARTICLE,XieMing,SheHao,DAOMH from xxzl')
    Left = 552
    Top = 48
  end
end
