object InStockPrice: TInStockPrice
  Left = 430
  Top = 153
  Width = 807
  Height = 480
  Caption = 'In Stock Price'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 40
      Width = 106
      Height = 20
      Caption = 'Purchase Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 61
      Top = 13
      Width = 53
      Height = 20
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 221
      Top = 40
      Width = 14
      Height = 20
      Caption = 'to'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 392
      Top = 13
      Width = 45
      Height = 20
      Caption = 'RKNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 354
      Top = 39
      Width = 83
      Height = 20
      Caption = 'Material NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GSBH: TComboBox
      Left = 126
      Top = 12
      Width = 89
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VDT'
        'VTX'
        'CDC'
        'KDC')
    end
    object CGSD: TDateTimePicker
      Left = 126
      Top = 40
      Width = 89
      Height = 21
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      TabOrder = 1
    end
    object CGED: TDateTimePicker
      Left = 242
      Top = 40
      Width = 89
      Height = 21
      Date = 41391.604173831020000000
      Time = 41391.604173831020000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 572
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 443
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 443
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Button2: TButton
      Left = 664
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 791
    Height = 369
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = 'RKNO|'#20837#24235#21934#34399
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material NO|'#26448#26009#32232#34399
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Material Name|'#26448#26009#21517#31281
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = 'Stock|'#20837#24235#20489
        Width = 43
      end
      item
        DisplayFormat = '0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Qty|'#20837#24235#25976#37327
        Width = 71
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'USPrice_2'
        Footers = <>
        Title.Caption = 'USPrice_2|'#32654#37329#21934#20729
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'USACC_2'
        Footers = <>
        Title.Caption = 'USACC_2|'#32654#37329#32317#20729
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice_2'
        Footers = <>
        Title.Caption = 'VNPrice_2|'#36234#30462#21934#20729
      end
      item
        EditButtons = <>
        FieldName = 'VNACC_2'
        Footers = <>
        Title.Caption = 'VNACC_2|'#36234#30462#32317#20729
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = 'CFMDATE|'#20837#24235#30906#35469#26085
        Width = 65
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRKS.RKNO,KCRKS.CLBH,clzl.ywpm,KCRK.CKBH,KCRKS.Qty,'
      
        'KCRKS.USPrice_2,KCRKS.USACC_2, KCRKS.VNPrice_2,KCRKS.VNACC_2,KCR' +
        'K.CFMDATE'
      'from KCRKS'
      'left join KCRK on KCRKS.RKNO = KCRK.RKNO'
      'left join clzl on KCRKS.CLBH = clzl.cldh'
      'where KCRKS.RKNO like '#39'%%'#39
      'and KCRKS.CLBH like '#39'%%'#39
      
        'and KCRK.CFMDATE >= '#39'2013/07/01'#39' and KCRK.CFMDATE <= '#39'2013/07/31' +
        #39
      'and KCRK.GSBH = '#39'CDC'#39
      'order by KCRKS.RKNO,KCRK.CFMDATE')
    Left = 328
    Top = 200
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1USPrice_2: TFloatField
      FieldName = 'USPrice_2'
    end
    object Query1USACC_2: TFloatField
      FieldName = 'USACC_2'
    end
    object Query1VNPrice_2: TFloatField
      FieldName = 'VNPrice_2'
    end
    object Query1VNACC_2: TFloatField
      FieldName = 'VNACC_2'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
  end
end
