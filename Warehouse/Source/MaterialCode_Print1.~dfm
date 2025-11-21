object MaterialCode_Print: TMaterialCode_Print
  Left = 358
  Top = 191
  Width = 681
  Height = 405
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialCode_Print'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 281
    Height = 371
    Align = alLeft
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 60
      end>
  end
  object Panel1: TPanel
    Left = 281
    Top = 0
    Width = 112
    Height = 371
    Align = alLeft
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 72
      Width = 75
      Height = 33
      Caption = '>'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 24
      Top = 152
      Width = 75
      Height = 33
      Caption = '<'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 24
      Top = 248
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 393
    Top = 0
    Width = 280
    Height = 371
    Align = alClient
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 56
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = MaterialCode.DS1
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from KCSMCL'
      'where ZLBH=:ZLBH'
      'order by CLBH,DFL,XH')
    UpdateObject = UpdateSQL2
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.KCSMCL.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCSMCL.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCSMCL.DFL'
      FixedChar = True
      Size = 1
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.KCSMCL.XH'
      FixedChar = True
      Size = 2
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCSMCL.Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1MATCODE: TStringField
      FieldName = 'MATCODE'
      Origin = 'DB.KCSMCL.MATCODE'
      FixedChar = True
      Size = 45
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 80
  end
  object Query2: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from KCSMCL'
      'where ZLBH='#39'1111'#39
      'order by CLBH,DFL,XH')
    UpdateObject = UpdateSQL1
    Left = 432
    Top = 64
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.KCSMCL.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCSMCL.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2DFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCSMCL.DFL'
      FixedChar = True
      Size = 1
    end
    object Query2XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.KCSMCL.XH'
      FixedChar = True
      Size = 2
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCSMCL.Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query2MATCODE: TStringField
      FieldName = 'MATCODE'
      Origin = 'DB.KCSMCL.MATCODE'
      FixedChar = True
      Size = 45
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 472
    Top = 64
  end
  object UpdateSQL1: TUpdateSQL
    Left = 432
    Top = 104
  end
  object UpdateSQL2: TUpdateSQL
    Left = 48
    Top = 112
  end
end
