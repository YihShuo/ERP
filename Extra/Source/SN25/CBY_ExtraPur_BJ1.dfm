object CBY_ExtraPur_BJ: TCBY_ExtraPur_BJ
  Left = 398
  Top = 308
  Width = 1131
  Height = 478
  BorderIcons = [biSystemMenu]
  Caption = 'CBY_ExtraPur_BJ'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1115
    Height = 65
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
      Top = 24
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 272
      Top = 16
      Width = 113
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 64
      Top = 21
      Width = 177
      Height = 24
      CharCase = ecUpperCase
      Color = 13828095
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 404
      Top = 16
      Width = 97
      Height = 33
      Caption = 'New Price'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1115
    Height = 374
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22577#20729#21934#34399'|BJNO'
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22577#20729#26085#26399'|USERDate'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'ID|SupID'
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|Supplier'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26009#34399'|MatNo'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#25551#36848'|MatName'
        Width = 179
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'|Unit'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32654#37329#21934#20729'|USPrice'
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36234#30462#21934#20729'|VNPrice'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clYellow
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #21295#29575'|Exch'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'SuppEx'
        Footers = <>
        Title.Caption = #21295#29575'|SuppEx'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Discount'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25240#25187'|Dis%'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'PayVN'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20184#27454#36234#30462'|PayVN'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Sort'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38918#24207'|Sort'
        Width = 37
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *  from ('
      
        'select CGBJ.*,ROW_NUMBER() over (PARTITION BY ZSBH ORDER BY BJNO' +
        ' desc) as Sort from ('
      'select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,'
      
        '       CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJS.Dis' +
        'count,PayVN,convert(money,0.0) as CWHL,CGBJS.SuppEx'
      'from CGBJ'
      'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'left join CLZL on CLZL.CLDH=CGBJS.CLBH'
      'where CGBJS.CLBH=:CLBH'
      'and CGBJ.GSBH=:GSBH ) CGBJ ) CGBJ'
      'order by Sort,CGBJ.BJNO DESC')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1Discount: TFloatField
      FieldName = 'Discount'
    end
    object Query1PayVN: TStringField
      FieldName = 'PayVN'
      FixedChar = True
      Size = 1
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1SuppEx: TFloatField
      FieldName = 'SuppEx'
    end
    object Query1Sort: TFloatField
      FieldName = 'Sort'
    end
  end
  object CWHLS: TQuery
    DatabaseName = 'DB'
    Left = 382
    Top = 127
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
end
