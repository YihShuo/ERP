object MaterialNew_ZS: TMaterialNew_ZS
  Left = 359
  Top = 242
  Width = 378
  Height = 296
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialNew_ZS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 370
    Height = 216
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
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'kfdh'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Width = 201
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from KFZL'
      'order by KFDH')
    Left = 176
    Top = 88
    object Query1kfdh: TStringField
      FieldName = 'kfdh'
      Origin = 'DB.KFZL.kfdh'
      FixedChar = True
      Size = 4
    end
    object Query1kfjc: TStringField
      FieldName = 'kfjc'
      Origin = 'DB.KFZL.kfjc'
      FixedChar = True
    end
  end
end
