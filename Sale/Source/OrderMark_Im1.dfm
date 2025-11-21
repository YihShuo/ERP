object OrderMark_Im: TOrderMark_Im
  Left = 428
  Top = 222
  Width = 723
  Height = 483
  BorderIcons = [biSystemMenu]
  Caption = 'OrderMark_Im'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 63
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 8
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Order No:'
    end
    object Label2: TLabel
      Left = 2
      Top = 37
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
    end
    object Label3: TLabel
      Left = 176
      Top = 8
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
    end
    object Label4: TLabel
      Left = 168
      Top = 36
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
    end
    object Edit1: TEdit
      Left = 69
      Top = 4
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 384
      Top = 23
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 69
      Top = 34
      Width = 103
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 239
      Top = 5
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 239
      Top = 34
      Width = 120
      Height = 24
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 63
    Width = 715
    Height = 168
    Align = alTop
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 86
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 231
    Width = 715
    Height = 8
    Align = alTop
    TabOrder = 2
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 239
    Width = 715
    Height = 213
    Align = alClient
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'MTBH1'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MTLR1'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'MTBH2'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MTLR2'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'MTBH3'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MTLR3'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'MTBH4'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MTLR4'
        Footers = <>
        Width = 150
      end>
  end
  object YWDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMi' +
        'ng,DDZL.DDZT,'
      
        'DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,YWDD.Q' +
        'ty,'
      'KFZL.KFJC,LBZLS.YWSM'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH'
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'where DDZL.DDBH like '
      #39'%'#39
      'and DDZL.KHBH like'
      #39'P%'#39
      'and XXZL.XieMing like '
      #39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between' +
        ' '
      #39'2008/07/01'#39
      'and '#39'2008/07/31'#39
      'order by YWDD.DDBH'
      '')
    Left = 192
    Top = 88
    object YWDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWDDETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWDDQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object YWDDKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 224
    Top = 88
  end
  object DDMT: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from YWDDMT'
      'where DDBH=:DDBH')
    Left = 128
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DDMTDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDMT.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDMTXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDMT.XH'
      FixedChar = True
      Size = 3
    end
    object DDMTMTBH1: TStringField
      FieldName = 'MTBH1'
      Origin = 'DB.YWDDMT.MTBH1'
      FixedChar = True
      Size = 6
    end
    object DDMTMTLR1: TStringField
      FieldName = 'MTLR1'
      Origin = 'DB.YWDDMT.MTLR1'
      FixedChar = True
      Size = 50
    end
    object DDMTMTBH2: TStringField
      FieldName = 'MTBH2'
      Origin = 'DB.YWDDMT.MTBH2'
      FixedChar = True
      Size = 6
    end
    object DDMTMTLR2: TStringField
      FieldName = 'MTLR2'
      Origin = 'DB.YWDDMT.MTLR2'
      FixedChar = True
      Size = 50
    end
    object DDMTMTBH3: TStringField
      FieldName = 'MTBH3'
      Origin = 'DB.YWDDMT.MTBH3'
      FixedChar = True
      Size = 6
    end
    object DDMTMTLR3: TStringField
      FieldName = 'MTLR3'
      Origin = 'DB.YWDDMT.MTLR3'
      FixedChar = True
      Size = 50
    end
    object DDMTMTBH4: TStringField
      FieldName = 'MTBH4'
      Origin = 'DB.YWDDMT.MTBH4'
      FixedChar = True
      Size = 6
    end
    object DDMTMTLR4: TStringField
      FieldName = 'MTLR4'
      Origin = 'DB.YWDDMT.MTLR4'
      FixedChar = True
      Size = 50
    end
    object DDMTYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDMT.YN'
      FixedChar = True
      Size = 1
    end
    object DDMTUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDMT.USERID'
      FixedChar = True
    end
    object DDMTUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWDDMT.USERDATE'
    end
  end
  object DS2: TDataSource
    DataSet = DDMT
    Left = 168
    Top = 272
  end
end
