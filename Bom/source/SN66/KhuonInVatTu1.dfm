object KhuonInVatTu: TKhuonInVatTu
  Left = 505
  Top = 323
  Width = 808
  Height = 470
  Caption = 'Khuon In Vat Tu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 792
    Height = 382
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 214
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 44
      end
      item
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 18
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 18
      Width = 90
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 655
      Top = 12
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 74
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 408
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 528
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CGBJ.BJNO,CGBJ.VN' +
        'Price,CGBJ.USPrice '
      'from clzl  '
      'Left join ('
      
        '    Select *  from (select KHUONIN_CGBJ.BJNO,KHUONIN_CGBJ.ZSBH,K' +
        'HUONIN_CGBJS.CLBH,KHUONIN_CGBJS.USPrice,KHUONIN_CGBJS.VNPrice,'
      
        #9'     ROW_NUMBER() over (PARTITION BY KHUONIN_CGBJS.CLBH ORDER B' +
        'Y KHUONIN_CGBJ.BJNO DESC) as  rn'
      #9'from KHUONIN_CGBJ'
      #9'Left join KHUONIN_CGBJS on KHUONIN_CGBJ.BJNO=KHUONIN_CGBJS.BJNO'
      #9'Left join CLZL on CLZL.CLDH=KHUONIN_CGBJS.CLBH'
      #9'where 1=1 --LEFT(CLBH,1) IN ('#39'W'#39','#39'X'#39','#39'Y'#39','#39'Z'#39') '
      #9') CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=clzl.cldh'
      'where 1=1 '
      'and CLZL.CLDH like  '#39'A01%'#39
      'and (TYJH is null or TYJH='#39'N'#39')'
      'order by CLZL.CLDH'
      '')
    Left = 424
    Top = 160
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
  end
end
