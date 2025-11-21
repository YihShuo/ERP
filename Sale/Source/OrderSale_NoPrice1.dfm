object OrderSale_NoPrice: TOrderSale_NoPrice
  Left = 409
  Top = 212
  Width = 527
  Height = 409
  BorderIcons = [biSystemMenu]
  Caption = 'OrderSale_NoPrice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 57
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 160
      Top = 24
      Width = 23
      Height = 16
      Caption = 'X/F:'
    end
    object Label4: TLabel
      Left = 288
      Top = 24
      Width = 14
      Height = 16
      Caption = 'To'
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 89
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 411
      Top = 8
      Width = 70
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 192
      Top = 16
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 304
      Top = 16
      Width = 89
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 511
    Height = 312
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        Color = 6881279
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Width = 71
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDDS.*,YWDD.ETD'
      'from YWDDS'
      'left join YWDD on YWDD.DDBH=YWDDS.DDBH'
      '')
    Left = 144
    Top = 104
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDS.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.YWDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1DDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.YWDDS.DDCC'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWDDS.Qty'
      DisplayFormat = '##,#0'
    end
    object Query1IPrice: TCurrencyField
      FieldName = 'IPrice'
      Origin = 'DB.YWDDS.IPrice'
      DisplayFormat = '##,#0.000'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      Origin = 'DB.YWDD.ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 176
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 184
    Top = 160
  end
end
