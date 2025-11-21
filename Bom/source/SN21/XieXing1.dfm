object XieXing: TXieXing
  Left = 577
  Top = 284
  Width = 693
  Height = 445
  BorderIcons = [biSystemMenu]
  Caption = 'XieXing'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 208
      Top = 12
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label4: TLabel
      Left = 393
      Top = 12
      Width = 19
      Height = 16
      Caption = 'SR'
    end
    object Label5: TLabel
      Left = 8
      Top = 12
      Width = 43
      Height = 16
      Caption = 'Die Cut'
    end
    object Button1: TButton
      Left = 584
      Top = 5
      Width = 81
      Height = 29
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ED_SKU: TEdit
      Left = 240
      Top = 8
      Width = 132
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ED_SR: TEdit
      Left = 417
      Top = 8
      Width = 132
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object ED_DieCut: TEdit
      Left = 56
      Top = 8
      Width = 132
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 677
    Height = 365
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Model'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Shehao'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Color ID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Die Cut'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        ReadOnly = True
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Width = 140
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.Shehao,kfxxzl.Article as SKU,kfxxzl.Dev' +
        'code as SR from XXZL'
      
        'left join kfxxzl on XXZL.XieXing = kfxxzl.XieXing and XXZL.Sheha' +
        'o = kfxxzl.Shehao'
      'where 1 = 0'
      '')
    Left = 16
    Top = 120
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
