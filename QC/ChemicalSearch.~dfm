object ChemicalSearchs: TChemicalSearchs
  Left = 534
  Top = 284
  Width = 609
  Height = 414
  Caption = 'ChemicalSearch'
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
    Width = 593
    Height = 375
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 591
      Height = 80
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 47
        Height = 20
        Caption = 'CLBH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 232
        Top = 32
        Width = 53
        Height = 20
        Caption = 'YWPM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtCLBH: TEdit
        Left = 80
        Top = 32
        Width = 145
        Height = 21
        TabOrder = 0
      end
      object edtYWPM: TEdit
        Left = 288
        Top = 32
        Width = 129
        Height = 21
        TabOrder = 1
      end
      object btS: TButton
        Left = 440
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Search'
        TabOrder = 2
        OnClick = btSClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 81
      Width = 591
      Height = 293
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 589
        Height = 291
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 318
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 40
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 265
    Top = 193
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLDH, YWPM, DWBH FROM CLZL')
    Left = 161
    Top = 201
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
end
