object PurSize_BJ: TPurSize_BJ
  Left = 348
  Top = 262
  Width = 1082
  Height = 274
  BorderIcons = [biSystemMenu]
  Caption = 'PurSize_BJ'
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
    Width = 1066
    Height = 41
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
      Top = 16
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
    object EDIT1: TEdit
      Left = 56
      Top = 8
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
    object Button1: TButton
      Left = 245
      Top = 4
      Width = 113
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1066
    Height = 195
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        Title.Caption = #22577#20729#21934#34399'|BJNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Title.Caption = #26356#26032#26085#26399'|USERDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830'ID|ZSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #24288#21830'|ZSYWJC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36234#30462#21934#20729'|VNPrice'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 292
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #21295#29575'|CWHL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SuppEx'
        Footers = <>
        Title.Caption = #21295#29575'|SuppEx'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Discount'
        Footers = <>
        Title.Caption = #25240#25187'|Dis%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'PayVN'
        Footers = <>
        Title.Caption = #20184#27454#36234#30462'|PayVN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 112
  end
  object Query1: TQuery
    CachedUpdates = True
    BeforeScroll = Query1BeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,'
      
        'CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJ.EXPDATE,CGB' +
        'JS.Discount,PayVN,IsNull((select top 1 CWHL from CWHLS  where HL' +
        'YEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0' +
        ') as CWHL,CGBJS.SuppEx'
      'from CGBJ'
      'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'left join CLZL on CLZL.CLDH=CGBJS.CLBH'
      'where CGBJS.CLBH like '#39'%'#39
      'and CGBJ.GSBH='#39'VA12'#39
      'order by CGBJ.BJNO DESC')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 152
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
      DisplayFormat = '#,##0.00000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
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
    object Query1EXPDATE: TDateTimeField
      FieldName = 'EXPDATE'
    end
    object Query1Discount: TFloatField
      FieldName = 'Discount'
    end
    object Query1PayVN: TStringField
      FieldName = 'PayVN'
      FixedChar = True
      Size = 1
    end
    object Query1SuppEx: TFloatField
      FieldName = 'SuppEx'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 384
    Top = 152
  end
end
