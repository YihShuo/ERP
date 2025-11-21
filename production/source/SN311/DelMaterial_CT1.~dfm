object DelMaterial_CT: TDelMaterial_CT
  Left = 389
  Top = 208
  Width = 735
  Height = 364
  Caption = 'DelMaterial_CT'
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Order NO:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 8
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 727
    Height = 281
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Width = 52
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT      YWBZPO.DDBH, YWBZPO.CLBH,sum( YWBZPO.CTS) as Qty,YWW' +
        'X2.Square as PaQty,'
      '                   CLZL.YWPM,CLZL.DWBH,KCRKS.Qty as okQty'
      'from YWBZPO'
      'left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH'
      'left join CLZl on CLZl.CLDH=YWBZPO.CLBH'
      
        'left join KCRKS on KCRKS.CGBH=YWBZPO.DDBH and KCRKS.CLBH=YWBZPO.' +
        'CLBH'
      'group by  YWBZPO.DDBH, YWBZPO.CLBH,YWWX2.Square, CLZL.YWPM,'
      '              CLZL.DWBH,KCRKS.Qty')
    UpdateObject = UpdateSQL1
    Left = 224
    Top = 120
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWBZPO.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.YWBZPO.CLBH'
      FixedChar = True
      Size = 15
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
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWBZPO.CTS'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 120
  end
  object UpdateSQL1: TUpdateSQL
    Left = 304
    Top = 120
  end
end
