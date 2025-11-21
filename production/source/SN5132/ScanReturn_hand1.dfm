object ScanReturn_hand: TScanReturn_hand
  Left = 321
  Top = 202
  Width = 777
  Height = 457
  BorderIcons = [biSystemMenu]
  Caption = 'ScanReturn_hand'
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
    Width = 761
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 57
      Height = 16
      Caption = 'OrderNO:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 24
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 272
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 543
    Height = 353
    Align = alClient
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
        Width = 84
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 56
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 201
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 543
    Top = 65
    Width = 218
    Height = 353
    Align = alRight
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh2DblClick
    OnKeyPress = DBGridEh2KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 24
      end>
  end
  object YWDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDD.DDBH,XXZL.Article,XXZL.XieMing,YWDD.Qty,YWBZPOS.CTS '
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao  '
      'left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS'
      '           from (select distinct DDBH,XH,CTS from YWBZPOS'
      '                 where DDBH like '#39'y0903-00%'#39') YWBZPOS '
      
        '                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=' +
        'YWDD.DDBH'
      'where DDZL.DDBH like '#39'y0903-00%'#39
      '      and YWBZPOS.DDBH is not null '
      'order by YWDD.DDBH')
    Left = 168
    Top = 144
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
    object YWDDQty: TFloatField
      FieldName = 'Qty'
    end
    object YWDDCTS: TIntegerField
      FieldName = 'CTS'
    end
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 200
    Top = 144
  end
  object DS2: TDataSource
    DataSet = YWCP
    Left = 376
    Top = 152
  end
  object YWCP: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select CARTONBAR,Qty,SB'
      'from YWCP'
      'where DDBH=:DDBH'
      '         and SB='#39'1'#39
      'order by CARTONBAR')
    Left = 344
    Top = 152
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YWCPCARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object YWCPQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
    end
    object YWCPSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
  end
end
