object UPSupplierCountry: TUPSupplierCountry
  Left = 460
  Top = 228
  Width = 400
  Height = 700
  BorderIcons = [biSystemMenu]
  Caption = 'UP Supplier Country'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 37
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 14
      Top = 5
      Width = 89
      Height = 27
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 110
      Top = 5
      Width = 89
      Height = 27
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 37
    Width = 392
    Height = 632
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Candara'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Country'
        Title.Alignment = taCenter
        Width = 208
        Visible = True
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
      'select ZSZL_DEV.Country'
      'from ZSZL'
      'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH'
      'WHERE isnull(ZSZL_DEV.Country ,'#39#39')<>'#39#39
      'group by ZSZL_DEV.Country'
      'ORDER BY ZSZL_DEV.Country')
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
