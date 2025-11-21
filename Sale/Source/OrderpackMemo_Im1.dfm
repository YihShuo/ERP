object OrderpackMemo_Im: TOrderpackMemo_Im
  Left = 388
  Top = 225
  Width = 777
  Height = 460
  BorderIcons = [biSystemMenu]
  Caption = 'OrderpackMemo_Im'
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
  object Label4: TLabel
    Left = 376
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 80
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 16
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Order No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 50
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 184
      Top = 51
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 568
      Top = 16
      Width = 61
      Height = 29
      Caption = 'Total'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 184
      Top = 18
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ship Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 352
      Top = 15
      Width = 33
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'to'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 486
      Top = 9
      Width = 75
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 64
      Top = 46
      Width = 121
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
    object Edit3: TEdit
      Left = 259
      Top = 47
      Width = 217
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 640
      Top = 16
      Width = 185
      Height = 89
      TabOrder = 3
      Visible = False
    end
    object Memo2: TMemo
      Left = 640
      Top = 32
      Width = 185
      Height = 89
      TabOrder = 4
      Visible = False
    end
    object DTP1: TDateTimePicker
      Left = 264
      Top = 13
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 64
      Top = 14
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 80
    Width = 769
    Height = 168
    Align = alTop
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'max_Qty'
        Footers = <>
        Title.Caption = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 116
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 769
    Height = 8
    Align = alTop
    TabOrder = 2
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 256
    Width = 769
    Height = 173
    Align = alClient
    DataSource = DS2
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
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'MENO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'LX'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 236
      end
      item
        EditButtons = <>
        FieldName = 'VNSM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 204
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
      end>
  end
  object DTP2: TDateTimePicker
    Left = 383
    Top = 12
    Width = 89
    Height = 24
    Date = 39783.569282222220000000
    Format = 'yyyy/MM/dd'
    Time = 39783.569282222220000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
      FieldName = 'max_Qty'
      DisplayFormat = '##,#0'
    end
    object YWDDKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object YWDDCountry: TStringField
      FieldName = 'Country'
    end
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 224
    Top = 88
  end
  object DDBZ: TQuery
    AutoRefresh = True
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from YWDDBZ'
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
    object DDBZDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDBZ.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDBZMENO: TStringField
      FieldName = 'MENO'
      Origin = 'DB.YWDDBZ.MENO'
      FixedChar = True
      Size = 8
    end
    object DDBZXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDBZ.XH'
      FixedChar = True
      Size = 3
    end
    object DDBZLX: TStringField
      FieldName = 'LX'
      Origin = 'DB.YWDDBZ.LX'
      FixedChar = True
      Size = 2
    end
    object DDBZZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.YWDDBZ.ZWSM'
      FixedChar = True
      Size = 250
    end
    object DDBZVNSM: TStringField
      FieldName = 'VNSM'
      Origin = 'DB.YWDDBZ.VNSM'
      FixedChar = True
      Size = 250
    end
    object DDBZUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDBZ.USERID'
      FixedChar = True
    end
    object DDBZUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.YWDDBZ.USERDate'
    end
    object DDBZYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDBZ.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = DDBZ
    Left = 168
    Top = 272
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 288
    object Shipping1: TMenuItem
      Caption = 'Shipping'
      OnClick = Shipping1Click
    end
    object Production1: TMenuItem
      Caption = 'Production'
      OnClick = Production1Click
    end
  end
end
