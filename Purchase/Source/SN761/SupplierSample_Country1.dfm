object SupplierSample_Country: TSupplierSample_Country
  Left = 460
  Top = 228
  Width = 352
  Height = 497
  BorderIcons = [biSystemMenu]
  Caption = 'SupplierSample_Country'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 118
      Top = 7
      Width = 89
      Height = 26
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 230
      Top = 6
      Width = 89
      Height = 26
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 40
    Width = 336
    Height = 417
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 134
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    select  ZSZL.Country  from ZSZL '
      
        '       WHERE ZSZL.Country is not null AND ZSZL.Country<>'#39#39'  and ' +
        '1=2'
      '       group by ZSZL.Country ORDER BY ZSZL.Country')
    Left = 272
    Top = 152
    object Query1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.ZSZL.Country'
      FixedChar = True
      Size = 10
    end
  end
end
