object Leather_supp: TLeather_supp
  Left = 516
  Top = 173
  Width = 386
  Height = 522
  BorderIcons = [biSystemMenu]
  Caption = 'Leather_supp'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 70
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 7
      Top = 12
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier ID'
    end
    object Label19: TLabel
      Left = 16
      Top = 42
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier Name'
    end
    object Label20: TLabel
      Left = 134
      Top = 12
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location'
    end
    object Edit5: TEdit
      Left = 75
      Top = 8
      Width = 54
      Height = 24
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 108
      Top = 38
      Width = 165
      Height = 24
      TabOrder = 1
    end
    object cboLocation: TComboBox
      Left = 187
      Top = 8
      Width = 89
      Height = 24
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 2
    end
    object Button2: TButton
      Left = 296
      Top = 35
      Width = 65
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button2Click
    end
    object LeaCK: TCheckBox
      Left = 297
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Leather'
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 70
    Width = 370
    Height = 413
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
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = 'SuppID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 136
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ZSDH,zsywjc,Country '
      'from zszl '
      'where style='#39'Leather'#39' ')
    Left = 208
    Top = 136
    object qry1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object qry1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object qry1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = qry1
    Left = 208
    Top = 168
  end
end
