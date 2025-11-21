object BOMVN_copy: TBOMVN_copy
  Left = 343
  Top = 214
  Width = 786
  Height = 507
  BorderIcons = [biSystemMenu]
  Caption = 'BOMVN_copy'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 73
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
      Top = 32
      Width = 45
      Height = 20
      Caption = 'ArtNo:'
    end
    object Label3: TLabel
      Left = 192
      Top = 32
      Width = 67
      Height = 20
      Caption = 'ArtName:'
    end
    object Button1: TButton
      Left = 424
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit2: TEdit
      Left = 264
      Top = 24
      Width = 129
      Height = 28
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 770
    Height = 152
    Align = alTop
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YSSM'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KHDH'
        Width = 48
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 225
    Width = 770
    Height = 243
    Align = alClient
    DataSource = DS2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BWBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 283
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FLBH'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XFL'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSBH'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 131
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from XXZL'
      'order by XieXing,SheHao')
    Left = 320
    Top = 160
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      Origin = 'DB.XXZL.YSSM'
      FixedChar = True
      Size = 40
    end
    object Query1KHDH: TStringField
      FieldName = 'KHDH'
      Origin = 'DB.XXZL.KHDH'
      FixedChar = True
      Size = 4
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,XXBW' +
        'FLS.DFL,XXBWFLS.XFL '
      'from XXZLSVN'
      'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      'left join ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH'
      'left join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      'left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH'
      'where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao')
    Left = 400
    Top = 128
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query2BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2FLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object Query2DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query2XFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object Query2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 400
    Top = 160
  end
end
