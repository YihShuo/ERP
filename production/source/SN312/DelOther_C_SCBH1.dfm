object DelOther_C_SCBH: TDelOther_C_SCBH
  Left = 388
  Top = 226
  Width = 562
  Height = 338
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_C_SCBH'
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
    Width = 546
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 264
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 546
    Height = 242
    Align = alClient
    DataSource = DS1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SB'
        Width = 49
        Visible = True
      end>
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,XXZl.XieXing,XXZl.SheHao,XXZl.Article,XXZl.XieM' +
        'ing,YWCP.SB'
      'from DDZL'
      
        'left join XXZl on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      
        'left join (select distinct YWDD.YSBH as DDBH,'#39'NoOk'#39' as SB from Y' +
        'WCP'
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '           where InDate is null ) YWCP on YWCP.DDBH=DDZL.DDBH '
      'where DDZL.DDZT='#39'Y'#39
      '      and DDZL.YN='#39'1'#39
      '      and DDZL.DDBH like '#39'%'#39
      '      and GSBH='#39'VA12'#39
      
        '      and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL' +
        '.ZLBH)'
      'order by DDZL.DDBH ')
    Left = 224
    Top = 152
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDZLSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 256
    Top = 152
  end
end
