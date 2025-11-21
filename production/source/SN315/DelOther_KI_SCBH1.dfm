object DelOther_KI_SCBH: TDelOther_KI_SCBH
  Left = 331
  Top = 160
  Width = 604
  Height = 480
  Caption = 'DelOther_KI_SCBH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 19
      Width = 42
      Height = 16
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 264
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGrid
    Left = 0
    Top = 57
    Width = 588
    Height = 384
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
        Expanded = False
        FieldName = 'DDBH'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantity'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DienTich'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SB'
        Width = 36
        Visible = True
      end>
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.Article, DDZL.Quantity,DDZL.DienTich,DDZL.' +
        'USERID,DDZL.USERDATE,DDZL.YN as SB '
      'from KHUONIN_DDZL DDZL '
      'where DDZL.DDBH like '#39'KI20221000001%'#39
      'and DDZL.YN='#39'1'#39
      'and GSBH='#39'VGC'#39
      'order by DDZL.DDBH')
    Left = 224
    Top = 152
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 10
    end
    object DDZLQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object DDZLDienTich: TFloatField
      FieldName = 'DienTich'
    end
    object DDZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DDZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DDZLSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 256
    Top = 152
  end
end
