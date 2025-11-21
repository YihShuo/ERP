object PurOther_BJ: TPurOther_BJ
  Left = 344
  Top = 330
  Width = 934
  Height = 336
  BorderIcons = [biSystemMenu]
  Caption = 'PurOther_BJ'
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
    Width = 918
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
      Left = 16
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
      Left = 64
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
      Left = 253
      Top = 4
      Width = 113
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 918
    Height = 257
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1EditButtonClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BJNO'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDate'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSBH'
        Title.Caption = 'SupID'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSYWJC'
        Title.Caption = 'Supplier'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Title.Caption = 'MatNo'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Title.Caption = 'MatName'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USPrice'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNPrice'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Title.Caption = 'Unit'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXPDATE'
        Width = 69
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clYellow
        Expanded = False
        FieldName = 'CWHL'
        Title.Caption = 'Exch'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SuppEx'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Discount'
        Title.Caption = 'Dis%'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PayVN'
        Width = 49
        Visible = True
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
    Top = 144
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
      DisplayFormat = '#,##0.0000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
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
    Left = 392
    Top = 144
  end
end
