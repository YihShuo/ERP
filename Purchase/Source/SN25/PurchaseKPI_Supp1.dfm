object PurchaseKPI_Supp: TPurchaseKPI_Supp
  Left = 304
  Top = 209
  Width = 592
  Height = 283
  Caption = 'PurchaseKPI_Supp'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 59
      Height = 20
      Caption = 'SuppID:'
    end
    object Label2: TLabel
      Left = 160
      Top = 12
      Width = 62
      Height = 20
      Caption = 'Supplier:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 81
      Height = 28
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 224
      Top = 8
      Width = 169
      Height = 28
      TabOrder = 1
    end
    object Button1: TButton
      Left = 396
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGridEh12: TDBGridEh
    Left = 0
    Top = 49
    Width = 576
    Height = 196
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Title.Caption = 'BOM'#25351#23450#24288#21830'|ZSJCB'
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'PayZSJC'
        Footers = <>
        Title.Caption = #25505#36092#20184#27454#24288#21830'|ZSJA'
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = 'BOM'#24288#21830'ID|ZSDH'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'PayZSDH'
        Footers = <>
        Title.Caption = #25505#36092#20184#27454#24288#21830'ID|ZSDH'
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'PayYN'
        Footers = <>
        Title.Caption = #25505#21312'|PayYN'
        Width = 47
      end>
  end
  object SuppQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZSZL.ZSDH,ZSZL.ZSJC,ZSZL.YN ,IsNull(Pay.ZSDH,ZSZl.ZSDH) a' +
        's PayZSDH,IsNull(Pay.ZSJC,ZSZL.ZSJC) as PayZSJC,case when IsNull' +
        '(Pay.YN,ZSZL.YN)='#39'1'#39' then '#39'TW'#39' else '#39'VN'#39' end as PayYN from ZSZL'
      'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH'
      'left join ZSZL Pay on ZSZL_DEV.ZSDH_TW=Pay.ZSDH'
      'where  ZSZL_DEV.GSBH='#39'VA12'#39' and ZSZL_DEV.ZSDH='#39'M049'#39)
    Left = 205
    Top = 89
    object SuppQryZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object SuppQryZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object SuppQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SuppQryPayZSDH: TStringField
      FieldName = 'PayZSDH'
      FixedChar = True
      Size = 6
    end
    object SuppQryPayZSJC: TStringField
      FieldName = 'PayZSJC'
      FixedChar = True
    end
    object SuppQryPayYN: TStringField
      FieldName = 'PayYN'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = SuppQry
    Left = 205
    Top = 129
  end
end
