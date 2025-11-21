object PurOther_CL: TPurOther_CL
  Left = 369
  Top = 175
  Width = 757
  Height = 412
  BorderIcons = [biSystemMenu]
  Caption = 'PurOther_CL'
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
    Width = 741
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 72
      Height = 20
      Caption = 'SimpleNo:'
    end
    object Button1: TButton
      Left = 382
      Top = 21
      Width = 73
      Height = 33
      Caption = 'Send'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 96
      Top = 24
      Width = 193
      Height = 28
      CharCase = ecUpperCase
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 741
    Height = 300
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'YN'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 61
      end
      item
        Color = clRed
        EditButtons = <>
        FieldName = 'cgqty'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 319
      end>
  end
  object DS1: TDataSource
    DataSet = Query2
    Left = 464
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *,'#39#39' as csbh'
      'from ypzlzl'
      '')
    Left = 424
    Top = 160
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.ypzlzl.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzlzl.KFJD'
      FixedChar = True
      Size = 10
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.ypzlzl.JiJie'
      FixedChar = True
      Size = 10
    end
    object Query1CALDATE: TDateTimeField
      FieldName = 'CALDATE'
      Origin = 'DB.ypzlzl.CALDATE'
    end
    object Query1memo: TStringField
      FieldName = 'memo'
      Origin = 'DB.ypzlzl.memo'
      FixedChar = True
      Size = 50
    end
    object Query1INSDATE: TDateTimeField
      FieldName = 'INSDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1PD: TStringField
      FieldName = 'PD'
      FixedChar = True
      Size = 1
    end
    object Query1csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 1
    end
  end
  object Query2: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select ypzlzls1.*,CLZL.YWPM,CLZL.DWBH,cgzls.qty as cgqty'
      '  from ypzlzls1'
      'left join clzl on ypzlzls1.clbh=clzl.cldh'
      
        'left join cgzls on ypzlzls1.ypzlbh=cgzls.memo and ypzlzls1.clbh=' +
        'cgzls.clbh'
      'where ypzlzls1.ypzlbh='
      #39'CDC201204000005'#39
      ' and ypzlzls1.csbh='
      #39'V086'#39
      'and ypzlzls1.yn='#39'Y'#39
      'and ypzlzls1.qty > cgzls.qty'
      '')
    UpdateObject = UpdateSQL1
    Left = 464
    Top = 160
    object Query2YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 10
    end
    object Query2CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2cgqty: TCurrencyField
      FieldName = 'cgqty'
      DisplayFormat = '#,##0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 464
    Top = 200
  end
end
