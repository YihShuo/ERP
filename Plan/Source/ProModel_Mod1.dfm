object ProModel_Mod: TProModel_Mod
  Left = 436
  Top = 212
  Width = 395
  Height = 334
  BorderIcons = [biSystemMenu]
  Caption = 'ProModel_Mod'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 41
      Height = 16
      Caption = 'Model:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 216
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
    Top = 64
    Width = 387
    Height = 236
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Model'
        Footers = <>
        Width = 244
      end>
  end
  object Model: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct Model'
      'from XXZLVN'
      'order by Model')
    Left = 128
    Top = 209
    object ModelModel: TStringField
      FieldName = 'Model'
      Origin = 'DB.XXZLVN.Model'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Model
    Left = 160
    Top = 208
  end
end
