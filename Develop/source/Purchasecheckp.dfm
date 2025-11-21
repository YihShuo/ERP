object Purchasecheck: TPurchasecheck
  Left = 192
  Top = 189
  Width = 1126
  Height = 480
  Caption = 'Order Materiel Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 249
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 872
      Top = 16
      Width = 121
      Height = 20
      Caption = 'Creat Date After '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 872
      Top = 88
      Width = 92
      Height = 20
      Caption = 'Simple Order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CDA: TDateTimePicker
      Left = 872
      Top = 48
      Width = 97
      Height = 21
      Date = 41030.956564583340000000
      Time = 41030.956564583340000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 977
      Top = 45
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ordercb: TComboBox
      Left = 872
      Top = 112
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      OnChange = ordercbChange
      Items.Strings = (
        ''
        'ALL')
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 768
      Height = 247
      Align = alLeft
      DataSource = ypded
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'YPDH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Sample No'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'XieXing'
          Footers = <>
          Title.Caption = 'Type'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'SheHao'
          Footers = <>
          Title.Caption = 'Color'
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Width = 98
        end
        item
          EditButtons = <>
          FieldName = 'KFJD'
          Footers = <>
          Title.Caption = 'Sample Mode'
          Width = 115
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footers = <>
          Title.Caption = 'PAIRS'
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'SDRQ'
          Footers = <>
          Title.Caption = 'Create Date'
          Width = 102
        end>
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 249
    Width = 1110
    Height = 192
    Align = alClient
    DataSource = cgD
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypzlbh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Merger No'
      end
      item
        EditButtons = <>
        FieldName = 'csbh'
        Footers = <>
        Title.Caption = 'Supplier No'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        Title.Caption = 'Material No'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Material English'
        Width = 528
      end
      item
        EditButtons = <>
        FieldName = 'clsl'
        Footers = <>
        Title.Caption = 'Need Qty'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'cgqty'
        Footers = <>
        Title.Caption = 'Bought Qty'
        Width = 86
      end>
  end
  object YPDE: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ypzlzls'
      'left join ypzl on ypzlzls.ypdh=ypzl.ypdh'
      '')
    Left = 240
    Top = 104
    object YPDEYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzlzls.YPDH'
      FixedChar = True
      Size = 15
    end
    object YPDEXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPDESheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 5
    end
    object YPDEARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
    end
    object YPDEKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 3
    end
    object YPDEQuantity: TFloatField
      FieldName = 'Quantity'
      Origin = 'DB.ypzlzls.YPZLBH'
    end
    object YPDESDRQ: TStringField
      FieldName = 'SDRQ'
      Origin = 'DB.ypzlzls.YPZLBH'
      FixedChar = True
      Size = 8
    end
  end
  object YPMA: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ypzlbh '
      'from ypzlzl')
    Left = 416
    Top = 104
    object YPMAypzlbh: TStringField
      FieldName = 'ypzlbh'
      FixedChar = True
      Size = 15
    end
  end
  object CGLIST: TQuery
    DatabaseName = 'DB'
    DataSource = ypmad
    SQL.Strings = (
      'select ypzlzls1.ypzlbh,ypzlzls1.csbh,ypzlzls1.clbh,clzl.ywpm'
      #9',ypzlzls1.clsl,ypzlzls1.qty,isnull(cgzls.qty,0) as cgqty'
      ' from ypzlzls1'
      
        'left join cgzls on ypzlzls1.ypzlbh=cgzls.memo and ypzlzls1.clbh=' +
        'cgzls.clbh'
      'left join clzl on ypzlzls1.clbh=clzl.cldh '
      'where ypzlzls1.clbh like '#39'P%'#39
      'order by ypzlzls1.ypzlbh,ypzlzls1.csbh,ypzlzls1.clbh')
    Left = 296
    Top = 312
    object CGLISTypzlbh: TStringField
      FieldName = 'ypzlbh'
      FixedChar = True
      Size = 15
    end
    object CGLISTcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 10
    end
    object CGLISTclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 10
    end
    object CGLISTywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object CGLISTclsl: TFloatField
      FieldName = 'clsl'
    end
    object CGLISTcgqty: TCurrencyField
      FieldName = 'cgqty'
      DisplayFormat = '#,##0.00'
    end
  end
  object ypmad: TDataSource
    DataSet = YPMA
    Left = 456
    Top = 104
  end
  object ypded: TDataSource
    DataSet = YPDE
    Left = 272
    Top = 104
  end
  object cgD: TDataSource
    DataSet = CGLIST
    Left = 336
    Top = 312
  end
end
