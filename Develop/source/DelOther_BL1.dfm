object DelOther_BL: TDelOther_BL
  Left = 417
  Top = 228
  Width = 809
  Height = 421
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_BL'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 306
      Top = 18
      Width = 75
      Height = 20
      Caption = 'SimpleNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 20
      Caption = 'Simple After:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 560
      Top = 8
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object cda: TDateTimePicker
      Left = 104
      Top = 16
      Width = 105
      Height = 24
      Date = 41031.346352430560000000
      Time = 41031.346352430560000000
      TabOrder = 1
    end
    object Button2: TButton
      Left = 216
      Top = 16
      Width = 67
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object ordercb: TComboBox
      Left = 390
      Top = 14
      Width = 169
      Height = 24
      ItemHeight = 16
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 793
    Height = 325
    Align = alClient
    DataSource = DataSource1
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
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 287
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 66
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
        Width = 55
      end
      item
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Width = 97
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select ypzlzls1.ypzlbh,ypzlzls1.CLBH,CLZL.YWPM,CLZL.DWBH,sum(ypz' +
        'lzls1.Qty) as CLSL ,KCZLS.KCQty'
      '          ,KCLLS.Qty'
      'from  ypzlzls1'
      'left join ypzlzl on ypzlzls1.ypzlbh=ypzlzl.ypzlbh'
      'left join CLZL on CLZL.CLDH=ypzlzls1.CLBH'
      
        'left join (select scbh,CLBH,DFL,sum(Qty) as Qty from KCLLS where' +
        ' scbh=:BLNO'
      #9#9'group by scbh,CLBH,DFL ) KCLLS'
      '              on KCLLS.CLBH=ypzlzls1.CLBH'
      'left join KCZLS on KCZLS.CLBH=ypzlzls1.CLBH and KCZLS.CKBH=:CKBH'
      'where ypzlzls1.ypzlbh=:BLNO and ypzlzls1.yn='#39'Y'#39
      
        'group by  ypzlzls1.ypzlbh,ypzlzls1.CLBH,CLZL.YWPM,CLZL.DWBH,KCZL' +
        'S.KCQty,KCLLS.Qty')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BLNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLNO'
        ParamType = ptUnknown
      end>
    object Query1ypzlbh: TStringField
      FieldName = 'ypzlbh'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.00'
    end
    object Query1KCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '#,##0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 120
  end
  object ypma: TQuery
    DatabaseName = 'dB'
    Left = 236
    Top = 125
  end
end
